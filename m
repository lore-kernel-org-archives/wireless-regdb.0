Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
 Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=ZZalb8t9E2kh1uZnHqzKO3/5c9ldvOu//OTvU6fPH4U=;
 b=IfTcC9nILVuyoB
 5HRhjyo8AYPJJwiFT2na5EkqDKCyGLa+m5VQpyQLXQ/p67PK98hu2NkS7ZUTwuGBE9/NyyqFRxnxg
 mLOZn4juLo58TlX/69PTkaqR47unHdtfElKU1TK1ejJdwtRTu/Ef0CG4NbHx9TXjO48tX6IyMj7tk
 zi9rSLVOD7xXOk76cHXa0zVZhEGfB/a7VRAuS+dqk6EdhCnbUrctlESXwUJcB9iouDLQojMbCY7sD
 9pYbjhkTvsKUUKwdI0DOTNqYTtrwSPXY4IE7/Uw6FRyi5jlBh8kGnfycxdDCz0dcTDlcFfkTifmcb
 Z9nTSfHtiw6z8NYwWkeQ==;
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZAQe-0001Bg-OO
 for wireless-regdb@lists.infradead.org; Tue, 18 Dec 2018 08:09:01 +0000
Received: by mail-pl1-x62d.google.com with SMTP id u6so7454702plm.8 for
 <wireless-regdb@lists.infradead.org>; Tue, 18 Dec 2018 00:08:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=from:to:cc:subject:date:message-id;
 bh=4R8/VLPZrJn9vSYTePrs8K5VHrnIeHZRgGlh1K7UCYI=;
 b=TQCRFpajiY/mX5yF3I+AJchM/1mAmBmFuMfQprajkZfFSEDb1VecSL/awOo7obc7nG
 VxU6R0YvhoyLkw6QlQx5Ksnxh0swsKPy5KVO+3sbnvw1035RScaQRJjZH9M+G2GwsZE9
 mM/+s694SlO5Pi9Jmmy2x0QcsEUECn9Tg+yvLZ0dwjMGRgVvt1l6+2/q+Pe/uTH99U+1
 NBPkIxdHrkGiHNiPocA7supyH64umN/lHyRc7jtI2567KDlbzbm/eGUmWLhv9zIpnxrJ
 yRCsgU7lZCZ1KrifsF6Zo4ClFthIK1YOWSiSy+UZdQ6hwPM77oxauj5Yf72xD0epIkWQ VGWw==
From: chaitanya.mgit@gmail.com
Date: Tue, 18 Dec 2018 13:38:15 +0530
Message-Id: <20181218080815.19395-1-chaitanya.mgit@gmail.com>
Subject: [wireless-regdb] [PATCH] wireless-regdb: update 60ghz band rules
 for us
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
To: seth.forshee@canonical.com
Cc: Chaitanya Tata <Chaitanya.Mgit@gmail.com>, linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

From: Chaitanya Tata <Chaitanya.Mgit@gmail.com>

Include channels 4, 5 & 6 for US in 60GHz band. FCC extended the
57-64GHz band till 71GHz with almost same rules.
---
 db.txt | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index fa5c0e0..ae650dd 100644
--- a/db.txt
+++ b/db.txt
@@ -1280,9 +1280,9 @@ country US: DFS-FCC
 	(5490 - 5730 @ 160), (23), DFS
 	(5735 - 5835 @ 80), (30)
 	# 60g band
-	# reference: http://cfr.regstoday.com/47cfr15.aspx#47_CFR_15p255
-	# channels 1,2,3, EIRP=40dBm(43dBm peak)
-	(57240 - 63720 @ 2160), (40)
+	# reference: section IV-D https://docs.fcc.gov/public/attachments/FCC-16-89A1.pdf
+	# channels 1-6 EIRP=40dBm(43dBm peak)
+	(57240 - 71000 @ 2160), (40)
 
 country UY: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-- 
2.17.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

