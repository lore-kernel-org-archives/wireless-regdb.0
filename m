Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from s3.sipsolutions.net ([5.9.151.49] helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a7QpE-0004vr-2L
 for wireless-regdb@lists.infradead.org; Fri, 11 Dec 2015 16:45:44 +0000
From: Johannes Berg <johannes@sipsolutions.net>
Date: Fri, 11 Dec 2015 17:45:19 +0100
Message-Id: <1449852319-27189-1-git-send-email-johannes@sipsolutions.net>
Subject: [wireless-regdb] [PATCH] regulatory: fix world regdomain
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
To: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Cc: Janusz Dziedzic <janusz.dziedzic@tieto.com>, j@w1.fi, Johannes Berg <johannes.berg@intel.com>
List-ID: <wireless-regdb@lists.infradead.org>

From: Johannes Berg <johannes.berg@intel.com>

Back in 2012, in commit 6d87df6f9657 ("regdb: allow 40 MHz on world
roaming channels 12/13") I evidently broke the world regulatory data
to the point where it was always discarded by the kernel because the
40 MHz bandwidth doesn't fit into the rule range.

Around the same time, I updated the in-kernel regulatory domain with
the same mistake, but unlike the userspace data, the in-kernel data
isn't actually checked for validity.

The end result was that the (inconsequentially invalid) data in the
kernel was always used because the userspace data was rejected.

Fix this by changing the rule to 20 MHz and adding the AUTO-BW flag.
It seems that Janusz had made a similar change in commit 5cfc8073ce35
("wireless-regdb: set AUTO bandwidth for world regulatory"), but it
was reverted for unknown reasons a little less than half a year later
(commit cfa3734b11b2).

The kernel uses very similar invalid rules, but it never checks them
for validity and just uses them, so HT40- ends up getting enabled on
these channels. Thus, when the kernel requests the world regdomain
from userspace, gets the invalid data and rejects it, it falls back
to using the built-in data which is very similar and not validated.

I've tested this now, and the ruleset is now accepted by the kernel
and results in the correct data.

This also means that Jouni's 160 MHz fixes were inconsequentialy and
only the corresponding kernel changes could have been used.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index a6eb033db25d..13cc7ada23d9 100644
--- a/db.txt
+++ b/db.txt
@@ -2,7 +2,7 @@
 country 00:
 	(2402 - 2472 @ 40), (20)
 	# Channel 12 - 13.
-	(2457 - 2482 @ 40), (20), NO-IR
+	(2457 - 2482 @ 20), (20), NO-IR, AUTO-BW
 	# Channel 14. Only JP enables this and for 802.11b only
 	(2474 - 2494 @ 20), (20), NO-IR, NO-OFDM
 	# Channel 36 - 48
-- 
2.6.2


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

