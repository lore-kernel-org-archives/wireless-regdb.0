Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Cc:From
 :To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=Au4A0U84FNSRJD4QzJWg75NvlDjz9gewbY+sShyP8cU=;
 b=YZ7syIICMvfAZe
 Pp6qKAN8uIEOhQ3vvlbfgI3uZcDUadykgWKiKv8auzU+VDvttoWygTjXezpbu9Mupxcagbw8KTlx/
 zyngZYVEOvwCRiTuRtmujt1pYRyDIiB0/O3sNXQl4+7rzehmzELG/RfwajbSYceAcf4lZ4azOSzqr
 nuUD2PzQW9rNueki/pCGGE5s3WogPVAMiVqL0OE7sWDX1jZb5ODF1m38T/jviBu0dlVOInCMz3230
 vjXWU5NogQB0TsEAMcdEyCCfTksiM+QEr4hVKuoGFtzVx35VvEsBH/M2XkZlFjkfOWhGs6m4Q8O7r
 /FvmcqwdRPs96fqqQ1Xw==;
Received: from mail-4325.protonmail.ch ([185.70.43.25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puEXr-004zQM-0l
	for wireless-regdb@lists.infradead.org;
	Wed, 03 May 2023 15:37:33 +0000
Date: Wed, 03 May 2023 15:37:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1683128246; x=1683387446;
	bh=FMyyXRiBpi2ZzOsj4yKM1kFIw32QWP9CASHkYRcfdv0=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=ZOYBudaRZy32doE4kwIbMyEWCBQk/tWpMaCw0uEtpdah9kGiW7Sw1xGO6F2dRjuVY
	 1I7a6bjPKr5Nt6SkAIOexzqzPbmN6sWFB2gXJUAGgVbE61B8Xfpsfj7NFhxQBMqCa0
	 NaqCeV4nntqC+NPLnyX/ayovjaH1tVLsIiko4V/QiHqkK+gZ3oSLE7CZ3UzOaW7JNX
	 ddVaFEB/se8lLuks5T74LJcOV9kBKRrRE0Gf4m8xhd70daqJHGiAIXwbOa3YuNpnHv
	 ShXHe1OEgTWtrvC/pQ/J2W6MCneT23vmoKse6ewaDhLhBasA0AsVb9IyBosIFwacA7
	 ph5cHE+xWLoCQ==
From: Tavio Wong <tavio.wong@proton.me>
Message-ID: <lPLmWUrjD7qCP9xceeomrJkM3UROE54cq2gp0jV2M-FeSKypWU2OB1smaPcro_p8kRHjXUcZd31egElc_z46nBTC5IMr9l31VNApPck5V6E=@proton.me>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
 for Hong Kong (HK)
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
To: "sforshee@kernel.org" <sforshee@kernel.org>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

Update frequency ranges and max EIRP for 2.4 GHz and 5 GHz, and add support for
6 GHz based on latest HK regulations.

Source:
https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1039.pdf (2.4 GHz and 5 GHz)
https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1081.pdf (6 GHz)

Signed-off-by: Tavio Wong <tavio.wong@proton.me>
---
 db.txt | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 8d103b4..ac2429e 100644
--- a/db.txt
+++ b/db.txt
@@ -748,12 +748,16 @@ country GY:
 	(5490 - 5730 @ 160), (23), DFS
 	(5735 - 5835 @ 80), (30)

+# Source:
+# https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1039.pdf (2.4 GHz and 5 GHz)
+# https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1081.pdf (6 GHz)
 country HK: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (17), AUTO-BW
-	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
-	(5490 - 5710 @ 160), (24), DFS
-	(5735 - 5835 @ 80), (30)
+	(2400 - 2483.5 @ 40), (36)
+	(5150 - 5250 @ 80), (23), AUTO-BW, NO-OUTDOOR
+	(5250 - 5350 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
+	(5470 - 5730 @ 160), (27), DFS
+	(5730 - 5850 @ 80), (36)
+	(5925 - 6425 @ 160), (14)

 country HN: DFS-FCC
 	(2402 - 2482 @ 40), (20)
--
2.40.1

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

