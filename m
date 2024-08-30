Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF2FBCA0EDF
	for <wireless-regdb@archiver.kernel.org>; Fri, 30 Aug 2024 05:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iKfjJqBZUxr4XQhpTYMFXUX2vWf7Jtd5kOd4PCUfsm0=; b=RNRDx0yHXyzaRI
	Mz4Gp133+GsObZFu2OVUTc5dCtAvfRf5xeEDyktrdk4/9cFRdw5juYWyyS7AuXxElIEZVcKYMLPZK
	jQTInhuhVHFM68RaZJp2KBwMp/mocoYcVsEGKCfUqgebTl04qDR0zYayXzDfglUNR9H75MoQNGlHN
	LPd5zJoRXZy4rTOeHRzcgomzcXEyImgO1qltOOPvK6iLbmhLCl6+ar5/Dk+52bxj8pIMKyInSU8Bv
	nqbdKxS/De1SisDups3MF6A2bJETwwDgn34tCk/GzwfEzOc0mbPBROLRVrH0aozkCFY7qxgHkhDMy
	gxZvXdfEucPkiJd6m27A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjtvG-00000004kvW-0nyk;
	Fri, 30 Aug 2024 05:11:46 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjtvD-00000004kun-04vi
	for wireless-regdb@lists.infradead.org;
	Fri, 30 Aug 2024 05:11:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id DFC66AE3A2E
	for <wireless-regdb@lists.infradead.org>; Fri, 30 Aug 2024 05:11:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E13A1C4CEC8
	for <wireless-regdb@lists.infradead.org>; Fri, 30 Aug 2024 05:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724994700;
	bh=lUVTzlqIl1gRgb48cDT9zmapdJGJAG5HEb76hLGHF18=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=BMzSeeIRuTb3yLiul3yBhBlB+eQ9BAf6mSwJ80qsKJiUqNIk4MbzQ3o+/u41eNCwA
	 ip7DCcvwFl4EY5eS08ERD0e7tmL4GBy9mWS9SC8H7kZwD0v4N9F7LPGgKGM1a71oEG
	 l1lGiaISv280iyyLW3OAvuDXqSL8lvHjXW1Gy5VEIwc8HCua/gT5OQHZuWON7o9Awd
	 X9vONfBC6edkzqC9UV0+rJkhAbJ6mTaAZlddaMDlM24xjHPSC2okW65JS9ogkNCKYG
	 258fK3UWAVnNjYcD/Kd+BK54RU3DvvjdrNs4bKTouzvysHr9viMfVkgaQ6zXTwkGlK
	 lUIhsieGJlF7Q==
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2f50966c469so15453071fa.3
        for <wireless-regdb@lists.infradead.org>; Thu, 29 Aug 2024 22:11:40 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWBVY3uopjbXHRFZOkSPoxz0WjTfvNubc8WfSYC1bwc5Fh8ll0FeoVeFC7ziR/guLBXmqtk8bqzRhjhJw19+g==@lists.infradead.org
X-Gm-Message-State: AOJu0YyDmPI2CzWattxNWzJGWo+9oh/349c6mwQl7mhzIvSBDOw3mnh7
	N8z5xfA1qc4BpjkbUWDe05YOLVzyGSmV26VYcBCfNDcqemt9ha/U+Q4CrOlLevKJZ2NkYNsEOzO
	N3eHj12FE6b4yOiVKmtfuTtRSInM=
X-Google-Smtp-Source: AGHT+IFDlrCbObFWC1YfVOWK8MLL0QcnU/O1cKtjCCOqW8niklN+iAadyLU61BXNgCphUfQUjd9mMBrcIeWcDE3jpwA=
X-Received: by 2002:a05:651c:502:b0:2f5:136d:89ef with SMTP id
 38308e7fff4ca-2f6103e391amr40331661fa.22.1724994699196; Thu, 29 Aug 2024
 22:11:39 -0700 (PDT)
MIME-Version: 1.0
References: <20240828084706.12257-1-pkshih@gmail.com> <20240828084706.12257-2-pkshih@gmail.com>
In-Reply-To: <20240828084706.12257-2-pkshih@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 30 Aug 2024 14:11:25 +0900
X-Gmail-Original-Message-ID: <CAGb2v653gw3FvUmZtYt_sOZa+cxLJo=_cRGBr=gAjuF8eBx1pw@mail.gmail.com>
Message-ID: <CAGb2v653gw3FvUmZtYt_sOZa+cxLJo=_cRGBr=gAjuF8eBx1pw@mail.gmail.com>
Subject: Re: [PATCH 2/4] wireless-regdb: Update regulatory info for Kuwait
 (KW) for 2022
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_221143_361166_57C6ADC1 
X-CRM114-Status: GOOD (  13.23  )
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

On Wed, Aug 28, 2024 at 5:52=E2=80=AFPM Ping-Ke Shih <pkshih@gmail.com> wro=
te:
>
> From: Ping-Ke Shih <pkshih@realtek.com>
>
> Kuwait, CITRA (Communication & Information Technology Regulatory Authorit=
y)
> released Regulations for Wi-Fi service on 2022 [1] via page [2].
>
>  * 2400 - 2483.5 MHz
>    - upper limit 100 mW; 10 mW/MHz (adopt 100 mW)
>  * 5150 - 5250 MHz
>    - upper limit 200 mW; 10 mW/MHz (adopt 200 mW)


>  * 5250 - 5350 MHz
>    - upper limit 100 mW; 10 mW/MHz (adopt 100 mW)
>    - DFS
>  * 5470 - 5725 MHz
>    - upper limit 500 mW; 50 mW/MHz (adopt 500 mW)
>    - DFS
>  * 5725 - 5825 MHz
>    - upper limit 500 mW; 50 mW/MHz (adopt 500 mW)
>    - DFS

TPC is required for the three bands above. If we follow the referenced
ESTI standard EN 301 893, then operating without TPC requires to drop
the power limit by 3 dBm. However that standard does not conver the
5.8 GHz range.

On the other hand, EN 302 502, the standard covering 5.8 GHz, does not
give a separate limit for systems without TPC.


ChenYu

>  * 5925 - 6425 MHz
>    - 200 mW
>    - indoor only
>
> [1] https://citra.gov.kw/sites/ar/Lists/CITRALaws/Attachments/14/%D8%A7%D=
9%84%D9%84%D8%A7%D8%A6%D8%AD%D8%A9%20%D8%A7%D9%84%D8%AA%D9%86%D8%B8%D9%8A%D=
9%85%D9%8A%D8%A9%20%D9%84%D8%AE%D8%AF%D9%85%D8%A9%20%D8%A7%D9%84%D9%88%D8%A=
7%D9%8A%20%D9%81%D8%A7%D9%8A.pdf
> [2] https://citra.gov.kw/sites/ar/Pages/CITRALaws.aspx
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
>  db.txt | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index ad8dddc9c800..50ebd50becbd 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1050,10 +1050,14 @@ country KR: DFS-JP
>         # 60 GHz band channels 1-4
>         (57000 - 66000 @ 2160), (43)
>
> +# Source:
> +# https://citra.gov.kw/sites/ar/Lists/CITRALaws/Attachments/14/%D8%A7%D9=
%84%D9%84%D8%A7%D8%A6%D8%AD%D8%A9%20%D8%A7%D9%84%D8%AA%D9%86%D8%B8%D9%8A%D9=
%85%D9%8A%D8%A9%20%D9%84%D8%AE%D8%AF%D9%85%D8%A9%20%D8%A7%D9%84%D9%88%D8%A7=
%D9%8A%20%D9%81%D8%A7%D9%8A.pdf
>  country KW: DFS-ETSI
> -       (2402 - 2482 @ 40), (20)
> -       (5170 - 5250 @ 80), (20), AUTO-BW
> -       (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> +       (2400 - 2483.5 @ 40), (100 mW)
> +       (5170 - 5250 @ 80), (200 mW), AUTO-BW
> +       (5250 - 5350 @ 80), (100 mW), DFS, AUTO-BW
> +       (5470 - 5825 @ 160), (500 mW), DFS
> +       (5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
>
>  country KY: DFS-FCC
>         (2402 - 2482 @ 40), (20)
> --
> 2.25.1
>

