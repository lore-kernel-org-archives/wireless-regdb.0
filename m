Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=RWVyvsV2Rx4oXytCi/qbSKrcKfIr2ggZoXpQWSR7o9o=;
 b=nQNXxn1ga0Zyiz
 eDegFG7wb2egCye0191nWH4zJz7DbZdKFPRREZnk70o8No0ZGgit/fd7Zc7bwMQLKjlr5VoUGUfHf
 n4S6YaI8kmykAGnnTVGyglvCliwuhTOpYXDgXetHzyLN0iqBSl4q2hFEkBiDLAgojqlVS2vTfmj7k
 T4w2hcjKJk+gYCMi2c6enPjBENCtmcHU1Zj3/rAk7d1qNNyYaed9jLNCQIrPkeHvuqf/NqGdqrCgI
 OqAaW9UX+L/1FFVcS7SvYee9tITkxsfD5+mnPZc02P1OU8B9ON3mc7iKfRLktcxyc7xvXz5yS11RQ
 zdpDz/Skpqm4NCWxn4JA==;
Received: from mail-tyzapc01on2075.outbound.protection.outlook.com
 ([40.107.117.75] helo=APC01-TYZ-obe.outbound.protection.outlook.com) by
 bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux)) id
 1oxJJr-002gdk-2i for wireless-regdb@lists.infradead.org; Tue, 22 Nov 2022
 02:47:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=newratek.onmicrosoft.com; s=selector1-newratek-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nXYL7XCdjn34p96lZiyL7qaGzK0aKUfngqCJWrYgtDM=;
 b=Pth6XV2IC08znbWY6LbUfmxi9XCD3cBW0TxUWbwqjsSwhxSjM7o5U9Gy5PrLi7ad9+jRfGq0BTLPbkxE8Jbz17WK0S2qpBz1u/8MKLM9VRrzdj79RBploeS5YLjjludzC9ihbKqLuX2bjMPbsjMzmBaLw1aBBVVB/HYEPVpcfGI=
From: JUN-KYU SHIN <jk.shin@newratek.com>
Date: Tue, 22 Nov 2022 11:45:52 +0900
Message-Id: <20221122024550.11415-1-jk.shin@newratek.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: add support for KR S1G
 channels
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: sforshee@kernel.org
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, JUN-KYU SHIN <jk.shin@newratek.com>
List-ID: <wireless-regdb@lists.infradead.org>

The 917-923.5MHz band is KR USN 1 band, so follows
the emmision limists described in part 8.4.4

The 925-931MHz band is KR USN 5 band, so follows
the emmision limists described in part 8.8.1

Signed-off-by: JUN-KYU SHIN <jk.shin@newratek.com>
---
 db.txt | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/db.txt b/db.txt
index 012824f..1b4fe11 100644
--- a/db.txt
+++ b/db.txt
@@ -950,7 +950,14 @@ country KP: DFS-JP
 # https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000205195
 # https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000205187
 # https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000206568
+# https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000211335
 country KR: DFS-JP
+	# S1G Channel USN 1 (917 - 923.5)
+	(920.5 - 921.5 @ 1), (10)
+	(921.5 – 922.5 @ 1), (14)
+	# S1G Channel USN 5 (925 - 931)
+	(926 - 930 @ 1), (17)
+	(926 - 930 @ 2), (20)
 	(2400 - 2483.5 @ 40), (23)
 	(5150 - 5230 @ 40), (23), AUTO-BW
 	# max. PSD 2.5 mW/MHz in 5230-5250 MHz frequency range
-- 
2.25.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
