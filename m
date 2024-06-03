Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F610C25B75
	for <wireless-regdb@archiver.kernel.org>; Mon,  3 Jun 2024 06:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rrdptw6z41mfwM20VuVwakCzcCJ2lQqgNtsMJ3yMn/0=; b=pU0Q15v+/iVapO
	vsTQb8OL8aWEWjiveRWF/nDN9/s9CQB9OhlAefS3DZ+/L3iM9Hc5Z20J6Vu3Mcga+6yyjgTGm/zAb
	nLRrpJLTCweuC2Mj610g8MjAcbF5XyjLTCM+zGZw8zMSi9zFs7yFUoJ2dy9zGg2Tc6YrlVsFnb/84
	lm7f0JiF0kqzeXCaNYAkhc+eUJM7Ud6KnmIIPZ4mWEeXTra+LZY1QoDrgBVl9e6tSKhEJf+aDpQQt
	/4xHTbODN/KF2rOTJFs1rGBt9RcIrk9daoUKNAM+5D/cAB2CHblh+R8OltnpKLnHONyGCBf0kCOph
	i7C4S6mMW541gWhNjNrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE1MA-0000000FmgL-36Bz;
	Mon, 03 Jun 2024 06:39:46 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE1M7-0000000Fmem-0IXz
	for wireless-regdb@lists.infradead.org;
	Mon, 03 Jun 2024 06:39:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0208ECE0AE0
	for <wireless-regdb@lists.infradead.org>; Mon,  3 Jun 2024 06:39:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1ADB4C2BD10
	for <wireless-regdb@lists.infradead.org>; Mon,  3 Jun 2024 06:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717396780;
	bh=rrdptw6z41mfwM20VuVwakCzcCJ2lQqgNtsMJ3yMn/0=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=mvoJjo+kOmcUST3AStzPqFB+3Gueie4y2fPS8+D1wzsNHIwIYGwalNYYhmMB2OK2l
	 FFZAwEnWY5EIEPc/fGK9DgTDsoOb5D8o4WLN7HPOHvFCzTNhmhHvr5X1/FMj/cZ4Um
	 aWJCqY+ogZvwFY7cJM7bxkQI1meJf2Srvw03cIe+XsWBBDOXt1geHRMC/0vAzRZNGa
	 KU2aog4yVQVxUXt/xP04KRE6I0oAkjfEBNif68KxDnHGGnI0u/7TfKidmn7aJxYgrk
	 eFksyCFrWQU+oLfIbe3PSbYSTtLL8mlEeRuu2+nYVrVC+SzTZy4RYeLkTA7tExgKan
	 Gk0s5nZv0VJ0w==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2e964acff1aso43612991fa.0
        for <wireless-regdb@lists.infradead.org>; Sun, 02 Jun 2024 23:39:40 -0700 (PDT)
X-Gm-Message-State: AOJu0Yx5XBprroTeyZMwOdGkZ672EjR50gpYdR7U8Q7UlPFXgAAiZE8D
	zCXmI4EfpdIt5Cf0cuG0Bx4WyOUk6HbW596Zu3UysVJy9AtOP8pZjsb2eaHC3OktiuHT0Q7CCgD
	MnN/yzYZMcB+YH9M54x/+CJu91Ow=
X-Google-Smtp-Source: AGHT+IFLNukTRlXKaQ+GvVsm97eiGnOwk5fX/NrJvNDhvRo1ZBeP6KIhYGMOFf5t8OKTDoc9QiHT4SYMO3r0ogSiru4=
X-Received: by 2002:a05:651c:d:b0:2ea:81cc:b146 with SMTP id
 38308e7fff4ca-2ea9512b1a0mr54034521fa.18.1717396778471; Sun, 02 Jun 2024
 23:39:38 -0700 (PDT)
MIME-Version: 1.0
References: <CALfTr+pXU_=ORh2w3GE+YiU9igh61uWZS-zdG1GyKFb5Qs6fTg@mail.gmail.com>
 <CAGb2v67-9Gyxwpy8w9X=Gz7wXuVO0DncwXoRPV6_zrpF7MdEsg@mail.gmail.com>
In-Reply-To: <CAGb2v67-9Gyxwpy8w9X=Gz7wXuVO0DncwXoRPV6_zrpF7MdEsg@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 3 Jun 2024 14:39:26 +0800
X-Gmail-Original-Message-ID: <CAGb2v66xjwgcMZ2-N9CEg055Q+mLQKm20Nvo9mmHD3LY=C=Vjw@mail.gmail.com>
Message-ID: <CAGb2v66xjwgcMZ2-N9CEg055Q+mLQKm20Nvo9mmHD3LY=C=Vjw@mail.gmail.com>
Subject: Re: S1G and 6GHz channels in Estonia (and EU)
To: =?UTF-8?B?VGFhdmkgRW9tw6Rl?= <taavieomae@gmail.com>
Cc: wireless-regdb@lists.infradead.org, 
	linux-wireless <linux-wireless@vger.kernel.org>, Johannes Berg <johannes@sipsolutions.net>, 
	Kalle Valo <kvalo@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240602_233943_499372_7C2A4DC9 
X-CRM114-Status: GOOD (  26.66  )
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

(Resend to Kalle's correct email address)

On Mon, Jun 3, 2024 at 2:36=E2=80=AFPM Chen-Yu Tsai <wens@kernel.org> wrote=
:
>
> (Adding linux-wireless ML, Kalle and Johannes)
>
> On Mon, Jun 3, 2024 at 1:13=E2=80=AFAM Taavi Eom=C3=A4e <taavieomae@gmail=
.com> wrote:
> >
> > Hi!
> >
> > I have a few questions about the current regdb values for Estonia/EE an=
d EU:
> >
> > 1) There are no allowed S1G/HaLow/802.11ah EE (or EU) bands:
> >
> > Based on resources online and Estonian law
> > (https://www.riigiteataja.ee/akt/117052024018?leiaKehtiv - Extra 6)
> > these two additions should be correct:
> >
> > + (863 - 868 @ 1), (25 mW)
> > + (915.8 - 919.4 @ 1), (25 mW)
> >
> > (Note: I don't see a way to define duty-cycle limitations, but that
> > should be okay?)
>
> I'm not sure if there are plans to support S1G in Linux. If not then
> the information would go unused and untested. If it is supported, then
> patches are more than welcome.
>
> > 2) There's seems to be a missing 160MHz channel (50):
> >
> > This combines the restrictions of the two existing defined bands it
> > overlaps with (https://ttja.ee/eraklient/side-ja-meediateenused/raadios=
ide/wifi-seadmete-kasutus):
> >
> > + (5150 - 5350 @ 160), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=3DET=
SI
>
> The AUTO-BW flag lets the kernel know that it can combine neighboring
> rules for wider bandwidth at the lowest power limit within the rules.
>
> Thus merging the rules is not needed. Indeed we would prefer rules not
> be merged, as the database should convey information closest to the
> regulations.
>
> > 3) The 6GHz band should also have an outdoor limit and probably also
> > allow 320MHz channels (at least in EE):
> >
> > - (5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=3DETSI
> > + (5945 - 6425 @ 320), (25 mW), wmmrule=3DETSI
> > + (5945 - 6425 @ 320), (200 mW), NO-OUTDOOR, wmmrule=3DETSI
>
> The kernel currently can't deal with duplicate rules for the same
> channel. Thus we have to make a decision on whether to have a rule
> with higher power but indoor use only, or the opposite.
>
> Within our database, we have the former for some jurisdictions
> and the latter for others. It really depends on the submitter.
>
> > Would a patch for these be accepted? Should I update all EU countries
> > (considering it seems harmonized within the EU)?
>
> I would expect patches to be per country referencing local regulations,
> not just the EU one. IIUC the EU sets one harmonized regulation but then
> it's up to each member country to implement / incorporate them?
>
> Whether you would like to update other EU countries is up to you.
>
>
> Thanks
> ChenYu

