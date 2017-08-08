Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
 In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=N7ODn6JbtgLff4a5Htkogjzv9RYucovpVbU4XsfXDbM=;
 b=ev/dIWFXcjuXK8
 hK+L6R+qiQgMQCWGUWLYGcQC6UUB0883qdUbZyvNkgoyT5PMVPYWaK50LfnXpsWBGNPzu3Nm+e0pN
 XjpW2pubnBH3I/+tI0Gpl6RJozQkfvSsD/fbOypW1F70S5ZbobDEIcaMfEgEaMwwg2tXCc+7nRYOo
 vNsl81d6gDhpPlsP006tvzWMs6dr8WQh/k6Iv7oCT6THESeZQZkLBTE2mbc0XQyqFxxnGyg1hPk9t
 yegsW0+g4sP+sQisIlscSFGqMijYsp3P6wfJ2xOdo/WZaynAcy1BIm7ZVx96QretA3VPT/0WuzYXo
 RE2dyimM1CNP4ErPztww==;
Received: from mirror2.csie.ntu.edu.tw ([140.112.30.76] helo=wens.csie.org)
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1devLp-0001So-33
 for wireless-regdb@lists.infradead.org; Tue, 08 Aug 2017 03:38:39 +0000
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue,  8 Aug 2017 11:38:04 +0800
Message-Id: <20170808033804.6053-2-wens@csie.org>
In-Reply-To: <20170808033804.6053-1-wens@csie.org>
References: <20170808033804.6053-1-wens@csie.org>
Subject: [wireless-regdb] [PATCH 2/2] wireless-regdb: Add 60 GHz rule for
 Taiwan (TW)
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
Cc: linux-wireless@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

The latest low power radio frequency devices technical regulations [1]
released by Taiwan's regulatory body, NCC, opens up 57 GHz ~ 66 GHz to
most devices, including WiGig.

[1] LP0002 Low-power Radio-frequency Devices Technical Regulations 2016/8/23
    http://www.ncc.gov.tw/english/show_file.aspx?table_name=news&file_sn=681

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 db.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/db.txt b/db.txt
index d96f00e..e48f9a6 100644
--- a/db.txt
+++ b/db.txt
@@ -1188,6 +1188,8 @@ country TW: DFS-FCC
 	(5250 - 5350 @ 80), (23), DFS, AUTO-BW
 	(5470 - 5725 @ 160), (23), DFS
 	(5725 - 5850 @ 80), (30)
+	# 60g band, LP0002 section 3.13.1.1 (3)(C), EIRP=40dBm(43dBm peak)
+	(57000 - 66000 @ 2160), (40)
  
 country TZ:
 	(2402 - 2482 @ 40), (20)
-- 
2.13.3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

