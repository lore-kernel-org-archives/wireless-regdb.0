Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21993CCFA13
	for <wireless-regdb@archiver.kernel.org>; Fri,  1 May 2026 15:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:Date:Message-ID:Cc:To:
	Content-Transfer-Encoding:MIME-Version:Subject:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7aeFWucAJ5b1P9eHusXCkS37rYsvW2nu12CFLMSqyV8=; b=qTzTT5tWM86rVnfF45SoWOZ5UK
	X5yLfw74PNPKg2xjJEMkeN89oAxIkHq6zXo27SB9sL3VDxyzdTbrozthmVlrYV9qiJzXc4oX/r/ko
	z83uvIW+QKE5/wUBUNQ61Y/Jk+JHYnkxJL1G2AkPcR0+DdXmSpe2wpO3vJAr38sVgStrfi1qG/EnM
	IYIqXhpeousnGrI5VlTSUAtpuBJeEkpHaY5S9GRsyfxJrdQoYZkqIPgX6ECC9468iX22pzfz7Xxjr
	WAWyyBTZpBzTVUIDgqYbTaDUSRVkYcba+ZNk+h+1Tdpi+B73+xP964FdpsK/YT6OFBzGvhilLRI+C
	Tc7DoccQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIpxn-00000007MTU-3DGy;
	Fri, 01 May 2026 15:39:35 +0000
Received: from smtp-outbound9.duck.com ([20.67.221.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIpxk-00000007MT7-2PFI
	for wireless-regdb@lists.infradead.org;
	Fri, 01 May 2026 15:39:34 +0000
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
Received: by smtp-inbound1.duck.com; Fri, 01 May 2026 11:39:28 -0400
Message-ID: <B85F20AE-0D49-4C9E-90BD-DCF4D5DBFF94.1@smtp-inbound1.duck.com>
Date: Fri, 01 May 2026 11:39:28 -0400
From: hfzz7@duck.com
Feedback-ID: :isSendReply:isDirect:duckcom
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=duck.com;
 h=Feedback-ID: From: Date: Message-ID: Cc: To: Content-Transfer-Encoding:
 MIME-Version: Subject; q=dns/txt; s=postal-KpyQVw; t=1777649968;
 bh=7aeFWucAJ5b1P9eHusXCkS37rYsvW2nu12CFLMSqyV8=;
 b=e7fjCykXms4A7BisyI0uaswVx/Xpo3WW4uJAPrIDDYNK4tTBHWetu5s4wKE1BFXEttUTeWA97
 pb20K0dms6QwYwomeOjh+Vf0mmCQb+WxUNxrd1LZdjAP0kR65AaaBPidksg3Fc37CYBHhuL04lE
 LeJUBwk0i+k3VCti2TzhnxU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260501_083932_900794_DF29EE81 
X-CRM114-Status: UNSURE (   4.37  )
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


