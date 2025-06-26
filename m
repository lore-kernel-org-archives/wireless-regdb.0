Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CF45C7EE39
	for <wireless-regdb@archiver.kernel.org>; Thu, 26 Jun 2025 09:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pysd/T9fziTMab2iG+o5tFge+/dW8jeAnLY6p8PlBUw=; b=V3U66CVIQCQnF5
	kXDOhPzPjil8o5VR1/UAyVDobt90XaRJnknMLLQC0alrA0QRGfLjIWxS8rbJI8BTlUECuSBcPT62h
	burxTEnLucrJm/TyKfNUsEmyCbAbR4vGQS1lkXSMUDdX1MXOSmDOiCtVgRO7MNP5I+9sxbiQHRA1c
	NRhwQA5yeH8LRkpHa9vTqZGr6kU4+Fs2gHkqq7Q0A6aStoCg0fdGPeeMLuR8MsPwVt/SxHsv/qWtJ
	FuDwJIfnjlb9vbHhMCqP0ldxrZc5CUIkkt3VWB5PO1Rqyyz422LyRVgLIbSYThFU4AX/L1aMOBZfC
	hpj0GZCdl72YRb4BCd8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUjFc-0000000BCDP-0jI6;
	Thu, 26 Jun 2025 09:50:36 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUipN-0000000B7zZ-2bQo
	for wireless-regdb@lists.infradead.org;
	Thu, 26 Jun 2025 09:23:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 14CAB617F1
	for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 09:23:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0B35C4CEF1
	for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 09:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750929808;
	bh=pysd/T9fziTMab2iG+o5tFge+/dW8jeAnLY6p8PlBUw=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=edzd8NL+UX8pZGIesqteYPPPZSrMyJE0YxuHxTmu1BDOS4ywOeIx1xa1Ri0t1V+37
	 7D9p24Ek1Li/DeQwj9CeWm2L9SHx5E/EkGt+B9VQJ9Zkz1ttj9G74jjmUNjyNkpdIP
	 1KCTEEsk1fDzLSpIjNjTEgsU6tNv4Gjsj3n6BVCnEWhnVfZqODwqNE7EEYCBXyloTO
	 a6coGMaKvoMAsk9VpgjJkKYsdqAx/5Ha+4neTmg/u/l7O5tOzN7kjawIKn69hqltPa
	 QlLPGz6JRq0bfpA6srSgw88sdDh+lJ3sPOI5eKQzfgWB+9y02XCYjK5GcxpZ+Wgsgi
	 RaQpxujxJoH6A==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-32b7f41d3e6so8466581fa.1
        for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 02:23:28 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUooEyjWSnVjgGOuhZmiFSi/WOmMD7WFj8KJ1FBj6Ul2HM+IwbbUfCZvU5/njq8UsukMq5kKBhd39iyhIBzJA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwkfM1WrWx80AYfJuFKHsoBmSRHciBEteHLf9NfcUEv3fgwmGNA
	uIaZRMzjTyig3fx+5k4jVHvvDU0hvT8hz15osUMK4c4BKJ4LEDziovWWvKh2HldaL5RC/CZEqqy
	oFaA37dRAtzvZIgfZRqtGO2/KJSQ1q50=
X-Google-Smtp-Source: AGHT+IHpaH6S5K5Sm7sY0IzfQe1z9xUrcYE3c+rYHcAU+jRqbqvbdjzDEu7Zef4jAqqPK/zPxjJi/a+mkTImitDTSbI=
X-Received: by 2002:a05:651c:40d0:b0:32b:952f:3e0 with SMTP id
 38308e7fff4ca-32cd01bf1b4mr8276841fa.7.1750929807125; Thu, 26 Jun 2025
 02:23:27 -0700 (PDT)
MIME-Version: 1.0
References: <8bc290d6-5687-495d-b5d5-a8ca94cf2f7a@gmail.com>
 <CAGb2v64z3Yv_MNxJDTMcDR5ajD_L0zpsea2aBcrCLKfw3HUmiQ@mail.gmail.com> <ee7a2587-3e4c-4bb2-8eeb-961dbbb9ca97@gmail.com>
In-Reply-To: <ee7a2587-3e4c-4bb2-8eeb-961dbbb9ca97@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 26 Jun 2025 17:23:14 +0800
X-Gmail-Original-Message-ID: <CAGb2v640p2zfD9T6PnmfOwJY8nMeSyY5CJNhtdW9B-+ZPNSW4Q@mail.gmail.com>
X-Gm-Features: Ac12FXyWFHzmzDicv9sLBptQqhPyUWjf2ntK8izzEnbXTTPiX83IXzjCPxKN924
Message-ID: <CAGb2v640p2zfD9T6PnmfOwJY8nMeSyY5CJNhtdW9B-+ZPNSW4Q@mail.gmail.com>
Subject: Re: wireless-regdb: Update regulatory rules for Brazil (BR) on 6GHz
To: Marcos Alano <marcoshalano@gmail.com>
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

Hi,

On Thu, Jun 26, 2025 at 4:37=E2=80=AFPM Marcos Alano <marcoshalano@gmail.co=
m> wrote:
>
> On 26/06/2025 05:15, Chen-Yu Tsai wrote:
> > On Mon, Jun 2, 2025 at 9:23=E2=80=AFAM Marcos Alano <marcoshalano@gmail=
.com> wrote:
> >>
> >> Hi,
> >>
> >> The rules for Brazil were based on this normative
> >> https://informacoes.anatel.gov.br/legislacao/resolucoes/2017/936-resol=
ucao-680,
> >> as mentioned in the comments of the entry.
> >>
> >> This January came out a newer normative
> >> https://informacoes.anatel.gov.br/legislacao/resolucoes/2025/2001-reso=
lucao-772,
> >>
> >> It allows 6GHz frequencies, so the line:
> >> (5925 - 7125 @ 320), (12), NO-OUTDOOR, NO-IR
> >> Should change for, at least:
> >> (5925 - 7125 @ 320), (12), NO-OUTDOOR
> >> The removal of NO-IR is important, since routers Wi-Fi 6E and 7 don't
> >> work because of this outdated rule based on an outdated normative.
> >
> > Those are very large documents. Could you help point out which sections
> > or comments apply to your argument?
>
> https://informacoes.anatel.gov.br/legislacao/atos-de-requisitos-tecnicos-=
de-gestao-do-espectro/2024/1920-ato-915:
> in the items IX.4 and IX.5 mentions the 6GHz frequency.

This only covers point-to-point usage. You would need to modify the rules
and add the PTP flag. Likely not what you actually want.

> https://informacoes.anatel.gov.br/legislacao/resolucoes/2025/2001-resoluc=
ao-772:
> You can search for "5925-6700" to check how the allocation is done.
> It mentions satellites, so that's why I set indoors, but maybe you
> understand that is not necessary.

This only gives the band allocation, not the requirements for each use.
Also, satellite communication is a different use category. We should look
for WiFi or RLAN, or perhaps "comunica=C3=A7=C3=A3o multim=C3=ADdia".

The requirements I were able to find are:

https://informacoes.anatel.gov.br/legislacao/atos-de-certificacao-de-produt=
os/2021/1510-ato-1306

ChenYu

> Marcos.
>
>
> >
> > Thanks
> > ChenYu
> >
> >> I'm no lawyer, so please if you see something different, like more
> >> granular control in the allowed frequencies, please let us know.
> >>
> >> Thanks,
> >> --
> >> Marcos Alano
> >>
> >>
>
> --
> Marcos Alano
>

