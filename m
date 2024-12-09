Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F7E0E77173
	for <wireless-regdb@archiver.kernel.org>; Mon,  9 Dec 2024 05:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SphdzPXJuA/l8gEy0hqbjDovHVs5UNFcby4/S8/uuHk=; b=nCrCh5J6RpfHBhrbtCM/LJ/qF8
	43Rw7TJB9+d1CLHoRg6Gp+XCfNOhGgetesSqS7WqjZvkSlR7Vg9Gqp+b5u88m7EFth0MRIrKrwxk0
	A6a3pChonmEJr1rLe6iCTJDPno7TKVHq//DQKI6f+Q/QvH2coK7HFTKSP8thKla2MNgDFqmWOECrx
	jd1Ocl+xLgvbyqb4c21tCN1lgG7nCHN+TtpD7AHf5bhgw6/mQWNVnWWzbmEBJ8OUmR3X1YiPe/aBT
	DneFQnVSzleH8cHrLTimjNW6fCW906Jsg8t+MI0snl7FudXAX+FpRmxf86wcwHV7sz7jtS9EpLBaF
	dT4oRt2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKWgh-00000006XHk-1s9U;
	Mon, 09 Dec 2024 05:52:07 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKWge-00000006XH2-3WM3
	for wireless-regdb@lists.infradead.org;
	Mon, 09 Dec 2024 05:52:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 43A91A40E2B;
	Mon,  9 Dec 2024 05:50:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65BAEC4CED1;
	Mon,  9 Dec 2024 05:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733723523;
	bh=mwiIiqNIdB6mZrBb7/PSo4K5yBcLR0YgHtklPxn8qaY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=AXZhlK9H9t0xiznfxZNu0Fi610flMLslYT5xoPD5edmlqHNhBay/X9FMdp9o8oI1Y
	 7LtDDVySNDZWcYXEHaZ/xzj2dp1lvPUle6F1w4k8pTegkQQfFB4m89aMFgyYEDKw4B
	 pWNocdEinK2e0nrXPamsrQ1GqUFwwJlY943WdVGDqy9KnkHjneqnhq9jv9nN0EeeFz
	 n+B1Kn/aRl8osvUNqUNfjAd431rMC14jrqauUQw+6PkUn4iggBUAZqUjZgk3oyf17q
	 z62ImsHcqGsfwcL3f3lZU/CjB2GuRO0BX5LF5AH7Sz/eQ6WH0at3iSUcdVx0X5aVcX
	 6kFkiCz+HwYWw==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 9F0785FD3D;
	Mon,  9 Dec 2024 13:52:00 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20241021071506.24320-1-pkshih@gmail.com>
References: <20241021071506.24320-1-pkshih@gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Oman (OM)
Message-Id: <173372352062.3392947.8322619197587000209.b4-ty@kernel.org>
Date: Mon, 09 Dec 2024 13:52:00 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_215204_947277_EE1548BC 
X-CRM114-Status: UNSURE (   8.21  )
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

On Mon, 21 Oct 2024 15:15:06 +0800, Ping-Ke Shih wrote:
> Sultanate of Oman, Telecommunications Regulatory Authority released
> Technical Specifications for Wideband and Broadband Data Transmission
> Systems [1].
> 
> * 2400-2483.5 MHz
>   - 100 mW max. mean EIRP
>   - indoor use only
> * 5150-5250 MHz
>   - 200 mW max. mean EIRP
> * 5250-5350 MHz
>   - 200 mW max. mean EIRP
>   - TPC: if TPC is not used, then the maximum permitted mean EIRP and the
>          corresponding mean EIRP density limits shall be reduced by 3 dB.
>          (20 dBm is adopted)
>   - DFS
> * 5470-5725 MHz
>   - 1 W max. mean EIRP
>   - TPC: if TPC is not used, then the maximum permitted mean EIRP and the
>          corresponding mean EIRP density limits shall be reduced by 3 dB.
>          (27 dBm is adopted)
>   - DFS
> * 5725-5850 MHz
>   - 2 W max. mean EIRP
>   - TPC: FWA systems operating in frequency band 5725-5850 MHz shall
>          employ TPC with a range of at least 5 dB.
>          (28 dBm Is adopted)
>   - Outdoor use only
>     (Since NO-INDOOR flag is not supported by current format, don't add
>      this entry.)
>   - DFS
> * 5925-6425 MHz
>   - 200 mW max. mean EIRP
>   - Indoor use only
> * 57-66 GHz
>   - 40 dBm max. mean EIRP
>   - Indoor use only
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory info for Oman (OM)
      https://git.kernel.org/wens/wireless-regdb/c/f67f40d00919

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


