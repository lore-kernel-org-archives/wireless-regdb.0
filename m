Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-f177.google.com ([209.85.212.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SmWlH-0008Lj-11
 for wireless-regdb@lists.infradead.org; Wed, 04 Jul 2012 21:05:24 +0000
Received: by wibhm11 with SMTP id hm11so4417239wib.0 for
 <wireless-regdb@lists.infradead.org>; Wed, 04 Jul 2012 14:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
 :mime-version:content-type:content-transfer-encoding;
 bh=R1pTBDqoEn4Ns6qQTQVaIjd7dRsol1+PSZTLRzzngyM=;
 b=qU/LbevwQw5MBedCRhDo+PrEvcAVI3olppIBH58RykrMTTwmDCMdERxRyaeldspUtP
 xMzOHbvARZI6sPwpA/c0FB/C3bakqra4Vu+2iSz6q8rw0N34RVZUK4rhxWuTfSGnlaER
 ePYHLMlt0D3NvgMU5DWvji2WYnCd5rcPdoZ9ajAcforJrW1fjx/QppsK8zlD3lmi2WbL
 XRF/RkvexDVOGZfx661hcFPXJ9sPm9/fNxqzNrnZLonbMB/LCiY/1AgtOC0l74JY2/7a
 X7AnPkEYEYG1tibITCYWlYK7Ybcm6OuVjXgRltnR6Ol4a1pNijEWzLeQVf78pwSYWlYq rXjg==
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
Date: Wed,  4 Jul 2012 23:05:06 +0200
Message-Id: <1341435907-3787-2-git-send-email-xose.vazquez@gmail.com>
In-Reply-To: <1341435907-3787-1-git-send-email-xose.vazquez@gmail.com>
References: <1341435907-3787-1-git-send-email-xose.vazquez@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH 2/3] wireless-regdb: Update regulatory
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

- Replace units: dBm by mW

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
 db.txt |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 152eb0c..cea63bd 100644
--- a/db.txt
+++ b/db.txt
@@ -239,10 +239,10 @@ country EG:
 	(5250 - 5330 @ 20), (N/A, 20), DFS
 
 country ES: DFS-ETSI
-	(2400 - 2483.5 @ 40), (N/A, 20)
-	(5150 - 5250 @ 40), (N/A, 20)
-	(5250 - 5350 @ 40), (N/A, 20), DFS
-	(5470 - 5725 @ 40), (N/A, 27), DFS
+	(2400 - 2483.5 @ 40), (N/A, 100 mW)
+	(5150 - 5250 @ 40), (N/A, 100 mW)
+	(5250 - 5350 @ 40), (N/A, 100 mW), DFS
+	(5470 - 5725 @ 40), (N/A, 500 mW), DFS
 
 country FI: DFS-ETSI
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
