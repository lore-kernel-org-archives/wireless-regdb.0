Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x22a.google.com ([2607:f8b0:400e:c01::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEpe-0005dr-Ic
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:12:43 +0000
Received: by mail-pb0-f42.google.com with SMTP id uo1so1401163pbc.1 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=IDzkZH0o4VfNh2Je/zPdlA6uhvqRzQNPxVpmfAIr8aY=;
 b=or53bqnpD+LC2GbGJl04unTlFEp1KwMj16iB4R5XnZzSO9ySWuz/KcxljipA3rpHsV
 lxfSfmAzV9Aq+3SCMgE77560YRbOaoVUgHA4lUpLYTUx/v4Q4MHUwbg6u2c0KdsgdOxG
 9JBxYMYL8vBjU+5fxkiFTGFpPbcJrSNiFrZxF932XTLlcxBBa0PlEbIhh1eL0OjPtSLW
 BjR0jJKCN8VdZxxQJVZAuDCEAhql7P3/C3X3+0AjgjLU66QuIPT5eBPCormmOEi7EwMY
 /Oy6zxc55uVQfmA+cuaxKxyhdgWMu4qWB9HhNlN3x8W6yYxQqVF3vd98ez6s2inZxlNy nbyw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:25 -0700
Message-Id: <1369966169-23640-37-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 36/40] crda: move reglib_intersect_regdb()
	to reglib
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

There are no functional changes in this change.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 intersect.c |   63 -----------------------------------------------------------
 reglib.c    |   52 ++++++++++++++++++++++++++++++++++++++++++++++++
 reglib.h    |   13 ++++++++++++
 3 files changed, 65 insertions(+), 63 deletions(-)

diff --git a/intersect.c b/intersect.c
index b9e3429..56d0d35 100644
--- a/intersect.c
+++ b/intersect.c
@@ -6,69 +6,6 @@
 
 #include "reglib.h"
 
-/**
- * reglib_intersect_regdb - intersects a regulatory database
- *
- * @regdb_file: the regulatory database to intersect
- *
- * Goes through an entire regulatory database and intersects all regulatory
- * domains. This will skip any regulatory marked with an alpha2 of '00', which
- * is used to indicate a world regulatory domain. If intersection is able
- * to find rules that fit all regulatory domains it return a regulatory
- * domain with such rules otherwise it returns NULL.
- */
-const struct ieee80211_regdomain *reglib_intersect_regdb(char *regdb_file)
-{
-	const struct ieee80211_regdomain *rd;
-	struct ieee80211_regdomain *prev_rd_intsct = NULL, *rd_intsct = NULL;
-	int intersected = 0;
-	unsigned int idx = 0;
-
-	reglib_for_each_country(rd, idx, regdb_file) {
-		if (reglib_is_world_regdom((const char *) rd->alpha2)) {
-			free((struct ieee80211_regdomain *) rd);
-			continue;
-		}
-
-		if (!prev_rd_intsct) {
-			prev_rd_intsct = (struct ieee80211_regdomain *) rd;
-			continue;
-		}
-
-		if (rd_intsct) {
-			free(prev_rd_intsct);
-			prev_rd_intsct = (struct ieee80211_regdomain *) rd_intsct;
-		}
-
-		rd_intsct = reglib_intersect_rds(prev_rd_intsct, rd);
-		if (!rd_intsct) {
-			free(prev_rd_intsct);
-			free((struct ieee80211_regdomain *) rd);
-			return NULL;
-		}
-
-		intersected++;
-		free((struct ieee80211_regdomain *) rd);
-	}
-
-	if (!idx)
-		return NULL;
-
-	if (intersected <= 0) {
-		rd_intsct = prev_rd_intsct;
-		prev_rd_intsct = NULL;
-		if (idx > 1) {
-			free(rd_intsct);
-			return NULL;
-		}
-	}
-
-	if (prev_rd_intsct)
-		free(prev_rd_intsct);
-
-	return rd_intsct;
-}
-
 int main(int argc, char **argv)
 {
 	const struct ieee80211_regdomain *rd;
diff --git a/reglib.c b/reglib.c
index 4643fa8..67f5b2b 100644
--- a/reglib.c
+++ b/reglib.c
@@ -554,6 +554,58 @@ reglib_intersect_rds(const struct ieee80211_regdomain *rd1,
 	return rd;
 }
 
+const struct ieee80211_regdomain *reglib_intersect_regdb(char *regdb_file)
+{
+	const struct ieee80211_regdomain *rd;
+	struct ieee80211_regdomain *prev_rd_intsct = NULL, *rd_intsct = NULL;
+	int intersected = 0;
+	unsigned int idx = 0;
+
+	reglib_for_each_country(rd, idx, regdb_file) {
+		if (reglib_is_world_regdom((const char *) rd->alpha2)) {
+			free((struct ieee80211_regdomain *) rd);
+			continue;
+		}
+
+		if (!prev_rd_intsct) {
+			prev_rd_intsct = (struct ieee80211_regdomain *) rd;
+			continue;
+		}
+
+		if (rd_intsct) {
+			free(prev_rd_intsct);
+			prev_rd_intsct = (struct ieee80211_regdomain *) rd_intsct;
+		}
+
+		rd_intsct = reglib_intersect_rds(prev_rd_intsct, rd);
+		if (!rd_intsct) {
+			free(prev_rd_intsct);
+			free((struct ieee80211_regdomain *) rd);
+			return NULL;
+		}
+
+		intersected++;
+		free((struct ieee80211_regdomain *) rd);
+	}
+
+	if (!idx)
+		return NULL;
+
+	if (intersected <= 0) {
+		rd_intsct = prev_rd_intsct;
+		prev_rd_intsct = NULL;
+		if (idx > 1) {
+			free(rd_intsct);
+			return NULL;
+		}
+	}
+
+	if (prev_rd_intsct)
+		free(prev_rd_intsct);
+
+	return rd_intsct;
+}
+
 static const char *dfs_domain_name(enum regdb_dfs_regions region)
 {
 	switch (region) {
diff --git a/reglib.h b/reglib.h
index d89fcd5..2681164 100644
--- a/reglib.h
+++ b/reglib.h
@@ -90,4 +90,17 @@ struct ieee80211_regdomain *
 reglib_intersect_rds(const struct ieee80211_regdomain *rd1,
 		     const struct ieee80211_regdomain *rd2);
 
+/**
+ * reglib_intersect_regdb - intersects a regulatory database
+ *
+ * @regdb_file: the regulatory database to intersect
+ *
+ * Goes through an entire regulatory database and intersects all regulatory
+ * domains. This will skip any regulatory marked with an alpha2 of '00', which
+ * is used to indicate a world regulatory domain. If intersection is able
+ * to find rules that fit all regulatory domains it return a regulatory
+ * domain with such rules otherwise it returns NULL.
+ */
+const struct ieee80211_regdomain *reglib_intersect_regdb(char *regdb_file);
+
 #endif
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

