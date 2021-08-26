Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=/qA/jX+23e7QNh7jdKDGwtBHbOQMIdIKCTlR8I2noJs=;
 b=Va31iuV4UgN0sc
 peQPC67VJyZfa43X9sC2kotawODR7iFr+T3JNgHT7GFWh2yJ4A6nIzG5e3GwFWJh+7BT3vr7ubYdu
 YVWOKwi1M4ZR+bw3Nw2AVhrwMwjuHlfXKokkcspOW4WzDIYdz7lWRMhA0o2hBNKxZS/2UiN9C7KGs
 wMVaJA9kdlU+KQ5ExmzunuHrHG1EfiNBK00zUab6J4gO/gjebmTsdf2zzUKnFmm80WDFLFfMIp08m
 tCMoWUJlUzpcfmCmgIE5UmNA+NAhLjv31HJoD7EBCvh+4nnyD2XGax01QydL7yIp5h5X6PxbTWV42
 r80fZIBBfbN3GsnRMN4A==;
Received: from mail-vs1-xe2b.google.com ([2607:f8b0:4864:20::e2b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJLht-00Ari6-Vd
 for wireless-regdb@lists.infradead.org; Thu, 26 Aug 2021 20:10:41 +0000
Received: by mail-vs1-xe2b.google.com with SMTP id k24so2927606vsg.9 for
 <wireless-regdb@lists.infradead.org>; Thu, 26 Aug 2021 13:10:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RnwFAguajTWbtY8HER0/jsnYSNmcvzU+zHYbuiiR8hw=;
 b=S/gnaa4jkaUpWZWrEFzernYCElVSYkmmW9LJxpBwCDM6lUfy+pq3iuKE2haiclfak3
 8/rYaRjOfwIWCRdSplRWtolS5md0ogxTvQ7qYaexNx9O6D1daMJZN1hKCIsHHxCiohDm
 djokpQISgzvCzqucX/IKrrnPm640J6bNTpC2h7MlZ7UEQlDiJz+qa8p44sIbyOvCTIiS
 PDNQ8SdnvqseEvchMhNkmSZ0OIIKJQQlgoHX6eTxSEtpC2Xca62gsNwC+a2eZNl3dxNo
 e5cM2x0gnWr4LnOZF/M6ctjJK4ZlJ6zNNn7G1kyRp/rkyHw51G2juIPb3Aj6s0aoFJ49 YisA==
From: Victor Bayas <victorsbayas@gmail.com>
Date: Thu, 26 Aug 2021 15:10:26 -0500
Message-Id: <20210826201026.5071-1-victorsbayas@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH v2] Update regulatory rules for Ecuador
 (EC)
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
To: sforshee@kernel.org
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, Victor Bayas <victorsbayas@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

Update the frequency ranges and power limits according to the current
Ecuadorian norm [1], allow up to 160 MHz bandwidth on 5GHz.

[1] https://www.arcotel.gob.ec/wp-content/uploads/2018/04/NORMA-ESPECTRO-DE-USO-LIBRE-Y-ESPECTRO-PARA-USO-DETERMINADO-EN-BANDAS-LIBRES.pdf

Signed-off-by: Victor Bayas <victorsbayas@gmail.com>
---
 db.txt | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index e7b11cf..6e8dbef 100644
--- a/db.txt
+++ b/db.txt
@@ -504,12 +504,14 @@ country DZ: DFS-JP
 	(5250.000 - 5330.000 @ 80.000), (23.00), DFS, AUTO-BW
 	(5490.000 - 5670.000 @ 160.000), (23.00), DFS
 
+# Source:
+# https://www.arcotel.gob.ec/wp-content/uploads/2018/04/NORMA-ESPECTRO-DE-USO-LIBRE-Y-ESPECTRO-PARA-USO-DETERMINADO-EN-BANDAS-LIBRES.pdf
 country EC: DFS-FCC
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 20), (17)
-	(5250 - 5330 @ 20), (24), DFS
-	(5490 - 5730 @ 20), (24), DFS
-	(5735 - 5835 @ 20), (30)
+	(2400 - 2483.5 @ 40), (1000 mW)
+	(5150 - 5250 @ 80), (50 mW), AUTO-BW, DFS
+	(5250 - 5350 @ 80), (125 mW), AUTO-BW, DFS
+	(5470 - 5725 @ 160), (125 mW), DFS
+	(5725 - 5850 @ 80), (1000 mW)
 
 # EE as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
-- 
2.30.2


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

