Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE2CDC61DD3
	for <wireless-regdb@archiver.kernel.org>; Thu,  3 Sep 2026 05:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y0d4ZkvIsJqGDcwfEHltdfaJ72NPOzJatdFgoZDNW54=; b=PzZl74zk6bb9ooCRCqf9arlTBs
	lgXXmoRlG3TlXY9AtgdZjVu03QR8J9Pi3UcgwsybMuo7LvsWEsFKQvQhIIeH+AInjuSCs7BLtf7Wf
	II+qkxHkxIA014Qf7NGPsaFrv9j5v1n/exv3Hs6gNDpi8GClgp6up5IolIYZV7IDne/XYJki3zkac
	AQDm68FZCN2iA9A+8cNuzjb27jGWcJuBHyfVO9ObR9W43TJyXWdch+4z6962g/l/xdc6+UA4PaXus
	2p/G6Yfn5ZVwlPtX8QO3batGvBmtasviGuQ/qOb3MAwxMAqtT8etsE/NBgzOVG+cJmDiRF9UlodJf
	ke+12nUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x20Ln-0000000GQnI-22P2;
	Thu, 03 Sep 2026 05:51:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x20Lm-0000000GQn8-13kb
	for wireless-regdb@lists.infradead.org;
	Thu, 03 Sep 2026 05:51:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7B0D160229;
	Thu,  3 Sep 2026 05:51:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 143801F00A3A;
	Thu,  3 Sep 2026 05:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788414661;
	bh=Y0d4ZkvIsJqGDcwfEHltdfaJ72NPOzJatdFgoZDNW54=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=BWWXl674GRGX30sXBxJ5BlaztgE95PwTcXVyA7pqkQjiJnEziMdOHLxOFzI7vHEyc
	 cynPaEC2AyCQop/xCQQ3665cc7fLnrEc+trHp1CqgTOfxAUlpgO5Kx5n+nVgSyj0WV
	 rhqcPHE5dhF3ibvRWxOCMMnkJAr+2kr+OHdMD8VlN/lmkpsrpzsqS01w6qAHx0zDa3
	 Slq574ZqpROj7OgJYYi1HBYUx9uUrpc1rziJdYu2pYgtAjMzU41WTSJ6JuK4dG23MV
	 vBS5OJdAphNaFkNdAyyjLgYI3NudiZCehc0SbjG/Wu7bfrNgkk+uLU/0yHQRixPBUv
	 ow1gPKBIk7nNA==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 731065F82A;
	Thu, 03 Sep 2026 13:50:58 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: linux-wireless@vger.kernel.org, Chen-Yu Tsai <wens@kernel.org>
Cc: wireless-regdb@lists.infradead.org, Ping-Ke Shih <pkshih@realtek.com>, 
 Morgan Wong <pbodq2@gmail.com>
In-Reply-To: <20260824070730.2089862-1-wens@kernel.org>
References: <20260824070730.2089862-1-wens@kernel.org>
Subject: Re: [PATCH] wireless-regdb: allow 320MHz channel width for Hong
 Kong (HK)
Message-Id: <178841465844.2208520.10356423568006013058.b4-ty@b4>
Date: Thu, 03 Sep 2026 13:50:58 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15.2
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

On Mon, 24 Aug 2026 15:07:28 +0800, Chen-Yu Tsai wrote:
> There are no restrictions on channel width. Allow 320 MHz channels on
> the 6 GHz band for WiFi 7.

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: allow 320MHz channel width for Hong Kong (HK)
      https://git.kernel.org/wens/wireless-regdb/c/8f1e802020f4

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


