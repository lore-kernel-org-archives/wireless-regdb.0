Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C770FE77173
	for <wireless-regdb@archiver.kernel.org>; Mon,  9 Dec 2024 04:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+iG4lMh9mCLIqlXAtXC+VX4mtaxuPK+MbrmjHeGT2zc=; b=2Y/wRvnQTXw9YTl1YwdfpQFHuu
	XIxu1gZcl/alXCqgkMuzLYxrWM6gLxeql+xduiXruR1arF9xf2s2vXEz2Zs95DTPuxy9gGH1xACk0
	T0HD9P8+snXe/zLoJnWqtnHuN/bzfV2nY8K6+15AqS598r0GV1nsSBrwX+AYjH458tc/FCtteACJi
	a50A0Y33fb/io92Ihe2Q+3LsTe1sSizWBnK4PuIhE/CHJ4O3iFi4y/ehpzRcpE0yTAAbYj9Yd8+ir
	3AMk49bjG+wyXZLBZYC1W9Og3tvxmEZqZqb/nVfuvwemGnngfbFYGp/j7RKyG3PFKo8JWzNwnNU6+
	WbL2Ziqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKVVY-00000006QPe-1tSX;
	Mon, 09 Dec 2024 04:36:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKVV5-00000006QMA-0qAF
	for wireless-regdb@lists.infradead.org;
	Mon, 09 Dec 2024 04:36:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E48C75C542D;
	Mon,  9 Dec 2024 04:35:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B3EAC4CED1;
	Mon,  9 Dec 2024 04:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733718962;
	bh=f25M2eh0d55sqiZE1JY5NhARXYucjEs1MPAC776VqGk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=fcSoS8Kop7+d5tMnWhcdjj9CjJRlFiADMY+MdE14nHUWCpQ5Bq0hL0EnzRHWxfp2Z
	 5yVwJnwkwlmAJFYYJg+JgLuI+xo0nOEEJXFXxkX/vdLNVpuxtNMhHkJ4Iu4g6PDalC
	 /8cqlX5Oiw6xkI4Ru15WMPHOLgAMwafSBR+t0W2y5vLzhf/5AjYpctuOnKiXe0taiF
	 2K+LPFtWBHCbC5FX9OtuUNWeyqHUBuUOgeWfH891kUsKlbKdATnXorib+B2RN+QDJo
	 TKKRY5DYSnNx82qkUGKwiTW8hS0+m5klhhf3G2IOvEr91z51oeDroXpYYjO/GutKyJ
	 Cgv6/lUo1DFYw==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 9CDBF5FE30;
	Mon,  9 Dec 2024 12:35:59 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20241122024207.5535-1-pkshih@gmail.com>
References: <20241122024207.5535-1-pkshih@gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Moldova
 (MD) on 6GHz for 2022
Message-Id: <173371895963.3369899.11403233488132375989.b4-ty@kernel.org>
Date: Mon, 09 Dec 2024 12:35:59 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_203603_282342_05808708 
X-CRM114-Status: UNSURE (   4.44  )
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

On Fri, 22 Nov 2024 10:42:07 +0800, Ping-Ke Shih wrote:
> Republic of Moldova released STATE COMMISSION FOR RADIO FREQUENCIES
> DECISION No. HCSFR1/2022 on 23.12.2022. [1]
> 
> I says, by translation, for wireless access systems, including local radio
> networks (WAS/RLAN) operating in the frequency band 5945-6425 MHz, the
> provisions of Decision ECC/DEC(20)01 apply.
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory info for Moldova (MD) on 6GHz for 2022
      https://git.kernel.org/wens/wireless-regdb/c/0dda57eb854a

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


