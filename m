Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=jQqVAQk6MNJWomUyh5+hbsGz1UB55PSuIIBxQ8/kh/g=;
 b=kRLthrVoMYoenD
 k8YteGRHZyMqxPB5x+7g+y8Zeb7EEZlQ3G7bzqFS2Lz7TZJNvg9/+Lbj8Ug8QxkG2ByGWpEVdKR1a
 9FmuyMcSAaEHgkZFivbQtPAgcNRine+B5LuBkEmUEk/752/C6W0zMy5EejHdvRE524SSEAmLHBJ1W
 l0w0WBfsJX5mysbJWEa10bHejL7pQV7LcZKVqT29KJTIHx/Atx3qB2ox9NGhBIcMpgEh6ahgK1QzP
 YHILkRxCta199CQfv0no1B3Km4DSA96LSlicDvtq8dbXVNzMaackkJuX/xjlErwGrhmVyVy6K7mXD
 EW0d7fQIGDdj1Vp7JpNQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqcUE-008ojP-7J
 for wireless-regdb@lists.infradead.org; Tue, 08 Jun 2021 14:13:47 +0000
Received: from mail-oi1-f198.google.com ([209.85.167.198])
 by youngberry.canonical.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <seth.forshee@canonical.com>) id 1lqcUB-0008FU-Ma
 for wireless-regdb@lists.infradead.org; Tue, 08 Jun 2021 14:13:43 +0000
Received: by mail-oi1-f198.google.com with SMTP id
 j20-20020aca17140000b02901f3ef48ce7dso3365141oii.12 for
 <wireless-regdb@lists.infradead.org>; Tue, 08 Jun 2021 07:13:43 -0700 (PDT)
From: Seth Forshee <seth.forshee@canonical.com>
Date: Tue,  8 Jun 2021 09:13:41 -0500
Message-Id: <20210608141341.86462-1-seth.forshee@canonical.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: update 5725-5850 MHz rule
 for GB
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
Cc: mj888@mail.co.uk, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Based on the latest IR 2030 update [1], update this range to cover
5725-5850 MHz rather than 5725-5875 MHz, increase the max EIRP to
200 mW, remove the DFS requirement, and add NO-OUTDOOR.

[1] https://www.ofcom.org.uk/__data/assets/pdf_file/0028/84970/ir-2030.pdf

Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index ddf9e1434cc7..a5829e074efd 100644
--- a/db.txt
+++ b/db.txt
@@ -599,7 +599,7 @@ country GB: DFS-ETSI
 	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
 	(5470 - 5730 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
-	(5725 - 5875 @ 80), (100 mW), DFS
+	(5725 - 5850 @ 80), (200 mW), NO-OUTDOOR
 	# 60 GHz band channels 1-6
 	(57000 - 71000 @ 2160), (40)
 
-- 
2.31.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

