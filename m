Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from max.feld.cvut.cz ([147.32.192.36])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a0vql-0005GA-7g
 for wireless-regdb@lists.infradead.org; Mon, 23 Nov 2015 18:28:28 +0000
From: Michal Sojka <sojkam1@fel.cvut.cz>
Date: Mon, 23 Nov 2015 19:27:14 +0100
Message-Id: <1448303241-27747-2-git-send-email-sojkam1@fel.cvut.cz>
In-Reply-To: <1448303241-27747-1-git-send-email-sojkam1@fel.cvut.cz>
References: <1448303241-27747-1-git-send-email-sojkam1@fel.cvut.cz>
Subject: [wireless-regdb] [PATCH v2 1/8] cfg80211: reg: Remove unused
	function parameter
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
To: linux-wireless@vger.kernel.org
Cc: =?UTF-8?q?Jan=20Kaisrl=C3=ADk?= <kaisrja1@fel.cvut.cz>, wireless-regdb@lists.infradead.org, ath9k-devel@qca.qualcomm.com, ath9k-devel@lists.ath9k.org, bernd.lehmann@volkswagen.de, s.sander@nordsys.de, Michal Sojka <sojkam1@fel.cvut.cz>
List-ID: <wireless-regdb@lists.infradead.org>

Signed-off-by: Michal Sojka <sojkam1@fel.cvut.cz>
---
 net/wireless/reg.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/net/wireless/reg.c b/net/wireless/reg.c
index 2e8d6f3..43b3e57 100644
--- a/net/wireless/reg.c
+++ b/net/wireless/reg.c
@@ -1052,7 +1052,7 @@ static u32 map_regdom_flags(u32 rd_flags)
 }
 
 static const struct ieee80211_reg_rule *
-freq_reg_info_regd(struct wiphy *wiphy, u32 center_freq,
+freq_reg_info_regd(u32 center_freq,
 		   const struct ieee80211_regdomain *regd, u32 bw)
 {
 	int i;
@@ -1097,7 +1097,7 @@ __freq_reg_info(struct wiphy *wiphy, u32 center_freq, u32 min_bw)
 	u32 bw;
 
 	for (bw = MHZ_TO_KHZ(20); bw >= min_bw; bw = bw / 2) {
-		reg_rule = freq_reg_info_regd(wiphy, center_freq, regd, bw);
+		reg_rule = freq_reg_info_regd(center_freq, regd, bw);
 		if (!IS_ERR(reg_rule))
 			return reg_rule;
 	}
@@ -1765,8 +1765,7 @@ static void handle_channel_custom(struct wiphy *wiphy,
 	u32 bw;
 
 	for (bw = MHZ_TO_KHZ(20); bw >= MHZ_TO_KHZ(5); bw = bw / 2) {
-		reg_rule = freq_reg_info_regd(wiphy,
-					      MHZ_TO_KHZ(chan->center_freq),
+		reg_rule = freq_reg_info_regd(MHZ_TO_KHZ(chan->center_freq),
 					      regd, bw);
 		if (!IS_ERR(reg_rule))
 			break;
-- 
2.5.3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

