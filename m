Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C037ACD4F54
	for <wireless-regdb@archiver.kernel.org>; Wed, 27 May 2026 16:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FJ+5+D/z50/Gvo+sPM7L4ltowM8cM8zEDvekqbXrS5U=; b=Wrfw0cmiDO/PnLXxw1As612zZe
	WN0e1zWTo9ANQHVt5ICp7GaDZGhZUfZ1PJ3IdqPIqAKOjqeEkLLDQ44ULZcefSMaUbAwhZCJ+jHdg
	fSzBqC8d2joi5ENQ/9AlyOtxjn9sSIzHMg5KBvDQrXpxwrQQsULrqtz7UUymL5GIQMdapiyQkMSjX
	TlNtuxzomkJzZMMbpJrgc67VmA8+bfrwrUjQHGkQUSDUzJW6VGnEaopRSfBkxNVdX8PYfu9368ZcO
	EbY53ClOgjib1db42ebfleZ6hAe/1ZXYpuvMm7hbVSrNO1ity3J7/hj1N9ooCTV2ezlIHZFBdYSQU
	ZBLHGKZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSHQX-00000004XfK-3dXp;
	Wed, 27 May 2026 16:48:17 +0000
Received: from forward500d.mail.yandex.net ([178.154.239.208])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSHQT-00000004XdO-3chO
	for wireless-regdb@lists.infradead.org;
	Wed, 27 May 2026 16:48:16 +0000
Received: from mail-nwsmtp-smtp-production-main-95.klg.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-95.klg.yp-c.yandex.net [IPv6:2a02:6b8:c42:d44d:0:640:ae2:0])
	by forward500d.mail.yandex.net (Yandex) with ESMTPS id 538C98285E;
	Wed, 27 May 2026 19:48:05 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-95.klg.yp-c.yandex.net (smtp) with ESMTPSA id 2mcWaU3gGiE0-cSGhRgBu;
	Wed, 27 May 2026 19:48:04 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0upti.me; s=mail;
	t=1779900484; bh=FJ+5+D/z50/Gvo+sPM7L4ltowM8cM8zEDvekqbXrS5U=;
	h=From:In-Reply-To:Cc:Date:References:To:Subject:Message-ID;
	b=ECVApaaa7o6a9jV0OWJag3FLlkc8Eqgg+QRyk3Ss6LEsFHuh3IKsxT5PHUuTl8YEF
	 aC3qchMX8E9yQuqOgbINjnVdFGUkFeOuNbuG+EICyR7ET/pJRPqHnJSfD2ZvzdxFb/
	 o4LJgwKD77NT+4nAJ1Jpvbm24xnz5uQ5q4B3aWnE=
Authentication-Results: mail-nwsmtp-smtp-production-main-95.klg.yp-c.yandex.net; dkim=pass header.i=@0upti.me
Message-ID: <d18d4ba0-9fc6-4585-8161-610ec42fdab4@0upti.me>
Date: Wed, 27 May 2026 19:47:59 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] wireless-regdb: allow 320MHz channel width for Russia
To: Chen-Yu Tsai <wens@kernel.org>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org,
 Louis Kotze <loukot@gmail.com>
References: <20260428093058.3672383-1-me@0upti.me>
 <177751439231.3356117.7542785326182742344.b4-ty@kernel.org>
Content-Language: en-US
From: Ilya K <me@0upti.me>
In-Reply-To: <177751439231.3356117.7542785326182742344.b4-ty@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_094814_083064_54FD4939 
X-CRM114-Status: UNSURE (   4.56  )
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

> 
> Applied to master in wens/wireless-regdb.git, thanks!
> 
> [1/1] wireless-regdb: allow 320MHz channel width for Russia
>       https://git.kernel.org/wens/wireless-regdb/c/62d72c287e99
> 
Hi, can we get a signed tag with this included?

