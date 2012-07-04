Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-f171.google.com ([209.85.212.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SmWlH-0008Lk-M6
 for wireless-regdb@lists.infradead.org; Wed, 04 Jul 2012 21:05:25 +0000
Received: by wibhq4 with SMTP id hq4so4424009wib.0 for
 <wireless-regdb@lists.infradead.org>; Wed, 04 Jul 2012 14:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
 :mime-version:content-type:content-transfer-encoding;
 bh=tAuBmSboX9ufJPb9PsdKKAdKs27tOQ9HyOszvKy6lBg=;
 b=b09oSXwjA4guQU9ANhONz7j0oDcFiVhhqosRxNQ8wQVSXLG9uphipj6enCf9H9hUMd
 /rHN0vlJ7Oold7q3j2QioRNIOHuGrNwOBzk2qANDFigrD1P/O0HgaB94VO5aGbrRPPIA
 9u+Apxa4EIobnJumeCrCByohDeeCFyLlZ+KtiPysv3E3V1de1U4wpAKBycl+LW0ESEgO
 yoSOGTD3OLTZedOPlLZi9BY+tJsnIQ/MUbVbio4/XYKYWEYrSIqNXyDzFYFOPi6zmFHM
 G10ZHenMUkg27UJUWZAKyxA0uYpVjpl/mL7WaleWFOLW1p7NVGpsswWHTeNUGFrafzTr f0VA==
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
Date: Wed,  4 Jul 2012 23:05:07 +0200
Message-Id: <1341435907-3787-3-git-send-email-xose.vazquez@gmail.com>
In-Reply-To: <1341435907-3787-1-git-send-email-xose.vazquez@gmail.com>
References: <1341435907-3787-1-git-send-email-xose.vazquez@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH 3/3] wireless-regdb: Update regulatory
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

- add NO-OUTDOOR to 5150-5250 and 5250-5350

Spanish law was based on CEPT/EU rules:
http://lists.infradead.org/pipermail/wireless-regdb/2012-June/000058.html
http://lists.infradead.org/pipermail/wireless-regdb/2012-June/000059.html

Orden ITC/332/2010, de 12 de febrero, por la que se aprueba el cuadro
nacional de atribución de frecuencias (CNAF):
https://www.boe.es/diario_boe/txt.php?id=BOE-A-2010-2719
https://www.boe.es/boe/dias/2010/02/19/pdfs/BOE-A-2010-2719.pdf

search for:
 UN - 85 RLANs y datos en 2400 a 2483,5 MHz (pag. 213)
 UN - 128 RLANs en 5 GHz (pag. 232)

more info at "Cuadro nacional de atribución de frecuencias (CNAF)":
http://www.minetur.gob.es/telecomunicaciones/espectro/paginas/cnaf.aspx

Signed-off-by: Xose Vazquez Perez <xose.vazquez@gmail.com>
---
 db.txt |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index cea63bd..11409d6 100644
--- a/db.txt
+++ b/db.txt
@@ -240,8 +240,8 @@ country EG:
 
 country ES: DFS-ETSI
 	(2400 - 2483.5 @ 40), (N/A, 100 mW)
-	(5150 - 5250 @ 40), (N/A, 100 mW)
-	(5250 - 5350 @ 40), (N/A, 100 mW), DFS
+	(5150 - 5250 @ 40), (N/A, 100 mW), NO-OUTDOOR
+	(5250 - 5350 @ 40), (N/A, 100 mW), NO-OUTDOOR, DFS
 	(5470 - 5725 @ 40), (N/A, 500 mW), DFS
 
 country FI: DFS-ETSI
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
