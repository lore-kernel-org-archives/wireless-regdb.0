Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Cc:To:From:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Owner;
 bh=NSqkBKtGI8AUcdjaLQwQmu6FsSoQYNnZTVLSNC9GoDk=;
 b=lkou/y1OjjmaxnlKAzbeLEPpa9
 XHvO7CvR13gnE05GBF92ZLM3hc7D4V651AnDD6X4MWH3xoNPmdvjhGckpmf1ed4+wV98ykzZOe0Nb
 v3AkYcrhRnmoPXM0pHLcHZ+02hoWaTnUr/wJm2EgKPY6kdXS51THMVS5AYHphDhlLp/l0sPf0Uiuw
 NufHcE6favzCsq7SFH2Moj7y62px+p2NIR9c8i3DUAm9OSVxoUVFMOdd3elngx30zohpOwEllZxh2
 8CBmqvt/4APUpUeXLnhDoWejfMeQd1sg0lPC7TxMoFcIRAliYn+fyPQQk2jjASHBtm8lOGqc/2Xiq
 XXJ0OLfA==;
Received: from mout-p-102.mailbox.org ([80.241.56.152])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwQf8-006k1H-LT
 for wireless-regdb@lists.infradead.org; Sun, 12 Dec 2021 15:21:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gorani.run;
 s=MBO0001;  t=1639322469;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1YgRBDBjY9b4H++filcUM1GBouPP5nwOcGLzw/oX3kU=;
 b=xkKOhC+SAjZr6wtlboHXitofdhs+bUoQUVLZAZItqrtTwh2njsN54p6hBk9lJbk+Dpp5Z/
 np0MeLj01vJpOTAWQuprNd9h88lpD123r2wAZkPdpI2t4rVLqoj0s/52en5PWJFcOkvjir
 F9sXIdizC3U9jZ3SAaVab9iLGey9Hx21LvkDEpw1zm2VgDGKb9i5EL0oCodz2M1SV8v9DM
 OcMBScnmkNeDheFJjfWrQZ5Jzz02oesHSyeZdAyk2NPv+nmoNPtgmqzrRBDxHh5C5oMpYe
 b8WGKQr+pT0QacFseEZEOv/7iqwokkVtjMY1cfQXc/xWmr6bIMl+lG2xJsUZ0Q==
From: Sungbo Eo <mans0n@gorani.run>
Date: Mon, 13 Dec 2021 00:20:50 +0900
Message-Id: <20211212152050.25962-1-mans0n@gorani.run>
In-Reply-To: <20211024113821.51538-1-mans0n@gorani.run>
References: <20211024113821.51538-1-mans0n@gorani.run>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH v3] wireless-regdb: Update regulatory
 rules for South Korea (KR)
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
To: sforshee@kernel.org
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, Sungbo Eo <mans0n@gorani.run>
List-ID: <wireless-regdb@lists.infradead.org>

This patch is based on MSIT Public Notification 2021-86 ("Unlicensed Radio
Equipment Established Without Notice"), officially announced on 2021-11-29.

The PSD must not exceed 2.5 mW/MHz if the frequency range includes all or
part of 5230-5250 MHz and the bandwidth is equal to or less than 40 MHz.
This leads to the following:
* 5230-5250 @ 20 -> 17 dBm
* 5210-5250 @ 40 -> 20 dBm
Here the power limits for 80/160 MHz bandwidth are also lowered to 17/20 dBm,
as it's not possible to set different power limits for different bandwidths
at the moment.

Extend the last 5 GHz frequency range to 5850 MHz.

WiFi 6E is now allowed with the following restrictions:
* Indoor: the full 1.2 GHz range, up to 160 MHz bandwidth and 2 dBm/MHz PSD
* Outdoor: the lower 500 MHz range, up to 160 MHz bandwidth and 25 mW EIRP
Here only the latter entry is added.

And also update the regulatory source links.

Signed-off-by: Sungbo Eo <mans0n@gorani.run>
---
v3:
* update regulatory source to newer revision
* replace "indoor only" 6E rule with "both indoor and outdoor" rule
  as "indoor only" rule limits PSD instead of EIRP

v2:
* split 5150-5250 MHz band rule to accommodate the PSD limit
* remove AUTO-BW flag from 6 GHz band rule
---
 db.txt | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index b898799..9be03ee 100644
--- a/db.txt
+++ b/db.txt
@@ -862,15 +862,22 @@ country KP: DFS-JP
 	(5490 - 5630 @ 20), (30), DFS
 	(5735 - 5815 @ 20), (30)
 
+# Source:
+# https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000205195
+# https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000205187
+# https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000206568
 country KR: DFS-JP
-	# ref: https://www.rra.go.kr
 	(2400 - 2483.5 @ 40), (23)
-	(5150 - 5250 @ 80), (23), AUTO-BW
+	(5150 - 5210 @ 40), (23), AUTO-BW
+	# max. PSD 2.5 mW/MHz in 5230-5250 MHz frequency range
+	(5210 - 5230 @ 20), (20), AUTO-BW
+	(5230 - 5250 @ 20), (17), AUTO-BW
 	(5250 - 5350 @ 80), (20), DFS, AUTO-BW
 	(5470 - 5725 @ 160), (20), DFS
-	(5725 - 5835 @ 80), (23)
-	# 60 GHz band channels 1-4,
-	# ref: http://www.law.go.kr/%ED%96%89%EC%A0%95%EA%B7%9C%EC%B9%99/%EB%AC%B4%EC%84%A0%EC%84%A4%EB%B9%84%EA%B7%9C%EC%B9%99
+	(5725 - 5850 @ 80), (23)
+	# 6 GHz band
+	(5925 - 6425 @ 160), (14)
+	# 60 GHz band channels 1-4
 	(57000 - 66000 @ 2160), (43)
 
 country KW: DFS-ETSI
-- 
2.34.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

