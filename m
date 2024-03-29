Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CECCCD1288
	for <wireless-regdb@archiver.kernel.org>; Fri, 29 Mar 2024 07:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QlFpdldV4PxfWgeLp/K/n7GSxtAh0lVxfEArAV6URAs=; b=kQYjemfxp6HwQ6DyLO4bC2GXYE
	kXhUVqhIAj+YMWgjx1adFZx0dLnMdLYvVisTZJ/w7YcmkPzwWs20n8mFdGrS04zsryYmXVrDxQd5U
	1opX5KovMlOyGzFFUCQfZxJEfTx3aC93b+kB0YrXr2Bkxz12xRk0vBg34fmeXbtK9b0MXvyMX8QV6
	O2pKw/wD1QNKWxntRSEKdKPZiFBKhDkPccXg4ay6M7MFq/+pWbQn3fqk22DabjuIrHd5+bubRNq3b
	78wYqv/pm9N5KZjmDHn+RcSt42oKOzz+wwv+O8IgyIrZi3Jqx+M41dlwIsnHMzy3ZFvAMGy4UlKql
	1Jg/bU8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq6V7-0000000H7ip-02UV;
	Fri, 29 Mar 2024 07:18:09 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq6V3-0000000H7iL-3SQo
	for wireless-regdb@lists.infradead.org;
	Fri, 29 Mar 2024 07:18:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 70A3D60FBC;
	Fri, 29 Mar 2024 07:18:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB83EC433C7;
	Fri, 29 Mar 2024 07:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711696684;
	bh=hzwW+m82naT9oUQusEVw+iFltSi86tfAlL260aYbFXc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=BIYd5J/0isUrZ0/Fz6Nh86X1CSHE/017a4b3lXJQGStUn1RZrnOxa97RZxbIAQw6r
	 1Y0xl+oh+QH+Qn48o6viYTyjlOgVxrOA4ndr6u4GJfDIAT/fK0jsDyCtiCqDx6WuRA
	 hx8hmEb7nE4xMTcME4vF08y6VaSHzjJCTne0RFmx2foocTJ3U+H1tPMzqDz07nHRKF
	 xtyv2EfdWYGmYhjXXv/WgpdQcI6lTzes538U+rC1b/fM0gPe4pHoP/Z82RW0eyHkXA
	 L7/lN1EFD7aqKSAbVHFXoutbhy8PnvK+oGMcWoSRdLlMLvzz1Gcg20M9WrLEAAH/Um
	 G/r7khkXBWn1Q==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id B3A0C5FA0C;
	Fri, 29 Mar 2024 15:18:01 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org, Andrew Yong <me@ndoo.sg>
Cc: wireless-regdb@lists.infradead.org
In-Reply-To: <20240217014542.12971-1-me@ndoo.sg>
References: <20240217014542.12971-1-me@ndoo.sg>
Subject: Re: [PATCH] Revert "wireless-regdb: Update and disable
 5470-5730MHz band according to TPC requirement for Singapore (SG)"
Message-Id: <171169668171.2570046.3810446623986203022.b4-ty@kernel.org>
Date: Fri, 29 Mar 2024 15:18:01 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_001806_413842_6C205755 
X-CRM114-Status: UNSURE (   8.79  )
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


On Sat, 17 Feb 2024 09:45:42 +0800, Andrew Yong wrote:
> Singapore's regulatory authority has confirmed that 3 dBm EIRP reduction may be used in lieu of TPC support:
> 
> > Dear Mr Yong
> >
> > We refer to our email of 17 January 2024.
> >
> > RLAN operations at sub-band 34 and 35 is allowed to transmit at ≤1000mw eirp with TPC and DFS employed. IMDA TS SRD Table 1 sub-band 34 and 35 can take reference from either ETSI EN 301 893 or FCC Part15 §15.407.
> >
> > As stated earlier, FCC has pointed out that the TPC will not be required if eirp is less than 500mW.
> > However, as the latest revision of TS SRD has just been published in Sep 2023, we will consider making modifications to it in the next release.
> >
> > - IMDA INFO (IMDA) <info@imda.gov.sg> on 2024-01-26
> 
> [...]

Applied, thanks!

[1/1] Revert "wireless-regdb: Update and disable 5470-5730MHz band according to TPC requirement for Singapore (SG)"
      commit: 73529a882f83afa26402b18680025334b0215d92

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


