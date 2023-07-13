Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=2cNaCFqFR7u1FNgsWT0JlupBHbILo++9/Fcab/YpiWg=;
 b=H0drezVsyN7pdg
 wryvrYSwqYVTvcSdjYsEr1WW5txETZ1Kch6Xp8YiPJlXkML/CgMN+7w2JWZdutyGkDhicZ4TURgYl
 y5x5XUC8bTh0DodP309u1Nj9B/ETRyeRuMmoau6S+lHABi0CX/VEKDDrTJXPLr+uO+iIFlT6ptkI5
 JbPiSlKgo6qwPbERZs/Rw/yuLL9qnq/YPkY18LmFGnMCLGptufYqEh9SoXrAZmUZqx2q4X90CC1j9
 YB7x40zIuPi2iFWVGYbDX7EP1Lvaok0+qy9lu01vwJB7BbUOh4UaelEOXQP3CPa2az3rN4xvmhl0i
 wUtpCdygeF3Cdu96GPkA==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJyIw-003mMD-2y
	for wireless-regdb@lists.infradead.org;
	Thu, 13 Jul 2023 15:32:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689262349;
	bh=WQFjEtFufJ9Tdlobk76SGYhT3e/x20/LKDpgwBze+BA=;
	h=From:To:Cc:Subject:Date:From;
	b=Z3+RFsMdCjwLDYOXruyPVEhTKiHy2u4smI2oKWh3jO16x8rEXfmeuJ/tjELVa21wH
	 lVPpCFigcrwoJAYerudJlTW4HUJA+IRaAZn8sE0MQDUcDy3Ms58kcoPiHFdheVpcjs
	 5PqxJGUcLTl6uagiaRgc5DKMgpzfKWPXasvmXNxQcFoQO2AHgmfe0ZeSaxFO5hgrLX
	 dE0trSoZZNApx3K6g2lvstWms3+GC6L7FmdZthD3fmiri4kAZwvqsqu7K5crypTLRR
	 lxST6PT9yc6gTCLxocLy0/1aHWMwIDecDUOy/L3yqZ1kzzQ9oH1MV5a7HuVaf5g9cv
	 vmH64jMINL64g==
From: Seth Forshee <sforshee@kernel.org>
Date: Thu, 13 Jul 2023 10:32:28 -0500
Message-ID: <20230713153228.241774-1-sforshee@kernel.org>
MIME-Version: 1.0
Subject: [wireless-regdb] =?utf-8?q?=5BPATCH=5D_wireless-regdb=3A_Update_?=
 =?utf-8?q?regulatory_info_for_T=C3=BCrkiye_=28TR=29?=
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
Cc: Atahan Bostan <ooatahanturan@gmail.com>, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Based on [1], add support for 6GHz and make minor adjustments to other
ranges.

[1] https://www.btk.gov.tr/uploads/pages/ftm-teknik-olcutler-ek-5.pdf

Signed-off-by: Seth Forshee <sforshee@kernel.org>
---
 db.txt | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/db.txt b/db.txt
index ef4e60972d8a..0af4f9458e0b 100644
--- a/db.txt
+++ b/db.txt
@@ -1676,14 +1676,14 @@ country TN: DFS-ETSI
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 
 # Source:
-# By-Law on Short Range Radio Devices (SRD) Oct 2015
-# https://www.btk.gov.tr/File/?path=ROOT%2f1%2fDocuments%2fOrdinance%2fBY%2DLAW%20ON%20SHORT%20RANGE%20DEVICES.pdf
-# Article 8
+# Technical Criteria for Radio Devices and Systems Excluded from Frequency Allocation, Sept 9, 2022
+# https://www.btk.gov.tr/uploads/pages/ftm-teknik-olcutler-ek-5.pdf
 country TR: DFS-ETSI
 	(2400 - 2483.5 @ 40), (20)
-	(5170 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
-	(5250 - 5330 @ 80), (20), DFS, NO-OUTDOOR, AUTO-BW
-	(5470 - 5725 @ 160), (27), DFS
+	(5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5250 - 5330 @ 80), (20), DFS, NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5470 - 5725 @ 160), (27), DFS, wmmrule=ETSI
+	(5495 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
-- 
2.41.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

