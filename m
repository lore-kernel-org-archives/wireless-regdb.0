Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x22a.google.com ([2a00:1450:400c:c05::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vbtqw-0002Nm-3z
 for wireless-regdb@lists.infradead.org; Thu, 31 Oct 2013 15:08:07 +0000
Received: by mail-wi0-f170.google.com with SMTP id ex4so5667162wid.1 for
 <wireless-regdb@lists.infradead.org>; Thu, 31 Oct 2013 08:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :content-type:content-transfer-encoding;
 bh=npoiEsvhC6yhVsb3MoO2ouFVe2HG41rDdaGV18z/Xq0=;
 b=sP3qddJ710c+ry8G1umFd3WsBTSgNxvEsp6uYgngBpgzHleiwQN1AsazkCujQBaCPL
 m5vRm3fqqk7b2K7R8Jbh7sXvugr9SQwT1DyvNR/sOInh/rjfhOdFkxvfDiwDQvmVBsJ2
 3vAqWtWLATpp/5nTPW/ayk0e2MyylnBhnHTou7UkP3rDqbTzms0anzh96QxhXzSPLWIG
 EzstEmA9QbK9cx/YK0FCaLJy3zcpT8dBZcvylIeX2pTr5NxA1gSdLRD7TlWvoGdfL+im
 TonqnAMJIquA6JbSmnHZlXg+TEPbeP22Pujy7Iv12mbrW3N0fJf5aVX7pLibLVDJ5hfp NWbQ==
Message-ID: <5272723B.4090006@gmail.com>
Date: Thu, 31 Oct 2013 16:07:39 +0100
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH 5/7] wireless-regdb: optimize two of
	ES's rules
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
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless <linux-wireless@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

hi Luis,

This patch is incompatible with my ("pending")patch:
http://lists.infradead.org/pipermail/wireless-regdb/2013-February/000136.html

thanks,

---cortamorena---
Subject: [PATCH] wireless-regdb: change Max_EIRP in 5150-5250 for ES (Spain)

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
---end---


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
