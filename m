Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C9F1C8303C
	for <wireless-regdb@archiver.kernel.org>; Mon,  7 Jul 2025 03:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Nvkwk4/biDMoZdsQbuiX5Elbzp0tSXv2UHndzeOUWlE=; b=kg+sMa3+nwIIRG07ThvNg8PWnZ
	RvI8W4ai5N34OuDdO6BmhgKL66z+mhHjjgRU7o/mbkdYAbUEUy4iKLyIelI8xlIhagwe9vb9hINe0
	XeqnyAaktYXeSnLH+5IbVJwwkNGxqRQFJZ/AfobZu/Zwg5GoLXRziaRwYSXdbNrMvMz+KkYAP/oIE
	FRff0C3FrDDbnlo0yt4jp9bMO7ROrZP/esy0+TGu2vHuE0JPMJugTBVihPpHUQMItlm170hlLNJU2
	t7ZvvcuayaRaD00vv8J0t+vdiXovxnhiW2hhTRvTbE8NDqr+64Nj25ncg8D/Cp611Ql2mFiOs2CS9
	jbqE2rFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYcvY-00000001Kl0-3Ydj;
	Mon, 07 Jul 2025 03:54:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYcvW-00000001Kis-20jj
	for wireless-regdb@lists.infradead.org;
	Mon, 07 Jul 2025 03:53:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D418D5C1292;
	Mon,  7 Jul 2025 03:53:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67DE9C4CEE3;
	Mon,  7 Jul 2025 03:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751860437;
	bh=TjB45pv4sNHSr7j2KCBxzY/USQNVmwkNKGlR6VAS8A4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=l3xstKYTsxfherhgiq+mkWWGVcealC8MEtKu6PqmduqZlvqe+N8tOnWTW9lTwq1+d
	 GK9DxKkMngs4MSWfs30OVA3f6MsFGvsA0ZB9V7rWhGFm2o7QWp2gW087WA1cfLLNrf
	 /xmvunFlWkgHIgEi08NpPumonMq2t3dDq6nWYGuvaMfWOe1PGONEflyVnYfNlU7hAz
	 sSRzcX7La4NKFm+QzRgvpLlTkdP+y25C6RwFPywi8QLpD6ZAs72EXHWdh2kaDv23oY
	 6XlpPDcwTki/Hq8n6pv1ZlxGk2gLyLm8e/WNHjjO6AALvEaw61lYV1mzv8QhPKG8Fg
	 DHmvWjpr4Y5+Q==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id B4D9A5FA78;
	Mon,  7 Jul 2025 11:53:54 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20250707024615.38507-1-pkshih@gmail.com>
References: <20250707024615.38507-1-pkshih@gmail.com>
Subject: Re: (subset) [PATCH 1/3] wireless-regdb: Update regulatory info
 for CEPT countries for 6GHz listed by WiFi Alliance
Message-Id: <175186043471.2618926.17715416165051713886.b4-ty@kernel.org>
Date: Mon, 07 Jul 2025 11:53:54 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250706_205358_560191_A47D0300 
X-CRM114-Status: UNSURE (   5.31  )
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

On Mon, 07 Jul 2025 10:46:13 +0800, Ping-Ke Shih wrote:
> From: Ping-Ke Shih <pkshih@realtek.com>
> 
> The regulations enabling 6GHz WiFi [1] of WiFi Alliance lists CEPT
> countries including
>  - Albania (AL)
>  - Andorra (AD)
>  - Austria (AT)
>  - Belarus (BY)
>  - Belgium (BE)
>  - Georgia (GE)
>  - Iceland (IS)
>  - Liechtenstein (LI)
>  - Macedonia, The Former Yugoslav Republic of (MK)
>  - Moldova, Republic of (MD)
>  - Monaco (MC)
>  - Montenegro (ME)
>  - Norway (NO)
>  - Russian Federation (RU)
>  - Switzerland (CH)
>  - Türky (TR)
>  - Ukraine (UA)
> Add 6 GHz frequency entry if not being added yet.
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[2/3] wireless-regdb: update regulatory rules for India (IN) on 6 GHz for 2025
      https://git.kernel.org/wens/wireless-regdb/c/da0262f68596
[3/3] wireless-regdb: update regulatory rules for Paraguay (PY) on 6 GHz for 2025
      https://git.kernel.org/wens/wireless-regdb/c/b009de81f75d

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


