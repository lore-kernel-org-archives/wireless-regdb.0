Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
 :From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=slmdW9DxbH/+Lqkp+WrAu0sf6DMa46NeOX7bkm1GdWM=;
 b=M6i+ib2iFabLzi
 +i/2VDrJ8agjQcOSNSK/JI4br4q2FTVgvnIro4KP3kdCHoReot4pT46qHyYU8eSJKJO/6c4tmhiis
 DDSo+1k8PPihHT0SfcpYZe8sh0p13nrp3VhIHIW8QxLlmtXwfI3LUtpfVzRXXoIfQzwLxHxEFCEmz
 zy6etg7v6fP2DyZtgtfbbGmxgIbRSUpONiHNlRwJzIHeS1czQzul5bxAZnrQuZ5L+I/Wt8mDPSLtt
 Ay+J7ghkdbTXjAFvWjsg6yIJaNjsd60SEu9SAD44+j2BMbj2o57otevqmrCxapO9AaKppXf+akboo
 tIcaF0YlSaKH8Do3f+jQ==;
Received: from s2.dolansoft.org ([212.51.146.245] helo=mx.dolansoft.org)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odGkb-00CUZt-AF
	for wireless-regdb@lists.infradead.org; Tue, 27 Sep 2022 20:00:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=brun.one; s=s1;
 h=Sender:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject
 :To:From:Content-Type:Reply-To:Cc:Content-ID:Content-Description:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=PW5Lp3Kqt+ZRso1osq6nNwEpw4IqwI1BxL8MSrxEopU=;
 b=U
 5icuuydsE742AwRkekpLrHrzKZYrojKH3fHF5TfYkXAUh1szLX32Nq8/sP5xTk0tih/20j3VHFub/
 YhLsi379xXAdP9Ky9+39YECm1Sxa+6yCu0AJ4/2bk/bdZmmWFELtV66Qe4KibY4tMf9xf6VGRq079
 yrhKvHCVdKh/l16boCgMqz+ZiVxhgZxB/yfI9OiXZCFSPk9wkJOJuZfflFVjpf6p8kG1sgQevyLI7
 JCuUbeoI4FvfMLA2bqTt1dYIIjAhXy4Mjrw/r1DmAYptPHlh9Rcm9jkB2q8iZ7TY2Bg4hyzknCIeO
 BGXoqvOCHM/t6utOXYo4pa2JpQuyN9doQ==;
Received: from [212.51.153.89] (helo=blacklava.cluster.local)
	by mx.dolansoft.org with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <lorenz@dolansoft.org>)
	id 1odGkU-000qKs-AI
	for wireless-regdb@lists.infradead.org; Tue, 27 Sep 2022 20:00:10 +0000
From: Lorenz Brun <lorenz@brun.one>
Date: Tue, 27 Sep 2022 22:00:06 +0200
Message-Id: <20220927200006.2527013-1-lorenz@brun.one>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: update regulatory rules
 for Switzerland (CH)
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
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Switzerland has since approved the use of the 6 GHz spectrum as well as
allowed the unlicensed use of the 66-71 GHz spectrum.

See https://www.ofcomnet.ch/api/rir/1010 for the current regulatory
overview in Switzerland.

Signed-off-by: Lorenz Brun <lorenz@brun.one>
---
 db.txt | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 132f6de..012824f 100644
--- a/db.txt
+++ b/db.txt
@@ -358,8 +358,10 @@ country CH: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
-	# 60 GHz band channels 1-4 (ETSI EN 302 567)
-	(57000 - 66000 @ 2160), (40)
+	# https://www.ofcomnet.ch/api/rir/1010/11
+	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, wmmrule=ETSI
+	# https://www.ofcomnet.ch/api/rir/1010/07
+	(57000 - 71000 @ 2160), (40)
 
 country CI: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-- 
2.37.2


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

