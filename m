Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D821C27C4F
	for <wireless-regdb@archiver.kernel.org>; Fri, 21 Jun 2024 06:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V82Up5PnUHiEiL997Ur7Nk989dtxnAte9RodaCm+aFM=; b=zBsiQeIf7RNwL6
	u1UFbUTbcJwV6chitIFx7+P8skf4hWxT4Wr/P5JcT2zFm+mXZET6Z7sJrhmNDtIuzhIWsxbgpch8h
	dX/mv/V58Y6USFghv1q4F7eip3cI5ijtXRbI7bv75c3vU0Elgsn7iekYogy3PXRPFqR34w6rUYxJc
	Pcd8rDT2+jA0dT9ttj13XVZ3FWrTXbVn/EVLO9NoiRKMYYQWjQq38ZL2ABtIcCDOyYd4mVajtXTpN
	ER/94TI4fVyrk4dh4WF+GDHhET9msAytNRzE/35CYiR0l78yp9yuU6UK9YghFHXhywxRFZFypwPYp
	69vWfCvNzKMVGwat24Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKXer-00000007wQq-3KDI;
	Fri, 21 Jun 2024 06:22:01 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKXen-00000007wOK-43YS
	for wireless-regdb@lists.infradead.org;
	Fri, 21 Jun 2024 06:21:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9095A6243A
	for <wireless-regdb@lists.infradead.org>; Fri, 21 Jun 2024 06:21:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45A61C2BBFC
	for <wireless-regdb@lists.infradead.org>; Fri, 21 Jun 2024 06:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718950916;
	bh=hMkpu0krNr2g93eZ8IM3B57N+hVlxXfT21ilDYvWVq8=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=EX9lQoltpiFc3q7j93ULJKsmcCLkMw97KPsdkc79sXOn67DqN8tp/SEio66pj4o6K
	 a4KHHhkAHY7av+6Ot0ulcV1M7wsnKZlwYXsMcqkZgrHTRHbshHh5uJDTmq1Sqt5IDR
	 P7kOpza35cV/NMwoktwJ62TM2Feya/a3B7C1pI6v1LCxbUj+RhbjjC/67v/SudRbs8
	 FYGa12CaFVXUaSyz9eM5sYi0yL47cEpIfRHr0fZdhqnFaetlpsgCnP19F9O+diwklL
	 hpPdKb+LwVMaEqvFzRRpf77ZkblnibDOs0GWCicqIt5EaOawbJ0Lre/8Swz2yfQZIq
	 3a7FF0x+0QFXQ==
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2ec50a5e230so528141fa.0
        for <wireless-regdb@lists.infradead.org>; Thu, 20 Jun 2024 23:21:56 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWQX0ltk4uClF6GP4GOuYjq5nOchSeaWJFYUXVcpLFBjdKoiGFTzR/THSQsEb0CsKvioWZU50dJAp8d+uBciNyN40EPP1ZEOynJ71ub2AsSbjEl
X-Gm-Message-State: AOJu0YwKAdS9fI3CaGZmisudSe75nScy47SqMPDNlwdso9QFtLcFhSJA
	gct1+c0QdP8vAL2weGw0i+4Yk0MQ9QpFHbrgTVD2yLkKAyLCjepOjV7F0+DvxecODqUaeO5bkWA
	yMV3KoA3cziLe0FKT3UwJCsupLvg=
X-Google-Smtp-Source: AGHT+IGw5UYx81r3K2ucby3YFlI+wqgzxWeOa5Pevemh0b0s2VLqCckk46850zC6AS/PpwpRA8YwMxo1ssl2bdwY2H0=
X-Received: by 2002:a2e:83d0:0:b0:2ea:e763:7124 with SMTP id
 38308e7fff4ca-2ec3ceb867bmr51106431fa.18.1718950914635; Thu, 20 Jun 2024
 23:21:54 -0700 (PDT)
MIME-Version: 1.0
References: <20240607023058.34002-1-pkshih@realtek.com> <20240607023058.34002-4-pkshih@realtek.com>
In-Reply-To: <20240607023058.34002-4-pkshih@realtek.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 21 Jun 2024 14:21:41 +0800
X-Gmail-Original-Message-ID: <CAGb2v65k7M0=fiJoVaNUFxKCsRQXcv7mmXjDEJ0-OnV2uTUE1w@mail.gmail.com>
Message-ID: <CAGb2v65k7M0=fiJoVaNUFxKCsRQXcv7mmXjDEJ0-OnV2uTUE1w@mail.gmail.com>
Subject: Re: [PATCH 4/5] wireless-regdb: Update regulatory info for Costa Rica
 (CR) for 2021
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_232158_176432_47A521EF 
X-CRM114-Status: GOOD (  14.59  )
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

On Fri, Jun 7, 2024 at 10:31=E2=80=AFAM Ping-Ke Shih <pkshih@realtek.com> w=
rote:
>
> DECENTRALIZED INSTITUTIONS, REGULATORY AUTHORITY OF PUBLIC SERVICES,
> announced ALCANCE NO 87 A LA GACETA NO 83 (in Spanish) on April 30, 2021.
>
> For 6GHz band (frequency 5925-7125), allowed only the following usage
> applications free in this segment:
>  - Applications of low power in interiors (LPI), according to the limits =
of
>    power 24 dBm.
>  - Applications of very low power (VLP), indoors and exteriors, with an
>    EIRP maximum of 14 dBm.
>
> Also update and add limits of 2 and 5 GHz bands accordingly.
>
> [1] https://storage.googleapis.com/eleoscompliance1.appspot.com/public/PN=
AF%20modificaci%C3%B3n%20ALCA87_30_04_2021.pdf
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
>  db.txt | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index c98749442873..cdec93783b20 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -434,12 +434,16 @@ country CO: DFS-FCC
>         (5735 - 5835 @ 80), (30)
>         (5925 - 7125 @ 320), (12), NO-OUTDOOR
>
> +# Source:
> +# https://storage.googleapis.com/eleoscompliance1.appspot.com/public/PNA=
F%20modificaci%C3%B3n%20ALCA87_30_04_2021.pdf
>  country CR: DFS-FCC
> -       (2402 - 2482 @ 40), (20)
> -       (5170 - 5250 @ 20), (17)
> +       (2402 - 2482 @ 40), (30)
> +       (5170 - 5250 @ 20), (24)
>         (5250 - 5330 @ 20), (24), DFS
>         (5490 - 5730 @ 20), (24), DFS
>         (5735 - 5835 @ 20), (30)
> +       (5875 - 5925 @ 20), (24)
> +       (5925 - 7125 @ 320), (24), NO-OUTDOOR

I believe the kernel uses EIRP values. That means using the values in the
third column of the table in the reference.

ChenYu


>
>  # Source:
>  # https://www.mincom.gob.cu/es/marco-legal
> --
> 2.25.1
>

