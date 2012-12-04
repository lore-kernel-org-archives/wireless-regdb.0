Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from he.sipsolutions.net ([78.46.109.217] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tg1E9-0007PD-Cu
 for wireless-regdb@lists.infradead.org; Tue, 04 Dec 2012 22:44:34 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.0:DHE_RSA_CAMELLIA_256_CBC_SHA1:256) (Exim 4.80)
 (envelope-from <johannes@sipsolutions.net>) id 1Tg1E7-000106-Mn
 for wireless-regdb@lists.infradead.org; Tue, 04 Dec 2012 23:44:31 +0100
Message-ID: <1354661096.9608.24.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Tue, 04 Dec 2012 23:44:56 +0100
In-Reply-To: <1354658967.9608.23.camel@jlt4.sipsolutions.net>
References: <1354658967.9608.23.camel@jlt4.sipsolutions.net>
Mime-Version: 1.0
Subject: [wireless-regdb] [PATCH v2] regdb: enable HT40 on channels 8-13 in
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
v2: merge the rules, no need to maintain two

 db.txt | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 5318505..2622ede 100644
--- a/db.txt
+++ b/db.txt
@@ -374,8 +374,7 @@ country JM:
 	(5735 - 5835 @ 40), (3, 30)
 
 country JP:
-	(2402 - 2472 @ 40), (N/A, 20)
-	(2457 - 2482 @ 20), (N/A, 20)
+	(2402 - 2482 @ 40), (N/A, 20)
 	(2474 - 2494 @ 20), (N/A, 20), NO-OFDM
 	(4910 - 4930 @ 10), (N/A, 23)
 	(4910 - 4990 @ 40), (N/A, 23)
-- 
1.8.0




_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

