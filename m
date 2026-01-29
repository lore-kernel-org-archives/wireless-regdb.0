Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAA5FD358C0
	for <wireless-regdb@archiver.kernel.org>; Thu, 29 Jan 2026 06:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TGejvWznvpnjrnU9uAC/m4p9NcBkx/W8GBjiON0wA3o=; b=BL3Yt1iKNNLTPT
	CDWGnTWj3XGxiCMAjhXOYeXl/LQVBoBaL8ANCQZilPSL2PYgJMLYjfgOSITq+oOZNLLs+RSmQu4AG
	Y9aX+QU4ZY+/hxefmg9eCvIgLcv2zzmBjLy5iObUNr2JGdRI/zRYrqN+0tQ+ty7DNVFZpFuNjaW8X
	0bgZIqtud0Ig7ynah6fn1oWouj0LmyCrofWRnto8JCCvQt6hxeZJLj6WkRdE2Mk3Sht5fxdpoX6MD
	g6+STKPXwLUiFGd3lhpihHT6elCHOnER74Q6a/r/+PhmvoJqd4U2fnUXHeONmwzkA+v5THoaHn/5Y
	NmZ9DeY7/yku6iITSsXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlLHP-0000000HJn0-3KN5;
	Thu, 29 Jan 2026 06:13:23 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlLHO-0000000HJmu-0wpA
	for wireless-regdb@lists.infradead.org;
	Thu, 29 Jan 2026 06:13:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5F5486001A
	for <wireless-regdb@lists.infradead.org>; Thu, 29 Jan 2026 06:13:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19528C19421
	for <wireless-regdb@lists.infradead.org>; Thu, 29 Jan 2026 06:13:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769667201;
	bh=BFbjrLJ/PTbN1EwdFqpx7TU5Rs4CEN760xmvAW7LfoY=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=K0406ziMm41sPKGR7QIFzk3a0dYiPlMQEpL+IY3/oGKhkEMD6nil35UXu8y6IoL+C
	 pqOVIEDL4yv3xhbi4CdHvO6r8ANKQKOm6lIcN7e0YuKCxbg87KOIixZwf+xWMgBSbf
	 ycUhH/0VjcOEja2eo6BNM6DI7HICP2rzkO0FBhbGL04xlQWCaIxRv/QwRT2WmbfVLm
	 dxrbafVWIXn9nDx7Gx44oWg+xF/+Djfqv4hrjiTFmLK/W8eFXCxxFzffuEwan4zrV5
	 BDXF3pqzgDz6Y6WelmGQj0toRMGuHvDDUFb62wzWyd+MkIQCtv8YZodCtkYkFQQJTG
	 9uZ8a2h6KbvNg==
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-59de2d1fc2cso857599e87.2
        for <wireless-regdb@lists.infradead.org>; Wed, 28 Jan 2026 22:13:20 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW0yjVih+avM5JRuxN7e215dm4oDepjo3ANE2piSoyKzOCIkxGd4T097DBsEoGx4zpXgSlaol8zm4Pt4o2teg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz75Cpt3eX/43b+CFcj2AF7BdZ7J67JVpkrUiSowkUjY7fu5Q87
	36mFQt8CvJjDPcr5rWr1rRe1x9qbDf0nPReggLcy7HbI73QYuWDZJNPE+YwWAjlTc44RRz3xsXI
	pF4MyZ32iyDaeFWyXaeOeBpfRH1vwYUA=
X-Received: by 2002:a05:6512:4019:b0:59c:b91d:3a56 with SMTP id
 2adb3069b0e04-59e04013e12mr2740311e87.2.1769667199411; Wed, 28 Jan 2026
 22:13:19 -0800 (PST)
MIME-Version: 1.0
References: <20260128102525.872517-1-gaurav.kansal@nic.in> <CAHrRpuk7Xqab+BC57m_5KWJVr8rc+_LHWwKr-pWmvR3y9W2ghA@mail.gmail.com>
In-Reply-To: <CAHrRpuk7Xqab+BC57m_5KWJVr8rc+_LHWwKr-pWmvR3y9W2ghA@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 29 Jan 2026 14:13:07 +0800
X-Gmail-Original-Message-ID: <CAGb2v64jhYNkf_O-mkhcE3=zpvpDG7C54WJEDfn1sKM1hB9GFw@mail.gmail.com>
X-Gm-Features: AZwV_QiVnR2uKuydYO8raxzfaSV1FXqRXAOJyIHTjzFjWAV068fe-Hz3dhHQoLE
Message-ID: <CAGb2v64jhYNkf_O-mkhcE3=zpvpDG7C54WJEDfn1sKM1hB9GFw@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: add IN rules for lower 6 GHz (5925-6425
 MHz) LPI and VLP
To: gaurav.kansal@nic.in
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, 
	Ping-Ke Shih <pkshih@gmail.com>
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

On Thu, Jan 29, 2026 at 10:10=E2=80=AFAM Ping-Ke Shih <pkshih@gmail.com> wr=
ote:
>
> <gaurav.kansal@nic.in> wrote=EF=BC=9A
> >
> > From: Gaurav Kansal <gaurav.kansal@nic.in>
> >
> >     DoT / Gazette notification (20 Jan 2026) delicensed lower 6 GHz (59=
25-6425 MHz).
> >     Add rules for:
> >      - Low Power Indoor (LPI) 5925-6425 MHz, up to 1000 mW (30 dBm) EIR=
P, NO-OUTDOOR
> >      - Very Low Power (VLP) 5925-6425 MHz, up to 25 mW (14 dBm) EIRP
> >
> >     References:
> >      - DoT / Gazette notification (Jan 20, 2026)
> >        https://blog.gauravkansal.in/2026/01/Gazette%20on%20the%20Use%20=
of%20Low%20Power%20and%20Very%20Low%20Power%20Wireless%20Access%20System%20=
in%20Lower%206%20GHz%20band%20-%202026.pdf
>
> Is it possible to tag original official link?
>
> >        https://blog.gauravkansal.in/2026/01/Opening-India-Lower-6-GHz-B=
and-for-Wireless-Use:-A-Strategic-Regulatory-Landmark.html
> >        https://en.wikipedia.org/w/index.php?title=3DList_of_WLAN_channe=
ls#India_2
> >      - Linux wireless-regdb db.txt format docs
> >     Signed-off-by: Gaurav Kansal gaurav.kansal@nic.in

Somehow your commit message is indented.

Please have an empty line before the Signed-off-by.

> > ---
> >  db.txt | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/db.txt b/db.txt
> > index dc72989..0f90f6e 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -974,12 +974,20 @@ country IL: DFS-ETSI
> >  # Source:
> >  # https://dot.gov.in/spectrummanagement/delicensing-24-24835-ghz-band-=
gsr-45-e-5150-5350-ghz-gsr-46-e-and-5725-5875-ghz
> >  # https://dot.gov.in/spectrummanagement/license-exemption-5-ghz-gsr-10=
48e-dated-22102018
> > +# Info about 6 GHz added by Gaurav Kansal (gaurav.kansal@nic.in)
> > +# Lower 6 GHz delicensed for India: 5925-6425 MHz (on 21.Jan.2026)
> > +# LPI: Low Power Indoor (indoor only) =E2=80=94 1000 mW =3D 30 dBm EIR=
P
> > +# VLP: Very Low Power (outdoor allowed at very low EIRP) =E2=80=94 25 =
mW =3D 14 dBm EIRP
> > +# https://blog.gauravkansal.in/2026/01/Opening-India-Lower-6-GHz-Band-=
for-Wireless-Use:-A-Strategic-Regulatory-Landmark.html
> > +# https://blog.gauravkansal.in/2026/01/Gazette%20on%20the%20Use%20of%2=
0Low%20Power%20and%20Very%20Low%20Power%20Wireless%20Access%20System%20in%2=
0Lower%206%20GHz%20band%20-%202026.pdf
> >  country IN:
> >         (2402 - 2482 @ 40), (30)
> >         (5150 - 5250 @ 80), (30)
> >         (5250 - 5350 @ 80), (24), DFS
> >         (5470 - 5725 @ 160), (24), DFS
> >         (5725 - 5875 @ 80), (30)
> > +       (5925 - 6425 @ 320), (1000 mW), NO-OUTDOOR, AUTO-BW
>
> I'd prefer in unit of dBm as [1].

Please stick with what the official document uses.

> I think no need AUTO-BW that is to merge adjacent rules to have large ban=
dwidth.
>
> > +        (5925 - 6425 @ 320), (25 mW), AUTO-BW
>
> Use tab as indent instead.
>
> I'm not aware we can possibly have two entries with the same frequency ra=
nge,
> and I only added one entry for indoor (or no indoor/outdoor restriction) =
before.
> Checking freq_reg_info_regd(), I think only first matched entry is adopte=
d, but
> no error to build reg-db by 'make'.

That's my impression as well. Linux cannot handle two rules for the same
band. Only one is ever used.


ChenYu

> >
> >  # Source:
> >  # https://asnad.cra.ir/fa/Public/Documents/Details/73af8590-f065-eb11-=
968f-0050569b0899
> > --
> > 2.47.3
> >
> >

