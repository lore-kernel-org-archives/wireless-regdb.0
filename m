Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine02.qualcomm.com ([199.106.114.251])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YEcmP-000114-Tv
 for wireless-regdb@lists.infradead.org; Fri, 23 Jan 2015 11:52:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1422013921; x=1453549921;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oUFLOjDIokwOhQ3gAPurSHtbI7emgiFnSmgydR8t6b4=;
 b=uKzOMiqINCiNSzUZ5ixBKDDpAnDiwcw7A3T3qR8IYF9cKDzRVoNxsxoS
 g7lJJo0j2hDrdJsqvWBhVBCMau60hwcnIcjb2WsH1g1ZWCs4AlDBNbvlU
 cn2LdiFvvF+WfxDkTGogKBcr7aO/6wYkUnNUhQGU+64bNu4cpd2QV1wxq I=;
From: Jouni Malinen <jouni@qca.qualcomm.com>
Date: Fri, 23 Jan 2015 13:51:12 +0200
Message-ID: <1422013872-9732-1-git-send-email-jouni@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Disable VHT80 where 40/80
	MHz on 5 GHz is not allowed
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

VHT80 was incorrectly enabled for number of countries.

40 and 80 MHz channels are not allowed on 5 GHz for these:
- Armenia (AM)
- Bahrain (BH)
- Costa Rica (CR)
- Ecuador (EC)
- Guam (GU)
- Indonesia (ID) (also remove 40 MHz from 2.4 GHz)
- North Korea (KP)
- Sri Lanka (LK)
- El Salvador (SV)

80 MHz channels are not allowed on 5 GHz for these:
- Egypt (EG)
- Russia (RU)

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 74 +++++++++++++++++++++++++++++++++---------------------------------
 1 file changed, 37 insertions(+), 37 deletions(-)

diff --git a/db.txt b/db.txt
index df7f7b1..ae8a216 100644
--- a/db.txt
+++ b/db.txt
@@ -54,8 +54,8 @@ country AL: DFS-ETSI
 
 country AM: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (18)
-	(5250 - 5330 @ 80), (18), DFS
+	(5170 - 5250 @ 20), (18)
+	(5250 - 5330 @ 20), (18), DFS
 
 country AN: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
@@ -146,9 +146,9 @@ country BG: DFS-ETSI
 
 country BH: DFS-JP
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20)
-	(5250 - 5330 @ 80), (20), DFS
-	(5735 - 5835 @ 80), (20)
+	(5170 - 5250 @ 20), (20)
+	(5250 - 5330 @ 20), (20), DFS
+	(5735 - 5835 @ 20), (20)
 
 country BL: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
@@ -263,10 +263,10 @@ country CO: DFS-FCC
 
 country CR: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (17)
-	(5250 - 5330 @ 80), (24), DFS
-	(5490 - 5730 @ 80), (24), DFS
-	(5735 - 5835 @ 80), (30)
+	(5170 - 5250 @ 20), (17)
+	(5250 - 5330 @ 20), (24), DFS
+	(5490 - 5730 @ 20), (24), DFS
+	(5735 - 5835 @ 20), (30)
 
 country CX: DFS-FCC
 	(2402 - 2482 @ 40), (20)
@@ -349,10 +349,10 @@ country DZ: DFS-JP
 
 country EC: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (17)
-	(5250 - 5330 @ 80), (24), DFS
-	(5490 - 5730 @ 80), (24), DFS
-	(5735 - 5835 @ 80), (30)
+	(5170 - 5250 @ 20), (17)
+	(5250 - 5330 @ 20), (24), DFS
+	(5490 - 5730 @ 20), (24), DFS
+	(5735 - 5835 @ 20), (30)
 
 country EE: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
@@ -364,8 +364,8 @@ country EE: DFS-ETSI
 
 country EG: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20)
-	(5250 - 5330 @ 80), (20), DFS
+	(5170 - 5250 @ 40), (20)
+	(5250 - 5330 @ 40), (20), DFS
 
 # Orden IET/787/2013, de 25 de abril, por la que se aprueba
 # el cuadro nacional de atribución de frecuencias.
@@ -474,10 +474,10 @@ country GT: DFS-FCC
 
 country GU: DFS-FCC
 	(2402 - 2472 @ 40), (30)
-	(5170 - 5250 @ 80), (17)
-	(5250 - 5330 @ 80), (24), DFS
-	(5490 - 5730 @ 80), (24), DFS
-	(5735 - 5835 @ 80), (30)
+	(5170 - 5250 @ 20), (17)
+	(5250 - 5330 @ 20), (24), DFS
+	(5490 - 5730 @ 20), (24), DFS
+	(5735 - 5835 @ 20), (30)
 
 country GY:
 	(2402 - 2482 @ 40), (30)
@@ -522,8 +522,8 @@ country HU: DFS-ETSI
 
 country ID: DFS-JP
 	# ref: http://www.postel.go.id/content/ID/regulasi/standardisasi/kepdir/bwa%205,8%20ghz.pdf
-	(2402 - 2482 @ 40), (20)
-	(5735 - 5815 @ 80), (23)
+	(2402 - 2482 @ 20), (20)
+	(5735 - 5815 @ 20), (23)
 
 country IE: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
@@ -607,11 +607,11 @@ country KN: DFS-ETSI
 	(5735 - 5815 @ 80), (30)
 
 country KP: DFS-JP
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
-	(5490 - 5630 @ 80), (30), DFS
-	(5735 - 5815 @ 80), (30)
+	(2402 - 2482 @ 20), (20)
+	(5170 - 5250 @ 20), (20)
+	(5250 - 5330 @ 20), (20), DFS
+	(5490 - 5630 @ 20), (30), DFS
+	(5735 - 5815 @ 20), (30)
 
 country KR: DFS-JP
 	(2402 - 2482 @ 40), (20)
@@ -659,10 +659,10 @@ country LI: DFS-ETSI
 
 country LK: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (17)
-	(5250 - 5330 @ 80), (24), DFS
-	(5490 - 5730 @ 80), (24), DFS
-	(5735 - 5835 @ 80), (30)
+	(5170 - 5250 @ 20), (17)
+	(5250 - 5330 @ 20), (24), DFS
+	(5490 - 5730 @ 20), (24), DFS
+	(5735 - 5835 @ 20), (30)
 
 # Source:
 # http://lca.org.ls/images/documents/lesotho_national_frequency_allocation_plan.pdf
@@ -971,10 +971,10 @@ country RS: DFS-ETSI
 
 country RU: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20)
-	(5250 - 5330 @ 80), (20), DFS
-	(5650 - 5730 @ 80), (30), DFS
-	(5735 - 5835 @ 80), (30)
+	(5170 - 5250 @ 40), (20)
+	(5250 - 5330 @ 40), (20), DFS
+	(5650 - 5730 @ 40), (30), DFS
+	(5735 - 5835 @ 40), (30)
 
 country RW: DFS-FCC
 	(2402 - 2482 @ 40), (20)
@@ -1037,9 +1037,9 @@ country SR: DFS-ETSI
 
 country SV: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (17)
-	(5250 - 5330 @ 80), (23), DFS
-	(5735 - 5835 @ 80), (30)
+	(5170 - 5250 @ 20), (17)
+	(5250 - 5330 @ 20), (23), DFS
+	(5735 - 5835 @ 20), (30)
 
 country SY:
 	(2402 - 2482 @ 40), (20)
-- 
1.9.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
