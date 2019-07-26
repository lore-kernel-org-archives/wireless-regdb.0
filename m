Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
 :From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=ZzVbqiEpXivMHj+zY5ZYQuiTz3YTlicoGL+mgBGMdCo=;
 b=Q4rCcsXgf7QtZz
 tKZBtvyp5HDJZOGLfeRqQxrY6m6zxYlAD7ZQ/2BcBgbmMeD5Ah32t0V32Z0pGijVovyN8VsDi20p4
 G0wP3OV5mxjnOywnZZu1V9igPB5YwocMbRDlvHmWC28IVKMVQpG3uB0yYuYU0fHZfcG7OyIcUDp3b
 WeagOo7Ge/DeAtYDQELPhNcL3xEivS62BRHLtWcCr+MQopa5kuwRv0oGPtFs1gv4vHt+cZ9ZCvze3
 +32cdVoPAvFssjpHzoa2qSy6rYiY5lJxL9HrDGmlt/WtBfGR4uY0SNmhEzmyMGjlI0HxCVGYWQVUy
 A8fWYD+KZzhnj4jS27iw==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqqYD-0006aw-MY
 for wireless-regdb@lists.infradead.org; Fri, 26 Jul 2019 03:05:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564110344;
 bh=Y29MUXuDYdstyBzAWyG59lJsLhGluwMoAhM8BIMoREU=;
 h=From:To:Cc:Subject:Date:From;
 b=GMUDSTwS/SwQy5qRmGO3iHdMqztQ3z0MkIBahoQIlYn22Qv+cxKYaiXmTMyE0/nsU
 Pj4Wt7Qic8DLxfuDgW4kk8CHDVxdnndvogDfqqfjUhGbrXJ8CK6yrjJSgIXpDvlDRu
 2nydUMKlMVqb7dmY1LNGtDYIVjzyljr1cWClSSvc=
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 26 Jul 2019 11:05:38 +0800
Message-Id: <20190726030538.16784-1-wens@kernel.org>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Extend 5470-5725 MHz
 range to 5730 MHz for Taiwan (TW)
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
To: seth.forshee@canonical.com
Cc: linux-wireless@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

From: Chen-Yu Tsai <wens@csie.org>

This range ends at 5725 MHz, but channel 144 extends to 5730 MHz.
The Linux kernel however does not seem capable of considering them
most restrictive subset of multiple rules.

Since 5725 ~ 5730 MHz belongs to the next range which has looser
requirements, we can do this manually and extend the range by 5 MHz
to make the kernel happy and be able to use channel 144.

Also, looking at the US regulations, which the TW ones are based on,
The DFS range ends at 5730 MHz, while the next range starts at 5735
MHz. This doesn't match the actual regulations, but is skewed to meet
wireless channel boundaries. I prefer the database match the law,
and be adjuested only if necessary.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---

I have a vague impression that you asked about the range boundaries
when I first updated the rules for Taiwan. And here we are again.

---
 db.txt | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 37393e6..2e149b6 100644
--- a/db.txt
+++ b/db.txt
@@ -1249,7 +1249,11 @@ country TW: DFS-FCC
 	# 5.15 ~ 5.25 GHz: 30 dBm for master mode, 23 dBm for clients
 	(5150 - 5250 @ 80), (23), AUTO-BW
 	(5250 - 5350 @ 80), (23), DFS, AUTO-BW
-	(5470 - 5725 @ 160), (23), DFS
+	# This range ends at 5725 MHz, but channel 144 extends to 5730 MHz.
+	# Since 5725 ~ 5730 MHz belongs to the next range which has looser
+	# requirements, we can extend the range by 5 MHz to make the kernel
+	# happy and be able to use channel 144.
+	(5470 - 5730 @ 160), (23), DFS
 	(5725 - 5850 @ 80), (30)
 	# 60g band, LP0002 section 3.13.1.1 (3)(C), EIRP=40dBm(43dBm peak)
 	(57000 - 66000 @ 2160), (40)
-- 
2.20.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

