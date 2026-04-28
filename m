Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE032FF885A
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 Apr 2026 06:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uq0DfNPijexWBvdrrmcZtzrw7FRp3qqqb4r98JhlwOk=; b=p4QICEsEIGrLzE2ae6oBLw20Z2
	jfKVM0GM3qHU4HAvcDh1o+TrDYfRKJfGVFk4IrQmceHvcJYPVBEE9R3BOCOnamCaldIoonwUdqkaa
	qUm5V2JE3qJJgczFeWPVgQX0/XnRl3jQQYpFT3yKaTGZ5WA2FcCSAGQ5inhTMVOonJqFWmdFxoLlg
	3jP7hcX1nF/S8HAIYrS49U73WpCn7YW2gzq35XJDqs8XsD8xClQwLixvBDZDzl9QFb1mTJbXSxqMA
	FjbQY7Gz705xkLnL/RP5xjcpqz8yTaz0VCyhEmBE4iJBvlXZt/QJyBfjXAsZnsI/ytbueC8qH0QE2
	4cX9FYsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHbvQ-00000000dO5-0ZpK;
	Tue, 28 Apr 2026 06:28:04 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHbvN-00000000dNl-3WQc
	for wireless-regdb@lists.infradead.org;
	Tue, 28 Apr 2026 06:28:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5551540967;
	Tue, 28 Apr 2026 06:28:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 197AEC2BCAF;
	Tue, 28 Apr 2026 06:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777357681;
	bh=lJbCFoxmbnJ4Rnb0Qj8kZOmNTJ1LYHNKkHEikVy99J0=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=F6VPDSt+gP70xUlRurtd+MMlbpoarsb5mBKlj5MdlIDxjCel4jD2UigoXq/7dpjnk
	 Qwlp0qolJZIvW8BB+XPFmiwp5QjLcP8k2LktptxkPm8LXnhopmcSXSygwF+M0t1OQh
	 c7WH9TnLSO3UO9fg2APsph8X0z2WWmjKo0t4yfFzMB/22rlAxkS3oH/i5fgP8fbK7y
	 swPpogtvL7zYGWyqzPVAABIbiuEirmMmzxqjSWKCgHmqj0vhoXPIsUxwWYtpoZ7LrZ
	 so8O//zouG5MeZyIp8n8Kqga2RnR+SRcMoUylXPSiKFjKRQOFa7ZYuEaETv5Vk7QAo
	 03kLHEasVTM7g==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 0AC6F60156;
	Tue, 28 Apr 2026 14:27:59 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: wireless-regdb@lists.infradead.org, Louis Kotze <loukot@gmail.com>
In-Reply-To: <20260416065612.868989-1-loukot@gmail.com>
References: <20260416065612.868989-1-loukot@gmail.com>
Subject: Re: [PATCH v2] wireless-regdb: Update 6 GHz rules for Hong Kong
 (HK)
Message-Id: <177735767903.2827727.8973179303376411134.b4-ty@kernel.org>
Date: Tue, 28 Apr 2026 14:27:59 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_232801_909700_F82F5A2F 
X-CRM114-Status: UNSURE (   3.18  )
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

On Thu, 16 Apr 2026 08:56:12 +0200, Louis Kotze wrote:
> HKCA 1081 Issue 2 (August 2025) updated the 6 GHz WLAN specification
> for Hong Kong. The specification defines two device categories per
> ETSI EN 303 687:
> 
>   LPI (Low Power Indoor): 24 dBm EIRP, indoor only
>   VLP (Very Low Power):   14 dBm EIRP, no restriction
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update 6 GHz rules for Hong Kong (HK)
      https://git.kernel.org/wens/wireless-regdb/c/756d784aa2ee

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


