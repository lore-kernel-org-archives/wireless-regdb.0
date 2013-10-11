Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from canardo.mork.no ([2001:4620:9::1])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VUm7h-0002f1-H2
 for wireless-regdb@lists.infradead.org; Fri, 11 Oct 2013 23:28:00 +0000
From: =?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>
Date: Sat, 12 Oct 2013 01:27:22 +0200
Message-Id: <1381534042-28273-1-git-send-email-bjorn@mork.no>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: NO, Norway - enable VHT80
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
To: "John W. Linville" <linville@tuxdriver.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, =?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

This enables 80 MHz bandwidth usage on all 5 GHz
frequencies.

This is a country that belongs to CEPT [0] and an available
regulatory source is ECC/DEC/(04)08 [1].

Quoting:

considering [...]
   e. that the systems covered by this ECC Decision operate
   typically in a 20 MHz channel bandwidth, other values for
   the channel bandwidth are also feasible provided they
   comply with the relevant maximum mean e.i.r.p. and the
   corresponding maximum mean e.i.r.p. density limits;

[0] https://en.wikipedia.org/wiki/European_Conference_of_Postal_and_Telecommunications_Administrations
[1] http://www.erodocdb.dk/Docs/doc98/official/pdf/ECCDEC0408.PDF

Cc: Luis R. Rodriguez <mcgrof@do-not-panic.com>
Signed-off-by: Bjørn Mork <bjorn@mork.no>
---
I have no idea why this was left out of the big CEPT VHT80 batch...

 db.txt |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index d0d1a3f..8c61b14 100644
--- a/db.txt
+++ b/db.txt
@@ -569,9 +569,9 @@ country NL: DFS-ETSI
 
 country NO: DFS-ETSI
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5170 - 5250 @ 40), (N/A, 20)
-	(5250 - 5330 @ 40), (N/A, 20), DFS
-	(5490 - 5710 @ 40), (N/A, 27), DFS
+	(5170 - 5250 @ 80), (N/A, 20)
+	(5250 - 5330 @ 80), (N/A, 20), DFS
+	(5490 - 5710 @ 80), (N/A, 27), DFS
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (N/A, 40), NO-OUTDOOR
 
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
