Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3137C8300F
	for <wireless-regdb@archiver.kernel.org>; Thu, 26 Jun 2025 11:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CjgXRCU/Rbibmkvl1yLMk7fKpvVXpjtAqlFLkimKgJk=; b=TmXAm2qaOY9Ow3
	ZIN8f/48FNBP2S7TYQtbqrUfD4UhORg/Qw1r9z1eZ5Rdjw6EGaAiBjlaU+pgOSzGXuA7skeiAmwid
	aS9Ir8xwybPQAXRcP6Q1nIS3H8qJuirkH/tFGE2w238we/kgRrbMgPWY/Io5kXCvloltZoSB1dRoC
	L9yvzqedl4p2TOuYHQJ6zcnBMy2w9YjYiln9trcAe1xxxBnks2XmqchwVD85dtM/25Np4WOHScWHW
	apL7NF0Sqx4gmFet8ccZld2n2RnWtO9nvPHCuiQrQ3b9qjaLkbUayHo/NDYagwpADyQ0BTq4pfwtU
	SJpKgUUgOtn2jsTV4eaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUkh5-0000000BO5k-2Wj0;
	Thu, 26 Jun 2025 11:23:03 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUjU2-0000000BEwK-2tUl
	for wireless-regdb@lists.infradead.org;
	Thu, 26 Jun 2025 10:05:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C41975C5D9A
	for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 10:03:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3EFDC4CEEE
	for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 10:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750932329;
	bh=CjgXRCU/Rbibmkvl1yLMk7fKpvVXpjtAqlFLkimKgJk=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=DnVHWrrWNWSmkzXM5d+40wRAkk7S2whfv2NvdZpZsMCI+nV2VS9wlgMkMwXOfLmmB
	 t4Lbq88c0j/A/e14+1DClEmatI5H4/h6CuUC6ExsoT5eUI0ou7L6qlfb+autbl9hmV
	 rtNO+c4u8+HaeZurh3KvDDNorqR9dWhMEEKx0eU8bMRysNobivy6t+T2PHy+Z2UGYp
	 EHVBtrRSA1MHPdCXiqqH+jYuG0VgHcicY6Uqi8LS3y8q64W6achxy9eE2vtZo1J3fG
	 UdQDjTFC/nvvptM0fas71bVhZNP8iBMtYBkapaWtbMSJ8NvD8RQi1Mp7QSC88iQ3lj
	 CPtsObdOdXBTA==
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-32b7cf56cacso7256511fa.1
        for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 03:05:29 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWVkcUYrIxW+lUoVWiI+8jZuJfYG8NAL8zAY2+ita2o1VsISxIWiHwmMZAH5W8gczh9A0fA85k/6wci1f2Z/w==@lists.infradead.org
X-Gm-Message-State: AOJu0YzJ3TTf11xLPAMWJ8wZleb4+vG4j9fyPmGEO5I5b060oXgpcwGd
	Z2JUWza/fI5fOVVA3DMyUPBLxFn4xB7A3DA5pljKaA46Sgz5rmM0EF4G1P/gPDyjjzHS6WVsZWe
	N+XuVxlpj8SnyxADnGLSMY6Zcb/CX8xk=
X-Google-Smtp-Source: AGHT+IGX4/27FaRhdes53FjY7kdtzZpy9CsFIpmXv5clQ1XBXWCcFIeBdmroWYKFvZgSoROE7fUJNwdwtm9Bu3eYkxo=
X-Received: by 2002:a05:651c:40d5:b0:32b:2fba:8b90 with SMTP id
 38308e7fff4ca-32ccf9cd24fmr7116291fa.14.1750932328302; Thu, 26 Jun 2025
 03:05:28 -0700 (PDT)
MIME-Version: 1.0
References: <8bc290d6-5687-495d-b5d5-a8ca94cf2f7a@gmail.com>
 <CAGb2v64z3Yv_MNxJDTMcDR5ajD_L0zpsea2aBcrCLKfw3HUmiQ@mail.gmail.com>
 <ee7a2587-3e4c-4bb2-8eeb-961dbbb9ca97@gmail.com> <CAGb2v640p2zfD9T6PnmfOwJY8nMeSyY5CJNhtdW9B-+ZPNSW4Q@mail.gmail.com>
 <46ab2a6b-82ff-4330-819e-99a67280409a@gmail.com>
In-Reply-To: <46ab2a6b-82ff-4330-819e-99a67280409a@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 26 Jun 2025 18:05:15 +0800
X-Gmail-Original-Message-ID: <CAGb2v65BO=EV+HxwOV7it94q2wNQA5_8AtjuHkLdV_2R33T_NA@mail.gmail.com>
X-Gm-Features: Ac12FXx5qpGD_MGqFhkkid2RjLUjLex2hJPAgrBldzv1enpypMcT_D72Yyt-yVo
Message-ID: <CAGb2v65BO=EV+HxwOV7it94q2wNQA5_8AtjuHkLdV_2R33T_NA@mail.gmail.com>
Subject: Re: wireless-regdb: Update regulatory rules for Brazil (BR) on 6GHz
To: Marcos Alano <marcoshalano@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_030530_808270_081D0EF9 
X-CRM114-Status: GOOD (  27.29  )
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

On Thu, Jun 26, 2025 at 5:56=E2=80=AFPM Marcos Alano <marcoshalano@gmail.co=
m> wrote:
>
>
>
> On 26/06/2025 06:23, Chen-Yu Tsai wrote:
> > Hi,
> >
> > On Thu, Jun 26, 2025 at 4:37=E2=80=AFPM Marcos Alano <marcoshalano@gmai=
l.com> wrote:
> >>
> >> On 26/06/2025 05:15, Chen-Yu Tsai wrote:
> >>> On Mon, Jun 2, 2025 at 9:23=E2=80=AFAM Marcos Alano <marcoshalano@gma=
il.com> wrote:
> >>>>
> >>>> Hi,
> >>>>
> >>>> The rules for Brazil were based on this normative
> >>>> https://informacoes.anatel.gov.br/legislacao/resolucoes/2017/936-res=
olucao-680,
> >>>> as mentioned in the comments of the entry.
> >>>>
> >>>> This January came out a newer normative
> >>>> https://informacoes.anatel.gov.br/legislacao/resolucoes/2025/2001-re=
solucao-772,
> >>>>
> >>>> It allows 6GHz frequencies, so the line:
> >>>> (5925 - 7125 @ 320), (12), NO-OUTDOOR, NO-IR
> >>>> Should change for, at least:
> >>>> (5925 - 7125 @ 320), (12), NO-OUTDOOR
> >>>> The removal of NO-IR is important, since routers Wi-Fi 6E and 7 don'=
t
> >>>> work because of this outdated rule based on an outdated normative.
> >>>
> >>> Those are very large documents. Could you help point out which sectio=
ns
> >>> or comments apply to your argument?
> >>
> >> https://informacoes.anatel.gov.br/legislacao/atos-de-requisitos-tecnic=
os-de-gestao-do-espectro/2024/1920-ato-915:
> >> in the items IX.4 and IX.5 mentions the 6GHz frequency.
> >
> > This only covers point-to-point usage. You would need to modify the rul=
es
> > and add the PTP flag. Likely not what you actually want.
> >
> >> https://informacoes.anatel.gov.br/legislacao/resolucoes/2025/2001-reso=
lucao-772:
> >> You can search for "5925-6700" to check how the allocation is done.
> >> It mentions satellites, so that's why I set indoors, but maybe you
> >> understand that is not necessary.
> >
> > This only gives the band allocation, not the requirements for each use.
> > Also, satellite communication is a different use category. We should lo=
ok
> > for WiFi or RLAN, or perhaps "comunica=C3=A7=C3=A3o multim=C3=ADdia".
> >
> > The requirements I were able to find are:
> >
> > https://informacoes.anatel.gov.br/legislacao/atos-de-certificacao-de-pr=
odutos/2021/1510-ato-1306
> >
> > ChenYu
>
> I created a v3 patch that updates the comments with the new normative
> you found, removes the NO-IR so a AP can work correctly, and changed the
> maximum power from 12 to 27, since for APs it seems to mention 30dBm,
> but I considered TPC like the other frequencies.

You failed to consider the power spectral density requirement. As I
mentioned in a previous reply, the requirement for clients is -1 dBm/MHz,
which at the smallest channel width, translates to a power limit of around
12 dBm. The original value is correct.

The database in its current form simply does not have the capability to
model things like PSD or AP vs client device specificity.

If the regulations require NO-IR for clients, then we cannot remove it
just so that APs can work. See [1] for the same discussion for US 6 GHz.

Sorry.

ChenYu

[1] https://lore.kernel.org/wireless-regdb/14ab2a58e7603047354a17b2c980c143=
992a6782.camel@sipsolutions.net/

> >
> >> Marcos.
> >>
> >>
> >>>
> >>> Thanks
> >>> ChenYu
> >>>
> >>>> I'm no lawyer, so please if you see something different, like more
> >>>> granular control in the allowed frequencies, please let us know.
> >>>>
> >>>> Thanks,
> >>>> --
> >>>> Marcos Alano
> >>>>
> >>>>
> >>
> >> --
> >> Marcos Alano
> >>
>
> --
> Marcos Alano
>

