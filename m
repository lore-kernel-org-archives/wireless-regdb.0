Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1ACCC3DA49
	for <wireless-regdb@archiver.kernel.org>; Thu, 18 Jul 2024 04:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iCKdiB7NY99N4xy7edWAixOSbrJJmvykmTgHjCNgcFc=; b=Ob7myUE5n9avYH
	eRidM/HdnUHLdVSQ9V3HslZ8S46wvppC3Yc16I1PjrgI2g8l8ayUZetpRbzTYTtJcEMx5BM5ReDbv
	OYMoIf/Nt6S4idnSmMsL2M6Y2jzfVBLRt3bU2pJxZ4FCmGn1brIw59AUImDxqnggt3mxUeecitjcw
	Z2PYT1vTNXSBDYGhqRQbNuZyIMFDQUKm9jRU1tuEG3dtdWt8wwfjZRHkqTpPyPTM1qX7p710JFWEc
	CWxS0/xIphg5DSORcOsrfKXQvqvdPceUvybUJntBMu63L+KiXgheHwkeDU2ksR0LpfYExfm0ztN0o
	m/Qwefc1xb2UIee6n1WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUIu0-0000000FkX6-0xpR;
	Thu, 18 Jul 2024 04:38:00 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUItp-0000000FkSx-10FU
	for wireless-regdb@lists.infradead.org;
	Thu, 18 Jul 2024 04:37:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 2CF5DCE12CB
	for <wireless-regdb@lists.infradead.org>; Thu, 18 Jul 2024 04:37:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CA4CC4AF0B
	for <wireless-regdb@lists.infradead.org>; Thu, 18 Jul 2024 04:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721277466;
	bh=yN46Bqq7WVjBLS9FdRpFuge+w7G4HIK0MMs93hR/uho=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=Oji9FfcWG8qSySvMfVmgJG+LfrslBaAiYFi9ZCHTYsAjz2RvPGkbHkIfY2BxFNaKj
	 Y6E/3ALOITBB4QJ8niJCI/AKdTs7xfNmOTv1XhXxWwalCDlPO8jH0cVcQfsMMbDEbI
	 rVmrswRzH+QZtJPeUnQtNzPLroaEe6ylSaG5PevGSELdMIPTZdJYPYDI0b/PdzMi/M
	 aKLF7qsOtiHCYRZj9MOLUkGaDRfxAxVieUbP5HogvBQs5iWlBIyXh/7EuV4prAGSvJ
	 B90n/N0XuMByzuB0bv8Li41IjeN1GoS+1mfnGn4/zy8wjmsOjDwLfgdbl2ZT9rCkgw
	 OKYWjc+yypX4A==
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2eeb1ba040aso6075211fa.1
        for <wireless-regdb@lists.infradead.org>; Wed, 17 Jul 2024 21:37:46 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXTvRUXQMrtl3A9r5SKM37bNA/kFBB2Yme+D6fZ7ZZLZrQzLTWYp1Pus0kgQavSfg2iwAzMyn91ZFdLtNvgd3nsTS1qOm+XSDu1AhXOea7TNmrm
X-Gm-Message-State: AOJu0YxBv79Qd4JsNDPsxuIHO8Y2ofs+z6BbtyB2DbZHPjFPquvRRsTU
	zE/ohDr0Lv2/QtRKdPJa+TmjdWHGZgfmZHZaDk16e+H17oQ9LIXHwHFvd79d6mNuYgJEwqLz/gM
	wX4KzZWFapmDp8J/53gXmWGNJQaM=
X-Google-Smtp-Source: AGHT+IESV2kX6bMZhIjIoRckYtKifhPDdXNl75SNi9U8SzMIDPDA/rWyozK+RhYN2T9TqU28hIWdFzAcrksFpuCWmxg=
X-Received: by 2002:a2e:3a13:0:b0:2ee:db2c:5753 with SMTP id
 38308e7fff4ca-2ef05d7e037mr7855961fa.42.1721277464680; Wed, 17 Jul 2024
 21:37:44 -0700 (PDT)
MIME-Version: 1.0
References: <20240705060613.28909-1-pkshih@gmail.com>
In-Reply-To: <20240705060613.28909-1-pkshih@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 18 Jul 2024 12:37:32 +0800
X-Gmail-Original-Message-ID: <CAGb2v67hWYHebORsjHuOw2mA+mwpmoCUF4vhAHE7Xt81VvZrtQ@mail.gmail.com>
Message-ID: <CAGb2v67hWYHebORsjHuOw2mA+mwpmoCUF4vhAHE7Xt81VvZrtQ@mail.gmail.com>
Subject: Re: [PATCH 1/5] wireless-regdb: Update regulatory info for New
 Zealand (NZ) for 2022
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_213749_653382_F2EBE76D 
X-CRM114-Status: GOOD (  17.50  )
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

On Fri, Jul 5, 2024 at 2:06=E2=80=AFPM Ping-Ke Shih <pkshih@gmail.com> wrot=
e:
>
> From: Ping-Ke Shih <pkshih@realtek.com>
>
> Radiocommunications Regulations (General User Radio Licence for Short Ran=
ge
> Devices) Notice 2022 listed spectrum:
>
> 2400.0000 - 2483.5000
>   * e.i.r.p. 0 dBW (1 W)

13. Transmitters using e.i.r.p. greater than 0 dBW (1 W) must employ
    frequency hopping or digital modulation techniques.

AFAIK WiFi uses digital modulation techniques. So this could be
raised up to 6 dBW?

> 5150.0000 - 5350.0000
>  * the maximum power is 0 dBW (1 W) e.i.r.p. and
>    the maximum permitted power spectral density is -13 dBW/MHz
>    (17 dBm/Hz, 50 mW/MHz) e.i.r.p.
>  * 5250 - 5350 MHz, If Transmitter Power Control is not used, then the
>    maximum power (e.i.r.p.) value shall be reduced by 3 dB.
>
> 5470.0000 - 5725.0000
>  * 5470 - 5725 MHz, transmitter peak power must not exceed -6 dBW (250 mW=
)
>    If Transmitter Power Control is not used, then the maximum power
>    (e.i.r.p.) value must be reduced by 3 dB.

We use e.i.r.p. value in the database. The limit is 1W, then minus 3 dB
due to lack of TPC.

> 5725.0000 - 5850.0000
>  * 5725 - 5850 MHz, the transmitter peak power must not exceed 0 dBW (1 W=
)
>    and the power spectral density must not exceed 17 dBm/MHz.

13. Transmitters using e.i.r.p. greater than 0 dBW (1 W) must employ
    frequency hopping or digital modulation techniques.

AFAIK WiFi uses digital modulation techniques. So this could be
raised up to 6 dBW?


Thanks
ChenYu

> 5925.0000 - 6425.0000
>  * the maximum power is -6 dBW (24 dBm, 250 mW ) e.i.r.p. and
>    the maximum permitted power spectral density is -19 dBW/MHz
>    (11 dBm/MHz, 12.6 mW/MHz) e.i.r.p. for low power devices.
>    Only be used indoors.
>  * the maximum power is -16 dBW (14 dBm, 25 mW ) e.i.r.p. and
>    the maximum permitted power spectral density is -29 dBW/MHz
>    (1 dBm/MHz, 1.26 mW/MHz) e.i.r.p. for very low power devices.
>    Very Low Power applications.
>
> 57000.0000 - 71000.0000
>  * for devices transmitting at 10 dBW e.i.r.p or less,
>    the power spectral density must not exceed -7 dBW/MHz e.i.r.p. and
>    the maximum transmit power must not exceed -3 dBW at the antenna port
>    or ports.
>  * for devices transmitting greater than 10 dBW e.i.r.p., the power
>    spectral density shall not exceed 8 dBW/MHz e.i.r.p and antennas with
>    a gain greater than 30 dBi shall be used.
>
> [1] https://gazette.govt.nz/notice/id/2022-go3100
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
>  db.txt | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index d7592c299c62..266ba2d48731 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1416,12 +1416,16 @@ country NP: DFS-JP
>         (5250 - 5330 @ 80), (20), DFS, AUTO-BW
>         (5735 - 5835 @ 80), (20)
>
> +# Source:
> +# https://gazette.govt.nz/notice/id/2022-go3100
>  country NZ: DFS-ETSI
> -       (2402 - 2482 @ 40), (30)
> -       (5170 - 5250 @ 80), (17), AUTO-BW
> -       (5250 - 5330 @ 80), (24), DFS, AUTO-BW
> -       (5490 - 5730 @ 160), (24), DFS
> -       (5735 - 5835 @ 80), (30)
> +       (2400 - 2483.5 @ 40), (30)
> +       (5150 - 5250 @ 80), (30), AUTO-BW
> +       (5250 - 5350 @ 80), (27), DFS, AUTO-BW
> +       (5470 - 5730 @ 160), (21), DFS
> +       (5725 - 5850 @ 80), (30)
> +       (5925 - 6425 @ 320), (24), NO-OUTDOOR
> +       (57000 - 71000 @ 2160), (40)
>
>  country OM: DFS-ETSI
>         (2402 - 2482 @ 40), (20)
> --
> 2.25.1
>

