Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26FD6C52D7B
	for <wireless-regdb@archiver.kernel.org>; Tue, 13 Aug 2024 05:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uCMup60B9gVCPNLKEMjuydGP5aX8htQkurPq8mwPbIs=; b=uD3t8ALsIjoWAO5pWiddHeP5Yi
	aXnjOXVcdAwCWQz6nw1IcBRIA9EgRN8o2yU18600dCWTBe9qlFfRRLhkn3NMa+FL76CfbOT0oyuW+
	xqEDYoEQVpTpeoOnNxBy8WcVGRgnQQga2DnpIkHyipv4zuNC7KtDEQ98cyOWw6IpMMef3xUE9y8nS
	rvXTYw5zhBSjQiLHvwdhnjO2kaS9xsRDoCs712kuJDaRrHOC/gg5Z6W4SG/wJt07331LitMERzoTR
	WlgRCs9Ubq4Zs2AbI94gKH9i/gF5ypP8H132Jhyt605knadCF1kg3GhhooLpESnyeQIC+lKhnCuY7
	qkDlw9KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdkE2-00000002T1W-3n5p;
	Tue, 13 Aug 2024 05:37:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdkE0-00000002T0h-1Bop
	for wireless-regdb@lists.infradead.org;
	Tue, 13 Aug 2024 05:37:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B9A8A61558;
	Tue, 13 Aug 2024 05:37:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D083C4AF0B;
	Tue, 13 Aug 2024 05:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723527458;
	bh=VIPGR320Y7Rivy+1q2HS3AcUVzT2ZyXizwLc9SN61NQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=aoIOB9kqhy8q71oSLTrjlsj0fuOWa1XqBnxGmzzqf2bXKmMiui2VrAuR+VwvqiJhW
	 caZex7P2Kq8lN+zJ1SIk2okL3jF0LJGvkhxbZILIBOMG4QgomUqw6zY/pJDmE/dsyk
	 n5r6/nHHE8jiCXz/NzjFODxj5h+6n/TQ0P12S83VDkOxKhcWsxlWfWe+RDBtwBpmdl
	 hzpfRYOVMavWTIYGrdwV8BWBx2o54a/0OFfKYdrVZRe1WLbaz0FVxWwsT/vVZGeJ/A
	 SdCxaEbun6+XixVDE8/XT6ZLfFuD7N8YhGgGNfDk//W6skW2Pdt421ieFDjjGQsWzm
	 8mPPmexoBa0Ug==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id DB7B55F7C0;
	Tue, 13 Aug 2024 13:37:35 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Gacel Perfinian <gcperfinian@up.edu.ph>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20240812131811.565-2-gcperfinian@up.edu.ph>
References: <20240812131811.565-2-gcperfinian@up.edu.ph>
Subject: Re: [PATCH v2] wireless-regdb: Update regulatory info for
 Philippines (PH) on 6GHz
Message-Id: <172352745587.1740740.10621361224039297904.b4-ty@kernel.org>
Date: Tue, 13 Aug 2024 13:37:35 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_223740_401896_5A71D5E6 
X-CRM114-Status: UNSURE (   5.38  )
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

On Mon, 12 Aug 2024 21:18:12 +0800, Gacel Perfinian wrote:
> The Philippine National Telecommunications Commission has issued
> Memorandum Circular 002-07-2024 [1] on 05 July 2024, amending
> the allowed frequencies for HIPERLANs and RLANs specified in Section 2
> of Memorandum Circular No. 03-05-2007 [2]. The amendment has been in
> force since 22 July, 15 days after publication in The Philippine Star
> and copies furnished to the UP Law Center as mandated by law.
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory info for Philippines (PH) on 6GHz
      https://git.kernel.org/wens/wireless-regdb/c/003c282a297f

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


