Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
 :From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=K63ylVIU5MlHvg9GcyOncX3ls78muKAAzs5i8VjpVFc=;
 b=GfeXKF6Eq40E1O
 qIaxbxKcFAMTtEOat+BSEZbPV3q6/6n0L/Ln+JoAx9ACyukAMliECjCR3rY8IxBNmTHQ2+0gRlx9L
 NMGUFNmtpgPpgU5uOVCCTqhKfTu/BQxYryVWoJ3ZaOaS0E4UvlqIRf4HkHOzrq3y5vGhFBgA4DxP9
 +98MSopyO7Css8opsr7moHOc8ukCSG7h6vPKCpMoAHezzQYOuc66b0Y19i5Bs+Zgtep2Bty7HzT29
 eLdvZHq9AIbzhAFy0ZWmhAKfph8TD0dmtRKdhsmSWJmC5Noa36Wf2JAlPT+2Lt2fN7krZ9jmyHkXB
 5KPxttugBUY9TkacDC6A==;
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fyJfr-0000tO-Sc
 for wireless-regdb@lists.infradead.org; Fri, 07 Sep 2018 16:32:03 +0000
Received: by mail-wr1-f67.google.com with SMTP id w11-v6so15580438wrc.5 for
 <wireless-regdb@lists.infradead.org>; Fri, 07 Sep 2018 09:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=exjHrN1awYG0a5fyFpSzB7TKWzoy8wKcbHUFRTP3vvY=;
 b=lipqxMH5GHNqrGiWhzBXGY0QJ56KXrOHLF8/PWCpPVttJFcasbsBazJiQpfpqmcdF0
 cfvlp2ux8aveM+YpYJJpGRfXvZdxJb6hn2P1VZ2T5MwOsOAVqdWKoupbuFqunWM0BK1k
 RoRzEam2EHflWXmJouLdpAc6oa8AnWgARHut4DN9mRZAXmoixZ0SwqNse7auwi9qLxiz
 ij7c5KuGCRFLfm9ZXWsCgNUNCV23GRb995zuTAe+89q+PNxFyR3oZFNnT/6yYfsVnzxi
 qHqaFK+NgI45GQRsmiUjVal5T2fbTCpDZvcpNkRQVRgoZ2eM4DN10EHSTelA94OvJoIR Lm6w==
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
Date: Fri,  7 Sep 2018 18:28:41 +0200
Message-Id: <20180907162841.11749-1-xose.vazquez@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: update source of info for
 CU and ES
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
Cc: WIRELESS ML <linux-wireless@vger.kernel.org>, Seth Forshee <seth.forshee@canonical.com>, Xose Vazquez Perez <xose.vazquez@gmail.com>, REGDB ML <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

Cc: Seth Forshee <seth.forshee@canonical.com>
Cc: WIRELESS ML <linux-wireless@vger.kernel.org>
Cc: REGDB ML <wireless-regdb@lists.infradead.org>
Signed-off-by: Xose Vazquez Perez <xose.vazquez@gmail.com>
---
 db.txt | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/db.txt b/db.txt
index b168f59..54479fc 100644
--- a/db.txt
+++ b/db.txt
@@ -311,9 +311,10 @@ country CR: DFS-FCC
 	(5490 - 5730 @ 20), (24), DFS
 	(5735 - 5835 @ 20), (30)
 
+# Source:
 # http://www.mincom.gob.cu/?q=marcoregulatorio
 # - Redes Informáticas
-# Resolución 127, 2011 - Reglamento Banda 2,4 GHz.
+# Resolución 127- 2011 Reglamento de Banda de frecuencias de 2,4 GHz.
 country CU: DFS-FCC
 	(2400 - 2483.5 @ 40), (200 mW)
 
@@ -432,13 +433,9 @@ country EG: DFS-ETSI
 	(5170 - 5250 @ 40), (20)
 	(5250 - 5330 @ 40), (20), DFS
 
-# Orden IET/787/2013, de 25 de abril, por la que se aprueba
-# el cuadro nacional de atribución de frecuencias.
-# http://www.boe.es/diario_boe/txt.php?id=BOE-A-2013-4845
-#
-# more info at "Cuadro nacional de atribución de frecuencias (CNAF)":
-# http://www.minetur.gob.es/telecomunicaciones/espectro/paginas/cnaf.aspx
-
+# Source:
+# Cuadro nacional de atribución de frecuencias (CNAF)
+# http://www.mincotur.gob.es/telecomunicaciones/espectro/paginas/cnaf.aspx
 country ES: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
-- 
2.17.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
