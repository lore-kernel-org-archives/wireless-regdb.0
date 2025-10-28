Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BD94CCF9E0
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 Oct 2025 05:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/r+Gint8/PyXuMR5jazuMoXKAZyKYLBXXAtcAE3nyFA=; b=Ogj2YRoXkbh99P
	LAgMZ9Pio0nJZFnPgUvoanb0tb2UbakcUtJhrxXHbJj+dTWAMh2o007lVxjW45n57BziCRMbGFPnP
	G6DjwM6Dw3nUvVuwr6YT7ZbMWJq9TuaELmyWiJaI8X7tx29nZYk8sGcGRRIi9Tw9PUzitUXWwwQ8s
	AhcGGq2sIPiLMli/YPsoGhAT4L/DUDbLdXsnej6EZ62CI5RuEXrjQJm6pjN+BaDyB49lDZHDXPU2h
	76XxOECglh25ybUnYa4jen00kY1iTuJky2eTRAYcaThUcq2y2ZXWV4L9pZie9fnk98p4i1JheVaav
	yO1l1JSQQmAOJ25Elmmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDc7O-0000000FFED-1CKS;
	Tue, 28 Oct 2025 05:19:38 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDc7L-0000000FFDp-3fRi
	for wireless-regdb@lists.infradead.org;
	Tue, 28 Oct 2025 05:19:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0039E40813
	for <wireless-regdb@lists.infradead.org>; Tue, 28 Oct 2025 05:19:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7108C4AF09
	for <wireless-regdb@lists.infradead.org>; Tue, 28 Oct 2025 05:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761628774;
	bh=e846JwhJGQnPRCxnOQ3YEesDevoWZto01oO8ElGrLJQ=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=LspUgPhrrepZy2gxTu0Uldd9Z0vNFVduq7SNirdFmT8Q5EdSBc8JJTZGlAYvoHdzS
	 eFgfpWtAony39UirE0UHxXXfWXyDl9EP0alWperzzVPqhwUCRYexKAzn03y1+hD1ci
	 hEQsecl867iJTxVnfzTUMKWMHpiIqi2gIgkHpoXKTQdTudxuFsCyFkQWGZR7hx5n0N
	 DAC6MKJi4yWJmNIhxVfXmouobvHzBJX5x6UqxCMz4AbHgV/L6bixoXMl7r+KpZE8y7
	 3XbOnpLtZ+ptjGXkjFC5V9Fvab1l6k7I4M3ib7UCyZnTb+OH5eYdIUzuuFrdbaPslK
	 kKPTrj6xhM0JQ==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-3717780ea70so72028941fa.1
        for <wireless-regdb@lists.infradead.org>; Mon, 27 Oct 2025 22:19:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU8EUfABjV+TrjOHkY1x++gBK8hszDsLTyOvTD8NccTOkQ9JC1XtAtwky+3B6SDSByJdH0o25A4D++Cl/fi+w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6nKdDdqXLVquGHnAi01uVd+dzhNWgemD8o8jSKss64/mpt0Yb
	rdFRuLPD4gygjaMCx63yzuUw/fCxITS018F0z2Ogjr32xonEaQU3EPTcLiv+OEmN358rAzgZxNU
	vig150sMyHHGpFC5iGOay9fAynPPCFcc=
X-Google-Smtp-Source: AGHT+IEIm1k8rbh6K/Q+N1se02uR5tEMyyKNUh5mPGwoZSaVNZu228ng9HkSFP8vwf2JU4vBsf6No0gjwOfOhuEbeIE=
X-Received: by 2002:a05:651c:440d:20b0:375:d985:7009 with SMTP id
 38308e7fff4ca-37907780dcbmr5921791fa.44.1761628773212; Mon, 27 Oct 2025
 22:19:33 -0700 (PDT)
MIME-Version: 1.0
References: <20251028020901.44906-1-me@ndoo.sg>
In-Reply-To: <20251028020901.44906-1-me@ndoo.sg>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 28 Oct 2025 13:19:21 +0800
X-Gmail-Original-Message-ID: <CAGb2v64yJ_UDdAL3n2CbbOoEbZFxRLQ07QnmF-WgtLiW=VxMOQ@mail.gmail.com>
X-Gm-Features: AWmQ_bmaVfeN6x_eRRZFde7mHcCOqB1disY77tTO64RDr6F7cD1VGejmCyMsVrg
Message-ID: <CAGb2v64yJ_UDdAL3n2CbbOoEbZFxRLQ07QnmF-WgtLiW=VxMOQ@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Malaysia (MY)
 for 2024
To: Andrew Yong <me@ndoo.sg>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_221936_187306_1AA421C6 
X-CRM114-Status: GOOD (  16.15  )
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

On Tue, Oct 28, 2025 at 10:09=E2=80=AFAM Andrew Yong <me@ndoo.sg> wrote:
>
> Malaysia Communications and Multimedia Commission announced CLASS ASSIGNM=
ENT NO. 1 OF 2024[1], with the following changes to wireless SRD frequency =
class assignment(s):
>
> 5925-6425 MHz EIRP has increased from 2022 assignment[2] of 200 mW, to 25=
0 mW; refer to page 10.
> 5150-5250 MHz EIRP of 1 W has changed from 2022 assignment[2] of indoor &=
 outdoor, to indoor-only at 1 W; refer to page 20.
> 5250-5350 MHz EIRP of 1 W has changed from 2022 assignment[2] of indoor &=
 outdoor, to indoor-only at 1 W; refer to page 20.

Based on page 20 in schedule two of 2022 assignment, this should have
already been limited to indoor only.

> Update limits of existing entries accordingly.
>
> [1] https://www.mcmc.gov.my/skmmgovmy/media/General/pdf2/Class-Assignment=
-No-1-of-2024.pdf
> [2] https://www.mcmc.gov.my/skmmgovmy/media/General/CA-No-1-of-2022_-sign=
ed_19012022.pdf
>
> Signed-off-by: Andrew Yong <me@ndoo.sg>
> ---
>  db.txt | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 1d17271..a65910a 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1450,14 +1450,14 @@ country MX: DFS-FCC
>         (5925 - 6425 @ 320), (12), NO-OUTDOOR
>
>  # Source:
> -# https://www.mcmc.gov.my/skmmgovmy/media/General/CA-No-1-of-2022_-signe=
d_19012022.pdf
> +# https://www.mcmc.gov.my/skmmgovmy/media/General/pdf2/Class-Assignment-=
No-1-of-2024.pdf
>  country MY: DFS-FCC
>         (2402 - 2482 @ 40), (500 mW)

Please also align the rule boundary with the official rules. This should
now show 2400 - 2500.

> -       (5170 - 5250 @ 80), (1000 mW), AUTO-BW
> -       (5250 - 5330 @ 80), (1000 mW), DFS, AUTO-BW
> +       (5170 - 5250 @ 80), (1000 mW), AUTO-BW, NO-OUTDOOR

This should show 5150 - 5250.

> +       (5250 - 5330 @ 80), (1000 mW), DFS, AUTO-BW, NO-OUTDOOR

This should show 5250 - 5350.

>         (5490 - 5650 @ 160), (1000 mW), DFS

This should show 5470 - 5650.

Also, for bands 5250 - 5350 and 5470 - 5650, the PSD limit is 10 mW / MHz,
effectively limiting the EIRP to 200 mW for a 20 MHz channel. There is
no way to describe PSD in the database, so we can only go with the smallest
channel width for PSD calculation.

>         (5735 - 5835 @ 80), (1000 mW)

This should show 5725 - 5875.

> -       (5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
> +       (5925 - 6425 @ 320), (250 mW), NO-OUTDOOR

This bit is correct.


Thanks
ChenYu

>
>  # Source:
>  # https://www.cran.na/yglilidy/2023/04/GG-8060-dated-3-April-2023.pdf
> --
> 2.50.1 (Apple Git-155)
>
>

