Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2807C624D4
	for <wireless-regdb@archiver.kernel.org>; Thu,  3 Sep 2026 05:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aDBBAL2MZcGVl2XD60tB+Vdp/TfUNi9pIGjmbjA2sOM=; b=yHVR6zkOQrk3udBGBe9OQGjJpG
	TdYdCqPsgbTXZT7hhnMCketRJ6BgfBtD2t82tL+NPeRwgNFlRsiGdE/WhjaekAwTGpMCvEKeqFCZM
	1HvZ9CmEacZp4pEhdEym0lZ+EhnSlRg5f1JrZ2rUAH2k/v5njDxt+aqFOCB2I9xAnpiJFA8oVmGYV
	Cc+JbD8z4Od6lggyWg/iMElt8c9ilwNlxTrKWzk+SKKaeCuuu6Z8erfOq/eijKCCmvHJtxj4sC0uV
	z/dRTXWFbf1f6jn1EIxL0o//bC4HDUqYlN6QIGW9OX0iqy1TEyUgeYwpLD9D38y0rIGcTHCyOkrHe
	7tbT0M9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x20T7-0000000GRNO-01yn;
	Thu, 03 Sep 2026 05:58:37 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x20T5-0000000GRN7-1NV3
	for wireless-regdb@lists.infradead.org;
	Thu, 03 Sep 2026 05:58:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 57532600D1
	for <wireless-regdb@lists.infradead.org>; Thu,  3 Sep 2026 05:58:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3E221F000E9;
	Thu,  3 Sep 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788415114;
	bh=aDBBAL2MZcGVl2XD60tB+Vdp/TfUNi9pIGjmbjA2sOM=;
	h=Date:From:To:Subject;
	b=RjXTXLzunujsO1R4Q89KAXzdKQhKFK79bC6VYimhJPHBXhIV8HPv1yEY9hkYSEINx
	 3eOfxuFZiD1Yv5nKqbJWKHwyBPAuCYhQGSVXKBn/l1kGGVHdXklx/ymTX2DqHg25w9
	 s+oTPve5wmRLzbLM1cm/oRpVcAEwfj4AhuDu6JObh8oxr1F5x9+05RObfeDloHPPnH
	 YnybnsHpxKwvLvPMNB1dPb6bob/U16vaQTxRAMOQWvVLRZaMTlEuLp8rREGkYiv5Xj
	 CMSBkAeFFYZyjnpPcxLNrv8DS+HjBKedgCcrAQdUQLaB7Ad/ZYxe3QsmpSgZVAeyb2
	 lQDXYjmumZOHg==
Received: by wens.tw (Postfix, from userid 1000)
	id 6CF215FDE6; Thu, 03 Sep 2026 13:58:31 +0800 (CST)
Date: Thu, 3 Sep 2026 13:58:31 +0800
From: Chen-Yu Tsai <wens@kernel.org>
To: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
Subject: [ANN] wireless-regdb: master-2026-09-03
Message-ID: <apkMhwF5T9jiwyCh@wens.tw>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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

A new release of wireless-regdb (master-2026-09-03) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2026.09.03.tar.xz

The short log of changes since the master-2026-05-30 release is below.

--

Chen-Yu Tsai (2):
      wireless-regdb: allow 320MHz channel width for Hong Kong (HK)
      wireless-regdb: update regulatory database based on preceding changes

Louis Kotze (2):
      wireless-regdb: Remove DFS flag from 60 GHz band for Togo (TG)
      wireless-regdb: Update 2.4 and 5 GHz rules for South Africa (ZA)

