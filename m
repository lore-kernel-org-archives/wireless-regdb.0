Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-f171.google.com ([209.85.192.171])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEnT-0005KW-Tw
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:10:32 +0000
Received: by mail-pd0-f171.google.com with SMTP id z11so1388348pdj.16 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=A2K2+I3e7IKYlPhcJ2Z3UgFdv1uYxyripwbQnrx4gTo=;
 b=kvUwet8piag5PYOI1TQ7SxfL/ZcrYd2CNwp490XweGFcq6W+hfFP3CfZxi1TrMKpPH
 ARzVMgQ5qFYLit+EVjAHBqmv/IDwZEUMT9F6IlHR0oHuF3aLmH6+UA7kxaKnGa7P6Ewl
 5+GlJmGehDGwkc3QMN6hAV4SGwIfikHThyhgG4UkBuw14Z+P0rdkdsWo2fOlDmBWeCZW
 N8GYksTJN3FsO1rN711jfivaEKkIwfOv6hd1p7ProiexWhATToZuhiIzlY1kZzyIzdDz
 gWz/VCQ0xT8K5jVpJ1A6EVWn3Rhih3rk+W/HOOBcCN3q3DKah12yuYnoUo/qSDodJ0lB ENBA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:08:55 -0700
Message-Id: <1369966169-23640-7-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 06/40] crda: move regdom_intersect() to
	reglib
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>

This will be used later by other code so just share it.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 intersect.c |  157 ----------------------------------------------------------
 reglib.c    |  159 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 reglib.h    |    3 ++
 3 files changed, 162 insertions(+), 157 deletions(-)

diff --git a/intersect.c b/intersect.c
index 7352e73..1c00a67 100644
--- a/intersect.c
+++ b/intersect.c
@@ -9,163 +9,6 @@
 /* Intersects regulatory domains, this will skip any regulatory marked with
  * an alpha2 of '00', which is used to indicate a regulatory domain */
 
-/* Sanity check on a regulatory rule */
-static int is_valid_reg_rule(const struct ieee80211_reg_rule *rule)
-{
-	const struct ieee80211_freq_range *freq_range = &rule->freq_range;
-	uint32_t freq_diff;
-
-	if (freq_range->start_freq_khz == 0 || freq_range->end_freq_khz == 0)
-		return 0;
-
-	if (freq_range->start_freq_khz > freq_range->end_freq_khz)
-		return 0;
-
-	freq_diff = freq_range->end_freq_khz - freq_range->start_freq_khz;
-
-	if (freq_range->end_freq_khz <= freq_range->start_freq_khz ||
-	    freq_range->max_bandwidth_khz > freq_diff)
-		return 0;
-
-	return 1;
-}
-
-/* Helper for regdom_intersect(), this does the real
- * mathematical intersection fun */
-static int reg_rules_intersect(const struct ieee80211_reg_rule *rule1,
-			       const struct ieee80211_reg_rule *rule2,
-			       struct ieee80211_reg_rule *intersected_rule)
-{
-	const struct ieee80211_freq_range *freq_range1, *freq_range2;
-	struct ieee80211_freq_range *freq_range;
-	const struct ieee80211_power_rule *power_rule1, *power_rule2;
-	struct ieee80211_power_rule *power_rule;
-	uint32_t freq_diff;
-
-	freq_range1 = &rule1->freq_range;
-	freq_range2 = &rule2->freq_range;
-	freq_range = &intersected_rule->freq_range;
-
-	power_rule1 = &rule1->power_rule;
-	power_rule2 = &rule2->power_rule;
-	power_rule = &intersected_rule->power_rule;
-
-	freq_range->start_freq_khz = max(freq_range1->start_freq_khz,
-					 freq_range2->start_freq_khz);
-	freq_range->end_freq_khz = min(freq_range1->end_freq_khz,
-				       freq_range2->end_freq_khz);
-	freq_range->max_bandwidth_khz = min(freq_range1->max_bandwidth_khz,
-					    freq_range2->max_bandwidth_khz);
-
-	freq_diff = freq_range->end_freq_khz - freq_range->start_freq_khz;
-	if (freq_range->max_bandwidth_khz > freq_diff)
-		freq_range->max_bandwidth_khz = freq_diff;
-
-	power_rule->max_eirp = min(power_rule1->max_eirp,
-		power_rule2->max_eirp);
-	power_rule->max_antenna_gain = min(power_rule1->max_antenna_gain,
-		power_rule2->max_antenna_gain);
-
-	intersected_rule->flags = rule1->flags | rule2->flags;
-
-	if (!is_valid_reg_rule(intersected_rule))
-		return -EINVAL;
-
-	return 0;
-}
-
-/**
- * regdom_intersect - do the intersection between two regulatory domains
- * @rd1: first regulatory domain
- * @rd2: second regulatory domain
- *
- * Use this function to get the intersection between two regulatory domains.
- * Once completed we will mark the alpha2 for the rd as intersected, "98",
- * as no one single alpha2 can represent this regulatory domain.
- *
- * Returns a pointer to the regulatory domain structure which will hold the
- * resulting intersection of rules between rd1 and rd2. We will
- * malloc() this structure for you.
- */
-static struct ieee80211_regdomain *
-regdom_intersect(const struct ieee80211_regdomain *rd1,
-		 const struct ieee80211_regdomain *rd2)
-{
-	int r, size_of_regd;
-	unsigned int x, y;
-	unsigned int num_rules = 0, rule_idx = 0;
-	const struct ieee80211_reg_rule *rule1, *rule2;
-	struct ieee80211_reg_rule *intersected_rule;
-	struct ieee80211_regdomain *rd;
-	/* This is just a dummy holder to help us count */
-	struct ieee80211_reg_rule irule;
-
-	/* Uses the stack temporarily for counter arithmetic */
-	intersected_rule = &irule;
-
-	memset(intersected_rule, 0, sizeof(struct ieee80211_reg_rule));
-
-	if (!rd1 || !rd2)
-		return NULL;
-
-	/* First we get a count of the rules we'll need, then we actually
-	 * build them. This is to so we can malloc() and free() a
-	 * regdomain once. The reason we use reg_rules_intersect() here
-	 * is it will return -EINVAL if the rule computed makes no sense.
-	 * All rules that do check out OK are valid. */
-
-	for (x = 0; x < rd1->n_reg_rules; x++) {
-		rule1 = &rd1->reg_rules[x];
-		for (y = 0; y < rd2->n_reg_rules; y++) {
-			rule2 = &rd2->reg_rules[y];
-			if (!reg_rules_intersect(rule1, rule2,
-					intersected_rule))
-				num_rules++;
-			memset(intersected_rule, 0,
-					sizeof(struct ieee80211_reg_rule));
-		}
-	}
-
-	if (!num_rules)
-		return NULL;
-
-	size_of_regd = sizeof(struct ieee80211_regdomain) +
-		((num_rules + 1) * sizeof(struct ieee80211_reg_rule));
-
-	rd = malloc(size_of_regd);
-	if (!rd)
-		return NULL;
-
-	memset(rd, 0, size_of_regd);
-
-	for (x = 0; x < rd1->n_reg_rules; x++) {
-		rule1 = &rd1->reg_rules[x];
-		for (y = 0; y < rd2->n_reg_rules; y++) {
-			rule2 = &rd2->reg_rules[y];
-			/* This time around instead of using the stack lets
-			 * write to the target rule directly saving ourselves
-			 * a memcpy() */
-			intersected_rule = &rd->reg_rules[rule_idx];
-			r = reg_rules_intersect(rule1, rule2,
-				intersected_rule);
-			if (r)
-				continue;
-			rule_idx++;
-		}
-	}
-
-	if (rule_idx != num_rules) {
-		free(rd);
-		return NULL;
-	}
-
-	rd->n_reg_rules = num_rules;
-	rd->alpha2[0] = '9';
-	rd->alpha2[1] = '9';
-
-	return rd;
-}
-
 int main(int argc, char **argv)
 {
 	int r = 0;
diff --git a/reglib.c b/reglib.c
index 0b1599b..867e8cf 100644
--- a/reglib.c
+++ b/reglib.c
@@ -359,3 +359,162 @@ out:
 	close(fd);
 	return rd;
 }
+
+/* Sanity check on a regulatory rule */
+static int is_valid_reg_rule(const struct ieee80211_reg_rule *rule)
+{
+	const struct ieee80211_freq_range *freq_range = &rule->freq_range;
+	uint32_t freq_diff;
+
+	if (freq_range->start_freq_khz == 0 || freq_range->end_freq_khz == 0)
+		return 0;
+
+	if (freq_range->start_freq_khz > freq_range->end_freq_khz)
+		return 0;
+
+	freq_diff = freq_range->end_freq_khz - freq_range->start_freq_khz;
+
+	if (freq_range->end_freq_khz <= freq_range->start_freq_khz ||
+	    freq_range->max_bandwidth_khz > freq_diff)
+		return 0;
+
+	return 1;
+}
+
+/*
+ * Helper for regdom_intersect(), this does the real
+ * mathematical intersection fun
+ */
+static int reg_rules_intersect(const struct ieee80211_reg_rule *rule1,
+			       const struct ieee80211_reg_rule *rule2,
+			       struct ieee80211_reg_rule *intersected_rule)
+{
+	const struct ieee80211_freq_range *freq_range1, *freq_range2;
+	struct ieee80211_freq_range *freq_range;
+	const struct ieee80211_power_rule *power_rule1, *power_rule2;
+	struct ieee80211_power_rule *power_rule;
+	uint32_t freq_diff;
+
+	freq_range1 = &rule1->freq_range;
+	freq_range2 = &rule2->freq_range;
+	freq_range = &intersected_rule->freq_range;
+
+	power_rule1 = &rule1->power_rule;
+	power_rule2 = &rule2->power_rule;
+	power_rule = &intersected_rule->power_rule;
+
+	freq_range->start_freq_khz = max(freq_range1->start_freq_khz,
+					 freq_range2->start_freq_khz);
+	freq_range->end_freq_khz = min(freq_range1->end_freq_khz,
+				       freq_range2->end_freq_khz);
+	freq_range->max_bandwidth_khz = min(freq_range1->max_bandwidth_khz,
+					    freq_range2->max_bandwidth_khz);
+
+	freq_diff = freq_range->end_freq_khz - freq_range->start_freq_khz;
+	if (freq_range->max_bandwidth_khz > freq_diff)
+		freq_range->max_bandwidth_khz = freq_diff;
+
+	power_rule->max_eirp = min(power_rule1->max_eirp,
+		power_rule2->max_eirp);
+	power_rule->max_antenna_gain = min(power_rule1->max_antenna_gain,
+		power_rule2->max_antenna_gain);
+
+	intersected_rule->flags = rule1->flags | rule2->flags;
+
+	if (!is_valid_reg_rule(intersected_rule))
+		return -EINVAL;
+
+	return 0;
+}
+
+/**
+ * regdom_intersect - do the intersection between two regulatory domains
+ * @rd1: first regulatory domain
+ * @rd2: second regulatory domain
+ *
+ * Use this function to get the intersection between two regulatory domains.
+ * Once completed we will mark the alpha2 for the rd as intersected, "98",
+ * as no one single alpha2 can represent this regulatory domain.
+ *
+ * Returns a pointer to the regulatory domain structure which will hold the
+ * resulting intersection of rules between rd1 and rd2. We will
+ * malloc() this structure for you.
+ */
+struct ieee80211_regdomain *
+regdom_intersect(const struct ieee80211_regdomain *rd1,
+		 const struct ieee80211_regdomain *rd2)
+{
+	int r, size_of_regd;
+	unsigned int x, y;
+	unsigned int num_rules = 0, rule_idx = 0;
+	const struct ieee80211_reg_rule *rule1, *rule2;
+	struct ieee80211_reg_rule *intersected_rule;
+	struct ieee80211_regdomain *rd;
+	/* This is just a dummy holder to help us count */
+	struct ieee80211_reg_rule irule;
+
+	/* Uses the stack temporarily for counter arithmetic */
+	intersected_rule = &irule;
+
+	memset(intersected_rule, 0, sizeof(struct ieee80211_reg_rule));
+
+	if (!rd1 || !rd2)
+		return NULL;
+
+	/* First we get a count of the rules we'll need, then we actually
+	 * build them. This is to so we can malloc() and free() a
+	 * regdomain once. The reason we use reg_rules_intersect() here
+	 * is it will return -EINVAL if the rule computed makes no sense.
+	 * All rules that do check out OK are valid. */
+
+	for (x = 0; x < rd1->n_reg_rules; x++) {
+		rule1 = &rd1->reg_rules[x];
+		for (y = 0; y < rd2->n_reg_rules; y++) {
+			rule2 = &rd2->reg_rules[y];
+			if (!reg_rules_intersect(rule1, rule2,
+					intersected_rule))
+				num_rules++;
+			memset(intersected_rule, 0,
+					sizeof(struct ieee80211_reg_rule));
+		}
+	}
+
+	if (!num_rules)
+		return NULL;
+
+	size_of_regd = sizeof(struct ieee80211_regdomain) +
+		((num_rules + 1) * sizeof(struct ieee80211_reg_rule));
+
+	rd = malloc(size_of_regd);
+	if (!rd)
+		return NULL;
+
+	memset(rd, 0, size_of_regd);
+
+	for (x = 0; x < rd1->n_reg_rules; x++) {
+		rule1 = &rd1->reg_rules[x];
+		for (y = 0; y < rd2->n_reg_rules; y++) {
+			rule2 = &rd2->reg_rules[y];
+			/* This time around instead of using the stack lets
+			 * write to the target rule directly saving ourselves
+			 * a memcpy() */
+			intersected_rule = &rd->reg_rules[rule_idx];
+			r = reg_rules_intersect(rule1, rule2,
+				intersected_rule);
+			if (r)
+				continue;
+			rule_idx++;
+		}
+	}
+
+	if (rule_idx != num_rules) {
+		free(rd);
+		return NULL;
+	}
+
+	rd->n_reg_rules = num_rules;
+	rd->alpha2[0] = '9';
+	rd->alpha2[1] = '9';
+
+	return rd;
+}
diff --git a/reglib.h b/reglib.h
index e5da38b..b52d717 100644
--- a/reglib.h
+++ b/reglib.h
@@ -87,5 +87,8 @@ reglib_get_rd_alpha2(const char *alpha2, const char *file);
 
 /* reg helpers */
 void print_regdom(const struct ieee80211_regdomain *rd);
+struct ieee80211_regdomain *
+regdom_intersect(const struct ieee80211_regdomain *rd1,
+		 const struct ieee80211_regdomain *rd2);
 
 #endif
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

