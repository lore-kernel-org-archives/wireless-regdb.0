Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5857C531DA
	for <wireless-regdb@archiver.kernel.org>; Mon, 12 Aug 2024 08:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/FbHzQf3k7cSf09ck/3Edq3xdQxdEgYLRUvc5+2iIZY=; b=nLW3h6s7fBJbTc4pXq0wjEJITQ
	EwP/ha7CS4bT+hr9plU4Gfh2zNcKe+nubGbgbRjoKoIfw1H9bACHpvYLP1M48TQ7Rap32+QEiC/R2
	5EUorKX+UY9UxGeDnC05VabJnFL3V5impnt1VDyYSj1P8n+d89FE1SoIbrzqbmQ05LVacz8Z4HpQl
	NpV0uaYWmKYqLy4Ngs1eYcovvBKnKLteHe6OhcS2k1S0vPWUWgK65e3YbE+eJgJg4RqdUvP63b/9y
	u3fDiruJNRON0wkIgT4BVhoISvZD7ulVOBx1MXKtX579vlc9Si1/43ka6A5EWcGM+8BqHLR0CocRX
	bzdSc/Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdQ4Q-0000000HEPx-2I4U;
	Mon, 12 Aug 2024 08:06:26 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdQ3y-0000000HEJE-3N0H
	for wireless-regdb@lists.infradead.org;
	Mon, 12 Aug 2024 08:06:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0360D61053;
	Mon, 12 Aug 2024 08:05:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8DBB7C4AF0C;
	Mon, 12 Aug 2024 08:05:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723449957;
	bh=hbwKtwDfsxameFtffYw7FC2KXsCOVMuOlmp/ZBpO3WI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=g3fw9LUHKfLo8yF9s/ZnJxdOp/NEWX/dQhM9XWoZkoQkSxMTVwOMQsUgq095C80dE
	 x5h3CXioM3xWOovsynjCGtb1Funw2DunSkKjrERFQFOxrXjxR2d3OgrPwdSjK7bnEx
	 hSfZZEYGqGjNFjHiJkJCMOIb3zCQAMpKw2DHo+35+6fEUx7vLLmGAdFD1no8HCW8UR
	 d4Adi9iZ9UXNNonYSAPemr569BnNLgBhCnVWRyatggeiT7lxxw6GmA3nPuiO+LHzyC
	 Zx+UssU+M3cNkql2s9Sl8K+/0RLWKH5nYKJ5FN4L4nhjrzO5h1Tduh1IYmZPcWFCCB
	 pqefuWPm0l+dA==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 72A775FC82;
	Mon, 12 Aug 2024 16:05:55 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20240809002810.4140-1-pkshih@gmail.com>
References: <20240809002810.4140-1-pkshih@gmail.com>
Subject: Re: [PATCH v2] wireless-regdb: Update regulatory info for
 Guatemala (GT) for 2020
Message-Id: <172344995546.1735423.1638904193721245923.b4-ty@kernel.org>
Date: Mon, 12 Aug 2024 16:05:55 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_010558_953386_DD4C596F 
X-CRM114-Status: UNSURE (   5.14  )
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

On Fri, 09 Aug 2024 08:28:10 +0800, Ping-Ke Shih wrote:
> Superintendence of Telecommunications of Guatemala released NATIONAL TABLE
> OF ATTRIBUTION OF FREQUENCIES RADIO ELECTRICS on 2020 [1] on page [2].
> 
> * GTM-30
>   - 2,400.0 - 2,483.5 MHz, 500 mW (26.99 dBm)
> 
> * GTM-45
>   indoor operation
>   - 5,150 - 5,350 MHz, 200 mW (23.01 dBm)
>   - 5,470 - 5,725 MHz, 250 mW (23.98 dBm)
>   - 5,725 - 5,850 MHz, 500 mW (26.99 dBm)
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory info for Guatemala (GT) for 2020
      https://git.kernel.org/wens/wireless-regdb/c/21fcb86afa06

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


