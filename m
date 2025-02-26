Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88FEDC021B8
	for <wireless-regdb@archiver.kernel.org>; Wed, 26 Feb 2025 09:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5adDAksHTfEqWNhn95IEE2r3siwgRAa5m2HbSqJkpgI=; b=xJjdVrLMTaXEJc
	FkKoqi/L59j9oLBBGacptem0VB9NJ99EcLSfll9fWCcBNIWJsv6yFFpY+w/lVD1AUjrB2p7spqpiJ
	5xcEjU5WgzJikc9twQMRJ8nqoCylH/TtcW0sU37BzYuaRscnGgwNz+91AjuToxN+61N17q7BqGmwe
	0N43/GRG3mfhPEYN6fzgpzciBYy2tQr5mjwYBGnOcsnQCYmPapbzBLqt39S+rXF5E3eOsQvYxFO3/
	WYJQD1nIU1qpukKPIqBoHH9kA1V3MxIqTjm73QQcL+8Q1rgBmbpZgamGs82E49KZm+wQBIazm6tXd
	4Pa+rzBPIiUfDS2Gax+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnDdD-00000003447-0xXW;
	Wed, 26 Feb 2025 09:23:07 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnDWs-0000000336H-3pRf
	for wireless-regdb@lists.infradead.org;
	Wed, 26 Feb 2025 09:16:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8DBB961293
	for <wireless-regdb@lists.infradead.org>; Wed, 26 Feb 2025 09:16:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C67B0C4CEE9
	for <wireless-regdb@lists.infradead.org>; Wed, 26 Feb 2025 09:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740561392;
	bh=05gVVOY3WLxtaEL/Nx5rm3Z6HUycaGH6TDcEb/e4chw=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=pLx95Yb/l4KRgp65KUMom/C5x4jeSr+dOWP66Vfi0D4VxL4k2j8mu0ODYQSFEEosU
	 RlrpYgg28TxjzYirF/y7s8npiiZij+r3qepDbyvdvF5/Ah5WPmR+PG+87eLCtG0cLL
	 4Rx0UuqvDVvWRDjQ7sth2QC60dVV7DwjujcnFSicFkebykdDPJ8h6yBhdMM9x3zGwO
	 T6lRdI+54KYFMVXMsQ0BEMjyjsIAhF8AvZVeZCGLsr83VyEDqMKtpyaul+0vW4sZa6
	 NuwHtjepnUaZkOxoqq7piFZBB2mejCmYweONYVZnN8km30PPIk5QVnfIainqWKjVVH
	 dJyZQyLdUtPFg==
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-3061513d353so69337811fa.2
        for <wireless-regdb@lists.infradead.org>; Wed, 26 Feb 2025 01:16:32 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWnHO+WSdTU2Mll+VWYdSsB8Z5VHTMFHXAwk28IJLhwL+eNT/lgHk5MacNe5TzmdndrCwZIMhcxp+Pg44AMyQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8u0OJT0c80WtLiofAIaQg9Td8Dtaf65R1S0kiHUIr7gJhtjf+
	pTM7MN31xedtmt6tVpx7pr3bAMqvz+btChz0H8IMI+FW/ae3QLrdfLPo6+jAdkuZkBvdndStV/Y
	+fKcCZSNBQa/4MCMjImKRewC/lDg=
X-Google-Smtp-Source: AGHT+IELdfE1gzu3uq1AHnOX1jEt+TzMJax3znzX0UKdhlSW/Wajol/9Y1Yt6LMcBib8zwd4F5j0WL1TCmGElXbMjBc=
X-Received: by 2002:a2e:87da:0:b0:308:e8ae:1817 with SMTP id
 38308e7fff4ca-30a5b20d801mr94896661fa.26.1740561391131; Wed, 26 Feb 2025
 01:16:31 -0800 (PST)
MIME-Version: 1.0
References: <000201db8822$98f28da0$cad7a8e0$@gmail.com> <CAGb2v65490c1m3W_1RkxJ-E7Q=3V_K8xqS2jmd6awcOdzWHXzQ@mail.gmail.com>
 <000901db882d$8cb13090$a61391b0$@gmail.com>
In-Reply-To: <000901db882d$8cb13090$a61391b0$@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 26 Feb 2025 17:16:17 +0800
X-Gmail-Original-Message-ID: <CAGb2v642utRqjhKth9he-jicA_E5RfYoXTPRyZaVykLNXQCXvg@mail.gmail.com>
X-Gm-Features: AQ5f1JpeYc1HB0IPuwQodh1N6wqFZkIckv_HojOyWcAIuXVPcZ-WvOKve-Rrjyg
Message-ID: <CAGb2v642utRqjhKth9he-jicA_E5RfYoXTPRyZaVykLNXQCXvg@mail.gmail.com>
Subject: Re: wireless-regdb: Allow 6ghz in the US
To: rmandrad@gmail.com
Cc: linux-wireless <linux-wireless@vger.kernel.org>, 
	wireless-regdb <wireless-regdb@lists.infradead.org>
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

(When replying, please reply to all)

On Wed, Feb 26, 2025 at 5:05=E2=80=AFPM <rmandrad@gmail.com> wrote:
>
> Thank you. Apologies this is the first time submitting a kernel patch. Th=
e original submission set NO-IR where clearly the document notes it is allo=
wed as section 59 states hence the patch - with increase usage of 6Ghz we h=
ave now Openwrt users complaining they can't the band in the US due to NO-I=
R
>
> Shall I update the patch to only remove NO-IR and increase power to 30 dB=
m ?

As explained, the limit is lowered from 30 dBm to 12 dBm to comply with
the PSD requirements when using a 20 MHz channel. I suspect no one would
use such a narrow band, but the requirements exist and the database rule
should not be written in a way that allows the user to exceed the limit,
i.e. using 30 dBm on a 20 MHz channel.

So please update the patch to only remove NO-IR. You can look at previous
commits to see how we put URLs in the commit message.

Thanks
ChenYu

> Thank you again
>
> -----Original Message-----
> From: Chen-Yu Tsai <wens@kernel.org>
> Sent: 26 February 2025 08:58
> To: rmandrad@gmail.com
> Cc: linux-wireless@vger.kernel.org; wireless-regdb@lists.infradead.org; D=
ennis Bland <dennis@dbperformance.com>; Ping-Ke Shih <pkshih@realtek.com>
> Subject: Re: wireless-regdb: Allow 6ghz in the US
>
> CC-ing Dennis, the original submitter, and also Ping-Ke, who has done a l=
ot of 6 GHz updates, for more information.
>
> On Wed, Feb 26, 2025 at 4:03=E2=80=AFPM <rmandrad@gmail.com> wrote:
> >
> > Allow 6ghz in the US
> >
> > https://www.federalregister.gov/documents/2020/05/26/2020-11236/unlice
> > nsed-u se-of-the-6-ghz-band allows the use of 6ghz in the US namely
> > section
> > 59 https://www.federalregister.gov/d/2020-11236/p-66 with absolute
> > radiated power of 30 dBm for the 320 megahertz channel
>
> Please don't wrap URLs.
>
> Please see the original submission [1], which explains why the power limi=
t is so low. Basically, neither the database nor the kernel supports specif=
ying power spectral density limits, so we can only take the narrowest bandw=
idth to calculate the applicable power limit.
>
> [1] https://lore.kernel.org/wireless-regdb/CAPRryQp6j4UKvLZCkMAuQdaxepMBE=
TQUJ1eNULJSh3ZWXC0f5Q@mail.gmail.com/
>
> > based on this remove NO-IR flag and allow 30 dBm max power
>
> The original submission mentioned NO-IR requirements, though I did not fi=
nd such wording. Dennis, do you have any ideas?
>
> > Signed-off-by: Rudy Andram <rmandrad@gmail.com>
> >
> > diff --git a/db.txt b/db.txt
> > index 803f1bc..bc2b4fe 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -1953,7 +1953,8 @@ country US: DFS-FCC
> >         (5850 - 5895 @ 40), (27), NO-OUTDOOR, AUTO-BW, NO-IR
> >         # 6g band
> >         #
> > https://www.federalregister.gov/documents/2020/05/26/2020-11236/unlice
> > nsed-u
> > se-of-the-6ghz-band
> > -       (5925 - 7125 @ 320), (12), NO-OUTDOOR, NO-IR
> > +       (5925 - 6425 @ 320), (30), NO-OUTDOOR
> > +       (6525 - 6875 @ 320), (30), NO-OUTDOOR
>
> The database entry targets LPI usage instead of standard usage, which req=
uires the presence of AFC, which is also a requirement that the database is=
 unable to represent. And under LPI usage, the full 6GHz band (U-NII-5, 6, =
7) is available.
>
>
> Thanks
> ChenYu
>
> >         # 60g band
> >         # reference: section IV-D
> > https://docs.fcc.gov/public/attachments/FCC-16-89A1.pdf
> >         # channels 1-6 EIRP=3D40dBm(43dBm peak)
> >
> >
> >
>

