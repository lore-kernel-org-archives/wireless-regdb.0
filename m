Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1635CA0EE0
	for <wireless-regdb@archiver.kernel.org>; Fri, 30 Aug 2024 05:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eiAlh3nqfql9HOn6uuyxYlbGR5Q73kHU0cRTFBgRaC0=; b=ir1a8iHIXh9XnM
	bxwWN1cJie8JFMqiGB8UGwlwRyL9DkhIxusJX5Z9sDlBw/XPXjSi8f9kelgIV4gZnLg5z4jKjmAOn
	wqQGnJShYfPAe10IebgDkv4UBsjiBVZFPRigTjtwNr2LgyEMxpBZJD9Ep77p3EimYgnvxhvS1arv4
	pA8S/QRt1bPD9p8qs9q8GMiI0WswlAKSeKAb5eqXhbzDA50bcFZGDnXAfWqGIoFSvcXAxYKYvmydk
	Ab2IengQta1XLP530l0HsM1JzQEshj3y23VYESjbRPg6yxPlmTNWdeExVtOMNy5BtqIJDhPnQ8gO3
	nKZDj8rCgZqPtRng9dmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjtz9-00000004lNl-1bP3;
	Fri, 30 Aug 2024 05:15:47 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjtz6-00000004lN2-0Rjn
	for wireless-regdb@lists.infradead.org;
	Fri, 30 Aug 2024 05:15:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 1F2BEAE3A2E
	for <wireless-regdb@lists.infradead.org>; Fri, 30 Aug 2024 05:15:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24F83C4AF0C
	for <wireless-regdb@lists.infradead.org>; Fri, 30 Aug 2024 05:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724994942;
	bh=+pW4npmgHZ7HhUSNXMFuqUeZXAiYuN1a7e8Ats7zJgQ=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=tNKxLCyMQL5BN2f85EcYe/2OvEkxqqzdpz+xUtyNZgalQoOPQn+uTlHzAK3f4CxGT
	 BFFMi1kGnQ/jioirTfFHP4qbjsPDIvk5/tXkd2ELddrzv/aUtZvvtYbYR+RzaOn1I1
	 k/Lye3LF8+48VoGLeAAiQtO78a0G/yg5pGWxqUKR5yLPcJ5owBoLsBsvzDd9RIH/PE
	 qh49np/Yv/AtEDwE6qVbRkI2IzTjqHjbsdBlCic9A0cYuzROCHWOiOqaBipn2cylzc
	 WBjq9Isc5kCwDwRExNBKZthT8S/AxXnmFZUeIy1MWY88WowdG2cHD5zO48xu8DVhx5
	 L4bMPoaZWvdVQ==
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2f409c87b07so16821951fa.0
        for <wireless-regdb@lists.infradead.org>; Thu, 29 Aug 2024 22:15:42 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXvkNMIIqg7mBkoQyfA4VRGXLskOhHdSeX2WjX0pux0NrmeoVr77rzHENSURg5r5l76+7PuAUa1z7Q2FxDW7w==@lists.infradead.org
X-Gm-Message-State: AOJu0YyF8Wkyo13xIdezaopnSv80O5QZjViOenJjCAKEQFL/EpX9ULP+
	qe44cbn/GzmxsU0vZVTQH/vrxnsoq0O5/wvW1T3dmpOa19S9DSEwRvIO5rKnNmBxrN5BgfMMwRi
	vA/SnSVO/mlS3KWqtDma4Xqja7/A=
X-Google-Smtp-Source: AGHT+IEK56QqD2GNkXMwc6ZSS+3rXima7Ww8Lpp87qbdv4LAozfh7ujF7zuej5bFX2Maqr211774UiDXqEF/gswT1L8=
X-Received: by 2002:a2e:71a:0:b0:2f3:cbc3:b093 with SMTP id
 38308e7fff4ca-2f6105559dfmr30825841fa.43.1724994940435; Thu, 29 Aug 2024
 22:15:40 -0700 (PDT)
MIME-Version: 1.0
References: <20240828084706.12257-1-pkshih@gmail.com> <20240828084706.12257-4-pkshih@gmail.com>
In-Reply-To: <20240828084706.12257-4-pkshih@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 30 Aug 2024 14:15:27 +0900
X-Gmail-Original-Message-ID: <CAGb2v67Zgs3=ZECp8WcXGhTj1R+OxDKbhqBEOdLnEVsc6ksw9g@mail.gmail.com>
Message-ID: <CAGb2v67Zgs3=ZECp8WcXGhTj1R+OxDKbhqBEOdLnEVsc6ksw9g@mail.gmail.com>
Subject: Re: [PATCH 4/4] wireless-regdb: Update regulatory info for Honduras
 (HN) for 2023
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_221544_447887_6836D10D 
X-CRM114-Status: GOOD (  14.88  )
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

On Wed, Aug 28, 2024 at 6:32=E2=80=AFPM Ping-Ke Shih <pkshih@gmail.com> wro=
te:
>
> From: Ping-Ke Shih <pkshih@realtek.com>
>
> Honduras, Telecommunication Commission (CONATEL) modified national note
> HND40A on 2023 [1], which Wireless Access System/Radio Local Area Network
> (WAS/RLAN) have a general license to operate in frequency ranges:
>
>  * 902 - 928 MHz
>  * 2400 - 2483.5 MHz
>  * 5150 - 5250 MHz
>  * 5250 - 5350 MHz
>  * 5470 - 5725 MHz
>  * 5725 - 5850 MHz
>  * 5925 - 6425 MHz (*)
>  * 24.05 - 24.25 GHz
>  * 57 - 71 GHz (*)

Can you mark the individual sources for each band? Otherwise it is really
hard to verify.


Thanks
ChenYu

> Article 5 of resolution NR006/23 [2] mentioned Recognition of Standards a=
nd
> International Standards including FCC, which limits and ranges of FCC are
> used due to lack of limits [1], but only newly add freqnecy ranges marked
> by asterisk (*).
>
> [1] https://www.conatel.gob.hn/doc/Regulacion/resoluciones/2023/NR05-23.p=
df
> [2] https://www.conatel.gob.hn/doc/Regulacion/resoluciones/2023/NR006-23.=
pdf
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
>  db.txt | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/db.txt b/db.txt
> index 0bc40db2d9b5..d4ca8d43a41d 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -819,12 +819,16 @@ country HK: DFS-ETSI
>         (5730 - 5850 @ 80), (36)
>         (5925 - 6425 @ 160), (14)
>
> +# Source:
> +# https://www.conatel.gob.hn/doc/Regulacion/resoluciones/2023/NR05-23.pd=
f
>  country HN: DFS-FCC
>         (2402 - 2482 @ 40), (20)
>         (5170 - 5250 @ 80), (17), AUTO-BW
>         (5250 - 5330 @ 80), (24), DFS, AUTO-BW
>         (5490 - 5730 @ 160), (24), DFS
>         (5735 - 5835 @ 80), (30)
> +       (5925 - 6425 @ 320), (12), NO-OUTDOOR, NO-IR
> +       (57240 - 71000 @ 2160), (40)
>
>  country HR: DFS-ETSI
>  # HR as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 30=
1 893)
> --
> 2.25.1
>
>

