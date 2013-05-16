Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from s3.sipsolutions.net ([144.76.43.152] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ud5OV-0000ju-Hh
 for wireless-regdb@lists.infradead.org; Thu, 16 May 2013 21:07:24 +0000
From: Johannes Berg <johannes@sipsolutions.net>
Date: Thu, 16 May 2013 23:06:52 +0200
Message-Id: <1368738412-7740-1-git-send-email-johannes@sipsolutions.net>
Subject: [wireless-regdb] [PATCH] regulatory: enable channels 52-64 and
	100-144 for world roaming
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
Cc: bzhao@marvell.com, wireless-regdb@lists.infradead.org, Johannes Berg <johannes.berg@intel.com>, mcgrof@do-not-panic.com
List-ID: <wireless-regdb@lists.infradead.org>

From: Johannes Berg <johannes.berg@intel.com>

If allowed in a country, these channels typically require DFS
so mark them as such. Channel 144 is a bit special, it's coming
into use now to allow more VHT 80 channels, but world roaming
with passive scanning is acceptable anyway. It seems fairly
unlikely that it'll be used as the control channel for a VHT
AP, but it needs to be present to allow a full VHT connection
to an AP that uses it as one of the secondary channels.

Also enable VHT 160 on these channels, and also for channels
36-48 to be able to use VHT 160 there.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 net/wireless/reg.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/net/wireless/reg.c b/net/wireless/reg.c
index cc35fba..e713051 100644
--- a/net/wireless/reg.c
+++ b/net/wireless/reg.c
@@ -184,11 +184,21 @@ static const struct ieee80211_regdomain world_regdom = {
 			NL80211_RRF_NO_IBSS |
 			NL80211_RRF_NO_OFDM),
 		/* IEEE 802.11a, channel 36..48 */
-		REG_RULE(5180-10, 5240+10, 80, 6, 20,
+		REG_RULE(5180-10, 5240+10, 160, 6, 20,
                         NL80211_RRF_PASSIVE_SCAN |
                         NL80211_RRF_NO_IBSS),
 
-		/* NB: 5260 MHz - 5700 MHz requires DFS */
+		/* IEEE 802.11a, channel 52..64 - DFS required */
+		REG_RULE(5260-10, 5320+10, 160, 6, 20,
+			NL80211_RRF_PASSIVE_SCAN |
+			NL80211_RRF_NO_IBSS |
+			NL80211_RRF_DFS),
+
+		/* IEEE 802.11a, channel 100..144 - DFS required */
+		REG_RULE(5500-10, 5720+10, 160, 6, 20,
+			NL80211_RRF_PASSIVE_SCAN |
+			NL80211_RRF_NO_IBSS |
+			NL80211_RRF_DFS),
 
 		/* IEEE 802.11a, channel 149..165 */
 		REG_RULE(5745-10, 5825+10, 80, 6, 20,
-- 
1.8.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

