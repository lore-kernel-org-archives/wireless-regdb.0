Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0248C30653
	for <wireless-regdb@archiver.kernel.org>; Thu,  4 Jul 2024 07:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wKOElVY+6OEGz/qqQ1NdYMF6qCbZjYHjxqCqNUdx/Fs=; b=XXAhyDKhXDG9vuUb/x8q73eXNC
	Qtfw/SQcfavMLHFEsWsYT9c/l/RZdHDzGhME5NIz4wg0unzXR99dgaubeZqtLv2p9QrvoaxM/gKas
	kru8juAnGHPs6hqr5sQX835WHHmWZMJ9OSOa7++4/7CHe9BLiUoV+tullKQsR69WgOXmYXr7dHAN9
	kdNH5ByjAWMJIESU4aIwXpgHia6H128x0Swk3RAW4U16ka6RkdTFldw7PitHBCVAhPoRnXgUoWPU0
	vQlB6UljqjXoxrmmUXBnZ4deMnEwYqqZimxgA7zXLyOCvrJfKGYXMh3BI7XIYPzvS5Uldgrk1ixfg
	HGPiq0Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPGrK-0000000CRgA-1CL1;
	Thu, 04 Jul 2024 07:26:26 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPGrG-0000000CRf9-3yc3
	for wireless-regdb@lists.infradead.org;
	Thu, 04 Jul 2024 07:26:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id B0017CE3318;
	Thu,  4 Jul 2024 07:26:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D097CC32786;
	Thu,  4 Jul 2024 07:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720077980;
	bh=c4QVKaFK6ZmjMg9dncbSLXtp/cNdlCMHqpItdpE0hTI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=A6aIkz0HrZ6MlJXR2f7AD5NKIhe9V63YiL5yWgR38upLg/lTES5/SSXBJmIdVYuFb
	 HGK4EXBQNiVS2YzJDOUFJK7tLjOtmqZU7bmcU61dbIlx9MthxxReNx/1ZI59ob+wAr
	 bWr1p6nzScrOAnmwrmusUqTnDgoslGwPSUjVxhcJCkXlOHUvX8YLEpRcA6XNgAC2x2
	 wyKbnZbLDIvp8P7qqNfcFbXOtB8220W6n9EkHluVCGDCmUxV6o2TgKc1kR2BNcgvka
	 0VBWxoFcN1VWEjYnU+ax7VJt98csWkaMzKGltpBCwJSJTIQQigl+CrdAvCs+vPQGEP
	 fSZw58tXkRShA==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 6A8BF5F882;
	Thu,  4 Jul 2024 15:26:17 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20240702065100.13644-1-pkshih@gmail.com>
References: <20240702065100.13644-1-pkshih@gmail.com>
Subject: Re: [PATCH v3 1/3] wireless-regdb: Update regulatory info for
 Jordan (JO) for 2022
Message-Id: <172007797741.1245979.14807997228875413304.b4-ty@kernel.org>
Date: Thu, 04 Jul 2024 15:26:17 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_002623_206820_1FB90238 
X-CRM114-Status: UNSURE (   5.83  )
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

On Tue, 02 Jul 2024 14:50:58 +0800, Ping-Ke Shih wrote:
> The Hashemite Kingdom of Jordan, Telecommunications Regulatory Authority
> issued pursuant to the provisions of Articles (12A) and (22) of the
> Telecommunications Law No. 31 of 1995, as amended. [1]
> 
> The effective radiated power (EIRP) of devices used in local radio computer
> networks must not exceed the following values:
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/3] wireless-regdb: Update regulatory info for Jordan (JO) for 2022
      https://git.kernel.org/wens/wireless-regdb/c/a9ecabe9844b
[2/3] wireless-regdb: Update regulatory info for Kenya (KE) for 2022
      https://git.kernel.org/wens/wireless-regdb/c/5a9fdad41aeb
[3/3] wireless-regdb: Update regulatory info for Macao (MO) for 2024
      https://git.kernel.org/wens/wireless-regdb/c/19326c3fffab

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


