Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FDB1C3DA49
	for <wireless-regdb@archiver.kernel.org>; Thu, 18 Jul 2024 05:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CWdu5WNO3Xeci0zg2ONSSB05GO1Nz1r9J4syUjbuebs=; b=W5JMF+De4qhYUwbGc7/2/j/IN3
	iJw68Dy7oXUzhdIn6B4y6YmJ8V/Ly9jXWEzZ7NhiYaj8Uq4/Gwn25MhcqoF4HAcpcHPKH7JxbqCPy
	HVFceL5BJMJeaUGNRJ8uJUTbqYEdxjFcj3opK0LJA7uc7wf7wOYvZuzuSV4pEEDsn3SG3oydgobzQ
	+6nlpBCFyqWG2twDbRZ8hOuBo6SuTW6U9LYq3cx3Om1PrPp4TSjUwzFA2b8w6VfVlTMi5wJjgqvZT
	PcdyV8ql7lEF0Ko7toRDktL9WmWEECAdH3AsVD26n5M8UwdNMe1Vfil0sffF4h3jQlqT6m8m3CUZm
	l8VDNEwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUJJO-0000000FnFA-0qnF;
	Thu, 18 Jul 2024 05:04:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUJJM-0000000FnEZ-0PZv
	for wireless-regdb@lists.infradead.org;
	Thu, 18 Jul 2024 05:04:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2D65A617D0;
	Thu, 18 Jul 2024 05:04:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A79FC116B1;
	Thu, 18 Jul 2024 05:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721279050;
	bh=IDWvvuo4DrwacAyOMBIA+EunjMMTtvFBo6WRBGN/+cA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=P72l7BtYjbtbB47wxa8lu9jX6Ns/WVIetBGGyypmquupqKisJixVzADX8JIKqPsk3
	 4PtwPZjkmzCbkTFG9GIT5SrMymsydgfDv0wsuIExeq23rtwhZ//IS5uvdvp38hreqn
	 tIT0u8/F0TH+zJ3RZVEuPAnqv0B0ScIQMQCamVsHTWAnAPBrRvn5KBLwf+qYgMG0x5
	 anS3C8QcfmVYkFuv6Sn/nq81evniwl8tcvYoDXMwDJZeCz4A8olVVm0v4nH9cTdccU
	 uV8v+Q4VqPJ2Hm12FzhqCQC0ybvyr8PGIZlljeNCkKW4qFt07bfxJ54p9ZpibPfOmD
	 hgydqW4h2auOw==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id CC2825FA01;
	Thu, 18 Jul 2024 13:04:07 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20240705060613.28909-3-pkshih@gmail.com>
References: <20240705060613.28909-1-pkshih@gmail.com>
 <20240705060613.28909-3-pkshih@gmail.com>
Subject: Re: [PATCH 3/5] wireless-regdb: Update regulatory info for Qatar
 (QA) on 6GHz
Message-Id: <172127904781.1446368.11576831399749742872.b4-ty@kernel.org>
Date: Thu, 18 Jul 2024 13:04:07 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_220412_245751_DF50406D 
X-CRM114-Status: UNSURE (   4.51  )
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

On Fri, 05 Jul 2024 14:06:11 +0800, Ping-Ke Shih wrote:
> Communications Regulatory Authority, State of Qatar, released
> Class License for the use of RLAN devices over 5925-6425 MHz Band on
> 26 April 2022 [2] via page [1].
> 
> Technical Requirements for the use of RLAN Devices over 5925-6425MHz
>  - Low Power
>    * e.i.r.p 23 dBm
>    * Indoor Use only
>  - Very Low Power
>    * e.i.r.p 14 dBm
>    * Indoor and Outdoor Use
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[3/5] wireless-regdb: Update regulatory info for Qatar (QA) on 6GHz
      https://git.kernel.org/wens/wireless-regdb/c/c7d1083bc5c1

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


