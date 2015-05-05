Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YpYpm-00051M-VL
 for wireless-regdb@lists.infradead.org; Tue, 05 May 2015 09:08:11 +0000
Received: by lbcga7 with SMTP id ga7so123357497lbc.1 for
 <wireless-regdb@lists.infradead.org>; Tue, 05 May 2015 02:07:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ubnt.com; s=google;
 h=date:from:to:subject:message-id:mime-version:content-type
 :content-transfer-encoding;
 bh=boTyZqredEQHFjWbwMA/hPL7+buB4TlQda4brT6ZN/U=;
 b=VAWeVlcTMppPEZn7Hd5BOJ15DSQBYGVMVI4/trcHrj+MWap+u4YxkmEXV/sdTxQh9y
 Z6BNBSWiptyS5UAwf9DmzEF26D1BhfMUbtbb67uIS5ZOtTjAtzj+5/eagslSZOCY9HsO
 KCjEr3g3p72A6/EclAOLcyk3L0R0vskTD3CKI=
Received: from di ([80.233.186.214])
 by mx.google.com with ESMTPSA id an8sm3914463lac.25.2015.05.05.02.07.46
 for <wireless-regdb@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 05 May 2015 02:07:47 -0700 (PDT)
Date: Tue, 5 May 2015 12:07:45 +0300
From: Dmitry Ivanov <dmitrijs.ivanovs@ubnt.com>
Message-Id: <20150505120745.10de808ec9e646dbbc287667@ubnt.com>
Mime-Version: 1.0
Subject: [wireless-regdb] [PATCH] Specify Australian DFS region as DFS-ETSI
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
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Currently, DFS region for Australia is not specified. This prevents starting AP with AU country code on DFS-affected channel in 5 GHz band with latest cfg80211 and hostapd because there is an explicit check for such condition.

Australian standard AS/NZS 4268 requires that DFS must be implemented in accordance to EN 301 893. Alternatively, FCC Part 15.407(h)(2) can be used.

This patch specifies DFS region for Australia as DFS-ETSI.

Source: AS/NZS 4268 (not avilable online).

Signed-off-by: Dmitry Ivanov <dima@ubnt.com>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index ad2acf5..057c8e6 100644
--- a/db.txt
+++ b/db.txt
@@ -85,7 +85,7 @@ country AT: DFS-ETSI
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
-country AU:
+country AU: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17), AUTO-BW
 	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
-- 
2.1.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

