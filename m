Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
 :From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=6cgn/CFrBlARIB2s47S75Y00mKzviDBxLpAqoltSuRw=;
 b=AI9EIwsqGmD2Pf
 zHHRds69MwmIEfsdtxtLmoAdGb7qs1r0KUUJv8MCLI6kdK7qs7En0JdaT6MG6VApURsqxmIimotr9
 CqEFLmqQuiM3UDhx0NYzr5BnxZuBuCjet6aGZMXsfR8Ult5d+6TDSn3lyWzBtxKwU5Kekb4yYR9kt
 1/ZZ6L94g+bGwFar9DXgUNpl0bsHewpISB55eSzeVW0NWRe/YJ1Op3x8+8qwlWgXnHUsqG65XzAmi
 yY04vWOTGr9SfINP/M3fhTavfZ76d7SkGs0OWnEbK2IwWtVZqA2xFy1/dtEzT5+WxNIr3irqg+FLL
 1CmuQ059AueeoR4ZEjMQ==;
Received: from mail-am5eur03on061f.outbound.protection.outlook.com
 ([2a01:111:f400:fe08::61f]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hK8RS-0003KG-Rr
 for wireless-regdb@lists.infradead.org; Fri, 26 Apr 2019 21:31:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bowerswilkins.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2oJnkRPKjUG+VUmguQak6ThQKhHwVgGN1a6aca1x3R8=;
 b=eM5oyE8qfwVDV4cSns762Cz5/51NZffOhHkYzYgSiVsLVWTvzV/BvFfbXNhWmNH0O5h9bVMELsQt5tHaVYkdryTvhzS46I7+VYG9jMfV6OaTvwF4msnYwnmmuZ27UUdNtZ/qYqRt7uvZs5ZziNZFDhGdszsqOG3GZZw/rE4TCP8=
From: Peter Oh <peter.oh@bowerswilkins.com>
Date: Fri, 26 Apr 2019 21:31:31 +0000
Message-ID: <1556314283-17842-1-git-send-email-peter.oh@bowerswilkins.com>
Content-Language: en-US
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH v2] wireless-regdb: Update regulatory
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
index 4fb1948..8d24305 100644
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
+	(2402 - 2482 @ 40), (23)
+	(5170 - 5250 @ 80), (23), AUTO-BW
+	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
+	(5490 - 5710 @ 160), (23), DFS
+	(5735 - 5835 @ 80), (23)
 	# 60 GHz band channels 1-4,
 	# ref: http://www.law.go.kr/%ED%96%89%EC%A0%95%EA%B7%9C%EC%B9%99/%EB%AC%B4%EC%84%A0%EC%84%A4%EB%B9%84%EA%B7%9C%EC%B9%99
 	(57000 - 66000 @ 2160), (43)
-- 
2.7.4

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

