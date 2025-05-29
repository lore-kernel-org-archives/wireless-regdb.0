Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D84A2C5AD49
	for <wireless-regdb@archiver.kernel.org>; Thu, 29 May 2025 15:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LxtQC1MUVZHNaNGyRdqTime6CdwJkwSW3XxqC34BelE=; b=0rf7yYsNvCMAd1hlDOCjZQ+vgp
	DPgxfZemJLJ41X1WHxAoQDNGWB3iEP2yFSkih+d4/dxWe8vEc/6oXIdvmW8PXGStyLJKiHuviWA2+
	2uqk3TManY3G+kiKK6h4akv/WJ6VdW2jNK/03dRh1sJceD5y4xgIMi5Tk81kJ2H7y2b35jINu2a4s
	UjTyRTQe0ReGs7LWGr2wHK85RP0Scr+2qpbzxUZXInxghPaKGw7jtw7eKYZxI5D8ZWD4aaA1d6j3I
	hww3p+NRaSzgvtli000iJavoZIlMvYKjUtiRYR8ZmCRDABGFHwYrm7OSrLZUm+HcWe61zKooPMOLH
	9BE60Rkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKemu-0000000G1la-165n;
	Thu, 29 May 2025 15:03:20 +0000
Received: from fhigh-b1-smtp.messagingengine.com ([202.12.124.152])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKdmq-0000000FvaW-2nXS
	for wireless-regdb@lists.infradead.org;
	Thu, 29 May 2025 13:59:14 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal [10.202.2.42])
	by mailfhigh.stl.internal (Postfix) with ESMTP id ADBDB25400A2;
	Thu, 29 May 2025 09:59:09 -0400 (EDT)
Received: from phl-imap-16 ([10.202.2.88])
  by phl-compute-02.internal (MEProxy); Thu, 29 May 2025 09:59:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emily.moe; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:message-id:mime-version:reply-to
	:subject:subject:to:to; s=fm2; t=1748527149; x=1748613549; bh=Lx
	tQC1MUVZHNaNGyRdqTime6CdwJkwSW3XxqC34BelE=; b=H24xHhykCa6vFG4Bze
	siSe6RJnC2Qe2u4r6Icu5rJy+X3fyV3XQzAS8Za5ict0LQ3XvQOtZYXx5BBLOlUn
	xz4FxJakTwmNJ/4/Elh2FQGpbtI4mlNBFXY6UgVD+IAO3tAnkfqXefo6yz1WOBQJ
	YAbi7QXjs96tZm5umIKfVXl/q0q/ZNtscXmkH8Fy6TsLPTawO6DNONMIEHeBRTaE
	EssE3o0HrqEUpbHr5g+71ZI5mWO9gFnjdoXQpqC4gLau435aTV/2QBj2I9ZzzMGT
	to8fXfRuXH4UNnmi9CrdVMlAa9IlL1YeGNiH+i+aRdzmuCAoQFu4kHRiRnOBZZT8
	j3Sw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1748527149; x=1748613549; bh=LxtQC1MUVZHNaNGyRdqTime6CdwJ
	kwSW3XxqC34BelE=; b=G8NoJiR/ZG2DxbNmVRGyyFtpgCXC9aBhYNYHqxFT3w1p
	4DkQEgR3SLKxGhEJq+S/PAd7c7bTLDEXgYBs7sXyPSmRAC4BagKQgO6n8agaCy6L
	CFeTfxwnFXDPdz+IklB158LO8lKlLGCJeTJd+RYRvY8++wIpxAcSm4FMQXM1UvXQ
	71KZP7heQiwra58ufg6JbswXchwC0udm2B2x0YAcOwm/rboH/QDegXS5sQzqzuP5
	ED7JpLbL1GGb/VZe/HAMhK5X6BasbSopmgO/ZpJoryMsoTe7ECv2wVPVjcA50Q3l
	ksBOynVudoMHLNt7jpRdjg0ed9dZa8/9/0EIriIHMA==
X-ME-Sender: <xms:LWg4aCpe1gjks2PbcyIBbTlmZit-7FwOZWQpkWKd9JeaRlmsTTJ_PA>
    <xme:LWg4aArwjd5QskGyKp6zayE1bubn3rYawYI0b2ay4H4Yi5pv850nDUy52rGK3sPSX
    dAQ050lBd-zN_Gvwqs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddtgddvieefvdculddtuddrgeefvddrtd
    dtmdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggft
    fghnshhusghstghrihgsvgdpuffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftd
    dtnecunecujfgurhepoffhvfevufffkffogggtgfesthekredtredtjeenucfhrhhomhep
    gfhmihhlhicuoehlihhnuhigsegvmhhilhihrdhmohgvqeenucggtffrrghtthgvrhhnpe
    eifeejjeeigeejheffueelhfeifeeugfekfffgudelheevieevgfekhfekgeeitdenucff
    ohhmrghinhepohhftghomhdrohhrghdruhhknecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomheplhhinhhugiesvghmihhlhidrmhhovgdpnhgspghr
    tghpthhtohepfedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheplhhinhhugiesvg
    hmihhlhidrmhhovgdprhgtphhtthhopeifihhrvghlvghsshdqrhgvghgusgeslhhishht
    shdrihhnfhhrrgguvggrugdrohhrghdprhgtphhtthhopehlihhnuhigqdifihhrvghlvg
    hsshesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:LWg4aHOIsDQQFrTYURhXWOFces_H10kH95RNctlF3NDOEJG-k-yXLQ>
    <xmx:LWg4aB7XqNJR-deT-VszsW2z5GE9ZZ8Gdmb96GHVeVMHlFJZYrIPGA>
    <xmx:LWg4aB5QFPOwD3TdEDvCms020hdreserrGZuWXlAHO_kQkU__0mPpA>
    <xmx:LWg4aBitLyClOShc5A2ReAdOiYYUL-F0pB4sd_6TSPpRLxIM6uZXyw>
    <xmx:LWg4aMPSIBJRcaEchgEeGl-5f0RkUMeYnclXPweGWPsXkdxLq-nyuIbJ>
Feedback-ID: i3c8944dd:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 3AA972CC0083; Thu, 29 May 2025 09:59:09 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
From: Emily <linux@emily.moe>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org,
	Emily <linux@emily.moe>
Subject: [PATCH] wireless-regdb: Permit 230 MHz bandwidth in 6 GHz band for GB
Date: Thu, 29 May 2025 14:57:06 +0100
Message-ID: <20250529135706.31269-1-linux@emily.moe>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250529_065912_984728_47AB87E6 
X-CRM114-Status: GOOD (  10.91  )
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

From: Emily <hello@emily.moe>

Similarly to the changes in 6c7cbccaee121772a23fa0efdfefcdd8a2369985
(“wireless-regdb: Permit 320 MHz bandwidth in 6 GHz band in
ETSI/CEPT”), the Ofcom regulations for the 5925–6425 MHz band [1]
have no explicit limits on bandwidth:

> Maximum mean EIRP of 250mW for Low Power indoor and 25mW for Very
> Low Power indoor and mobile outdoor.
>
> Maximum mean EIRP density of 12.6mW/MHz in any 1 MHz band.
>
> Techniques to access spectrum and mitigate interference that provide
> at least equivalent performance to the techniques described in
> designated standards specified in the Notices of publication (See
> Section 6) for the 5150 – 5250 MHz band must be used.

I cannot find any material online suggesting that the use of 320 MHz
bandwidth is restricted in any way.

[1] https://www.ofcom.org.uk/siteassets/resources/documents/spectrum/interface-requirements/ir-2030.pdf?v=335258

Signed-off-by: Emily <hello@emily.moe>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index e331d4f..c2ed384 100644
--- a/db.txt
+++ b/db.txt
@@ -722,7 +722,7 @@ country GB: DFS-ETSI
 	(5470 - 5730 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5850 @ 80), (200 mW), NO-OUTDOOR
-	(5925 - 6425 @ 160), (250 mW), NO-OUTDOOR, wmmrule=ETSI
+	(5925 - 6425 @ 320), (250 mW), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-6
 	(57000 - 71000 @ 2160), (40)
 
-- 
2.49.0


