Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
 Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=hYA2SIsOwiAf1zmzKVwZvtRSiU7Dp78o0kv8vnZ5Kbc=;
 b=SeXXm8Id8HO9U0bGiyItQuRxB
 JaOpQd60ode5nmO8wrYfTL8bHyijlBa4/jlFOyAPaUaZkpQnGYQEpBLRRcopgAXwk1G3F6WB2rcN1
 HhCiQtxgO7JKIzAfyS3iHdtI8pKPHm5t2t8xsHDafDwLQHEC5F1Bv7EKAFhELGdTK/628aBb5lrTO
 F25yROP+XpXANaz3ZHhosKVeLE79WyNl9PAUbGa4p/w8FKBdoItSe9DL3qQvdVlmX/LUS7kxDWNTa
 fWzufn5khFPp2pkbiMS0Xx9h4GBQ5A75GysYhyYn7GxuxNbdPUEtCGXhFHtvA0EL5otLIdkqNSyjK
 ly2lv4ycQ==;
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1krnCi-0008Cn-1Y
 for wireless-regdb@lists.infradead.org; Tue, 22 Dec 2020 19:20:17 +0000
Received: by mail-lf1-x130.google.com with SMTP id o19so34618981lfo.1 for
 <wireless-regdb@lists.infradead.org>; Tue, 22 Dec 2020 11:20:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FPuCXixP7EtqyMJX4no93jVlw3DMMt3PppG42GBfh/4=;
 b=IRGfWo+e1q6FjJdcfQClxg/M0rEaEyLJpCNsBMzqKctyYFgBxAWn9NPQXvVoYKHq+n
 17Ssd6PA4HJO6JrXpePTUpL7kvfmQHd+K57hJEWRWY9XWL9ZyuR5NsvbB48s9my4K91Y
 NnbkDhaEA06pGLAZdlGrEK17vuxE1fvBMyX/WjKrH0e8Ge/NMHJSjNe+PXKKoG9gFQzZ
 jMET0mzJWsKX0dD8B/oSDpv8EfH6KTaAU+yoc2oS1V2Dbh4BETlZ8QEHqoQgEG08QQT7
 /RirANYKEc+bsrtPmFubaqo8umpyXgSSnuhHZ9/HSlzitDOv35aNSBvYykS/NzsN7Mkz CLnQ==
From: Illia Volochii <illia.volochii@gmail.com>
Date: Tue, 22 Dec 2020 21:17:38 +0200
Message-Id: <20201222191738.56240-1-illia.volochii@gmail.com>
In-Reply-To: <20201220212721.22450-1-illia.volochii@gmail.com>
References: <20201220212721.22450-1-illia.volochii@gmail.com>
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
index c71a03a..eaa3ea5 100644
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
+2.4 and 5 GHz, dbm for 60 GHz).
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

