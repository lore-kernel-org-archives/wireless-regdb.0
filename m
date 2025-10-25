Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C63E1CCF9E3
	for <wireless-regdb@archiver.kernel.org>; Sat, 25 Oct 2025 07:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:Date:Message-ID:Cc:To:
	Content-Transfer-Encoding:MIME-Version:Subject:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7aeFWucAJ5b1P9eHusXCkS37rYsvW2nu12CFLMSqyV8=; b=3Lr/kvX3eUhS6Yl/TiaLBi2+Lv
	OscLhrMDdKJBDUWsT4gjLHRGB/IVcJJTp443q4F0cUndFgcxvH6FTqz8rJuLELjSFovi2bhdZjub6
	qyQV1KYygCZBFEZOjGhTQHjxqnTEVdV2uFaLh8Q7xlAQg6f8BWl9Yfzu8K9JgdJemtHEJQkXstZuh
	4N3sJROqeJE/VaZUgRJF0V2xUkQafqy/5QgorrCxNk72VI0XLwSjdDuuQrQo537CGr6sWm921IrRe
	x6ILJIeuwiL0kHkv22ZWpTh7iXYyk2ZihVfRZaq5z/0bzyRCpUddk+YX/ScHbjKN2fcpGM28kdJ9c
	PRtzij3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCZ5b-0000000B6II-0536;
	Sat, 25 Oct 2025 07:53:27 +0000
Received: from smtpa-outbound1.duck.com ([20.13.235.194])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCZ5Z-0000000B6Ho-0CPD
	for wireless-regdb@lists.infradead.org;
	Sat, 25 Oct 2025 07:53:26 +0000
Subject: [PATCH] wireless-regdb: Update regulatory info for Brunei Darussalam (BN) for 2022
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Bar: /
X-Rspamd-Report: R_MISSING_CHARSET(0.5) DMARC_POLICY_ALLOW(-0.5) R_DKIM_ALLOW(-0.2) MIME_GOOD(-0.1) R_SPF_ALLOW(-0.2) MID_RHS_MATCH_TO(1)
X-Rspamd-Score: 0.5
X-Rspamd-Action: no action
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org,
 Hafiz Zafran <hfzz7@duck.com>
Received: by smtp-inbound1.duck.com; Sat, 25 Oct 2025 03:53:22 -0400
Message-ID: <CB87FEAB-DAEC-49D6-83C2-8B8D59025164.1@smtp-inbound1.duck.com>
Date: Sat, 25 Oct 2025 03:53:22 -0400
From: hfzz7@duck.com
Feedback-ID: :isSendReply:isDirect:duckcom
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=duck.com;
 h=Feedback-ID: From: Date: Message-ID: Cc: To: Content-Transfer-Encoding:
 MIME-Version: Subject; q=dns/txt; s=postal-KpyQVw; t=1761378803;
 bh=7aeFWucAJ5b1P9eHusXCkS37rYsvW2nu12CFLMSqyV8=;
 b=l3MTGA8LR1ncxpisl9HdV48W6MP8HtcSX6amCXaCWacp7298vMaO/Goit/21QstqFFHlNcn+C
 ksPrBRtwQNpB3SiQI64BqvWwrKKWG5m5pxqr5+2ua/oUfhLsZ6bX4+PO4U4nc1N2KY1dN2gQlnY
 c2mPbrFiF48KRN7GYfAbMEY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251025_005325_378409_8B467BAC 
X-CRM114-Status: UNSURE (   4.33  )
X-CRM114-Notice: Please train this message.
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

In 2022, Authority for Info-communications Technology Industry of Brunei Darussalam (AITI) updates The Brunei Darussalam Radio Spectrum Plan. [1]

* 2400-2483.5 MHz
	- 200 mW

* 5150-5350 MHz
	- 1000 mW
	(For 5250-5.350 MHz, DFS and TPC are required)

* 5470-5725 MHz
	- 1000 mW
	- DFS
	- TPC

* 5725-5850 MHz
	- 4000 mW

Also, add regulatory info for WiGig/60 GHz
* 57000-66000 MHz
	- 10 W / 10000 mW

Note: According to the Telecommunications (Radio-communication) Regulations, 2013 of the Telecommunications Order, 2001 (S 38/2001), "non-localised use" refers to the operations of specified radio-communication equipment or network at a specific frequency or in any specified frequency within the whole of Brunei Darussalam. [2]

[1] https://aiti.gov.bn/media/planjc1p/bd-radio-spectrum-plan-2019.pdf
[2] https://www.agc.gov.bn/AGC%20Images/LAWS/Gazette_PDF/2013/EN/s086.pdf

Signed-off-by: Hafiz Zafran <hfzz7@duck.com>
---
 db.txt | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 1d17271..8e5cbb5 100644
--- a/db.txt
+++ b/db.txt
@@ -326,11 +326,15 @@ country BM: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
-country BN: DFS-JP
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
-	(5735 - 5835 @ 80), (20)
+# https://aiti.gov.bn/media/planjc1p/bd-radio-spectrum-plan-2019.pdf
+# Section 7.5, Page 244-251
+country BN: DFS-FCC
+	(2400 - 2483.5 @ 40), (200 mW)
+	(5150 - 5250 @ 80), (1000 mW), AUTO-BW
+	(5250 - 5350 @ 80), (1000 mW), DFS, AUTO-BW	
+	(5470 - 5730 @ 160), (1000 mW), DFS
+	(5725 - 5850 @ 80), (4000 mW), AUTO-BW
+	(57000 - 66000 @ 2160), (10000 mW)
 
 country BO: DFS-JP
 	(2402 - 2482 @ 40), (20)
-- 
2.51.1


