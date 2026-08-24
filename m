Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 513E0C5DF94
	for <wireless-regdb@archiver.kernel.org>; Mon, 24 Aug 2026 08:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5LiJ6TZO52m4OOCLiCd71T+aefYjNDmhG2YJrXqJqxc=; b=QPBpksifYtcsWl
	aoq5Jyu0LmssB79OYG0fIonvHxEERz7bi57l7NYroYquz560tUIMNmpcB42JzGPkyUkrjM4tDeB65
	q7VIZpc/cGr4oIGhWx0mQ5nWWp8ArwWHtOagnCtY/QBoL52u/PlsxKkGNvOUMAcS+S6XZMeR0nMS8
	6RNLA0RVsqGneW8UhI8v6oaLNgjGjBawaaGSG6pgjqRI48iYNbPDGMLU8BaupxUQl3T2Jd3+yj5mQ
	PLrRdv5odPqQbq5lCx6V1mqkWIjQCjRJvQAc3cTRWF8+emsPapzHlfR0wo1eGMi7hlgceG8QVNdv2
	7VhLPC8CGx+R/5H+YMCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyPso-0000000GBtF-31t0;
	Mon, 24 Aug 2026 08:18:18 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyPso-0000000GBt9-0Lxc
	for wireless-regdb@lists.infradead.org;
	Mon, 24 Aug 2026 08:18:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 72FBA43B7E
	for <wireless-regdb@lists.infradead.org>; Mon, 24 Aug 2026 08:18:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 578E21F000E9
	for <wireless-regdb@lists.infradead.org>; Mon, 24 Aug 2026 08:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787559497;
	bh=5LiJ6TZO52m4OOCLiCd71T+aefYjNDmhG2YJrXqJqxc=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=bexmzRqtF9JdHrYVsyp2yLgJhXylIfXLpXcS/tvkzZZ/HHNuqjnJqv0NRkPsXlK1p
	 p9h0CDYOyO3l0jF5s6s/arPLS4No2GOl1HwNZY5zQ2JRSQhGFa/9orzitZri9NewcD
	 FRjEN+YFrJIPmUx+9SNaRTyY7fETG6KPVlMEnMkOEASwbhFYlSFbt9C0HZqfDATDzz
	 j6w+0AE9BenW9gKp+U7vZWK8Dglmv8zHZlMnM6YfWa3Qu+1h7BPOZ0v/mix3R1l0KU
	 9vA66OuOHxNQ76wL/TJYGqXq35CBlmocgAdQ9xXHTbttsSTH09dR1e1IkmP0wDYD1r
	 p8WEzJcZczbjQ==
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-39f91ba1ef7so23159031fa.3
        for <wireless-regdb@lists.infradead.org>; Mon, 24 Aug 2026 01:18:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RrH+5gZnMISUf0uWA2g49C93mB+2XXhSmk6KQhnAXrjEFKC1OwxGIvRwaVUQquqGF1+c3Mm9FBH1dE8xfu3qQ==@lists.infradead.org
X-Gm-Message-State: AFuF++nkCI5wgwBAp2uNnj7ilWxBjWbLOUG1uqBBIdTm0ds0gCx9Kbpc
	/vrYhePnV89l3+XeyB/frKgxuyJo1oiIjXLUq1Y0s/Xe+zWNUh4hqD+hmUjwsjwHI86OOyxkC84
	MycuRliNlRGTaK5KvjOJXe6ocHmrVako=
X-Received: by 2002:a05:651c:41d3:b0:39b:695:32a3 with SMTP id
 38308e7fff4ca-3a1c1ea8683mr34487621fa.13.1787559495827; Mon, 24 Aug 2026
 01:18:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAJF5HCtEvb-aiusJuzmCvu-db4orDwsSnG+mOfCbLXXYRCbtvg@mail.gmail.com>
 <CAGb2v66bvMC9wU9gYknRdM+0oG7UcGquHCu5KYiwJjWZDRtk1g@mail.gmail.com>
 <CAJF5HCtAVMbarNYDkrKWE97Lib+YJk8ZE+5eWsEZ4fKVTp8tOw@mail.gmail.com>
 <CAGb2v66-ee1n9E2-GmFZu02HRmFFWPQ1KB-L9uPQcq1i5HSpEw@mail.gmail.com> <CAJF5HCsYhv-JTMvXRHLesuOFsVFnySqEKWYzK6_B-bWEoAEW0g@mail.gmail.com>
In-Reply-To: <CAJF5HCsYhv-JTMvXRHLesuOFsVFnySqEKWYzK6_B-bWEoAEW0g@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 24 Aug 2026 16:18:03 +0800
X-Gmail-Original-Message-ID: <CAGb2v65qs7NkSEL8Zg3x8a8aytV47uauNo6gj2XMi7_FfADz0Q@mail.gmail.com>
X-Gm-Features: AcwNN1XDB_opVvJUZeDD4_gg9MMwroqOpuME4HWa5-J3xyPciLYF7H2EolzrP88
Message-ID: <CAGb2v65qs7NkSEL8Zg3x8a8aytV47uauNo6gj2XMi7_FfADz0Q@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: update regulatory rules for Bangladesh (BD)
To: Ibrahim Hossain Abir <xbowpc@gmail.com>
Cc: linux-wireless@vger.kernel.org, sforshee@kernel.org, 
	wireless-regdb@lists.infradead.org
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

On Mon, Aug 24, 2026 at 4:16=E2=80=AFPM Ibrahim Hossain Abir <xbowpc@gmail.=
com> wrote:
>
> Hi ChenYu,
>
> Understood. I have reached out directly to the Spectrum Division of
> BTRC (sohel@btrc.gov.bd) requesting technical clarification on
> explicit EIRP limits and standards for 5925=E2=80=936425 MHz.

If possible, could you ask for status updates on the 5 GHz bands
as well? You intended to add them in your patch.

> I will update this thread as soon as I receive an official response from =
them.
>
> Thanks,
> Ibrahim Hossain Abir
>
>
> On Mon, Aug 24, 2026 at 1:39=E2=80=AFPM Chen-Yu Tsai <wens@kernel.org> wr=
ote:
> >
> > On Mon, Aug 24, 2026 at 3:23=E2=80=AFPM Ibrahim Hossain Abir <xbowpc@gm=
ail.com> wrote:
> > >
> > > Hi ChenYu,
> > >
> > > Thank you for the review.
> > >
> > > Regarding the reference:
> > > The official BTRC circular (dated Sept 15, 2024) specifically
> > > authorizes the 5925=E2=80=936425 MHz frequency range for Wi-Fi/WLAN/I=
oT shared
> > > usage in Bangladesh. However, this notice does not define explicit
> > > EIRP power limits, TPC, or DFS requirements.
> > >
> > > In the initial patch, standard conservative limits (such as 23 dBm fo=
r
> > > 6 GHz LPI) were derived from standard Wi-Fi 6E/7 spectrum norms.
> > >
> > > Could you advise on how wireless-regdb prefers to handle cases where
> > > the regulatory body approves the band without listing explicit EIRP
> > > limits in their notice? Would setting a conservative default (like 20
> > > dBm / 100 mW EIRP) for 5925=E2=80=936425 MHz be acceptable for Patch =
v2?
> >
> > As previously mentioned we cannot accept random limits without justific=
ation.
> > The regulatory body needs to specify limits, or outright state they def=
er
> > to some other standard.
> >
> > Please help reach out to the regulatory body for clarification. They sh=
ould
> > provide the information, otherwise folks doing the certification have n=
othing
> > to base it off of.
> >
> >
> > Thanks
> > ChenYu
> >
> > > Thanks,
> > > Ibrahim Hossain Abir
> > >
> > >
> > > On Mon, Aug 24, 2026 at 10:38=E2=80=AFAM Chen-Yu Tsai <wens@kernel.or=
g> wrote:
> > > >
> > > > On Mon, Aug 24, 2026 at 4:26=E2=80=AFAM Ibrahim Hossain Abir <xbowp=
c@gmail.com> wrote:
> > > > >
> > > > > wireless-regdb: update regulatory rules for Bangladesh (BD)
> > > > >
> > > > > Update regulatory rules for Bangladesh (BD) based on the official=
 BTRC
> > > > > (Bangladesh Telecommunication Regulatory Commission) directive da=
ted
> > > > > September 15, 2024.
> > > > >
> > > > > Enables U-NII-1/2A, U-NII-2C (DFS), U-NII-3/4, and lower 6 GHz (5=
925-6425 MHz).
> > > > >
> > > > > Official BTRC Notice:
> > > > > https://btrc.gov.bd/pages/notices/6922ee00dbfbab28ce0c438d
> > > >
> > > > This only says that the lower 6 GHz range is allowed. It does not s=
ay
> > > > what the power limits are, or if there are any other restrictions.
> > > >
> > > > > User Impact Reference:
> > > > > https://community.intel.com/t5/Wireless/6-GHz-Wi-Fi-6E-Not-Detect=
ed-on-Intel-AX211-in-Bangladesh/m-p/1740885
> > > > >
> > > > > Signed-off-by: Ibrahim Hossain Abir <xbowpc@gmail.com>
> > > > > ---
> > > > >  db.txt | 8 +++++---
> > > > >  1 file changed, 5 insertions(+), 3 deletions(-)
> > > > >
> > > > > diff --git a/db.txt b/db.txt
> > > > > index 0000000..1111111 100644
> > > > > --- a/db.txt
> > > > > +++ b/db.txt
> > > > > @@ -223,5 +223,7 @@ country BD: DFS-JP
> > > > >   (2402 - 2482 @ 40), (20)
> > > > > - (5735 - 5835 @ 80), (30)
> > > > > + (5150 - 5350 @ 80), (20), NO-OUTDOOR, AUTO-BW
> > > > > + (5470 - 5725 @ 160), (20), DFS, AUTO-BW
> > > > > + (5725 - 5850 @ 80), (30)
> > > > > + (5925 - 6425 @ 320), (23), NO-OUTDOOR
> > > >
> > > > A reference with the band and power limits, as well as any other
> > > > restrictions like DFS or TPC (andif TPC is required, what is the
> > > > limit if TPC is not implemented) needs to be provided. We cannot
> > > > put random numbers into the database without justification.
> > > >
> > > >
> > > > Thanks
> > > > ChenYu

