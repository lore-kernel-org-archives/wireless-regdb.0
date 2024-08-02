Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E017EC3DA4A
	for <wireless-regdb@archiver.kernel.org>; Fri,  2 Aug 2024 06:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=14ggAeaFEMF1Mz/T5F/9Bx/cQCqJIX5C7/zIH4Hh9Gs=; b=Ty8y/rdRBDR55HiDrKPnyJHxwn
	v3O+akW1HrcS8mDeJRI9b/8+TJKbCDMBj9KQ2FqW079XFB9PBKLD8w+mQz/6w0A0zCg0w43xAHRNW
	Yrh/wFtdoUb2IAQsNIpPygGpj0q4XHHdXjkfcjf/xKGvi5XSIfmLRuLN6j+Q/m34AmwceNWFmeMbG
	R3LKfcO+KjC+roVokHxJ2TxIIZgp7uM9RlRVwt3IK3LCeVUawSnC3lxkA+TSqWHZioQs9ogLZ4aGN
	9WzgiAtM8bQ0UaNkvqybT8KBYHKREGE6tex4SP3ZdQp+FFj82/qKs5KndiaTNvuxtF1V+WDPvGGwy
	NnR0683g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZlQr-00000007lNH-1QHC;
	Fri, 02 Aug 2024 06:06:29 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZlQo-00000007lMV-1pBn
	for wireless-regdb@lists.infradead.org;
	Fri, 02 Aug 2024 06:06:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C216D6235D;
	Fri,  2 Aug 2024 06:06:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 583C7C32782;
	Fri,  2 Aug 2024 06:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722578784;
	bh=SQkJvtEXVrebzVhBgSg0yGtQ1w+NGYlLfUfg4pyXeR4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=m0lLugXSS/Idu/4f1UerWKkfu8yfvWMai7zV5FB78Kee92K3tNGVxaYrS5eX9hpqM
	 Q+N8DyqajXwzIiRlTHYmYyBhOF4mz+0LMWPAqKHOooM7Ht8vRO9ud0Bjj2nkGMne8d
	 sOrwA4JuLPv+z5XMpjdYyFnCm6jlCHKC5EXBybQFYGBp8FOZseZ02fn4I73YBTfuZG
	 6vyikxn6EEFyHvrh12SVREDMJUVbfJXe24FvalV/nPR4jSdplfXceh0qOwTYMjoy1G
	 DXOuZYfPkMlsJCBgSCFJn4+s+6BXmAxo2T1XMCqUkUx5C2VaGb1P/0eCzm+59nKcZV
	 pSPhFJ6F9WCmg==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 455AF5F752;
	Fri,  2 Aug 2024 14:06:22 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20240719032326.7353-1-pkshih@gmail.com>
References: <20240719032326.7353-1-pkshih@gmail.com>
Subject: Re: [PATCH v2 1/5] wireless-regdb: Update regulatory info for New
 Zealand (NZ) for 2022
Message-Id: <172257878225.1673308.7191951038227374583.b4-ty@kernel.org>
Date: Fri, 02 Aug 2024 14:06:22 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_230626_572871_9CA40D38 
X-CRM114-Status: UNSURE (   6.17  )
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

On Fri, 19 Jul 2024 11:23:22 +0800, Ping-Ke Shih wrote:
> Radiocommunications Regulations (General User Radio Licence for Short Range
> Devices) Notice 2022 listed spectrum:
> 
> 2400.0000 - 2483.5000
>   * e.i.r.p. 6 dBW (36 dBm)
> 
> 5150.0000 - 5350.0000
>  * the maximum power is 0 dBW (1 W) e.i.r.p. and
>    the maximum permitted power spectral density is -13 dBW/MHz
>    (17 dBm/Hz, 50 mW/MHz) e.i.r.p.
>  * 5250 - 5350 MHz, If Transmitter Power Control is not used, then the
>    maximum power (e.i.r.p.) value shall be reduced by 3 dB.
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/5] wireless-regdb: Update regulatory info for New Zealand (NZ) for 2022
      https://git.kernel.org/wens/wireless-regdb/c/bad398523d73
[2/5] wireless-regdb: Update regulatory info for Peru (PE) on 6GHz
      https://git.kernel.org/wens/wireless-regdb/c/58575b4cc911
[3/5] wireless-regdb: Update regulatory info for El Salvador (SV) on 6GHz
      https://git.kernel.org/wens/wireless-regdb/c/983f55149d7f
[4/5] wireless-regdb: Update regulatory info for Togo (TG) for 2022
      https://git.kernel.org/wens/wireless-regdb/c/aad0c26a1612
[5/5] wireless-regdb: Add regulatory info for Namibia (NA) for 2023
      https://git.kernel.org/wens/wireless-regdb/c/218d1460e046

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


