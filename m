Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
 :From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=QA2G8Jm0o6RwYpE0ouauKLcgU54Bgb6N9rlmrigVdO8=;
 b=V9DAbYopigfXyv
 0mk6hUUtZcNHydoVpdrCsu7NU8e8sx8LPJq+XEq3Vjsvo4aLp0pHexNrMaVd+MeK1u60Te3gDJNT5
 JH0682xHtK/zXkVqVdldGxDwpcy0tuitBDbJdjTOo06iJ4Di4JhvxIiyLD1XPvN9rALjYCXSXQvMh
 fqClLM7OyRsjhlVM+MmX1R+CF9PnsgdOqczvYvfaNd4sp2bam+RIDF10/o0RoFS+M+rl3rExKu2oA
 eyv7e/of4qn59LlkO1hwypOFhBpXjBH+dZ+HqwN7qef3ASRB/66Hsb1h+ozfaFT9VSqqLItZjLnO3
 hzVM1A47zVPeoJRaMcxg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQtvJ-0007lc-Hv
 for wireless-regdb@lists.infradead.org; Wed, 15 May 2019 13:26:23 +0000
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1hQtvH-0007x2-S8
 for wireless-regdb@lists.infradead.org; Wed, 15 May 2019 13:26:20 +0000
Received: by mail-io1-f72.google.com with SMTP id s24so1852806iot.0 for
 <wireless-regdb@lists.infradead.org>; Wed, 15 May 2019 06:26:19 -0700 (PDT)
From: Seth Forshee <seth.forshee@canonical.com>
Date: Wed, 15 May 2019 08:26:17 -0500
Message-Id: <20190515132617.12852-1-seth.forshee@canonical.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Expand 60 GHz band for
 Japan to 57-66 GHz
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
Cc: linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

The official documents are not feely available, but based on
summaries such as [1] and numerous third-party resources the 60
GHz band in Japan has been 57-66 GHz for some time now. Update
our rules accordingly.

[1] https://webstore.arib.or.jp/en/products/detail.php?product_id=288

Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 4fb194835116..e11e0f747386 100644
--- a/db.txt
+++ b/db.txt
@@ -664,7 +664,7 @@ country JP: DFS-JP
 	(5490 - 5710 @ 160), (23), DFS
 	# 60 GHz band channels 2-4 at 10mW,
 	# ref: http://www.arib.or.jp/english/html/overview/doc/1-STD-T74v1_1.pdf
-	(59000 - 66000 @ 2160), (10 mW)
+	(57000 - 66000 @ 2160), (10 mW)
 
 country KE: DFS-JP
 	(2402 - 2482 @ 40), (20)
-- 
2.20.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

