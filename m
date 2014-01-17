Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from s3.sipsolutions.net ([144.76.43.152] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4669-0004LZ-3J
 for wireless-regdb@lists.infradead.org; Fri, 17 Jan 2014 09:52:22 +0000
Message-ID: <1389952310.6858.1.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Fri, 17 Jan 2014 10:51:50 +0100
Mime-Version: 1.0
Subject: [wireless-regdb] [PATCH] regdb: Republic of Korea: fix double rule
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
To: wireless-regdb <wireless-regdb@lists.infradead.org>
Cc: linux-wireless <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

From: Johannes Berg <johannes.berg@intel.com>

There's no need to have a 20 MHz and a 40 MHz rule that are
other wise completely the same, remove the 20 MHz one.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 db.txt | 1 -
 1 file changed, 1 deletion(-)

diff --git a/db.txt b/db.txt
index fcab208..bf99234 100644
--- a/db.txt
+++ b/db.txt
@@ -467,7 +467,6 @@ country KP: DFS-JP
 	(5735 - 5815 @ 80), (30)
 
 country KR: DFS-JP
-	(2402 - 2482 @ 20), (20)
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20)
 	(5250 - 5330 @ 80), (20), DFS
-- 
1.8.5.1




_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

