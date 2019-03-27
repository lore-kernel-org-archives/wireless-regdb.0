Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
 :From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=QoknGujBlle84guYl8gADayhNeB2LJxVbxgkKV0NLjg=;
 b=J4Tmhtm+hB9FVA
 n9orIJSIn0OOpkgYGIZHYk/kXr3sdt4JqyckvXzE24yTkSxF7HGSIctL3hLs8kF/BcwVhCGWyd9Ow
 Wya+8dosm5zzAAszQjpEHitZTW/1SK8oA7N9X57BTa4vygndWhE8NPcoGIqrjZhLNV6HrmNCt+3hM
 u3wdpPqRmJ2+aig4Hq+SctZ0cYjYZcL4y+KWHdNI3DOnoVbYdcN60iEitW1Xa9K3JuK1z1jLBXUI1
 L56ZmGWoyIsGSgda5sb09KMus9u+MoxxBvzN3CSMUCeDduvh7pBjrQmVQcm2zUVyDoet9ViWPMjdz
 eeB7EpVqtKNgM3WQCoQQ==;
Received: from mail-eopbgr80050.outbound.protection.outlook.com
 ([40.107.8.50] helo=EUR04-VI1-obe.outbound.protection.outlook.com) by
 bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux)) id
 1h9DNl-0000qs-2w for wireless-regdb@lists.infradead.org; Wed, 27 Mar 2019
 18:34:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bowerswilkins.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XjOKeSepVR0PgfuqP4cwrNtxLeJZBB8I83t3cDetHK8=;
 b=tHj70jbbj0JXDw2B69W8OBbBi4r3VTECsKXTax4zNAb/GtkRncAQ5iTyTjDCwqeiFLcnFX/XkaD/KjedUgR2MJNU0/WbeN87a4hMgvUDooct9EKv+2qgZGiLe3MEUwlAtQA3ewJ81RRVkrxoeG+5Rx1lH+t2xLOyi3Qnk+aDCxo=
From: Peter Oh <peter.oh@bowerswilkins.com>
Date: Wed, 27 Mar 2019 18:34:29 +0000
Message-ID: <1553711659-27600-1-git-send-email-peter.oh@bowerswilkins.com>
Content-Language: en-US
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
 for South Korea
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
https://www.rra.go.kr/FileDownSvl?file_type=LAWKR&file_parentseq=54&file_seq=27
which revised on November 30, 2016.

Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
---
 db.txt | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 4fb1948..52c17e9 100644
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
+	# ref: https://www.rra.go.kr/ko/reference/lawList_view.do?lw_seq=54&lw_type=3&searchCon=&lw_select=ALL&lw_model=&searchTxt=
+	(2402 - 2482 @ 40), (23)
+	(5170 - 5250 @ 80), (17), AUTO-BW
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

