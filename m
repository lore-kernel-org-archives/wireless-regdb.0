Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from he.sipsolutions.net ([78.46.109.217] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tg1hE-0008PV-OM
 for wireless-regdb@lists.infradead.org; Tue, 04 Dec 2012 23:14:37 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.0:DHE_RSA_CAMELLIA_256_CBC_SHA1:256) (Exim 4.80)
 (envelope-from <johannes@sipsolutions.net>) id 1Tg1hD-0001RY-HJ
 for wireless-regdb@lists.infradead.org; Wed, 05 Dec 2012 00:14:35 +0100
Message-ID: <1354662900.9608.30.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Wed, 05 Dec 2012 00:15:00 +0100
In-Reply-To: <1354662154.9608.25.camel@jlt4.sipsolutions.net>
References: <1354662154.9608.25.camel@jlt4.sipsolutions.net>
Mime-Version: 1.0
Subject: [wireless-regdb] [PATCH v2] regdb: remove unused 10 MHz wide rules
	for JP
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
List-ID: <wireless-regdb@lists.infradead.org>

From: Johannes Berg <johannes.berg@intel.com>

These 10 MHz rules follow wider rules that contain them
completely, so they will never be used as searching will
stop in the previous rule; remove them.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 db.txt | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/db.txt b/db.txt
index 2622ede..402287a 100644
--- a/db.txt
+++ b/db.txt
@@ -378,10 +378,7 @@ country JP:
 	(2474 - 2494 @ 20), (N/A, 20), NO-OFDM
 	(4910 - 4930 @ 10), (N/A, 23)
 	(4910 - 4990 @ 40), (N/A, 23)
-	(4930 - 4950 @ 10), (N/A, 23)
-	(5030 - 5045 @ 10), (N/A, 23)
 	(5030 - 5090 @ 40), (N/A, 23)
-	(5050 - 5060 @ 10), (N/A, 23)
 	(5170 - 5250 @ 40), (N/A, 20)
 	(5250 - 5330 @ 40), (N/A, 20), DFS
 	(5490 - 5710 @ 40), (N/A, 23), DFS
-- 
1.8.0




_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

