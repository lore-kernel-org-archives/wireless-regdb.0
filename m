Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from iron5.routit.net ([2a02:22a0:0:2:2::2])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WLZDZ-0000Us-5m
 for wireless-regdb@lists.infradead.org; Thu, 06 Mar 2014 14:24:14 +0000
From: Ronald Wahl <ronald.wahl@raritan.com>
Date: Thu,  6 Mar 2014 15:14:16 +0100
Message-Id: <1394115256-30733-1-git-send-email-ronald.wahl@raritan.com>
Subject: [wireless-regdb] [PATCH v2] wireless-regdb: add channels 52..64
 and 100..144 to world regdom
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
Cc: Ronald Wahl <ronald.wahl@raritan.com>
List-ID: <wireless-regdb@lists.infradead.org>

This is a port of what Johannes Berg sent to the
Linux kernel for the static world regulatory domain.

Signed-off-by: Ronald Wahl <ronald.wahl@raritan.com>
---
 db.txt | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index fcab208..e5ab911 100644
--- a/db.txt
+++ b/db.txt
@@ -6,8 +6,11 @@ country 00:
 	# Channel 14. Only JP enables this and for 802.11b only
 	(2474 - 2494 @ 20), (20), NO-IR
 	# Channel 36 - 48
-	(5170 - 5250 @ 80), (20), NO-IR
-	# NB: 5260 MHz - 5700 MHz requies DFS
+	(5170 - 5250 @ 160), (20), NO-IR
+	# Channel 52 - 64
+	(5250 - 5330 @ 160), (20), NO-IR, DFS
+	# Channel 100 - 144
+	(5490 - 5730 @ 160), (20), NO-IR, DFS
 	# Channel 149 - 165
 	(5735 - 5835 @ 80), (20), NO-IR
 	# IEEE 802.11ad (60GHz), channels 1..3
-- 
1.8.5.3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

