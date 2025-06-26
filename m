Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B14A2C7115B
	for <wireless-regdb@archiver.kernel.org>; Thu, 26 Jun 2025 08:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Yvcv4R0/5aBbeVAXIqTX146EQ/phwPaO5laTanrBf38=; b=4L2YGwSOJ3Lf3cdxeClrh7fgPW
	cS+3EANRLQrw0jRVkV7sdylRzbP8hdOCfIA3xpal5DoJRKpCYkIH3UzJkB2718umtbDjKUYJRYHV8
	AoVSW7b5SaN145m/dTsZTyiwkKWRJ8fbbOuf0EaCipOHULvEJjDA4t0e1UyW4Gd3p5cAOZEVdezdq
	ZggRtsFHhJndplZRySp3k3OS7P2xriycqjUMYZTke+TQTt1/Rixm1UFp0jUb8qUWL1xJQWf1okKJY
	BLqpRWIi9+D8mnViDoPUGqQZaUoNjUjSXtAiwLad7lKRkE6cUzBieSLZaQ/gdF69I4pmI6c8ic/Xu
	cWdrT1GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUhej-0000000AtT8-1CdX;
	Thu, 26 Jun 2025 08:08:25 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUhX5-0000000AsLH-2cFQ
	for wireless-regdb@lists.infradead.org;
	Thu, 26 Jun 2025 08:00:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0EBA761127;
	Thu, 26 Jun 2025 08:00:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C1E0C4CEEB;
	Thu, 26 Jun 2025 08:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750924830;
	bh=eZYiZwV+ULC6PNy6CYgpJ0lzYwCKUKRBLvdUw1p9h0Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=VWYD1uo16zSKqcClNf7AiKtynFxMrECb4IOd4Hr1nJQw1JcExJPzQ9NmsOYJExE1X
	 1teLKZwTSZC3+jnmAJlO5XsCII+EE+HbOSfgmMdXMLjyarJj7tVlr93kwefYDs8p0c
	 m4iKYYkWJT120CAnM+19L2heSVhzPPvZPtSU/F86SqUXEH9a5IUyFYS/IMs6F4zsTM
	 /o1Ekwiuzc0hYCBN5TPdkVhyXNQ2y97t/PcG65z0/o6d3FMxjIpkurlNILtTfxN5r7
	 h2NCbEy4dZ46CtubismrcR5fSLe5KygQ90vSiS3F8+6Je5GbvDmX2yjH78ifryakZJ
	 1AOHcMO/6wlAA==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 043595F752;
	Thu, 26 Jun 2025 16:00:27 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org, Emily <linux@emily.moe>
Cc: wireless-regdb@lists.infradead.org
In-Reply-To: <20250529144854.31931-1-linux@emily.moe>
References: <20250529135706.31269-1-linux@emily.moe>
 <20250529144854.31931-1-linux@emily.moe>
Subject: Re: [PATCH v2] wireless-regdb: Permit 320 MHz bandwidth in 6 GHz
 band for GB
Message-Id: <175092482797.2040065.7311768674091795449.b4-ty@kernel.org>
Date: Thu, 26 Jun 2025 16:00:27 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2
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

On Thu, 29 May 2025 15:47:56 +0100, Emily wrote:
> Similarly to the changes in 6c7cbccaee121772a23fa0efdfefcdd8a2369985
> (“wireless-regdb: Permit 320 MHz bandwidth in 6 GHz band in
> ETSI/CEPT”), the Ofcom regulations for the 5925–6425 MHz band [1]
> have no explicit limits on bandwidth:
> 
> > Maximum mean EIRP of 250mW for Low Power indoor and 25mW for Very
> > Low Power indoor and mobile outdoor.
> >
> > Maximum mean EIRP density of 12.6mW/MHz in any 1 MHz band.
> >
> > Techniques to access spectrum and mitigate interference that provide
> > at least equivalent performance to the techniques described in
> > designated standards specified in the Notices of publication (See
> > Section 6) for the 5150 – 5250 MHz band must be used.
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Permit 320 MHz bandwidth in 6 GHz band for GB
      https://git.kernel.org/wens/wireless-regdb/c/2e8214e2cac3

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


