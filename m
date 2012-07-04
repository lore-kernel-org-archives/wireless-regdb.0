Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SmDei-0003IA-Iz
 for wireless-regdb@lists.infradead.org; Wed, 04 Jul 2012 00:41:21 +0000
Received: by wgbds1 with SMTP id ds1so4725953wgb.18 for
 <wireless-regdb@lists.infradead.org>; Tue, 03 Jul 2012 17:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=from:to:subject:date:message-id:x-mailer:mime-version:content-type
 :content-transfer-encoding;
 bh=S4Xv1e/spqoVISgg7204MBKeHhjMVQ3d+cdTxGFVbLQ=;
 b=jdXC97xZ2R4fTH9EQacN5XyUlAtyv87du26NWghFxXjw9fvm26z7rd21HdVguAAGVN
 1ahte2r46n7EtDnJ/3W2gkWRJSx7E6+Vsc81VbNpObEwa1JlPVgs1H4pl0yhvmRRORJ3
 cgWi62Zt3y/htxacK6URwcdiCNaM1tNFX2hUgLN2AAsAXi3VRJM9gLzIOm+kSJ2GGjDo
 DOXMLoElCp3clVGGLXK5s2BNFhTCFkHm5IJZylZsUaHYhkcYaJohaTj56ZpQ28hcoM15
 JWoUSXsjnj9LsG79XDP8UbnLFmBkHSuCXcxVQoMV1FhG5wVPGgfnCStWXr9/SSh/gion Xulg==
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
Date: Wed,  4 Jul 2012 02:41:13 +0200
Message-Id: <1341362473-18747-1-git-send-email-xose.vazquez@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH v2] wireless-regdb: Update regulatory
 rules for ES (Spain) on 5GHz and 2.4GHz
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
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: mcgrof@frijolero.org, linville@tuxdriver.com, wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, xose.vazquez@gmail.com
List-ID: <wireless-regdb@lists.infradead.org>

Spanish law was based on CEPT/EU rules:
http://lists.infradead.org/pipermail/wireless-regdb/2012-June/000058.html
http://lists.infradead.org/pipermail/wireless-regdb/2012-June/000059.html


Orden ITC/332/2010, de 12 de febrero, por la que se aprueba el cuadro
nacional de atribución de frecuencias (CNAF):
https://www.boe.es/diario_boe/txt.php?id=BOE-A-2010-2719
https://www.boe.es/boe/dias/2010/02/19/pdfs/BOE-A-2010-2719.pdf

search for:
 UN - 85 RLANs y datos en 2400 a 2483,5 MHz (pag. 213)
 UN – 128 RLANs en 5 GHz (pag. 232)

more info at "Cuadro nacional de atribución de frecuencias (CNAF)":
http://www.minetur.gob.es/telecomunicaciones/espectro/paginas/cnaf.aspx

Signed-off-by: Xose Vazquez Perez <xose.vazquez@gmail.com>

---
 db.txt |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 4c54543..11409d6 100644
--- a/db.txt
+++ b/db.txt
@@ -239,10 +239,10 @@ country EG:
 	(5250 - 5330 @ 20), (N/A, 20), DFS
 
 country ES: DFS-ETSI
-	(2402 - 2482 @ 40), (N/A, 20)
-	(5170 - 5250 @ 40), (N/A, 20)
-	(5250 - 5330 @ 40), (N/A, 20), DFS
-	(5490 - 5710 @ 40), (N/A, 27), DFS
+	(2400 - 2483.5 @ 40), (N/A, 100 mW)
+	(5150 - 5250 @ 40), (N/A, 100 mW), NO-OUTDOOR
+	(5250 - 5350 @ 40), (N/A, 100 mW), NO-OUTDOOR, DFS
+	(5470 - 5725 @ 40), (N/A, 500 mW), DFS
 
 country FI: DFS-ETSI
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
