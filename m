Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16B59CAC581
	for <wireless-regdb@archiver.kernel.org>; Mon,  8 Sep 2025 10:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AS/fmKziD50kaDdJVDN645ueTzUVKKXEpU4r/Tfy21k=; b=emGHY6mgLDFUQme55sN2LeTjgU
	R2I94TA7HXs+WtciHk7vwn0NcwBusqSPMbZumr/HaO3mYS0SHICxWcDn0kWJ1UsBSTY4Wpx1r1WzF
	4qZeL7WerzoPXBHKUjuTuAP/P5Uqb8tkGYEj10qMTXTXkItZDCtFb7be6/Y6dT/sWkYztH7x+fC5A
	l83uBQWC8iUlGiT5+T5R7Vf6Ibp+92S5Kd65qixMcRRVeESIVFXuMpFdtDparml5pThZVLIaZGqgF
	5vo7vIJAjhinpQa0fnncaYCyZPDALZAeYKg3FE8MWbD3lkK7rI65yEtV5IXeQ6AFPX02+xphfNvq3
	PcBH6Rvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvYkX-0000000GFaZ-3CQ5;
	Mon, 08 Sep 2025 10:05:25 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvY2v-0000000Fyse-1Y2k
	for wireless-regdb@lists.infradead.org;
	Mon, 08 Sep 2025 09:20:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C9A8B601A4;
	Mon,  8 Sep 2025 09:20:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CAE9C4CEF8;
	Mon,  8 Sep 2025 09:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757323220;
	bh=RvB/XOeZola/zhwtbf12JpjACUKVBX4RRTFpxH1zHso=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=n6mBWZ2Qi4bWMd2yE9xqWTuLdO8tBxsUdEW5DI3ZvnhrysMst2z14h4v8QpMEYXAm
	 SktiVArEQpCCyjs2KhqEHCbgLgj1qCbxtm6I44YCltpyewcDSSUFmPyCVLNCtmzezB
	 k733a2PP0xPm/szbCDv8Cn7P/CWD+pWSp+Ww/ZmAyt8IY9v2oEmzBgVduhO0B4vnHE
	 lK8z/GgijlUEutT8qNcPo8tSTGvH8xfskLeDPSG/LbotvNNZGp5c0xm6LVN/Nmj6iZ
	 SJnaJzHOY8wWRIpRvSvfWXwkWIesWivp3F8sN1A2YDTr8h03P1IarNjwGE895RiRuW
	 2j1k3VjX34Tyw==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id D16C45F846;
	Mon, 08 Sep 2025 17:20:17 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, 
 avalon.vargas.centeno@est.una.ac.cr
In-Reply-To: <20250826004342.5363-1-pkshih@gmail.com>
References: <20250826004342.5363-1-pkshih@gmail.com>
Subject: Re: [PATCH v2] wireless-regdb: Update regulatory info including
 bandwidth for Costa Rica (CR) for 2023
Message-Id: <175732321782.1589339.2167695644057038388.b4-ty@kernel.org>
Date: Mon, 08 Sep 2025 17:20:17 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
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

On Tue, 26 Aug 2025 08:43:42 +0800, Ping-Ke Shih wrote:
> THE PRESIDENT OF THE REPUBLIC AND THE MINISTER OF SCIENCE, INNOVATION,
> TECHNOLOGY AND TELECOMMUNICATIONS released National Frequency Allocation
> Plan (PNAF) No. 44010-MICITT [1], and effective date from 05/31/2023.
> The table 22 shows maximum power permitted for the frequency bands:
> 
> - 2400 to 2500 MHz
>   36 dBm
> - 5150 to 5350 MHz
>   30 dBm
>   DFS on 5250-5350 MHz
> - 5470 to 5725 MHz
>   30 dBm
>   DFS on 5470-5730 MHz (take 5MHz from next entry)
> - 5725 to 5850 MHz
>   36 dBm
> - 5850 to 5895 MHz
>   36 dBm
> - 5895 to 5925 MHz
>   30 dBm
> - 5925 to 7125 MHz
>   30 dBm, LPI, indoor only
>   14 dBm, VLP, indoor and outdoor
> - 57,000 to 71,000 MHz
>   43 dBm
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory info including bandwidth for Costa Rica (CR) for 2023
      https://git.kernel.org/wens/wireless-regdb/c/b484a31c2037

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


