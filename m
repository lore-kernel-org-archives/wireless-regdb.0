Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8EBBCAC5BB
	for <wireless-regdb@archiver.kernel.org>; Wed,  8 Oct 2025 08:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OG90Um5QXXEyqmExyUsmhKoUae+ON8BzulZ5fxG1PGo=; b=knbksM+kM1bIdG
	tala8uyesQC8w2+ixl3cdqp283iOuLMOZJPtfRFlV4pWfRNEatpM7E2quEgxq9lQDFmcRKyw2QUa9
	G2Jakb8ajaH/dRHtN+pJqIoqf1GlkomKn09+9u43SA80lxSVjrF1h49Ne54XFUNVJEvye75EHCKaq
	kCgbQoVJhRB5QGgFzEiCOO1allgBGQEA9jrUKL9r+XL4TwK9Cg5mO2mU0KHnXRcfzBadNyIeYWluT
	IrCbEBxnoQJ2gtNON3URFyJ/GrCPZzk2lwTfLrpDuN/8tgTiKpracn1FTCtERopzRdQqXeiICd3CC
	Fsfl1z0WVUiSEf7F8Usg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6PlE-00000003U65-2GbV;
	Wed, 08 Oct 2025 08:43:00 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6PlD-00000003U5a-0am4
	for wireless-regdb@lists.infradead.org;
	Wed, 08 Oct 2025 08:42:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7A35060214
	for <wireless-regdb@lists.infradead.org>; Wed,  8 Oct 2025 08:42:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30BE9C4CEF4
	for <wireless-regdb@lists.infradead.org>; Wed,  8 Oct 2025 08:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759912978;
	bh=UIgsUpN5YdDuyMCIl4jXxCOKtkYDG4OevKPLrkE9Yk4=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=JD1Dkx+le+J2GHQuV9fiXuD98aiMJIIYRsyXkBU+AdYlQjmuIW2fWBZIHhmWpajWm
	 u1GZQC0DnMGXaqPo4uYHaY826Q1dCxDSzp9RHLh3pd3Ct80W/vvqRvdd5hyp8RHtZc
	 kklbha/GKQ52rc5QTDljQTXxnyMr3PeycYFsC+FvaPx87u9Jv/bB2UIBAiYLVulpjs
	 oqofMJK4yH7HiZOy2sZpePQqYOf+8vwHx9V8CEYcV66GnldR9UCuNYwXqz+DSyAY8j
	 frMl+FqpLglEM2iM3ukMqoOExcw/qXM8yh8hDaq5ZJ4K/o1NtZyqLCd+2A0EZKNdln
	 n0T3VLkfXsdQg==
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-57bd482dfd2so7992048e87.2
        for <wireless-regdb@lists.infradead.org>; Wed, 08 Oct 2025 01:42:58 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUwt5C8+5zMhanEwhhI+5RKyqarW3MAbwBMVyBunx6SaG5wKhbjB+gEvbq1m+O7gHsjL1MfzM0UXWQj3zRN2Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YzyBHCMUyZC1eb/MJTx3FGd5O+hPRHtjsULFdn99jQYTYSUd2Uw
	ADAN9zD3ghU2fZYEmoBqXEqQ7VpB3/j5S3mshFGvt+EVSzabMF36KQ3mMpfHM5SjKvGO5XZ8i9v
	5OHVIZsGCpdsnJdXPPNBFjEaHCOgkk70=
X-Google-Smtp-Source: AGHT+IEvo2NBNKV35/bcr2BNhM9r87SWUB/okrT6C3bpUw4barzJxr+KSldobDqMfHgEfxfgSCS8CZ3d6R17tZ6wHG8=
X-Received: by 2002:a05:6512:31c2:b0:55f:4ab0:79a7 with SMTP id
 2adb3069b0e04-5906d75f8c2mr807240e87.7.1759912976518; Wed, 08 Oct 2025
 01:42:56 -0700 (PDT)
MIME-Version: 1.0
References: <20251007230450.69998-1-voxlympha@gmail.com>
In-Reply-To: <20251007230450.69998-1-voxlympha@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 8 Oct 2025 16:42:43 +0800
X-Gmail-Original-Message-ID: <CAGb2v67RvP5ykKJR1yOpZ9y2b=dAA3mkXFUn8a7U_pNmudS37A@mail.gmail.com>
X-Gm-Features: AS18NWBA6ODxW6KnEXBQr-5weUDJaZWCA9F1cLS3zxZxZ_Fs4IyvxdJsWDdhQOg
Message-ID: <CAGb2v67RvP5ykKJR1yOpZ9y2b=dAA3mkXFUn8a7U_pNmudS37A@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Australia (AU)
 for 2025
To: Richard Huynh <voxlympha@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

On Wed, Oct 8, 2025 at 7:05=E2=80=AFAM Richard Huynh <voxlympha@gmail.com> =
wrote:
>
> As of October 1 2025, a new class licence is in effect[1]
> Update the link and references in the comments to it
>
> Additionally for the lower part of 6Ghz spectrum:
> - Allow for EHT-320 as it complies with PSD limits
> - Expand the upper range up to 6585 as permitted in new licence
>
> [1] https://www.legislation.gov.au/Details/F2025L01047
>
> Signed-off-by: Richard Huynh <voxlympha@gmail.com>
> ---
>  db.txt | 25 +++++++++++++------------
>  1 file changed, 13 insertions(+), 12 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 16bcb32..93d709e 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -145,43 +145,44 @@ country AT: DFS-ETSI
>
>  # Source:
>  # 'Item' in the comments below refers to each numbered rule found at:
> -# https://www.legislation.gov.au/Details/F2023C00524
> +# https://www.legislation.gov.au/Details/F2025L01047 within Table 8
> +# except for 5850-5875 which is found in Table 1.
>  # Both DFS-ETSI and DFS-FCC are acceptable per AS/NZS 4268 Appendix B.
>  # The EIRP for DFS bands can be increased by 3dB if TPC is implemented.
>  # In order to allow 80MHz operation between 5650-5730MHz the upper bound=
ary
>  # of this more restrictive band has been shifted up by 5MHz from 5725MHz=
.
>  country AU: DFS-ETSI
> -       # Item 58
> +       # Item 1
>         (915 - 920 @ 4), (1000 mW)
>         (920 - 928 @ 8), (1000 mW)

Side note, I think this should be just one band. We don't artificially
split bands on channel boundaries. If you could, please send another
patch to merge them.

> -       # Item 59
> +       # Item 3

Items 3 and 7? I can fix this when applying the patch.

>         (2400 - 2483.5 @ 40), (4000 mW)
>
> -       # Item 61
> +       # Item 10
>         (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
>
> -       # Item 62 (200 mW allowed if TPC is used)
> +       # Item 11 (200 mW allowed if TPC is used)
>         (5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, AUTO-BW, DFS
>
> -       # Item 63(a) (1000 mW with TPC)
> +       # Item 12(a) (1000 mW with TPC)
>         (5470 - 5600 @ 80), (500 mW), DFS
>
> -       # Item 63(b) (1000 mW with TPC)
> +       # Item 12(b) (1000 mW with TPC)
>         # The end is 5725 but we borrow 5 MHz from the following less res=
trictive band
>         # so we can get an 80 MHz channel.
>         (5650 - 5730 @ 80), (500 mW), DFS
>
> -       # Item 60
> +       # Item 9
>         (5730 - 5850 @ 80), (4000 mW), AUTO-BW
>
> -       # Item 22
> +       # Item 22 of Table 1
>         (5850 - 5875 @ 20), (25 mW), AUTO-BW
>
> -       # Item 63AA (25 mW if outdoors)
> -       (5925 - 6425 @ 160), (250 mW), NO-OUTDOOR
> +       # Item 13 (25 mW if outdoors)
> +       (5925 - 6585 @ 320), (250 mW), NO-OUTDOOR
>
> -       # Item 65
> +       # Item 18
>         (57000 - 71000 @ 2160), (20000 mW), NO-OUTDOOR

The rest look correct.

Thanks
ChenYu

>  country AW: DFS-ETSI
> --
> 2.51.0
>
>

