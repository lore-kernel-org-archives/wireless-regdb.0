Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29071C3DA49
	for <wireless-regdb@archiver.kernel.org>; Thu, 18 Jul 2024 05:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4jnmX8y6FbojDJ7layY1Bgs7wT3nSPwAMlj8Airq8FU=; b=Ca7r5ZPAs1udJu
	OgRO1zIRqA0Lfhp/9jgulm5bjp46MT59VduBCl6hworNn/cBxUiPUfAuzPGvdpc1vVaeLdxrNMBM4
	RB6/mjFJlO2zdaUVqkFYYwL0jRyN8e+D0dBbH8pv3V2J7ROanW+GE/Fjnz2oCa8qxB/bWW2HReTzp
	/ALfnYlCywPptFOYmt1ET+uvGG8FUvpeJmlyxxqnJl9Eo3wHlxYrQZwb51+56KbKUfgwYc7UHaa9J
	JGbkJObI2UbL690+R+ooJ6Gnne90MNtR41fkTbl7Xkfv02J9KEAgaYdFxs8n52wy3CxOLe60kvoWh
	gbg3KHVEG43TAIRYnzOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUJHu-0000000Fn2o-2AMI;
	Thu, 18 Jul 2024 05:02:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUJHq-0000000Fn2S-3she
	for wireless-regdb@lists.infradead.org;
	Thu, 18 Jul 2024 05:02:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C9EFD619F8
	for <wireless-regdb@lists.infradead.org>; Thu, 18 Jul 2024 05:02:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64F2CC4AF0A
	for <wireless-regdb@lists.infradead.org>; Thu, 18 Jul 2024 05:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721278957;
	bh=H/xhkjImepp9eQ4QaNaAvZuSCOzoI/rYpru+Gkfw8Gg=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=uW5ng+eztnJCKC3/IUrVQELT7Tccuj7ILbbpFmDsoiygh/7LvOBcFuZ225V2lIMZ/
	 eZFOQsewE3rmFvBlDOJYrSuStoRF6EllIAeovMX9KCwWREoPgQ7IbgCAiUu9adwKdz
	 jV6nWw072r3Fv3lzDYsGXUl4QshFXkiXj/1u6NZAmg+6ytaw572a0yUr4bt3duwG/d
	 8KfG03zyJ0Zjec7BSFzm3+4Hefg5hy8sKSkbgaIonMNkQey/deqmx+XyAPt9nLqaw5
	 NfnK0Ko5sUM5G7xiAjjeEiISuJyoNLINoAByfaAsXtzgRLGQcXXzmXMvof3mshfwV0
	 zyFk//wePGL+Q==
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2eedeca1c79so4505471fa.3
        for <wireless-regdb@lists.infradead.org>; Wed, 17 Jul 2024 22:02:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVCoiXWeRpm1plwBAembcIAwACbFPxOteFSGaA+sxNaktwZyvjpwSbBpjVPQnRvmNUTxHisko6kNkiDwk0rFnn20Q84HnlA9onKw+nzmxplOEae
X-Gm-Message-State: AOJu0YwMxH3/NnfJUUYCrGSfz6NfOrISm8SKX5QdQbE1YymM+1lvFhoE
	RD84E6F4wD7bYrmeUl9qqsEmEw6rguK8HYPKYS6PqX9WEZO1EOIjUcGXwQzg2Vp16OEcCzjJtFH
	yEyjGWQpas+v71hVpO1g8f4UO/CM=
X-Google-Smtp-Source: AGHT+IF06HpEc155FLiSxUZ+J06LOGtqm6QAHI8uEcJk9ONagbYgKoOsy7cD1xq0Lx2rrF3nwpNTA7Xxm47NLNL7sv8=
X-Received: by 2002:a05:651c:1a0d:b0:2ee:594d:f54b with SMTP id
 38308e7fff4ca-2ef05d47ed0mr11792061fa.47.1721278955010; Wed, 17 Jul 2024
 22:02:35 -0700 (PDT)
MIME-Version: 1.0
References: <20240705060613.28909-1-pkshih@gmail.com> <20240705060613.28909-5-pkshih@gmail.com>
In-Reply-To: <20240705060613.28909-5-pkshih@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 18 Jul 2024 13:02:21 +0800
X-Gmail-Original-Message-ID: <CAGb2v64mLd+jhwL2EXZ=zTJZ2VuMXTa==NvAqib=xQrNg-ufkQ@mail.gmail.com>
Message-ID: <CAGb2v64mLd+jhwL2EXZ=zTJZ2VuMXTa==NvAqib=xQrNg-ufkQ@mail.gmail.com>
Subject: Re: [PATCH 5/5] wireless-regdb: Update regulatory info for Togo (TG)
 for 2022
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_220239_087129_E41F0320 
X-CRM114-Status: GOOD (  12.98  )
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
> Republic ToGolaise released Decision N 226/ARCEP/DG/22.
>
> 2400-2483.5 MHz
>   - EIRP 100 mW and 10 mW/MHz density
> 5150-5350 MHz
>   - EIRP 200 mW
>   - If TPC is not used, must be reduced by 3 dB
> 5470-5850 MHz
>   - EIRP 1W
>   - If TPC is not used, must be reduced by 3 dB
> 5925-6425 MHz
>   - LPI
>     * EIRP 23 dBm (200 mW)
>     * EIRP density 10 dBm/MHz

The document you linked to suggests it is actually -10 dBm/MHz,
which kind of makes it useless as the total e.i.r.p for a 20 MHz
channel would be 2 mW or 3 dBm...

And the PSD for LP being lower than VLP seems like an error.

>     * Use limited to indoor
>   - VLP
>     * EIRP 14 dBm (25 mW)
>     * EIRP density -1 dBm/MHz
> 57-66 GHz
>   - EIRP 40 dBm and 13 dBm/MHz density
>
> [1] https://arcep.tg/wp-content/uploads/2022/12/Decision-226-22-Determina=
nt-les-categories-et-conditions-techniques-dexploitation-des-appareils-de-f=
aible-puissance-et-de-faible-portee.pdf
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
>  db.txt | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 2a4f1ed524c1..6192dafe9715 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1763,11 +1763,15 @@ country TD: DFS-ETSI
>         (5250 - 5330 @ 80), (20), DFS, AUTO-BW
>         (5490 - 5710 @ 160), (27), DFS
>
> +# Source:
> +# https://arcep.tg/wp-content/uploads/2022/12/Decision-226-22-Determinan=
t-les-categories-et-conditions-techniques-dexploitation-des-appareils-de-fa=
ible-puissance-et-de-faible-portee.pdf
>  country TG: DFS-ETSI
> -       (2402 - 2482 @ 40), (20)
> -       (5170 - 5250 @ 40), (20)
> -       (5250 - 5330 @ 40), (20), DFS
> -       (5490 - 5710 @ 40), (27), DFS
> +       (2400 - 2483.5 @ 40), (100 mW)
> +       (5150 - 5250 @ 40), (200 mW)
> +       (5250 - 5350 @ 40), (20), DFS

The regulation doesn't say this can be split. It's one rule for 5150 - 5350=
.

> +       (5470 - 5850 @ 40), (27), DFS

Why only 40 MHz channels?

> +       (5925 - 6425 @ 320), (23), NO-OUTDOOR
> +       (57000 - 66000 @2160), (40)

Regulation requires DFS on all bands.


ChenYu


>  # Source:
>  # https://ratchakitcha.soc.go.th/documents/140D100S0000000004000.pdf
> --
> 2.25.1
>

