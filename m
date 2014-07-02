Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x232.google.com ([2a00:1450:400c:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2JKP-0000Y2-Lm
 for wireless-regdb@lists.infradead.org; Wed, 02 Jul 2014 12:07:58 +0000
Received: by mail-wi0-f178.google.com with SMTP id n15so331715wiw.17 for
 <wireless-regdb@lists.infradead.org>; Wed, 02 Jul 2014 05:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tieto.com;
 s=google; h=from:to:cc:subject:date:message-id;
 bh=SIWOeOow15NIKEjuNyBpEnNCO2oSBUIrKnMwSYAnxj0=;
 b=cfrdwKVE+MRWnOrvujxvpLpPEeW/TcnN2euoHfhIIDwOr43XQemG8eSkoynIZLyBFF
 iTjyceeKSahLbDgjaualy5IXPd6zOvSQSvmJhBOztmtt0AHdDc/K+MdEGoYNVOTjPGuK
 wwiEHeGu3iTb3629TsRj3imKeUMEbE/NiSmvc=
From: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Date: Wed,  2 Jul 2014 14:02:11 +0200
Message-Id: <1404302531-18132-1-git-send-email-janusz.dziedzic@tieto.com>
Subject: [wireless-regdb] [PATCH] crda: db2rd, parse/print CAC time
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
Cc: Janusz Dziedzic <janusz.dziedzic@tieto.com>, linux-wireless@vger.kernel.org, mcgrof@do-not-panic.com
List-ID: <wireless-regdb@lists.infradead.org>

db2rd, parse and print DFS CAC time

Signed-off-by: Janusz Dziedzic <janusz.dziedzic@tieto.com>
---
 crda.c   |    3 +++
 reglib.c |   15 ++++++++++++++-
 reglib.h |    1 +
 3 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/crda.c b/crda.c
index 4751a39..f40131f 100644
--- a/crda.c
+++ b/crda.c
@@ -131,6 +131,9 @@ static int put_reg_rule(const struct ieee80211_reg_rule *rule, struct nl_msg *ms
 	NLA_PUT_U32(msg, NL80211_ATTR_POWER_RULE_MAX_ANT_GAIN,	power_rule->max_antenna_gain);
 	NLA_PUT_U32(msg, NL80211_ATTR_POWER_RULE_MAX_EIRP,	power_rule->max_eirp);
 
+	if (rule->dfs_cac_ms)
+		NLA_PUT_U32(msg, NL80211_ATTR_DFS_CAC_TIME, rule->dfs_cac_ms);
+
 	return 0;
 
 nla_put_failure:
diff --git a/reglib.c b/reglib.c
index 6db3e75..e00e9b8 100644
--- a/reglib.c
+++ b/reglib.c
@@ -723,6 +723,11 @@ static void print_reg_rule(const struct ieee80211_reg_rule *rule)
 	else
 		printf("N/A)");
 
+	if (rule->dfs_cac_ms)
+		printf(", (%u)", rule->dfs_cac_ms);
+	else
+		printf(", (N/A)");
+
 	if (rule->flags & RRF_NO_OFDM)
 		printf(", NO-OFDM");
 	if (rule->flags & RRF_NO_CCK)
@@ -801,6 +806,7 @@ static int reglib_parse_rule(FILE *fp, struct ieee80211_reg_rule *reg_rule)
 	char *line_p;
 	int hits, r = 0;
 	float start_freq_khz, end_freq_khz, max_bandwidth_khz, max_eirp;
+	unsigned int dfs_cac_ms = 0;
 
 	memset(line, 0, sizeof(line));
 	line_p = fgets(line, sizeof(line), fp);
@@ -846,8 +852,15 @@ static int reglib_parse_rule(FILE *fp, struct ieee80211_reg_rule *reg_rule)
 
 	/* Next get optional arguments (flags ...) */
 	strsep(&line_p, ",");
-	if (line_p)
+	if (line_p) {
+		/* Check DFS CAC time */
+		hits = sscanf(line_p, " (%u)", &dfs_cac_ms);
+		if (hits == 1)
+			reg_rule->dfs_cac_ms = dfs_cac_ms;
+
+		/* Check flags */
 		reg_rule->flags = reglib_parse_rule_flag(line_p);
+	}
 
 	return r;
 }
diff --git a/reglib.h b/reglib.h
index afd5ef6..77aa42a 100644
--- a/reglib.h
+++ b/reglib.h
@@ -28,6 +28,7 @@ struct ieee80211_reg_rule {
 	struct ieee80211_freq_range freq_range;
 	struct ieee80211_power_rule power_rule;
 	uint32_t flags;
+	uint32_t dfs_cac_ms;
 };
 
 struct ieee80211_regdomain {
-- 
1.7.9.5


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

