Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from smtp-out04.msg.oleane.net ([62.161.7.2])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yhh02-0005hK-5m
 for wireless-regdb@lists.infradead.org; Mon, 13 Apr 2015 16:14:18 +0000
Received: from smtp26.msg.oleane.net (smtp26.mail.priv [172.17.20.148]) 
 by smtp-out04.msg.oleane.net with ESMTP id t3DFqdwY027179
 for <wireless-regdb@lists.infradead.org>; Mon, 13 Apr 2015 17:52:39 +0200
From: "Jean-Pierre Tosoni" <jp.tosoni@acksys.fr>
Date: Mon, 13 Apr 2015 17:31:14 +0200
Message-ID: <000601d075fe$e10e0600$a32a1200$@acksys.fr>
MIME-Version: 1.0
Content-Language: fr
Subject: [wireless-regdb] [RFC] [PATCH] crda: enforce ETSI CAC timer of
 600s on the weather band
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: 'Seth Forshee' <seth.forshee@canonical.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

A really weird patch that splits the U-NII-2e band into 1, 2 or 3
sub-bands to enforce a CAC time of 10 minutes in the range 5600-5650 MHz.
---

I came with the following patch to enforce ETSI regulation in Europe for
weather channels.
It applies to crda and when it encounters this frequency range, it splits it
out and enforces the 10 minutes CAC.
I know it's weird as is, I just wonder if it's the good way of solving this
until CAC is in regulatory.bin or the kernel takes care of it.

 crda.c |  104
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++------
 1 files changed, 94 insertions(+), 10 deletions(-)

diff --git a/crda.c b/crda.c
index f40131f..4c4aeba 100644
--- a/crda.c
+++ b/crda.c
@@ -140,6 +140,36 @@ nla_put_failure:
 	return -1;
 }
 
+static int put_dom_reg_rule(struct ieee80211_reg_rule *rule, struct nl_msg
*msg, int i)
+{
+	int r;
+	struct nlattr *nl_reg_rule;
+	unsigned long width;
+
+	width = rule->freq_range.end_freq_khz -
rule->freq_range.start_freq_khz;
+	if (width <= 0)
+		return 0; // nothing to do -- assert success
+
+	nl_reg_rule = nla_nest_start(msg, i);
+	if (!nl_reg_rule)
+		return 1;
+
+	if (width < rule->freq_range.max_bandwidth_khz) {
+		if (width >= 160000) rule->freq_range.max_bandwidth_khz =
160000;
+		else if (width >= 80000) rule->freq_range.max_bandwidth_khz
= 80000;
+		else if (width >= 40000) rule->freq_range.max_bandwidth_khz
= 40000;
+		else if (width >= 20000) rule->freq_range.max_bandwidth_khz
= 20000;
+		else if (width >= 10000) rule->freq_range.max_bandwidth_khz
= 10000;
+		else rule->freq_range.max_bandwidth_khz = 5000;
+	}
+	r = put_reg_rule(rule, msg);
+	if (r)
+		return 1;
+
+	nla_nest_end(msg, nl_reg_rule);
+	return 0;
+}
+
 int main(int argc, char **argv)
 {
 	int fd = -1;
@@ -228,16 +258,70 @@ int main(int argc, char **argv)
 	}
 
 	for (j = 0; j < rd->n_reg_rules; j++) {
-		struct nlattr *nl_reg_rule;
-		nl_reg_rule = nla_nest_start(msg, i);
-		if (!nl_reg_rule)
-			goto nla_put_failure;
-
-		r = put_reg_rule(&rd->reg_rules[j], msg);
-		if (r)
-			goto nla_put_failure;
-
-		nla_nest_end(msg, nl_reg_rule);
+		const struct ieee80211_reg_rule *rule = &rd->reg_rules[j];
+
+#define METEO_BAND_START	(5600 * 1000)
+#define METEO_BAND_BEFORE_START	(5570 * 1000)	// to allow BW=40
and 80
+#define METEO_BAND_END		(5650 * 1000)
+		if (rd->dfs_region == REGDB_DFS_ETSI
+		  && rule->freq_range.start_freq_khz < METEO_BAND_END
+		  && rule->freq_range.end_freq_khz > METEO_BAND_START) {
+			struct ieee80211_reg_rule split_rule;
+			/*
+			 * ETSI rule including all or part of the weather
band
+			 *
+			 * If necessary the frequency range is split in 3
+			 * to allow inserting the 10 minutes CAC in the 2nd
one
+			 */
+			/* If the range overlaps the 5600 MHz frequency */
+			if (rule->freq_range.start_freq_khz <
METEO_BAND_BEFORE_START) {
+
+				/* copy band data (CAC, BW...) */
+				split_rule = *rule;
+				/* remove upper channels */
+				split_rule.freq_range.end_freq_khz =
METEO_BAND_BEFORE_START;
+
+				/* configure lower channels */
+				if (put_dom_reg_rule(&split_rule, msg, i))
+					goto nla_put_failure;
+			}
+
+			/* The rest necessarily begins before 5650 MHz */
+			/* copy band data (CAC, BW...) */
+			split_rule = *rule;
+			if (rule->freq_range.start_freq_khz <
METEO_BAND_BEFORE_START) {
+				split_rule.freq_range.start_freq_khz =
METEO_BAND_BEFORE_START;
+			}
+
+			/* compute center range */
+			if (rule->freq_range.end_freq_khz <= METEO_BAND_END)
+				split_rule.freq_range.end_freq_khz =
rule->freq_range.end_freq_khz;
+			else
+				split_rule.freq_range.end_freq_khz =
METEO_BAND_END;
+			split_rule.dfs_cac_ms = 10 * 60 * 1000; /* 10
minutes */
+
+			/* configure weather frequencies */
+			if (put_dom_reg_rule(&split_rule, msg, i))
+				goto nla_put_failure;
+
+			/* If the range overlaps the 5650 MHz frequency */
+			if (rule->freq_range.end_freq_khz > METEO_BAND_END)
{
+
+				/* copy band data (CAC, BW...) */
+				split_rule = *rule; /* copie les donnees de
la bande */
+				/* remove lower channels */
+				split_rule.freq_range.start_freq_khz =
METEO_BAND_END;
+
+				/* configure higher channels */
+				if (put_dom_reg_rule(&split_rule, msg, i))
+					goto nla_put_failure;
+			}
+		} else {
+			/* configure the whole range */
+			/* WARNING: this fonction may change
(const)rule->...max_bandwidth_khz */
+			if (put_dom_reg_rule((struct ieee80211_reg_rule
*)rule, msg, i))
+				goto nla_put_failure;
+		}
 	}
 
 	nla_nest_end(msg, nl_reg_rules);
-- 
1.7.2.5



_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

