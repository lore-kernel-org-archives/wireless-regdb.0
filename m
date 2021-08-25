Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=HnZGpYIpd5MTNSIlI7PPeiWHCKo6O63XD0v+ugJQ/As=;
 b=tLegiw12XVXQ7x
 ACptVAx3ENvLf/e9boxcY54QPgcPaCUrxDCuaXnFcEuv70A7W5TB1QMUCtHshZWHEb7gATKT9+LpR
 yY92V9CCbzub16/v4OdIbwey+WuTQea6/EPDS2yA9ZNLa4ZP0J5dfxI6DStwRwgo8U+VBrEMrUtws
 6wl8JIK1KJoK9Ufc1AjInazI6KK7OH8KFHq1tm8F97BK0LdTib+9JhNa2Mw+POg9ML39gcKYnWuAY
 y+ikOyOWCObI1VIYa+K+jAK09GDvTjrX75/aHw7d8EitcKiYVwH0JFg9lcoj+KOkAQoZ2vsx330uQ
 azqux7eS8u5wmw6M/W+Q==;
Received: from mail-ua1-x932.google.com ([2607:f8b0:4864:20::932])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIjN2-005L5J-6J
 for wireless-regdb@lists.infradead.org; Wed, 25 Aug 2021 03:14:36 +0000
Received: by mail-ua1-x932.google.com with SMTP id a14so2797634uao.0 for
 <wireless-regdb@lists.infradead.org>; Tue, 24 Aug 2021 20:14:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b7C6eU2bq+kP7VKEHH8KfX35tClQoC7RBscehpXMH58=;
 b=iS3h7ld81iYe+OuZ/XBYi7nF14iSBhqjpHLLwzcHgMEPXcptUjyqCF5Mx4W5zXryAb
 z6tsceDG6GCOv4UgdyM0NSb6qsTZISSuZQpPK/5qBhjI7qtEFCp3olPta7NQL/Zq54Pi
 eT1HklsaTztFkDdT7Csy1YXO0roVRf5ojpeQ0H/m3bItLUIT8WOzU31pJ/wvfeSVrnxy
 fcVurvo0qBsVe++s8EzpCgJ+OuaplM80FArrVrVufr+5OxRl1gjH4OmUWAD+Lmo/WNEx
 KLlN2oS+dLNdPMaWTDoaiyhZ05cYNh1nbqkgx8jXhW9apMAraFJJGNpXJThze/9/khn0 FnKQ==
From: Victor Bayas <victorsbayas@gmail.com>
Date: Tue, 24 Aug 2021 22:14:09 -0500
Message-Id: <20210825031409.10552-1-victorsbayas@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] Update regulatory rules for Ecuador (EC)
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

Update the frequency ranges and power limits according to the current Ecuadorian norm [1],
corrected 5GHz maximum bandwidth since there are no legal restrictions in this subject.

Note: 60GHz channels 1 to 3 are allowed without license for Point-to-Point links but
they aren't for Point-to-Multipoint links so they were omitted in this patch.

[1] https://www.arcotel.gob.ec/wp-content/uploads/2018/04/NORMA-ESPECTRO-DE-USO-LIBRE-Y-ESPECTRO-PARA-USO-DETERMINADO-EN-BANDAS-LIBRES.pdf

Signed-off-by: Victor Bayas <victorsbayas@gmail.com>
---
 db.txt | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index e7b11cf..4630854 100644
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
+	(5150 - 5250 @ 80), (50 mW), AUTO-BW
+	(5250 - 5350 @ 80), (250 mW), AUTO-BW, DFS
+	(5470 - 5725 @ 160), (250 mW), DFS
+	(5725 - 5850 @ 80), (1000 mW)
 
 # EE as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
-- 
2.30.2


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

