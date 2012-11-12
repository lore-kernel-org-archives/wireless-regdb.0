Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from he.sipsolutions.net ([78.46.109.217] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TXqg6-0000bu-Be
 for wireless-regdb@lists.infradead.org; Mon, 12 Nov 2012 09:51:39 +0000
Message-ID: <1352713865.9525.9.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Mon, 12 Nov 2012 10:51:05 +0100
Mime-Version: 1.0
Subject: [wireless-regdb] [PATCH] regdb: allow 40 MHz on world roaming
	channels 12/13
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
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org
Cc: mcgrof@gmail.com
List-ID: <wireless-regdb@lists.infradead.org>

From: Johannes Berg <johannes.berg@intel.com>

When in world roaming mode, allow 40 MHz to be used
on channels 12 and 13 so that an AP that is, e.g.,
using HT40+ on channel 9 (in the UK) can be used.

Reported-by: Eddie Chapman <eddie@ehuk.net>
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
Will also send a corresponding patch for the in-kernel definition.

 db.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 4c54543..5318505 100644
--- a/db.txt
+++ b/db.txt
@@ -1,8 +1,8 @@
 # This is the world regulatory domain
 country 00:
 	(2402 - 2472 @ 40), (3, 20)
-        # Channel 12 - 13. No HT40 channel fits here
-        (2457 - 2482 @ 20), (3, 20), PASSIVE-SCAN, NO-IBSS
+        # Channel 12 - 13.
+        (2457 - 2482 @ 40), (3, 20), PASSIVE-SCAN, NO-IBSS
         # Channel 14. Only JP enables this and for 802.11b only
         (2474 - 2494 @ 20), (3, 20), PASSIVE-SCAN, NO-IBSS, NO-OFDM
         # Channel 36 - 48
-- 
1.8.0




_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

