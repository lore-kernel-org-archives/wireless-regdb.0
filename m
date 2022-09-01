Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=QJiSe5jNtRbiFV7YFMuXgkoWQoQDFsO+iFDU3xVrQEg=;
 b=bS/Mrpqng6g0ro
 2c/WEWQvZuPsI1nKOjkxmlaJJgebzZeCR3TUP/QwiOYKDJUODl2dIvPgl8ClH++LoIz1DZTlTchVb
 dR9WilBirVv/OKGWL0auapAXiux8dPquzPQmNboSujVEqwcxsIjXkmvy3YKADG8WHL6x07sQruUwv
 NbzYiXAPwmZu99/jxdodzpCBFf2hx/7qN8RKU7u9afQcHGXafn8r+vzPz0PUcwlh+/LsYCjsK6IBP
 /qn/QABpgA2mHz2yLuhGvijYfDy8AxIIC/XV3ThRwRHh2rTq4rxVbw+5UJDkQpyfqpsKm+XGdcvp+
 sSB/SVowi7+XWijWMFyA==;
Received: from mail4975.hm1479.locaweb.com.br ([201.76.49.75])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTte5-00FpzP-9s
	for wireless-regdb@lists.infradead.org; Thu, 01 Sep 2022 23:30:51 +0000
Received: from mcbain0012.email.locaweb.com.br (189.126.112.16) by
 mail4970.hm1479.locaweb.com.br id h24vck2n8lg8 for
 <wireless-regdb@lists.infradead.org>; Thu, 1 Sep 2022 20:20:16 -0300
 (envelope-from <cesarb@cesarb.eti.br>)
From: Cesar Eduardo Barros <cesarb@cesarb.eti.br>
Date: Thu,  1 Sep 2022 20:27:34 -0300
Message-Id: <20220901232734.5488-1-cesarb@cesarb.eti.br>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
 for Brazil (BR)
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
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, Cesar Eduardo Barros <cesarb@cesarb.eti.br>
List-ID: <wireless-regdb@lists.infradead.org>

The rules for Brazil in wireless-regdb have no comment indicating where
they came from, and haven't been updated in a long time. There have been
some changes to the legislation since then, including the addition of
the 6 GHz and 60 GHz ranges.

Signed-off-by: Cesar Eduardo Barros <cesarb@cesarb.eti.br>
---
 db.txt | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 07cdf4a..c887557 100644
--- a/db.txt
+++ b/db.txt
@@ -279,12 +279,25 @@ country BO: DFS-JP
 	(5250 - 5330 @ 80), (30), DFS
 	(5735 - 5835 @ 80), (30)
 
+# Source:
+# https://www.gov.br/anatel/pt-br/regulado/radiofrequencia/radiacao-restrita
+# https://informacoes.anatel.gov.br/legislacao/resolucoes/2017/936-resolucao-680
+# https://informacoes.anatel.gov.br/legislacao/atos-de-certificacao-de-produtos/2017/1139-ato-14448
 country BR: DFS-FCC
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (17), AUTO-BW
-	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
-	(5490 - 5730 @ 160), (24), DFS
-	(5735 - 5835 @ 80), (30)
+	(2400 - 2483.5 @ 40), (30)
+	# The next three ranges have been reduced by 3dB, could be increased
+	# to 30dBm if TPC is implemented.
+	(5150 - 5250 @ 80), (27), NO-OUTDOOR, AUTO-BW
+	(5250 - 5350 @ 80), (27), NO-OUTDOOR, DFS, AUTO-BW
+	# This range ends at 5725 MHz, but channel 144 extends to 5730 MHz.
+	# Since 5725 ~ 5730 MHz belongs to the next range which has looser
+	# requirements, we can extend the range by 5 MHz to make the kernel
+	# happy and be able to use channel 144.
+	(5470 - 5730 @ 160), (27), DFS
+	(5730 - 5850 @ 80), (30)
+	(5925 - 7125 @ 320), (12), NO-OUTDOOR, NO-IR
+	# EIRP=40dBm (43dBm peak)
+	(57000 - 71000 @ 2160), (40)
 
 country BS: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-- 
2.37.2


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

