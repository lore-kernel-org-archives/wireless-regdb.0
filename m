Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
 :From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=ora+ckNo4AHHK8iBYMnUfhXKO2xVDIC9KwWR7ukyBoA=;
 b=SgojVqdxYirwk1
 i7EMxIsGc5QVfkK0UlYOJlWOYMlLnXG7eJt5jPefxTf6/k1Yip/TtdKuiUG+iAOShEW7hWpPtUiPN
 Fwe5CY7gELubmcA5uFevgFB1iN2LszHoRtf3HODUUHVLvr8raD9s6cNjS1QZahcwHGef57e347YfU
 lgqZauzqcaBE1l7XOJLQnDSj6j1PuCLmB1Fn2UuieC+CaXCcaKtPvrqpx/D4da1NVSTCd15Ymms0B
 W9LsFP1FlIzX+agMZcT5R2eTcsTSxUifhzy3FhfDS4y8Io7zf4S/0R4+/pQx8VspBl7koq33J8s5K
 bt++t+uIWPsjdb/oMUcw==;
Received: from mail-he1eur01on0611.outbound.protection.outlook.com
 ([2a01:111:f400:fe1e::611]
 helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQzZo-0002rn-Uk
 for wireless-regdb@lists.infradead.org; Wed, 15 May 2019 19:28:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bowerswilkins.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/t5RQyY4opltNV2SxvLc12fTsmNzAbNTwSpXWmaJ8/g=;
 b=XedgBruGVvjAFp/RDjkRfEqFTxm7cG0Oo6O8LreBNB6aROwJZ+H9zIdG9g92PaCO7CH+Z0+yQ9nkYlvLZmg9kTqcshDRqK5BV6LYw8es3XEBCSysaLfko2gu/luy/f7MS9iQv7/qGMhLXMzBXLHHCuh81cFgFNAsLCbJGn1BRQc=
From: Peter Oh <peter.oh@bowerswilkins.com>
Date: Wed, 15 May 2019 19:28:29 +0000
Message-ID: <1557948501-12579-1-git-send-email-peter.oh@bowerswilkins.com>
Content-Language: en-US
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH v3] wireless-regdb: Update regulatory
 rules for South Korea
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
To: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, Peter Oh <peter.oh@bowerswilkins.com>
List-ID: <wireless-regdb@lists.infradead.org>

From: Peter Oh <peter.oh@bowerswilkins.com>

Update power limit as documented in:
http://www.law.go.kr/%ED%96%89%EC%A0%95%EA%B7%9C%EC%B9%99/
%EC%8B%A0%EA%B3%A0%ED%95%98%EC%A7%80%EC%95%84%EB%8B%88%ED
%95%98%EA%B3%A0%EA%B0%9C%EC%84%A4%ED%95%A0%EC%88%98%EC%9E
%88%EB%8A%94%EB%AC%B4%EC%84%A0%EA%B5%AD%EC%9A%A9%EB%AC%B4
%EC%84%A0%EA%B8%B0%EA%B8%B0/(2018-89,20181227)
which revised on December 27, 2018.

Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
---
 db.txt | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 4fb1948..6e5019f 100644
--- a/db.txt
+++ b/db.txt
@@ -695,11 +695,12 @@ country KP: DFS-JP
 	(5735 - 5815 @ 20), (30)
 
 country KR: DFS-JP
-	(2402 - 2482 @ 40), (13)
-	(5170 - 5250 @ 80), (20), AUTO-BW
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
-	(5490 - 5710 @ 160), (30), DFS
-	(5735 - 5835 @ 80), (30)
+	# ref: https://www.rra.go.kr
+	(2400 - 2483.5 @ 40), (23)
+	(5150 - 5250 @ 80), (23), AUTO-BW
+	(5250 - 5350 @ 80), (20), DFS, AUTO-BW
+	(5470 - 5725 @ 160), (20), DFS
+	(5725 - 5835 @ 80), (23)
 	# 60 GHz band channels 1-4,
 	# ref: http://www.law.go.kr/%ED%96%89%EC%A0%95%EA%B7%9C%EC%B9%99/%EB%AC%B4%EC%84%A0%EC%84%A4%EB%B9%84%EA%B7%9C%EC%B9%99
 	(57000 - 66000 @ 2160), (43)
-- 
2.7.4

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

