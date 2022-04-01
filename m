Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=nCnjttTrs22OYIYXcp+xrAxRd0lAOGZxVYAlSdfUxJg=;
 b=yjZrz3PTwkz4Yu
 uu3Y1KM4x6nEw6z+R/ILD1RH6vj5VFQjLoHbS3eMCRRQRShwXLvlYX40wSxMoGcFt7ZOzVlHD9hB5
 W8BlueoNu6JONx2RS991ZafgLk0Vqt6fXrxyOexg2c8NOkLvUM3g3r76YDp07/aMqYKaamM3N67wg
 OH6Bz8/ELCOw0kIgwIUGDLoV/OPlrardAzl3R7RICnv+ievmwI4nEA8SpSZ2PK/Bc2Mn4h6zqXTgY
 o8RZt0AYTr38cR2cYA9A2rh29l0hdBlUxDePfapSyHfPUDqA4TY5fq89JOH5MlbZe9vmDagFosax9
 vEH+9wHchj3y0GVk0dXg==;
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1na7hJ-004Md5-Qs
 for wireless-regdb@lists.infradead.org; Fri, 01 Apr 2022 03:11:39 +0000
Received: by mail-pg1-x52b.google.com with SMTP id c11so1336291pgu.11 for
 <wireless-regdb@lists.infradead.org>; Thu, 31 Mar 2022 20:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20210112; h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yeDQ4zgJLHyjCHgAOp4dtUhvH7HBlcHTmr4EQRu/8po=;
 b=EpVaeFRWYYMqYfUaRd2yiEFkqfxs5Fglx1vyi8nYaNbgmjDrONPElFZfrLu5Ln7G+0
 wjO4aSXSEcp+ka0cxzqRt1hNcFXXpHoNNcBHpHlqcdIln4Xl6kDK7zwTzL43dK8C/sxI
 z7i5tZOcDlkofPK+yfaGCpZZvSwD/HIzeXda3sLZOEGejtWc3101eXsqnxy4LSauGvM2
 jd8nKHkZU59I57dVW0IqNoKG9G6YkddUYNVARS/eRJKHxQokKyZO7+kLOLXd+YcuSmLX
 8qbm1+fWeAenYpWsCsMrL5PUDlvP9FOrBuFc2EnH55HSviowu0/jNkTYtUuCARfa58gU x2Qg==
From: Richard Huynh <voxlympha@gmail.com>
Date: Fri,  1 Apr 2022 14:11:16 +1100
Message-Id: <20220401031116.2195-1-voxlympha@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH v2] wireless-regdb: Update regulatory
 rules for Australia (AU)
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
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, Richard Huynh <voxlympha@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

Changes allowing lower portion of WiFi 6E spectrum. (5925-6425)

Amendment: https://www.legislation.gov.au/Details/F2022L00249
Full text: https://www.legislation.gov.au/Details/F2022C00281

Allows for both 250mW EIRP indoors or 25mW outdoors.
However, only the former limit is defined in this commit.

Signed-off-by: Richard Huynh <voxlympha@gmail.com>
---
 db.txt | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index e887c73..a820ec8 100644
--- a/db.txt
+++ b/db.txt
@@ -121,7 +121,7 @@ country AT: DFS-ETSI
 	(57000 - 66000 @ 2160), (40)
 
 # Source:
-# https://www.legislation.gov.au/Details/F2016C00432
+# https://www.legislation.gov.au/Details/F2022C00281
 # Both DFS-ETSI and DFS-FCC are acceptable per AS/NZS 4268 Appendix B.
 # The EIRP for DFS bands can be increased by 3dB if TPC is implemented.
 # In order to allow 80MHz operation between 5650-5730MHz the upper boundary
@@ -133,6 +133,7 @@ country AU: DFS-ETSI
 	(5470 - 5600 @ 80), (27), DFS
 	(5650 - 5730 @ 80), (27), DFS
 	(5730 - 5850 @ 80), (36)
+	(5925 - 6425 @ 160), (24), NO-OUTDOOR
 	(57000 - 66000 @ 2160), (43), NO-OUTDOOR
 
 country AW: DFS-ETSI
-- 
2.35.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

