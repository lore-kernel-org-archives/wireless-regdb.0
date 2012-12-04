Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from he.sipsolutions.net ([78.46.109.217] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tg1p4-00008e-QU
 for wireless-regdb@lists.infradead.org; Tue, 04 Dec 2012 23:22:43 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.0:DHE_RSA_CAMELLIA_256_CBC_SHA1:256) (Exim 4.80)
 (envelope-from <johannes@sipsolutions.net>) id 1Tg1p3-0001bw-2e
 for wireless-regdb@lists.infradead.org; Wed, 05 Dec 2012 00:22:41 +0100
Message-ID: <1354663382.32762.0.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Wed, 05 Dec 2012 00:23:02 +0100
In-Reply-To: <1354663083.9608.31.camel@jlt4.sipsolutions.net>
References: <1354663083.9608.31.camel@jlt4.sipsolutions.net>
Mime-Version: 1.0
Subject: [wireless-regdb] [PATCH v2] regdb: remove wrong 10 MHz rule for JP
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

The kernel currently doesn't actually check the
maximum bandwidth for 20 MHz channels (which is
arguably a bug), but if it were to check then
this rule would prevent channel 184 from being
used which is wrong.

The rule does, however, prevent HT40 from being
used when the primary or secondary channel is
channel 184 as the kernel checks there. This is
wrong though, it should be allowed.

Remove the rule.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
v2: update commit log to note HT40 issue

 db.txt | 1 -
 1 file changed, 1 deletion(-)

diff --git a/db.txt b/db.txt
index 402287a..ea6d83d 100644
--- a/db.txt
+++ b/db.txt
@@ -376,7 +376,6 @@ country JM:
 country JP:
 	(2402 - 2482 @ 40), (N/A, 20)
 	(2474 - 2494 @ 20), (N/A, 20), NO-OFDM
-	(4910 - 4930 @ 10), (N/A, 23)
 	(4910 - 4990 @ 40), (N/A, 23)
 	(5030 - 5090 @ 40), (N/A, 23)
 	(5170 - 5250 @ 40), (N/A, 20)
-- 
1.8.0






On Wed, 2012-12-05 at 00:18 +0100, Johannes Berg wrote:
> : Johannes Berg <johannes.berg@intel.com>



_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

