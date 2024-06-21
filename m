Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23654C2BA1A
	for <wireless-regdb@archiver.kernel.org>; Fri, 21 Jun 2024 07:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8BSuEaB334O2oAYihK2Dtt2bCo399WuZ0mbvttYmnw0=; b=rjDp/mSWf821qb
	TwrG4hvz4Ix091IMm5nrsPAxUmJFgOKQHjUsgEsVKuGY+rj2Nn2+XsgOYH8vJex+ae4unx5GTPJ8W
	5A5UW11Y7t0JhO95VM7as5lBu3TzOgbUS1iYo9d+e4J/PNzF2tM3bFZ/LpaIto71I/zwqlnco46eM
	cDKUX46MdVOgIP/NWuklIk3J8VcoHSd6J3727YvoEWX1QTLLqXufIWWw+1H8VLsaOyaECU63NswIE
	01U0BldOBh6rMiB/Q+byxe114wP9a3WiaO6DGmAz8JYgKt9ZwEo5ApVxTczn9EZw9yQpFRUaUqtt8
	FnSGi7hP/j43cf9HuXVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKYzs-00000008CDi-3GrP;
	Fri, 21 Jun 2024 07:47:48 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKXsR-00000007zfp-0fxO
	for wireless-regdb@lists.infradead.org;
	Fri, 21 Jun 2024 06:36:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 6321DCE2B68
	for <wireless-regdb@lists.infradead.org>; Fri, 21 Jun 2024 06:36:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FA64C4AF07
	for <wireless-regdb@lists.infradead.org>; Fri, 21 Jun 2024 06:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718951759;
	bh=CpxIUIKVNJ7xjoieIHwYd3Q2dxYqbJt/GmPcYfMhMzA=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=OL9xa3Ev644q9/s7vi5yOyyP4OSy8pFN72VxQ9bARJi6BNzd0god1SxhziTvad0up
	 WjaOSLaU8gYe3Pc3KzQYQldfcwmSj6hPw+YNPZcxxunBNsfvrdfXHy8aUKCydqcHif
	 JYsT75/1KefDupFITjUlxmnfUXbufUzSLzi2Z5+rWCHX4BPxBgvOC0PJJ3hrn6H8iU
	 ddNpVuZ7fAwGXjMxBfG5D9eVFNVQoD1IOpYFkJllQaU/uK2nNhUeGKWvuJdlLGQAwa
	 quop09NsXIDp2mrJ06SAt01wKywxbU0lteDVdLlCbylzq/aVpQCYEzlJ1s7n1xScDN
	 pmj3u5//lT4Xw==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2eaafda3b5cso18218321fa.3
        for <wireless-regdb@lists.infradead.org>; Thu, 20 Jun 2024 23:35:59 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWiBRNuSST60IC570OBSzkrRSyAzgPI8UkhGZvdwarU6zERuTLhndVMowHigl/OrniUb9kcRO2EwqMwr3m/pcJIxkgI1hiPFWZgPriApNqOzBwZ
X-Gm-Message-State: AOJu0Yyk249EiKvsbW5Qdx0NvceVbHMG3B+S9IhDIdWVlB2yzLe9L7yJ
	wbe9hoZE8GmXhD5QNgg73JGd0b02qBJZUNiSl80yZJohlGSi3kNAkNI/ZFOr6mzayJXVSlfF/++
	KYQNggA5UfapCzvGzrFioKWtmnWk=
X-Google-Smtp-Source: AGHT+IGsmatlzmU52ckrEaR/VMP+CqQ9uYuaaJn+BOGKI0KcjwEB3ljWwTDEcmTJhMKHaKdbAozxtWoGh26FWdjnEqg=
X-Received: by 2002:a2e:7317:0:b0:2ec:1890:5e6 with SMTP id
 38308e7fff4ca-2ec3cfe8a38mr44537831fa.39.1718951757946; Thu, 20 Jun 2024
 23:35:57 -0700 (PDT)
MIME-Version: 1.0
References: <20240621052205.28925-1-pkshih@realtek.com> <20240621052205.28925-5-pkshih@realtek.com>
In-Reply-To: <20240621052205.28925-5-pkshih@realtek.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 21 Jun 2024 14:35:44 +0800
X-Gmail-Original-Message-ID: <CAGb2v67Ww8T61e--YXaFRZhxHH-_d70P=2CArVv5FeQe=Vv8dA@mail.gmail.com>
Message-ID: <CAGb2v67Ww8T61e--YXaFRZhxHH-_d70P=2CArVv5FeQe=Vv8dA@mail.gmail.com>
Subject: Re: [PATCH 5/6] wireless-regdb: Update regulatory info for Macao (MO)
 for 2024
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_233603_953291_3ABF9A1D 
X-CRM114-Status: GOOD (  13.05  )
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

On Fri, Jun 21, 2024 at 1:22=E2=80=AFPM Ping-Ke Shih <pkshih@realtek.com> w=
rote:
>
> MACAU SPECIAL ADMINISTRATIVE REGION OFFICE OF THE CHIEF EXECUTIVE release=
d
> Order from the Chief Executive No. 64/2024, which wireless data
> communications equipment defined as
>
>  - 2400-2483.5MHz 200mW
>  - 5150-5350MHz   200mW
>  - 5470-5725MHz   1W
>  - 5725-5850MHz   1W
>  - 5925-6425MHz   250 mW (for indoor use)
>                   25 mW (for use in outdoor spaces)
>
> [1] https://bo.io.gov.mo/bo/i/2024/16/despce.asp#64
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
>  db.txt | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 5603933e3563..c7371e568b4d 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1252,12 +1252,14 @@ country MN: DFS-FCC
>         (5735 - 5835 @ 80), (30)
>         (5925 - 6425 @ 320), (100mW)
>
> +# Source:
> +# https://bo.io.gov.mo/bo/i/2024/16/despce.asp#64
>  country MO: DFS-FCC
> -       (2402 - 2482 @ 40), (23)
> -       (5170 - 5250 @ 80), (23), AUTO-BW
> -       (5250 - 5330 @ 80), (23), DFS, AUTO-BW
> -       (5490 - 5730 @ 160), (30), DFS
> -       (5735 - 5835 @ 80), (30)
> +       (2400 - 2483.5 @ 40), (23)
> +       (5150 - 5350 @ 80), (23)
> +       (5470 - 5725 @ 160), (30), DFS

You removed DFS for 5250 - 5350, but kept it for this band. Any
references for either way?

Please extend this range to 5730, so that 160 MHz operation is actually
possible. See TW region for reference.

> +       (5725 - 5850 @ 80), (30)
> +       (5925 - 6425 @ 320), (250mW), NO-OUTDOOR

Please use values and units as given in the reference.


Thanks
ChenYu

>
>  country MP: DFS-FCC
>         (2402 - 2472 @ 40), (30)
> --
> 2.25.1
>

