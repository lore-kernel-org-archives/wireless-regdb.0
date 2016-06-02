Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine02.qualcomm.com ([199.106.114.251])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b8YN7-0008EL-PF
 for wireless-regdb@lists.infradead.org; Thu, 02 Jun 2016 19:33:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qualcomm.com; i=@qualcomm.com; q=dns/txt; s=qcdkim;
 t=1464896017; x=1496432017;
 h=from:cc:to:subject:date:message-id:x-mailer;
 bh=egTtJfoEvDgeNCrvYbezQDWiecyN6FuJU0bqDuDH0Ko=;
 b=Gkg8uisWcxfdy+5gCWcbzxBNr39TSx/r0pnLEMVTh/5mO/s6/2LEe842
 zX2NfwO4mSgOCtzdBuciJSg2OBp/6K14qY4luAVetzR13Lz8HoFP1WMiG
 AOmgehsGYs0y4mBXCflO73BDfPA6xrcZUkrSZeQ4FY8elzjp+yidI3bB9 g=;
From: Maya Erez <qca_merez@qualcomm.com>
Date: Thu,  2 Jun 2016 22:33:05 +0300
Message-Id: <1464895985-7182-1-git-send-email-qca_merez@qca.qualcomm.com>
Subject: [wireless-regdb] [PATCH v2] wireless-regdb: Republic of Korea: Add
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
Cc: Maya Erez <qca_merez@qualcomm.com>, linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, wil6210@qualcomm.com
List-ID: <wireless-regdb@lists.infradead.org>

Add 60GHz regulatory rules for Korea (KR).
Source is
http://www.law.go.kr/%ED%96%89%EC%A0%95%EA%B7%9C%EC%B9%99/%EB%AC%B4%EC%84%A0%EC%84%A4%EB%B9%84%EA%B7%9C%EC%B9%99

Signed-off-by: Maya Erez <qca_merez@qca.qualcomm.com>
---
 db.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/db.txt b/db.txt
index da16f7c..48df9a5 100644
--- a/db.txt
+++ b/db.txt
@@ -664,6 +664,10 @@ country KR: DFS-JP
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (30), DFS
 	(5735 - 5835 @ 80), (30)
+	# 60 GHz band channels 1-4,
+	# ref: http://www.law.go.kr/%ED%96%89%EC%A0%95%EA%B7%9C%EC%B9%99/%EB%AC%B4%EC%84%A0%EC%84%A4%EB%B9%84%EA%B7%9C%EC%B9%99
+	(57000 - 66000 @ 2160), (43)
+
 
 country KW: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.8.5.2


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

