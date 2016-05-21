Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine01.qualcomm.com ([199.106.114.254])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b43A6-0003eU-AI
 for wireless-regdb@lists.infradead.org; Sat, 21 May 2016 09:25:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1463822734; x=1495358734;
 h=from:to:cc:subject:date:message-id;
 bh=bB/P0k3ej1phiB6Lp/qz/CQ7pKvAxaxlQ0RJjwc+g6c=;
 b=O1Dw53Yv3/FAQ3JXLg+27+wAOoyZcLS8ZpArw7dr31Pm/S1bUBHQ+vHE
 3gfKQNSuduNbrygX5gSfn6JSfSLR1DkXh44tS/lNNsKbGxrv3kbnRnxMR
 5NZwDYEaeex2GSKBS4q/GDf7UEObgcmxcpE4HNvH2+XpSz+jireMxQFN9 A=;
From: Maya Erez <qca_merez@qca.qualcomm.com>
Date: Sat, 21 May 2016 12:25:08 +0300
Message-Id: <1463822708-20053-1-git-send-email-qca_merez@qca.qualcomm.com>
Subject: [wireless-regdb] [PATCH] wireless-regdb: Republic of Korea: Add
	60GHz regulatory rules
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: Maya Erez <qca_merez@qca.qualcomm.com>, wireless-regdb@lists.infradead.org, wil6210@qca.qualcomm.com, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Add 60GHz regulatory rules for Korea (KR).
Source is
http://www.law.go.kr/%ED%96%89%EC%A0%95%EA%B7%9C%EC%B9%99/%EB%AC%B4%EC%84%A0%EC%84%A4%EB%B9%84%EA%B7%9C%EC%B9%99

Signed-off-by: Maya Erez <qca_merez@qca.qualcomm.com>
---
 db.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/db.txt b/db.txt
index da16f7c..143f915 100644
--- a/db.txt
+++ b/db.txt
@@ -664,6 +664,10 @@ country KR: DFS-JP
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (30), DFS
 	(5735 - 5835 @ 80), (30)
+	# 60 GHz band channels 1-4,
+	# ref: http://www.law.go.kr/%ED%96%89%EC%A0%95%EA%B7%9C%EC%B9%99/%EB%AC%B4%EC%84%A0%EC%84%A4%EB%B9%84%EA%B7%9C%EC%B9%99
+	(57000 - 66000 @ 2160), (57)
+
 
 country KW: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.8.5.2


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

