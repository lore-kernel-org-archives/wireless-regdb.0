Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AED7FF886F
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 Apr 2026 06:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X/iMo1ShK+NGkgj/QctxhmlVZYyyhNE5oLOzWGAeooE=; b=3ydQU/wFOKlEsU
	//vhT8ynX65p35/WPZ30FBRHqSyRVSM7aLfYuwYGovBF1UaFbpX/LjiBSHJWBfxnwkyOyYlTCsUed
	7d84B4TavgxvmE/Ig+xvvKBnBPof9jKJtyL0Yur8s6kN1uQAAjR0adYpeWvcq6mzdculYf/FgLqZh
	wWZcxbmCkmvrUWGoAbq3FZzK/ufyA3RWJ9ES7N58loldpwV/FI1jAjBO7dsSC4L8K4HSVgjztfyn8
	TOj2cUhWkaUIxbZvCmliwCSQZuXFCoP0n1Ca8J8I68CzMBSa97RdvlsYb7VJ21lVe/slqDa6JJ9yn
	3B4rD2XnX5+jnFYOQK+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHbki-00000000cb6-0vII;
	Tue, 28 Apr 2026 06:17:00 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHbkh-00000000cax-03Wf
	for wireless-regdb@lists.infradead.org;
	Tue, 28 Apr 2026 06:16:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1D8AD60133
	for <wireless-regdb@lists.infradead.org>; Tue, 28 Apr 2026 06:16:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C865AC2BCAF
	for <wireless-regdb@lists.infradead.org>; Tue, 28 Apr 2026 06:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777357017;
	bh=bnEhGpOtaKax/32AyJmx+qTy8LCDpR9+6EN5BEqEKFg=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=neI5lG/Ni+djKdcH3wzqb7iQOebrvkr9WbpNOLzp/DeaMie1VX3l5h5wZZEaL2KMR
	 9WCkz+IrteT+c0C8+uJkgBFEXhq/I3nF6wD5D3jmDkYgAVLgzOQ55l7HWvRmVMYhRS
	 o97vGzpCug6bXOqpAdGYrT8FORboBI26/3yefdTH4KA/LrCUAIMKvfdcKbm1d1qjJ0
	 2fNofziONa+w1MOJFvEGzrnHn6hQGU4Gm78Vqm1mozUZrfEP7f6yc1U2eB+4vknR+Y
	 kSmLEFuJj7yRiec2YCCfsuurmiI9xUuA95UA5Q3VhPHbWbysL+mWK9wb47sr36NNuf
	 42O0KKTAmuzQg==
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-38ea6a5a0b3so108732141fa.3
        for <wireless-regdb@lists.infradead.org>; Mon, 27 Apr 2026 23:16:57 -0700 (PDT)
X-Gm-Message-State: AOJu0YyhIZEWck4N8Cj/3Ckp2RpTJJuh69N6RF/N9cn1BTLl19M2ewUp
	8tuLTMWW7WSfNJRTtBo8GXTgEk77BvyiWwBOk7NhN1Cd3SeXcXLkCbV7iJzIlvFbObUSQ3nEFYi
	KOA3dIzThLYCOiiatL3BVHcUab9bjDsc=
X-Received: by 2002:a2e:bc01:0:b0:38e:a842:52f1 with SMTP id
 38308e7fff4ca-39240d0ff9dmr5084121fa.11.1777357016132; Mon, 27 Apr 2026
 23:16:56 -0700 (PDT)
MIME-Version: 1.0
References: <20260416120001.979135-1-loukot@gmail.com>
In-Reply-To: <20260416120001.979135-1-loukot@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 28 Apr 2026 15:16:43 +0900
X-Gmail-Original-Message-ID: <CAGb2v64yTdJZhJE+m+WZ=1xV9bvx2cLOCHk3qz5EWpJEDY-G-A@mail.gmail.com>
X-Gm-Features: AVHnY4IpI-2yRaIV3nH-TrA8ueX4wQcNmZZNR2rniSM6w3VektRqGscCyEs5pP4
Message-ID: <CAGb2v64yTdJZhJE+m+WZ=1xV9bvx2cLOCHk3qz5EWpJEDY-G-A@mail.gmail.com>
Subject: Re: [PATCH v2] wireless-regdb: Update 6 GHz rules for South Korea (KR)
To: Louis Kotze <loukot@gmail.com>
Cc: wireless-regdb@lists.infradead.org
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

On Thu, Apr 16, 2026 at 9:00=E2=80=AFPM Louis Kotze <loukot@gmail.com> wrot=
e:
>
> MSIT Announcement No. 2026-9 (February 10, 2026) revised the power
> limits for 6 GHz indoor WLAN:
>
>   Lower band (5925-6425 MHz): 1 W (30 dBm) EIRP, indoor
>   Upper band (6425-7125 MHz): 500 mW (27 dBm) EIRP, indoor

The document actually says "Radiated power" rather than EIRP. But
then it doesn't actually specify what kind of antenna.

> The previous entry used a single rule covering 5925-7125 MHz at
> 15 dBm, which does not reflect either the current lower or upper
> band limits.

MSIT announcement no. 2024-22 gives a PSD limit of 2 dBm / MHz.
At the smallest 20 MHz width, this gives a power limit of roughly
15.01 dBm. So I'd say the current values are correct, unless you
can point to some wording in the newer document that says the PSD
limit is superseded.


> Split into two frequency ranges so that devices operating in the
> lower band can use the higher power limit. Add AUTO-BW to both
> ranges so the kernel knows they can be combined.
>
> MSIT Announcement No. 2024-22 (May 30, 2024) sets the maximum
> occupied bandwidth to 320 MHz for both indoor and VLP categories.
>
> Reference:
> MSIT Announcement No. 2026-9 (power limits)
> https://www.msit.go.kr/bbs/view.do?sCode=3Duser&mId=3D108&mPid=3D103&bbsS=
eqNo=3D83&nttSeqNo=3D3186355
> MSIT Announcement No. 2024-22 (technical standards, bandwidth)
> https://www.msit.go.kr/bbs/view.do?sCode=3Duser&mId=3D108&mPid=3D103&bbsS=
eqNo=3D83&nttSeqNo=3D3175810
>
> Signed-off-by: Louis Kotze <loukot@gmail.com>
> ---
> Changes since v1:
>   - Split into two frequency ranges with AUTO-BW per Chen-Yu Tsai
>     review, instead of a single conservative rule at 27 dBm.
>   - Add MSIT 2026-9 as primary reference for power limits (replacing
>     CAICT secondary source).
>   - Add MSIT 2024-22 as primary reference for 320 MHz bandwidth.
>   - Send as standalone patch rather than part of 5-patch series.
>
> v1: https://lore.kernel.org/wireless-regdb/20260411222155.299441-3-loukot=
@gmail.com/
>
>  db.txt | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/db.txt b/db.txt
> index 343b256..6b56ddd 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1136,7 +1136,8 @@ country KR: DFS-JP
>         (5470 - 5725 @ 160), (20), DFS
>         (5725 - 5850 @ 80), (23)
>         # 6 GHz band
> -       (5925 - 7125 @ 160), (15), NO-OUTDOOR
> +       (5925 - 6425 @ 320), (30), NO-OUTDOOR, AUTO-BW
> +       (6425 - 7125 @ 320), (27), NO-OUTDOOR, AUTO-BW

Please use the values and units given in the regulations.
So 1W and 500mW respectively.

>         # 60 GHz band channels 1-4
>         (57000 - 66000 @ 2160), (43)
>
> --
> 2.53.0
>

