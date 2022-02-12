Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Date:Message-Id:
 Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=49e4TqRnkJ65Q+orzFmkj+G9wKpjvnWw4JehjcoTwFI=;
 b=vmisTZL5l6pqQy
 yw/es4EJPeeAKNj/k0/ilyChMKpW33EZjtGQi7aVGuq6rmhyvQgIaI34jCt5kXMwaMAgVqtdgvOgG
 WccxV9gNrfNyS8ntXgtScJHC3Kl2z7M4ZLXyjK8TFh3mqe3VMEY1/gbHyhEabbbiAwMv4TnznKEM3
 O3AugKuRYRsoAkOq1g+2ZBsgeQR1q0TEkREhnQxnwn8Srod2mUpPhpWOcoEkMPXU9ct86nje5b1tQ
 G1AibvF7//xhr0OCFWjUX8s/7+d2MOCN+RPQ8eP/NQVsapmXbaVKBtQnzplMB14rfJ8c1TcYOfu9d
 20tLu8/E6oKQP3AjnWpg==;
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIvHo-00AAPK-Bo
 for wireless-regdb@lists.infradead.org; Sat, 12 Feb 2022 16:30:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 cc:cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:sender:subject
 :subject:to:to; s=fm1; bh=dD1XsyZbVAyi6dQ5L80b0IK56l3bPlcF+G8zq6
 hJkYs=; b=R881m7JgyKvESqLV6WT8piSrjtm/aCudcI3/TxMEB1th6wU+Pgkd4e
 BlqvBMT5VIpk0J5P4Qv2gXp3avKKaYrhixMp2dcbJRwGw+MitOquwLU93MLE5Dqc
 4HnJNJjWcxPRLd0tjeOz4q0Elg4aKdWf7fK207RnW9ajPOa6dRyon+UIfBn6e+dC
 p/qgxH43kYvosiOOLPnQLTQ/Lp9wbQtih+g7+gn1NBOy2E6BqGgwq/4ulV2ipOQQ
 hkYlS+gxMndWi5r6ffVD0aV/lcOkSvG33bv/Qf1dLSQGwvUP/Wp4BvFM0t+TAwbe
 zditszrg2NV3j11kjdeg/kjBrviPHp1Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:from:from:in-reply-to:message-id
 :mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=dD1Xsy
 ZbVAyi6dQ5L80b0IK56l3bPlcF+G8zq6hJkYs=; b=CobB5a2G3G6SLcT9PqgE3I
 ZQhpsE4ThmlelvNo/Y4m+WYiiLB/Ii7C43XIBwMxc+5i+aLi59Vp7ch423LONwHz
 GyP8eDtliGFIJzB5R/hKRedGzusEOEMCMkfVCxHgvbW800kCXy6w9EohHMeN14lG
 az9kg8hvhb2nI44+nOj8k5wb0QlpVYgDGkch4yqtBC0dzrDRO7JMiJTHjDI6BweP
 i0/+juKFl8aV6s+U9MBaU9W0j25Ov3T2OE6MqrFJ4eqk/fk7RV8Vuyhm9jwwVynU
 kcOPeChVl6PAEWX9fzPiU4tq5VI/R1CQ1lepiTyMKg9zGAxZAjUmuWzpW7K3nxng
 ==
Mime-Version: 1.0
Message-Id: <ae43589a-6ca4-4856-8f7f-b631ce44993b@www.fastmail.com>
Date: Sat, 12 Feb 2022 16:29:50 +0000
From: "Jiaxun Yang" <jiaxun.yang@flygoat.com>
Subject: [wireless-regdb] [PATCH v2] wireless-regdb: Update regulatory
 rules for China (CN)
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
To: Seth Forshee <sforshee@kernel.org>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

China had updated regulations on ISM frequencies by
"工信部无〔2021〕129号".

The new regulation effectives from Jan 1 2022.

Update regdb accroading to it's attachment "2400MHz、5100MHz
和 5800MHz 频段无线电发射设备射频技术要求".

Announcement: https://wap.miit.gov.cn/zwgk/zcwj/wjfb/tz/art/2021/art_e4ae71252eab42928daf0ea620976e4e.html
Attachment: https://wap.miit.gov.cn/cms_files/filemanager/1226211233/attach/20219/d125301b13454551b698ff5afa49ca28.pdf

Those documents are only available in Chinese.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
v2: Reduce 3dBm for 5150-5350 MHz due to TPC restriction
---
 db.txt | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 6dbda3c..89b0b17 100644
--- a/db.txt
+++ b/db.txt
@@ -346,11 +346,13 @@ country CL: DFS-JP
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5735 - 5835 @ 80), (20)
 
+# Source:
+# https://wap.miit.gov.cn/cms_files/filemanager/1226211233/attach/20219/d125301b13454551b698ff5afa49ca28.pdf
+# Note: The transmit power for 5150-5350MHz bands can be raised by 3dBm when TPC is implemented
 country CN: DFS-FCC
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (23), AUTO-BW
-	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
-	(5735 - 5835 @ 80), (30)
+	(2400 - 2483.5 @ 40), (20)
+	(5150 - 5350 @ 80), (20), DFS, AUTO-BW
+	(5725 - 5850 @ 80), (33)
 	# 60 GHz band channels 1,4: 28dBm, channels 2,3: 44dBm
 	# ref: http://www.miit.gov.cn/n11293472/n11505629/n11506593/n11960250/n11960606/n11960700/n12330791.files/n12330790.pdf
 	(57240 - 59400 @ 2160), (28)
-- 
2.34.1.windows.1

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
