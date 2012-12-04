Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from he.sipsolutions.net ([78.46.109.217] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tg0fq-0004fe-2x
 for wireless-regdb@lists.infradead.org; Tue, 04 Dec 2012 22:09:06 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.0:DHE_RSA_CAMELLIA_256_CBC_SHA1:256) (Exim 4.80)
 (envelope-from <johannes@sipsolutions.net>) id 1Tg0fn-0000TY-6P
 for wireless-regdb@lists.infradead.org; Tue, 04 Dec 2012 23:09:03 +0100
Message-ID: <1354658967.9608.23.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Tue, 04 Dec 2012 23:09:27 +0100
Mime-Version: 1.0
Subject: [wireless-regdb] [PATCH] regdb: enable HT40 on channels 8-13 in
	Japan
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

According to 802.11-2012 Table E-3 channel 8/9 can be
used with HT40+, and correspondingly 12/13 with HT40-
so enable this.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 5318505..887d7b8 100644
--- a/db.txt
+++ b/db.txt
@@ -375,7 +375,7 @@ country JM:
 
 country JP:
 	(2402 - 2472 @ 40), (N/A, 20)
-	(2457 - 2482 @ 20), (N/A, 20)
+	(2457 - 2482 @ 40), (N/A, 20)
 	(2474 - 2494 @ 20), (N/A, 20), NO-OFDM
 	(4910 - 4930 @ 10), (N/A, 23)
 	(4910 - 4990 @ 40), (N/A, 23)
-- 
1.8.0




_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

