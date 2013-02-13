Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-f181.google.com ([209.85.212.181])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5m8t-0007bS-TY
 for wireless-regdb@lists.infradead.org; Wed, 13 Feb 2013 23:53:38 +0000
Received: by mail-wi0-f181.google.com with SMTP id hm6so2093604wib.2 for
 <wireless-regdb@lists.infradead.org>; Wed, 13 Feb 2013 15:53:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=x-received:from:to:cc:subject:date:message-id:x-mailer:mime-version
 :content-type:content-transfer-encoding;
 bh=oQ0rihoqsqP27BbyhpRGXpTW9pOHxo2hn3PpBakMaqc=;
 b=qgSayhYYSiFNFkNm4iJ0vbxvAQc4TcKG04hgvUAVIBPahSppyv9HjyKb8gnBphr5Tu
 uBFmPdprGHkHWyOBDKapp4BxvwbOq8ysrEm6UzrsVQcFW+XVUfL0I5n3g2n6TM4oV9NI
 lbTpLRWGbRPACwsURTUwpYEmlf72znjEmrx3i78Bx3rqvrOVxFpMAHQiQQooPHoxW0sB
 OlgkSAs77eljeE/jYJ2GQe96iUzq9MdDnJJNlkBcgcx0osuvynvKJxn2jRWy3O3JbP5A
 8t0OiFIri1ElKVZvcg1KSuSVz+zmN0i7cW/x1QJbP7+VGQNDg4zMb1Kb0WYqx+vTMYvJ jvqw==
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
Date: Thu, 14 Feb 2013 00:52:53 +0100
Message-Id: <1360799573-4665-1-git-send-email-xose.vazquez@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: change Max_EIRP in
	5150-5250 for ES (Spain)
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
Cc: "Luis R. Rodriguez" <mcgrof@frijolero.org>, wireless-regdb@lists.infradead.org, Xose Vazquez Perez <xose.vazquez@gmail.com>, "John W. Linville" <linville@tuxdriver.com>, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

I did cut&paste from DE rules, but DE lowers the limit
in 5150-5250 to 100mW for "neighborhood reasons" [1].
Even when 200mW is completely legal in DE.

put 200mW, as Spanish law says:

Banda 5150 – 5350 MHz: En esta banda el uso por el servicio móvil en sistemas de
acceso inalámbrico incluyendo comunicaciones electrónicas y redes de área local, se
restringe para su utilización únicamente en el interior de recintos. La potencia isotrópica
radiada equivalente máxima será de 200 mW (p.i.r.e.), siendo la densidad máxima de
p.i.r.e. media de 10 mW/MHz en cualquier banda de 1 MHz. Este valor se refiere a la
potencia promediada sobre una ráfaga de transmisión ajustada a la máxima potencia

Orden ITC/332/2010, de 12 de febrero, por la que se aprueba el cuadro
nacional de atribución de frecuencias (CNAF):
https://www.boe.es/diario_boe/txt.php?id=BOE-A-2010-2719
https://www.boe.es/boe/dias/2010/02/19/pdfs/BOE-A-2010-2719.pdf

search for:
 UN - 85 RLANs y datos en 2400 a 2483,5 MHz (pag. 213)
 UN - 128 RLANs en 5 GHz (pag. 232)

more info at "Cuadro nacional de atribución de frecuencias (CNAF)":
http://www.minetur.gob.es/telecomunicaciones/espectro/paginas/cnaf.aspx

[1] http://marc.info/?l=linux-wireless&m=127429049514439

Cc: John W. Linville <linville@tuxdriver.com>
Cc: Luis R. Rodriguez <mcgrof@frijolero.org>
Cc: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org
Signed-off-by: Xose Vazquez Perez <xose.vazquez@gmail.com>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index c5861b8..6f618c0 100644
--- a/db.txt
+++ b/db.txt
@@ -269,7 +269,7 @@ country EG:
 
 country ES: DFS-ETSI
 	(2400 - 2483.5 @ 40), (N/A, 100 mW)
-	(5150 - 5250 @ 40), (N/A, 100 mW), NO-OUTDOOR
+	(5150 - 5250 @ 40), (N/A, 200 mW), NO-OUTDOOR
 	(5250 - 5350 @ 40), (N/A, 100 mW), NO-OUTDOOR, DFS
 	(5470 - 5725 @ 40), (N/A, 500 mW), DFS
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
-- 
1.7.11.7


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
