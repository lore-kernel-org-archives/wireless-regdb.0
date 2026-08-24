Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9250C5DF94
	for <wireless-regdb@archiver.kernel.org>; Mon, 24 Aug 2026 07:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XZsvmuwAgTW2BW/+cc8a/kwDkmTk56cEOsPA8xXJxn8=; b=sf0dvp/My7hgQqK8GXadj768sB
	Sdw9rf65CzBo3ZayrV1yx5rgu+x4RCBQhKH/hJf8nD+avzAjGuHEEECaF+V6dJRyIDFIxNRpS4ImP
	YdwKk292Fkg8E7A3f80MLHTWgoWfNdvVa4ouZJSzccDyKHWxoRKh/rs4CISWd4ROxroan9/PRak0q
	Qkyi7H9aaZsD8ylhBZmYgDhytNPh9SlILH9K7aqzc0vGJwteIQ6t9wYW3e+P6FlPU4EG7lRyZVCJr
	yvpz5GsD1+aIiOMD7hUI+/PzP2SZE07VV3HD8JYBwWSjIqScfucHSPqUXvevYSZzjVqnyQ7xUBvxj
	AnYKQYjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyOmb-0000000G2tV-0u9E;
	Mon, 24 Aug 2026 07:07:49 +0000
Received: from mirror2.csie.ntu.edu.tw ([140.112.30.76] helo=wens.tw)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyOmY-0000000G2sn-3SuF
	for wireless-regdb@lists.infradead.org;
	Mon, 24 Aug 2026 07:07:48 +0000
Received: by wens.tw (Postfix, from userid 1000)
	id 6ACF9600C6; Mon, 24 Aug 2026 15:07:39 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org
Cc: Chen-Yu Tsai <wens@kernel.org>,
	wireless-regdb@lists.infradead.org,
	Ping-Ke Shih <pkshih@realtek.com>,
	Morgan Wong <pbodq2@gmail.com>
Subject: [PATCH] wireless-regdb: allow 320MHz channel width for Hong Kong (HK)
Date: Mon, 24 Aug 2026 15:07:28 +0800
Message-ID: <20260824070730.2089862-1-wens@kernel.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_000747_016571_F4D9F02C 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

There are no restrictions on channel width. Allow 320 MHz channels on
the 6 GHz band for WiFi 7.

Reported-by: Morgan Wong <pbodq2@gmail.com>
Link: https://lore.kernel.org/wireless-regdb/CABzKGg0YEm5PfW9YtEM0G1SYY6RD80DmFpu_Jpb9hoioK+tH-w@mail.gmail.com/
Signed-off-by: Chen-Yu Tsai <wens@kernel.org>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index eb63ff6..7aff3fb 100644
--- a/db.txt
+++ b/db.txt
@@ -892,7 +892,7 @@ country HK: DFS-ETSI
 	(5250 - 5350 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
 	(5470 - 5730 @ 160), (27), DFS
 	(5730 - 5850 @ 80), (36)
-	(5945 - 6425 @ 160), (24), NO-OUTDOOR
+	(5945 - 6425 @ 320), (24), NO-OUTDOOR
 
 # Source:
 # https://www.conatel.gob.hn/doc/Regulacion/resoluciones/2023/NR05-23.pdf
-- 
2.47.3


