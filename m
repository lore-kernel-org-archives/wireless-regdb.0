Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
 Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=7jnl6O7ZOntG90Wx2iAcERwtuLdl9HmYpqGq4Th3lL0=;
 b=mug//ncRfMpNDa
 Sp/rxiUQ7IdCfNXTz8/6U+v2BKHRs/ugXRfDSnop1ecSuDWS9AVVWCNPzeP3Z/CflodBY6+1GD7d9
 5uuNVlRE0K3BzRbaT6sPKZ5jNf8UC2m7nNfCDfyNMOgHVxj7hsdZNoQdv51zWBIL+DEX9wbrRvl6P
 qxG/l/HQVfLbGCKA3TZT1fJb2KLt7uR2hOT1IVKEbVblGbhh8wo/JPSvwrF7/AEWl5R29oyD8Gzla
 7pTrhvWdjd1I5JWa3+mqdIYBhOD0WVMiMDqcWEbOZrf0aWVmwYSQjc8Shjl8JcQI66nNl5nrnODA4
 4HLU1yI89vxyIjaD4OgQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eSQL3-0007gi-W9
 for wireless-regdb@lists.infradead.org; Fri, 22 Dec 2017 16:38:28 +0000
Received: from mail-io0-f197.google.com ([209.85.223.197])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1eSQKs-0002Dl-FL
 for wireless-regdb@lists.infradead.org; Fri, 22 Dec 2017 16:38:14 +0000
Received: by mail-io0-f197.google.com with SMTP id d19so17251615ioc.23 for
 <wireless-regdb@lists.infradead.org>; Fri, 22 Dec 2017 08:38:14 -0800 (PST)
From: Seth Forshee <seth.forshee@canonical.com>
Date: Fri, 22 Dec 2017 10:38:08 -0600
Message-Id: <20171222163808.27862-1-seth.forshee@canonical.com>
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update rules for Denmark
 (DK)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
Cc: Seth Forshee <seth.forshee@canonical.com>, Per Mejdal Rasmussen <pmr@its.aau.dk>
List-ID: <wireless-regdb@lists.infradead.org>

Refresh the frequency ranges and power limits based on the
following sources:

 https://erhvervsstyrelsen.dk/sites/default/files/007_interface-datanet_5-6_ghz.pdf.pdf
 https://erhvervsstyrelsen.dk/sites/default/files/radiograenseflader-63.pdf

Cc: Per Mejdal Rasmussen <pmr@its.aau.dk>
Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---
 db.txt | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/db.txt b/db.txt
index 10c84ee1ca5d..990abf997a12 100644
--- a/db.txt
+++ b/db.txt
@@ -371,13 +371,16 @@ country DE: DFS-ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
+# Sources:
+# 5GHz: https://erhvervsstyrelsen.dk/sites/default/files/007_interface-datanet_5-6_ghz.pdf.pdf
+# 60GHz: https://erhvervsstyrelsen.dk/sites/default/files/radiograenseflader-63.pdf
 country DK: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
-	(5490 - 5710 @ 160), (27), DFS
-	# 60 GHz band channels 1-4, ref: Etsi En 302 567
-	(57000 - 66000 @ 2160), (40)
+	(2400 - 2483.5 @ 40), (20)
+	(5150 - 5250 @ 80), (23), AUTO-BW
+	(5250 - 5350 @ 80), (20), DFS, AUTO-BW
+	(5470 - 5725 @ 160), (27), DFS
+	# 60 GHz band channels 1-4 (ETSI EN 302 567)
+	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
 
 # Source:
 # http://www.ntrcdom.org/index.php?option=com_content&view=category&layout=blog&id=10&Itemid=55
-- 
2.14.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

