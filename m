Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x22f.google.com ([2a00:1450:400c:c05::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XGpgM-0005Ys-LJ
 for wireless-regdb@lists.infradead.org; Mon, 11 Aug 2014 13:30:39 +0000
Received: by mail-wi0-f175.google.com with SMTP id ho1so4239157wib.8 for
 <wireless-regdb@lists.infradead.org>; Mon, 11 Aug 2014 06:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=from:to:cc:subject:date:message-id:mime-version:content-type
 :content-transfer-encoding;
 bh=9J6OF+L/evG+Hc4uuYaDpbf1HcU1rrfIUKekt7zMa4Q=;
 b=VzVn7OzIpqaOTLwZqiCJ46PSaO7IOWTayHB+gQrW9eEOYtCgU0OaLq73kxoTLDKjGg
 6xnE3QgwIDJIe924cKKoj8zLVPgvgX2CsKlQQMbLmW7QYwTnH0Ji3j3vHyqTR971ZmOO
 ePxEe9v026+VVrik9Zkn37Z0lXkPgJNG2pLhMl/gUqFfBa0issavoCe2PNA53JmRgJX7
 QW9nvFRT0WYGpaTqcsaSPQDFXFoWndQC6Qq2mjZZ87iuSGFYM46LB1FO38TeJL51NcWd
 JyuZXk9Z+HHEP4WkzVqlUY8bxSjgTL9S50GuqruqQA46xJwcU+HfyXDzgafodpnPEVz/ J/3A==
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
Date: Mon, 11 Aug 2014 15:29:55 +0200
Message-Id: <1407763795-8571-1-git-send-email-xose.vazquez@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH try2] wireless-regdb: change to 200mW
	Max_EIRP in 5150-5250 for ES (Spain)
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
Cc: "Luis R. Rodriguez" <mcgrof@frijolero.org>, wireless-regdb@lists.infradead.org, Xose Vazquez Perez <xose.vazquez@gmail.com>, "John W. Linville" <linville@tuxdriver.com>, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

http://www.boe.es/diario_boe/txt.php?id=BOE-A-2013-4845
http://www.boe.es/boe/dias/2013/05/09/pdfs/BOE-A-2013-4845.pdf

--cut--
UN – 128 RLANs en 5 GHz

[...]
Banda 5150 – 5350 MHz: En esta banda el uso por el servicio móvil en sistemas de
acceso inalámbrico incluyendo comunicaciones electrónicas y redes de área local, se
restringe para su utilización únicamente en el interior de recintos. La potencia isotrópica
radiada equivalente máxima será de 200 mW (p.i.r.e.), siendo la densidad máxima de
p.i.r.e. media de 10 mW/MHz en cualquier banda de 1 MHz. Este valor se refiere a la
potencia promediada sobre una ráfaga de transmisión ajustada a la máxima potencia.

Adicionalmente, en la banda 5250-5350 MHz el transmisor deberá emplear técnicas de
control de potencia (TPC) que permitan como mínimo un factor de reducción de 3 dB de la
potencia de salida. En caso de no usar estas técnicas, la potencia isotrópica radiada
equivalente máxima deberá ser de 100 mW (p.i.r.e). Resto de características técnicas han
de ajustarse a las indicadas en la Decisión de la CEPT ECC/DEC(04)08.
Estas utilizaciones son de uso común, por lo que no se garantiza la protección frente a
otros servicios legalmente autorizados ni puede causar perturbaciones a los mismos.
[...]
--end--

Cc: John W. Linville <linville@tuxdriver.com>
Cc: Luis R. Rodriguez <mcgrof@frijolero.org>
Cc: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org
Signed-off-by: Xose Vazquez Perez <xose.vazquez@gmail.com>
---
 db.txt | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 3d15930..92573d1 100644
--- a/db.txt
+++ b/db.txt
@@ -316,9 +316,16 @@ country EG: DFS-ETSI
 	(5170 - 5250 @ 80), (20)
 	(5250 - 5330 @ 80), (20), DFS
 
+# Orden IET/787/2013, de 25 de abril, por la que se aprueba
+# el cuadro nacional de atribución de frecuencias.
+# http://www.boe.es/diario_boe/txt.php?id=BOE-A-2013-4845
+#
+# more info at "Cuadro nacional de atribución de frecuencias (CNAF)":
+# http://www.minetur.gob.es/telecomunicaciones/espectro/paginas/cnaf.aspx
+
 country ES: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
-	(5150 - 5250 @ 80), (100 mW), NO-OUTDOOR
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR
 	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS
 	(5470 - 5725 @ 80), (500 mW), DFS
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
-- 
1.9.3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
