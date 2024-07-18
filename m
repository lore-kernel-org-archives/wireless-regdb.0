Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4758BC3DA49
	for <wireless-regdb@archiver.kernel.org>; Thu, 18 Jul 2024 07:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oyPHmxJQDyHlTPKjHEBMC67b5DleOeEBrNWeJiipft8=; b=XXsXRrg1da+elr
	Q/Ms0P+cl1X4FDJATMbKw21xzVIIoeJR7/RXl1f+yUG4TBOuIMvbDjvTgZsxKvZAgUuX1Q2K+NSr3
	pPG9D6AVAa/karal/TuHBs0q3NDwobY2EUKJVWefUbvVuw0w2djEBLmseTCKvYyYvPpdVS10P/TG4
	pJlF/dz/uyyzgsGIrSBLc5IeXqNv4MwgYL2vZwzuto+tpjHkOO9sIp/6I5J/3UTg4oE1g1tYYREMO
	1oYjQtc/F0vS2TqMZr6oif3AmctvqI6F4TCW6cfCCTN1ge5rl7XdE7KJjyEcUTZSHoMuCKyuIM0Wx
	JD4Rui0AdVcx5NZ9b20w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sULF1-0000000G6kZ-3I8K;
	Thu, 18 Jul 2024 07:07:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sULEx-0000000G6hH-2s6P
	for wireless-regdb@lists.infradead.org;
	Thu, 18 Jul 2024 07:07:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DAC74617D7
	for <wireless-regdb@lists.infradead.org>; Thu, 18 Jul 2024 07:07:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FF7DC116B1
	for <wireless-regdb@lists.infradead.org>; Thu, 18 Jul 2024 07:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721286466;
	bh=RCeS1dL/bFbXXSZ94eaR+trz+wOufUEu54cfbt9QmE0=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=TxTn59iOwY4XaRN69XM8ZUOXLiIpPRFSn8MIDqjPV5/eMautxetJ2x+O6r353ZujN
	 lhkpddukuvJWJGpa+NZjZIdd+Gocj96xpgv0dFgq+Eq+19FQYH1FDvaxikPtg045H6
	 +xF2Yc2lJBVciywXVcuOX5jPsdYGb33OUjPA7qHBWEMS7d4dlbzPtPkuCquJ0jLiXo
	 oZWqkh2yUqgySICs2LVQLRXSLNXcggJsnT3BajQytsmFVN2gngeepmnJq/RHB/YnOV
	 IEM7nOjlSGfZKbW2PdHOacX1HewqreoehdKXT7HpU/dGlgtRLlIz49SSR6yEiGSbyD
	 04ZaBmC2HZW/A==
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ee9b1b422fso5232671fa.0
        for <wireless-regdb@lists.infradead.org>; Thu, 18 Jul 2024 00:07:46 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUv919QgeiDd2lVG34NcJoFQ30x9yXH+axZFbiRt/uSfU6/lyQlp3xBxjVSGuIG7qONraAviZyyue/8srRpq1aRZ0Zcu67YoV16FcDDEeMYPnkP
X-Gm-Message-State: AOJu0YyIjpgXzgx0wZsdWlnARlfkTK7j4CnMszifxgLO0jLQ1/lL0NBS
	aYvhPJlQxoz4+hMiQ0oLJ8BbINrmlI/3vrkmX/VcL6Y0h7FFVnmRHqEsEIryt8A4yqSUd4MLZdb
	WD7ZPWrIE9Ef/Be4+5okYYa9BY6Q=
X-Google-Smtp-Source: AGHT+IELI3GPH8ew30Fd6iEiF9QPuwDB/yL26IDXfGyGMZR0/aM3h9S/XMWBiqRDazydkod6z1oCMh0A8v02Q5AySoo=
X-Received: by 2002:a2e:22c4:0:b0:2eb:ec25:b759 with SMTP id
 38308e7fff4ca-2ef0624aad6mr4224211fa.3.1721286464814; Thu, 18 Jul 2024
 00:07:44 -0700 (PDT)
MIME-Version: 1.0
References: <20240718031718.19403-1-pkshih@gmail.com>
In-Reply-To: <20240718031718.19403-1-pkshih@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 18 Jul 2024 15:07:31 +0800
X-Gmail-Original-Message-ID: <CAGb2v67CxDRfazXSHEpKDhAYULggf1Jqgd+Aj=JEJyGnZ1Ge=A@mail.gmail.com>
Message-ID: <CAGb2v67CxDRfazXSHEpKDhAYULggf1Jqgd+Aj=JEJyGnZ1Ge=A@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Add regulatory info for Namibia (NA) for 2023
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_000748_376056_9CA25266 
X-CRM114-Status: GOOD (  17.93  )
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

On Thu, Jul 18, 2024 at 11:17=E2=80=AFAM Ping-Ke Shih <pkshih@gmail.com> wr=
ote:
>
> From: Ping-Ke Shih <pkshih@realtek.com>
>
> COMMUNICATIONS REGULATORY AUTHORITY OF NAMIBIA released NOTICE IN TERMS O=
F
> THE REGULATIONS REGARDING THE SUBMISSIONS OF INTERCONNECTION AGREEMENTS
> AND TARIFFS on 3 April 2023 [1].
>
> * 2400-2483.5 MHz
>   100 mW e.i.r.p.
>
> * 5150-5350 MHz
>   200 mW mean e.i.r.p.
>   Restricted to indoor use
>   The maximum mean e.i.r.p. density shall be limited to 10 mW/MHz
>   (ETSI [2]: 200mW (23dBm) -6 dBm to be 17 dBm; DFS 5250-5350)

EN 301 893 says for devices without TPC, the limit is lowered 3 dBm only,
as you mentioned below.

I previously requested -6 dBm because that country's regulation said
that "TPC is required".

> * 5470-5725 MHz
>   250 mW e.i.r.p.
>   Indoor as well as outdoor use allowed.
>   The maximum mean e.i.r.p. density shall be limited to 50 mW/MHz
>   (ETSI [2]: 250mW (24dBm) -6 dBm to be 18 dBm; DFS)

Same here, without TPC the limit is lowered by 3 dBm.

>
> * 5725-5 875 MHz

          ^ drop the space

>   PTP/PTMP: max mean e.i.r.p =3D 4 W
>   Mesh/AP-MP: max mean e.i.r.p =3D 2 W
>   (ETSI [3]: The FWA device shall have the capability to reduce the
>    operating mean EIRP level to a level not exceeding 24 dBm for
>    ChS =3D 20 MHz and 21 dBm for ChS =3D 10 MHz. 24 dBm is adopted)

Per ETSI EN 302 502, this range requires DFS.

> * 5925-6425 MHz
>   - 23 dBm (200mW) mean e.i.r.p
>     Restricted to indoor use only.
>     Mean e.i.r.p density for in-band emissions =3D 10 dBM/MHz

         Should be dBm (I know it says dBM in the doc)  ^

>   - 14 dBm (25) e.i.r.p mW
>     Very Low Power (VLP) indoor outdoor use.
>     Maximum meand e.i.r.p. for inband emissions =3D 1 dBm/MHz

                  ^ extra d
>
> * 57-66 GHz
>   40 dBm (10W) mean e.i.r.p
>   23 dBm/MHz e.i.r.p. density
>   Indoor use only

The rest looks good.

ChenYu

> The EN 301 893 [2] specifies reduced power limit of 23 and 27 dBm for
> 5150-5350 MHz and 5470-5725 MHz respectively for devices that don't
> implement TPC. Also reduced TPC requires being able to reduce TX power by
> up to 6 dB. The DFS applicable frequency range are 5250-5350 MHz and
> 5470-5725 MHz.
>
> [1] https://www.cran.na/yglilidy/2023/04/GG-8060-dated-3-April-2023.pdf
> [2] EN 301 893 https://www.etsi.org/deliver/etsi_en/301800_301899/301893/=
02.01.01_60/en_301893v020101p.pdf
> [3] EN 302 502 https://www.etsi.org/deliver/etsi_en/302500_302599/302502/=
02.01.01_60/en_302502v020101p.pdf
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
>  db.txt | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/db.txt b/db.txt
> index 6192dafe9715..2a50afb60c06 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1355,6 +1355,17 @@ country MY: DFS-FCC
>         (5735 - 5835 @ 80), (1000 mW)
>         (5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
>
> +# Source:
> +# https://www.cran.na/yglilidy/2023/04/GG-8060-dated-3-April-2023.pdf
> +country NA: DFS-ETSI
> +       (2400 - 2483.5 @ 40), (100 mW)
> +       (5150 - 5250 @ 80), (17), AUTO-BW, NO-OUTDOOR
> +       (5250 - 5350 @ 80), (17), DFS, AUTO-BW, NO-OUTDOOR
> +       (5470 - 5725 @ 160), (18), DFS
> +       (5725 - 5875 @ 80), (24)
> +       (5925 - 6425 @ 320), (23), NO-OUTDOOR
> +       (57000 - 66000 @ 2160), (40), NO-OUTDOOR
> +
>  country NG: DFS-ETSI
>         (2402 - 2482 @ 40), (20)
>         (5250 - 5330 @ 80), (30), DFS
> --
> 2.25.1
>

