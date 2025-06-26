Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B39EC7EE32
	for <wireless-regdb@archiver.kernel.org>; Thu, 26 Jun 2025 08:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O59dDNJSyDbQVObMgum8jdXRi7NAmoI06T0Y6UqeuWU=; b=pj0xynDH5Xql12
	pbA++jWN8TWoSl3+rv1p1ai+HC+p7VB7V49VshFy2emM9VGN75+bD+38E6AYWcISrxWLOgtIq3KoY
	0VNOi4IGf4x4aGxW3X7xaE1c6IOtK7ff19YIuojQhNM22a525znDIiCzJgBIg2mYkbHHLnf2w6bKY
	qUdHjr6Ju88Rg/ss4/enOSFz4hHpwR23eIjS9m3iUS2Fd6GDU4IUWkzZZOVsFCKrv6KzwMQkHLS98
	yxDKdbQl4BScyVa7TeijagvKdUaKhl2OBEUicMn0lZ503WYzzQy5JvjEj/NFNgJfAWuWuQ7mgK5TT
	hI61YNBn1WZlMbAU3Mmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUiP6-0000000B3eG-16xZ;
	Thu, 26 Jun 2025 08:56:20 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUhmU-0000000AvqC-0XYo
	for wireless-regdb@lists.infradead.org;
	Thu, 26 Jun 2025 08:16:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 254535C65C1
	for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 08:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45C47C4AF09
	for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 08:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750925785;
	bh=ylmaa4qed5WuX/WZpAP430o5cacOBWdVZIgT3Ka/FFg=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=SxYTPtOp7JjyUDOtv9/04FCflk8lGi+U/a03wmaotMvPq96tgOP3yOq+ueiToGYPr
	 mi8C57MAqKlhsiE0TBP6wSNGIMt+JNHp+dnbA+1jSMO0r44DsQl0lifCVMlpMQJO9j
	 +Rn9vkQB/QOyBEvhk4eM7cRgqrq7aj+XOI9KxoEyaJRwtGRjI4lGPD4T+oBc1FHrm2
	 S4kS2VrxoDARlwY2Bb9Vmnz1hOUSy28MgLz0heVeY+RlxBbT+hw9Xhcnq4KIqwbbjj
	 BOBulu5axJUKawvP3FlcxCsUVonLlB4Z8UO9X1gb3f2+se5LYaVewnxAcVQ/mwgWJk
	 mMyZ+f89nF3Hg==
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-54d98aa5981so1033202e87.0
        for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 01:16:25 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV67mkNTFPikZrz36SIt6Ex21Fjfn/qlez9WAyDrSEztrJPqyMcpb+UWiyyBpvrLordQXhzH7rgmrKvnW24Bg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxrrStpdJ9IY1TnSyaBuQFSi1OzzYLVkbQ1naWzybJlIFy1ETsc
	t+lS6CM7cEA3CvanEo5UsgmmfHdn/zlJgVfVOnRjCQkGS9g0fWePFlim4mJcX01f1qGmVuVqvns
	PenxUWGy8ZznEdQ5MerFiB0PUA72RRTM=
X-Google-Smtp-Source: AGHT+IGx3empgvF8hysbs0K4JSBOMz94naAjKhm3x4OHtii9tQpUnac1VIlLY6Q8GQxC58Kc2As53g4se1orz0f24kg=
X-Received: by 2002:a05:6512:1195:b0:553:3178:2928 with SMTP id
 2adb3069b0e04-554fdcd61abmr2469546e87.16.1750925783634; Thu, 26 Jun 2025
 01:16:23 -0700 (PDT)
MIME-Version: 1.0
References: <20250602121434.3011282-1-marcoshalano@gmail.com> <CAGb2v645_kB3mNb79ytFb9y2xw6zp1oFvof5NX-FF7eDPNCBFQ@mail.gmail.com>
In-Reply-To: <CAGb2v645_kB3mNb79ytFb9y2xw6zp1oFvof5NX-FF7eDPNCBFQ@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 26 Jun 2025 16:16:11 +0800
X-Gmail-Original-Message-ID: <CAGb2v67zJ5RSyc-tEw2bXYzeJ2q+rkqbgCNZO3Gm+krRbap-RQ@mail.gmail.com>
X-Gm-Features: Ac12FXzeVUF0o-E2TVEfTmc1f3DsK1NdNa_lFnQ-n4VRhrfGder4uT4BiAGmV7w
Message-ID: <CAGb2v67zJ5RSyc-tEw2bXYzeJ2q+rkqbgCNZO3Gm+krRbap-RQ@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory rules for Brazil (BR)
 on 6GHz
To: Marcos Alano <marcoshalano@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_011626_242518_524626F6 
X-CRM114-Status: GOOD (  16.36  )
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

On Thu, Jun 26, 2025 at 4:12=E2=80=AFPM Chen-Yu Tsai <wens@kernel.org> wrot=
e:
>
> On Mon, Jun 2, 2025 at 8:15=E2=80=AFPM Marcos Alano <marcoshalano@gmail.c=
om> wrote:
> >
> > Change rules for 6GHz on Brazil removing `NO-IR` and adding
> > `AUTO-BW` so the 6GHz band can be used.
>
> AUTO-BW is not needed since there are no adjacent bands that can be
> combined.
>
> > Add the relevant normatives in comments.
> >
> > Signed-off-by: Marcos Alano <marcoshalano@gmail.com>
> > ---
> >  db.txt | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/db.txt b/db.txt
> > index e331d4f..3b0adbb 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -321,8 +321,8 @@ country BO: DFS-JP
> >
> >  # Source:
> >  # https://www.gov.br/anatel/pt-br/regulado/radiofrequencia/radiacao-re=
strita
> > -# https://informacoes.anatel.gov.br/legislacao/resolucoes/2017/936-res=
olucao-680
> > -# https://informacoes.anatel.gov.br/legislacao/atos-de-certificacao-de=
-produtos/2017/1139-ato-14448
> > +# https://informacoes.anatel.gov.br/legislacao/resolucoes/2025/2001-re=
solucao-772
> > +# https://informacoes.anatel.gov.br/legislacao/atos-de-requisitos-tecn=
icos-de-gestao-do-espectro/2024/1920-ato-915
> >  country BR: DFS-FCC
> >         (2400 - 2483.5 @ 40), (30)
> >         # The next three ranges have been reduced by 3dB, could be incr=
eased
> > @@ -331,7 +331,7 @@ country BR: DFS-FCC
> >         (5250 - 5350 @ 80), (27), NO-OUTDOOR, DFS, AUTO-BW
> >         (5470 - 5725 @ 160), (27), DFS, AUTO-BW
> >         (5725 - 5850 @ 80), (30), AUTO-BW
> > -       (5925 - 7125 @ 320), (12), NO-OUTDOOR, NO-IR
> > +       (5925 - 7125 @ 320), (30), NO-OUTDOOR, AUTO-BW

Also, the 12 dBm power limit is warranted by the PSD limit of -1 dBm / MHz.
At the smallest 20 MHz channel width, that converts to around 12 dBm.

ChenYu

> >         # EIRP=3D40dBm (43dBm peak)
> >         (57000 - 71000 @ 2160), (40)
> >
> > --
> > 2.49.0
> >
> >

