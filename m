Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WjrCh-0002rZ-5g
 for wireless-regdb@lists.infradead.org; Mon, 12 May 2014 14:27:45 +0000
From: =?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>
Date: Mon, 12 May 2014 16:26:52 +0200
Message-Id: <1399904812-22753-1-git-send-email-bjorn@mork.no>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: update NO's regulatory
	rules
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: linville@tuxdriver.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, =?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>
List-ID: <wireless-regdb@lists.infradead.org>

This aligns the regdb entry with the current Norwegian
regulations.

 o Adding a reference to the authoritative source

 o Adding a note about TPC

 o Adjusting band edges to match the text of the regulations,
   except for merging 5470 - 5725 and 5725 – 5795 MHz using
   the lowest common EIRP limit

 o Syncronizing EIRP limits with the regulation text, fixing
   values, using mW instead of dBm, and adjusting for "no TPC"
   where applicable

 o Adding the bands 5710 – 5795 MHz, 5815 – 5850 MHz and
   17.1 - 17.3 GHz

An unofficial English translation of the regulations is available
from (attachment link on the right):
http://eng.npt.no/technical/frequency-management/frequency-licenses/permission-to-use-radio-frequencies
The relevant part is "Section 11. Wireless networks"

The reference in the db.txt comment is the actual authoritative
publication of these regulations, in Norwegian only.

Signed-off-by: Bjørn Mork <bjorn@mork.no>
---
 db.txt | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index fcab208..9d32643 100644
--- a/db.txt
+++ b/db.txt
@@ -579,11 +579,18 @@ country NL: DFS-ETSI
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
+# Data from http://www.lovdata.no/dokument/SF/forskrift/2012-01-19-77
+# Power at 5250 - 5350 MHz, 5470 - 5725 MHz and 5815 – 5850 MHz can
+# be doubled if TPC is implemented.
+# Up to 2W (or 4W with TPC) is allowed in the 5725 – 5795 MHz band
+# which has been merged with 5470 - 5725 MHz to allow wide channels
 country NO: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20)
-	(5250 - 5330 @ 80), (20), DFS
-	(5490 - 5710 @ 80), (27), DFS
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW)
+	(5250 - 5350 @ 80), (100 mW), DFS
+	(5470 - 5795 @ 80), (500 mW), DFS
+	(5815 - 5850 @ 35), (2000 mW), DFS
+	(17100 - 17300 @ 200), (100 mW)
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
-- 
2.0.0.rc2


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
