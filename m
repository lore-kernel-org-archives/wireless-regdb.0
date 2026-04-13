Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99F13E93813
	for <wireless-regdb@archiver.kernel.org>; Mon, 13 Apr 2026 04:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GJuG7X3mTxvX+kye6sq9+85E1jGZCK8aG15DvCqB/+M=; b=cy1lM52k3JtKiA
	6PNhz5yMhmmWV7/Mf1USHnbXjZfVSRFfu2+s13HRs9nF8jVNf74Hy/Y/l30qdfdzOjSP9DcnJjCDy
	zp9Zezhwno3cWdqt6ExStVZque4hCvlOv4pHVxoD4ptQxVGLA/I8einm3wCDWE8BM+tNk0rQpaIS3
	MsGwHz3u3zrXxOYQlwbWPuKrBoEPRkaVfbcYjxy36lzsHoImUJ92Xknj6boIMjW8xH0JQeIjURWsh
	DOf8CazjtJCRdQxx4rXGxmRyb4KX452gg8RThpIWd5qfHjnZF8AdwiaJU3BpIcWoPmfi3SBTx+Wzi
	nxwwdCr7cxKi6EvGHnrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wC9Li-0000000EzT9-0xkP;
	Mon, 13 Apr 2026 04:56:38 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wC9Lb-0000000EzSc-0ngX
	for wireless-regdb@lists.infradead.org;
	Mon, 13 Apr 2026 04:56:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6E48D43F4B
	for <wireless-regdb@lists.infradead.org>; Mon, 13 Apr 2026 04:56:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50519C2BCB0
	for <wireless-regdb@lists.infradead.org>; Mon, 13 Apr 2026 04:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776056190;
	bh=KvRPjZM/U19tdeO0PnNAngRoIUaPNf7BWARLAT5o2f0=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=G0bkIc0ht7Ks/3oXAanyrSunJ/DjrvMCp6fUDt7kMKFzhtq5iAffRHMbdttGBAq77
	 IMM4ErcfOtbfrWYjhYN8dw92HV1GzvgSXKRgQTSMQr4n5cWhMgnQoLJGwYoETs29DS
	 PXtrRS151b3Xbbdj0PXSgJ14Borwz8zUYvMzi/BXEOBXNFeCRizd7/Ji2C6OwnilYy
	 3E8xpCQLAKcnm02SA+moV4SyDYo1iGD89cRyO5ZLb3afz0ymqxUHFwPOuinJa+Mbmc
	 yI0UXqXnw8HAdvmOqH6PrLk1Q47Mdmq1tAFZzF/RZlFqHjYH1oYHmQ8s5SYUh7U7eE
	 L7KxVkhOQM8+g==
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-386b553c70eso35658401fa.0
        for <wireless-regdb@lists.infradead.org>; Sun, 12 Apr 2026 21:56:30 -0700 (PDT)
X-Gm-Message-State: AOJu0YztE8z9/9Z3d+dTpb8oDHC7y/mMZFJ4SFXu+NyGxPOcpPbXsg6o
	PlrqHeJH7MzTgeeZE2OAt6Bju1hW97QpOEX9VdrgVca84WOcPbGSVe8Ybja0wZ7iQZFY5OjP2u8
	mJhijWq6uNR1EqjsS4/XjL/9DReKsomw=
X-Received: by 2002:a2e:8a98:0:b0:38e:81e9:bf11 with SMTP id
 38308e7fff4ca-38e81e9c581mr2691661fa.9.1776056188605; Sun, 12 Apr 2026
 21:56:28 -0700 (PDT)
MIME-Version: 1.0
References: <20260411222155.299441-1-loukot@gmail.com> <20260411222155.299441-5-loukot@gmail.com>
In-Reply-To: <20260411222155.299441-5-loukot@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 13 Apr 2026 12:56:14 +0800
X-Gmail-Original-Message-ID: <CAGb2v64MBR5tJraW2xJX762csY7vG-hstUp1ES4dPpCARN6f_A@mail.gmail.com>
X-Gm-Features: AQROBzDJQQ8BKv1LWQPFnXE5Z5rfYwvfvAINA3Bo84m2F8uKrA0BM-p1Mup4fAQ
Message-ID: <CAGb2v64MBR5tJraW2xJX762csY7vG-hstUp1ES4dPpCARN6f_A@mail.gmail.com>
Subject: Re: [PATCH 4/5] wireless-regdb: Remove incorrect DFS flags for Togo (TG)
To: Louis Kotze <loukot@gmail.com>
Cc: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260412_215631_765294_0FA78CBE 
X-CRM114-Status: GOOD (  14.53  )
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
Reply-To: wens@kernel.org
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

Hi,

On Sun, Apr 12, 2026 at 6:22=E2=80=AFAM Louis Kotze <loukot@gmail.com> wrot=
e:
>
> Commit aad0c26 (2024-07-19) added DFS flags to all bands for Togo,
> including 2.4 GHz, 6 GHz, and 60 GHz. DFS is only applicable to
> 5 GHz bands where radar avoidance is required.
>
> The source regulation (ARCEP Decision N 226/ARCEP/DG/22) does not
> require DFS on 2.4 GHz, 6 GHz, or 60 GHz. Remove the incorrect
> DFS flags from these bands while keeping DFS on the 5 GHz entries
> where it is correct.

I don't read French, but my translation app says that DFS is required
for all bands except the 60 GHz band. I am looking at table 9 -
broadband data transmission devices (pages 20-21).

If you're looking at table 3 - non-specific SRDs, then you get a much
lower power limit.


ChenYu

> Reference:
>   ARCEP Decision N 226/ARCEP/DG/22
> Signed-off-by: Louis Kotze <loukot@gmail.com>
> ---
>  db.txt | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 777d323..15b80ee 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1945,11 +1945,11 @@ country TD: DFS-ETSI
>  # Source:
>  # https://arcep.tg/wp-content/uploads/2022/12/Decision-226-22-Determinan=
t-les-categories-et-conditions-techniques-dexploitation-des-appareils-de-fa=
ible-puissance-et-de-faible-portee.pdf
>  country TG: DFS-ETSI
> -       (2400 - 2483.5 @ 40), (100 mW), DFS
> +       (2400 - 2483.5 @ 40), (100 mW)
>         (5150 - 5350 @ 80), (20), DFS
>         (5470 - 5850 @ 160), (27), DFS
> -       (5925 - 6425 @ 320), (23), DFS, NO-OUTDOOR
> -       (57000 - 66000 @2160), (40), DFS
> +       (5925 - 6425 @ 320), (23), NO-OUTDOOR
> +       (57000 - 66000 @ 2160), (40)
>
>  # Source:
>  # https://ratchakitcha.soc.go.th/documents/140D100S0000000004000.pdf
> --
> 2.53.0
>

