Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
 Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=1C1j2ZpG4d6tt5clr2KOfV0LyTqvw51P/gztswuFAgk=;
 b=oYyQVh/LpaqXARGgcD2xa6Ob1
 CquQikR9T4/Lpjht3k55t3aKnZxNDBJGg7Jsqt6OlTu3fWAHpbPoUqlWi/5tHng/tXHkYQk0o1vJ9
 6fAr8jk80zrXHGneqkTwyGvrNtcRRm3XZiscGDdUteP16mxI0yojVfMuloCmvr1MJbzCAEBoN3b3T
 7adly0YB4I214212eRBktdzsoHJVqUNqQvtqu3r+yyFQTxu+l1hExJdG7ZsOhG6zUotQuX6Rdx5RP
 qrru6Ah3ulk/PD51z9a54gv5njXfC2M6xMPhUCYit6jhFB/JckiSMDnsMq0kUZSGYFs8HgSIx9B69
 H/27GavQQ==;
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1krnG8-0008PO-9r
 for wireless-regdb@lists.infradead.org; Tue, 22 Dec 2020 19:23:49 +0000
Received: by mail-lf1-x130.google.com with SMTP id m12so34564141lfo.7 for
 <wireless-regdb@lists.infradead.org>; Tue, 22 Dec 2020 11:23:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bdK3bqAaXhjxbjLLRwmPmQtBbS0rf7DANa/y/ZggeCk=;
 b=kdOd5IiB1Z2MgmQWRcjh2+8TvWAzJDo7Anxi9haqDGpZIULAt/d5LclHWrENhmgBAS
 3Jerv2vzWsK647Ud2p7Fx/MsSQIGkkSxutblvgEpF8IQcV6xNY2qXmbceg074m+lieap
 WxLZ5DxfX8slhcyWcW1XQujyiHB6hq5zIYkagmL67z49b72i2T/07LWyNDazcMvIcGOX
 t31bxfdG2VQ3+4FSbMHRTDpHUAZA7Ez+sPkf+CCc2SGWUxcpxQ24nifwZSuqYHIPUZj7
 XiPoqbf/v1PBWRzQXhyN0YcWF0LrEeS4wghK5TVhscWtZO2+GG5nInlLzhGHRdkVxORF w3yA==
From: Illia Volochii <illia.volochii@gmail.com>
Date: Tue, 22 Dec 2020 21:23:28 +0200
Message-Id: <20201222192329.56983-1-illia.volochii@gmail.com>
In-Reply-To: <20201222191738.56240-1-illia.volochii@gmail.com>
References: <20201222191738.56240-1-illia.volochii@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
 for Ukraine (UA)
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
To: illia.volochii@gmail.com
Cc: seth.forshee@canonical.com, linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

This patch is based on the latest Ukrainian norms https://zakon.rada.gov.ua/laws/show/z0201-15#n48 and is an updated version of the one sent previously.

* Extend some frequency ranges.
* Provide some power limits in mW to be consistent with local norms.
* Decrease EIRP on 60 GHz band channels to 20 dbm.
* Set wmmrule=ETSI to frequency ranges that are related to EN 301 893.
* Permit outdoor usage of 2.4 GHz band channels.
* Prohibit outdoor usage of some 5 GHz and 60 GHz band channels.

Signed-off-by: Illia Volochii <illia.volochii@gmail.com>
---
 db.txt | 27 ++++++++++++++-------------
 1 file changed, 14 insertions(+), 13 deletions(-)

diff --git a/db.txt b/db.txt
index c71a03a..be6edf0 100644
--- a/db.txt
+++ b/db.txt
@@ -1548,21 +1548,22 @@ country TZ:
 	(2402 - 2482 @ 40), (20)
 	(5735 - 5835 @ 80), (30)
 
-# Source:
-# #914 / 06 Sep 2007: http://www.ucrf.gov.ua/uk/doc/nkrz/1196068874
-# #1174 / 23 Oct 2008: http://www.nkrz.gov.ua/uk/activities/ruling/1225269361
-# (appendix 8)
-# Listed 5GHz range is a lowest common denominator for all related
-# rules in the referenced laws. Such a range is used because of
-# disputable definitions there.
+# Source: https://zakon.rada.gov.ua/laws/show/z0201-15#n48
+# Power limit units are the same as provided in the source (i.e., mW for
+# 2.4 and 5 GHz, dbm for 60 GHz).
+# Although it is allowed to use up to 250 mW for some 5 GHz frequency ranges,
+# all of them are limited to 100 mW for IEEE 802.11n and IEEE 802.11ac.
+# 2.4 GHz band channels can be used outdoors when some requirements are met.
+# 5 GHz band channels must be used only indoors in some cases. They are neither
+# permitted nor denied outdoors in others.
 country UA: DFS-ETSI
-	(2400 - 2483.5 @ 40), (20), NO-OUTDOOR
-	(5150 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
-	(5250 - 5350 @ 80), (20), DFS, NO-OUTDOOR, AUTO-BW
-	(5490 - 5670 @ 160), (20), DFS
-	(5735 - 5835 @ 80), (20)
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (100 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5470 - 5725 @ 160), (100 mW), DFS, NO-OUTDOOR, wmmrule=ETSI
+	(5725 - 5850 @ 80), (100 mW), NO-OUTDOOR
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
-	(57000 - 66000 @ 2160), (40)
+	(57000 - 66000 @ 2160), (20), NO-OUTDOOR
 
 country UG: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-- 
2.25.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

