Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine02.qualcomm.com ([199.106.114.251])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XoqZ1-0000GM-41
 for wireless-regdb@lists.infradead.org; Thu, 13 Nov 2014 09:19:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1415870379; x=1447406379;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=kX1k2EYSzeoXq7F1/M2T1S/XDtYNMjun946SSCrPFOM=;
 b=pcXpzWJFzcS03GYNmf8qifRFMp7oqQe328fehpcMQI1g30V4lnN39jV/
 qGakgjl7g1en7jU9WIqOgdEIKGSBB3+nqOHO1wMrp2LY28RUgBQNjQw/9
 lu1Qnnv2o8yhn15rnIn12U/Z53NmgF41zlDH0U0gBPcuiEMaJGa2VZI1k Y=;
From: Jouni Malinen <jouni@qca.qualcomm.com>
Date: Thu, 13 Nov 2014 11:18:38 +0200
Message-ID: <1415870318-8505-1-git-send-email-jouni@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Reorder country codes to
	be in alphabetical order
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
To: "John W. Linville" <linville@tuxdriver.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

This makes it easier to write (semi-)automated synchronization and
validation scripts against external databases. I'd assume this order was
already supposed to be used, but couple of the countries have been
placed in incorrect locations in the file over the years.

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 134 ++++++++++++++++++++++++++++++++---------------------------------
 1 file changed, 67 insertions(+), 67 deletions(-)

diff --git a/db.txt b/db.txt
index 6cf86e1..df7f7b1 100644
--- a/db.txt
+++ b/db.txt
@@ -411,19 +411,6 @@ country FR: DFS-ETSI
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
-country GE: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (18), AUTO-BW
-	(5250 - 5330 @ 80), (18), DFS, AUTO-BW
-	# 60 gHz band channels 1-4, ref: Etsi En 302 567
-	(57000 - 66000 @ 2160), (40)
-
-country GF: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
-	(5490 - 5710 @ 160), (27), DFS
-
 country GB: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20), AUTO-BW
@@ -439,6 +426,19 @@ country GD: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+country GE: DFS-ETSI
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (18), AUTO-BW
+	(5250 - 5330 @ 80), (18), DFS, AUTO-BW
+	# 60 gHz band channels 1-4, ref: Etsi En 302 567
+	(57000 - 66000 @ 2160), (40)
+
+country GF: DFS-ETSI
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (20), AUTO-BW
+	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
+	(5490 - 5710 @ 160), (27), DFS
+
 country GH: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17), AUTO-BW
@@ -446,6 +446,12 @@ country GH: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+country GL: DFS-ETSI
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
+
 country GP: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20), AUTO-BW
@@ -460,12 +466,6 @@ country GR: DFS-ETSI
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
-country GL: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20)
-	(5250 - 5330 @ 80), (20), DFS
-	(5490 - 5710 @ 80), (27), DFS
-
 country GT: DFS-FCC
 	(2402 - 2472 @ 40), (30)
 	(5170 - 5250 @ 80), (17), AUTO-BW
@@ -483,18 +483,18 @@ country GY:
 	(2402 - 2482 @ 40), (30)
 	(5735 - 5835 @ 80), (30)
 
-country HN: DFS-FCC
+country HK:
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17), AUTO-BW
 	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
-	(5490 - 5730 @ 160), (24), DFS
+	(5490 - 5710 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
-country HK:
+country HN: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17), AUTO-BW
 	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
-	(5490 - 5710 @ 160), (24), DFS
+	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
 country HR: DFS-ETSI
@@ -544,6 +544,10 @@ country IN: DFS-JP
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5735 - 5835 @ 80), (20)
 
+country IR: DFS-JP
+	(2402 - 2482 @ 40), (20)
+	(5735 - 5835 @ 80), (30)
+
 country IS: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20), AUTO-BW
@@ -552,10 +556,6 @@ country IS: DFS-ETSI
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
-country IR: DFS-JP
-	(2402 - 2482 @ 40), (20)
-	(5735 - 5835 @ 80), (30)
-
 country IT: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20), AUTO-BW
@@ -571,6 +571,11 @@ country JM: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+country JO: DFS-JP
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (23)
+	(5735 - 5835 @ 80), (23)
+
 country JP: DFS-JP
 	(2402 - 2482 @ 40), (20)
 	(2474 - 2494 @ 20), (20), NO-OFDM
@@ -580,11 +585,6 @@ country JP: DFS-JP
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (23), DFS
 
-country JO: DFS-JP
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (23)
-	(5735 - 5835 @ 80), (23)
-
 country KE: DFS-JP
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (23)
@@ -696,16 +696,16 @@ country LV: DFS-ETSI
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
-country MC: DFS-ETSI
+country MA: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
-	(5490 - 5710 @ 160), (27), DFS
 
-country MA: DFS-ETSI
+country MC: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
+	(5490 - 5710 @ 160), (27), DFS
 
 # Source:
 # http://www.cnfr.md/index.php?pag=sec&id=117&l=en
@@ -729,12 +729,6 @@ country MF: DFS-ETSI
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
 
-country MO:
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (23)
-	(5250 - 5330 @ 40), (23), DFS
-	(5735 - 5835 @ 40), (30)
-
 country MH: DFS-FCC
 	(2402 - 2472 @ 40), (30)
 	(5170 - 5250 @ 80), (24), AUTO-BW
@@ -757,6 +751,12 @@ country MN: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+country MO:
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 40), (23)
+	(5250 - 5330 @ 40), (23), DFS
+	(5735 - 5835 @ 40), (30)
+
 country MP: DFS-FCC
 	(2402 - 2472 @ 40), (30)
 	(5170 - 5250 @ 80), (24), AUTO-BW
@@ -799,17 +799,17 @@ country MW: DFS-ETSI
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
 
-country MY: DFS-FCC
+country MX: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17), AUTO-BW
-	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
+	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
+	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
-country MX: DFS-FCC
+country MY: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17), AUTO-BW
-	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
-	(5490 - 5730 @ 160), (24), DFS
+	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
 	(5735 - 5835 @ 80), (30)
 
 country NI: DFS-FCC
@@ -912,6 +912,13 @@ country PM: DFS-ETSI
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
 
+country PR: DFS-FCC
+	(2402 - 2472 @ 40), (30)
+	(5170 - 5250 @ 80), (17), AUTO-BW
+	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
+	(5490 - 5730 @ 160), (24), DFS
+	(5735 - 5835 @ 80), (30)
+
 country PT: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20), AUTO-BW
@@ -920,13 +927,6 @@ country PT: DFS-ETSI
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
-country PR: DFS-FCC
-	(2402 - 2472 @ 40), (30)
-	(5170 - 5250 @ 80), (17), AUTO-BW
-	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
-	(5490 - 5730 @ 160), (24), DFS
-	(5735 - 5835 @ 80), (30)
-
 country PW: DFS-FCC
 	(2402 - 2472 @ 40), (30)
 	(5170 - 5250 @ 80), (24), AUTO-BW
@@ -1065,13 +1065,6 @@ country TG: DFS-ETSI
 	(5250 - 5330 @ 40), (20), DFS
 	(5490 - 5710 @ 40), (27), DFS
 
-country TW: DFS-JP
-	(2402 - 2472 @ 40), (30)
-	(5270 - 5330 @ 40), (17), DFS
-	(5490 - 5590 @ 80), (30), DFS
-	(5650 - 5710 @ 40), (30), DFS
-	(5735 - 5835 @ 80), (30)
-
 country TH: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17), AUTO-BW
@@ -1079,13 +1072,6 @@ country TH: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
-country TT: DFS-FCC
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (17), AUTO-BW
-	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
-	(5490 - 5730 @ 160), (24), DFS
-	(5735 - 5835 @ 80), (30)
-
 country TN: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20), AUTO-BW
@@ -1098,6 +1084,20 @@ country TR: DFS-ETSI
 	(5490 - 5710 @ 160), (27), DFS
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
+
+country TT: DFS-FCC
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (17), AUTO-BW
+	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
+	(5490 - 5730 @ 160), (24), DFS
+	(5735 - 5835 @ 80), (30)
+
+country TW: DFS-JP
+	(2402 - 2472 @ 40), (30)
+	(5270 - 5330 @ 40), (17), DFS
+	(5490 - 5590 @ 80), (30), DFS
+	(5650 - 5710 @ 40), (30), DFS
+	(5735 - 5835 @ 80), (30)
  
 # Source:
 # #914 / 06 Sep 2007: http://www.ucrf.gov.ua/uk/doc/nkrz/1196068874
-- 
1.9.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

