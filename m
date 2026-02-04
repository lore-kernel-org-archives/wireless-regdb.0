Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CB9CE8B396
	for <wireless-regdb@archiver.kernel.org>; Wed,  4 Feb 2026 03:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6PUsJ3oHffAew2peFjRJXXg+SXN3S/y27O7OZ1c0rbM=; b=X1eEeEJvFZ+abi7T8fbjyB3tUb
	mwdVsjx/wmk9eJ5Ve9l+FMOmqIGJMCUl3ySLPF6es+xdRPshhFTnuSSb5nrLo85drDVPO+vyOJxCA
	bb0Yj8YIHkAXAC1veq4tMa3IhgryZTCFd8klTDKpQysJ+n9jmmNIMBup9DpygHVZqYls30Z0s/cWg
	X4NIIJxL50+8wd34cY/Vch4bAB9cmVHpMGWUzYKUVoa66yEWyZ9vd81HBIxjK0jDKtKwv7c5ozB+X
	kKrAR4qRCPJbLshZCg6bv0YeeqbdY2dqMmVM9LvSzlnZ2bCv3guqTdkeWepe6XfYrRcHLe90QXFTm
	p87JCD0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnTnd-00000007qqb-0pCc;
	Wed, 04 Feb 2026 03:43:29 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnTna-00000007qpa-0FSU
	for wireless-regdb@lists.infradead.org;
	Wed, 04 Feb 2026 03:43:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C772740973;
	Wed,  4 Feb 2026 03:43:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83A96C4CEF7;
	Wed,  4 Feb 2026 03:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770176604;
	bh=kQ/ERtPP7p9PZXpGbCbXhbGlyWanAWjvnU7Wnyr2Fjs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Dnr9Sa6I1SUxLgBQa5j+Qb7oXB72eZlbYwNZznfLPFmGMSsNwbGeh6Ewhyyh7Z843
	 b9PQ+7jemQRbPsTaPzVoAQizKq4VFuGJfuUFWxksrauFiRcGrRELcvcO3Hq7zXBQTA
	 Tazny8xvODg2j5N6Sk92VLIEfbZe7KQhwQr74CbHYF34Bqnc3YvsNG+AZ+CVKOXHjb
	 gLQk6t5n/T0+nMmgbIcCtWa7NexI+BVQTMqnbTn+A4STwOAh7hT8HO31+YEadASuTH
	 bAAiLdMbYwpHZ8cxkwyBE0H8FoDQhBm/H2Epfr/UPASbyq16ostUcKxAPWQjYX10yi
	 LLZh4Y9G/tEhg==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id D3FD65FBBD;
	Wed, 04 Feb 2026 11:43:21 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: druth@google.com, Ping-Ke Shih <pkshih@realtek.com>, 
 Chen-Yu Tsai <wens@kernel.org>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, 
 Johannes Berg <johannes@sipsolutions.net>
In-Reply-To: <20260128074236.965019-1-wens@kernel.org>
References: <20260128074236.965019-1-wens@kernel.org>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Canada (CA)
 for 2025
Message-Id: <177017660183.3007562.5582386138915193564.b4-ty@kernel.org>
Date: Wed, 04 Feb 2026 11:43:21 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_194326_119572_D67DCA7D 
X-CRM114-Status: UNSURE (   6.07  )
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

On Wed, 28 Jan 2026 15:42:34 +0800, Chen-Yu Tsai wrote:
> Canada issued a new revision of its regulatory standards for 2.4 GHz
> and 5 GHz license-exempt local area network devices - RSS-247.
> 
> Update the rules to match the new version. Fix up band boundaries and
> power limit values and units to match the text.
> 
> Note: the database is supposed to have values for e.i.r.p.. Most
> regulatory documents specify e.i.r.p. as well, except for FCC ones and
> any regions that have rules based on FCC ones.
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory info for Canada (CA) for 2025
      https://git.kernel.org/wens/wireless-regdb/c/1a729aef1a0d

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


