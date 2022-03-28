Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=tB8V1XmciyHJZUR7Bnmuq/Yx9AWPrrhAXFoN/zjF+SU=;
 b=uQduYd8tlaJoPR
 N64DSq1fqJN8Qsc9qHtpsps9SBmQhhyAmI2VVosRtEmSAzcC6R+VNJ2vc43tH3K9WCh/fF+huHq+V
 uRjORpIBR4Om/8IEr26Wdd57z870Zzdib38zEYL8cl6TBuRj2fuk03AeIEzsBwEW6RByQt93ANbcO
 DdGfPoNaLdS9DxzFqO3BwLCmy9Y827VVWXZJBXB6DTPD9GX8pe4M1ShQAUciGLq5YemiNgqjUXtKW
 S2mbipCuDfIw6Ma8HskqSXEvG082+oa5VqhaL8rcVwD37pgmhMy0zq+nbTJKdVyLAB3XvT6qQvb46
 PL+FuOdbKAXaOoSA153Q==;
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYioL-007T8G-LT
 for wireless-regdb@lists.infradead.org; Mon, 28 Mar 2022 06:25:07 +0000
Received: by mail-pg1-x533.google.com with SMTP id s72so11481611pgc.5 for
 <wireless-regdb@lists.infradead.org>; Sun, 27 Mar 2022 23:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20210112; h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8HCUS1XD9Y9CKN2kQWAX+DXJBDXsDCawO6AGnd0cclU=;
 b=Hqytv7IFwuXR+z/zuUbNN+kAIRbGZDbh0V9jHtaIQcTHDYw3FO+Nkde4JNUepwyAP/
 IzmzaWAZSS9ftQB6FmKWSEUw/DTBRwRkmLMdvt3J3v0VrUEag9CCevDPJCZCT2szkjy9
 MqhC19YjuIPAzQJRE71xwXyB9ScCDB1TjGumgy7+RDN9SveyN6EVnDv7OujxizhfklSc
 c28lpDyUJ7e11gchDYr7ffJ3LOyvk8+2l+U2WaAmknRrYgqLln7tQ8d+tBVGnEXmrsXP
 1NDglVUbVQ3JofnnlxHutYHwpwNv2EN7VXW3yIDvRmTSjLQyjjQfGmGYPoeEv1i3ROZp Sglg==
From: Richard Huynh <voxlympha@gmail.com>
Date: Mon, 28 Mar 2022 17:22:51 +1100
Message-Id: <20220328062250.15903-1-voxlympha@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
 for Australia (AU)
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
index e887c73..15de29f 100644
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
+	(5925 - 6425 @ 160), (24), NO-OUTDOOR, AUTO-BW
 	(57000 - 66000 @ 2160), (43), NO-OUTDOOR
 
 country AW: DFS-ETSI
-- 
2.35.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

