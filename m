Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6474CCF9F8
	for <wireless-regdb@archiver.kernel.org>; Mon,  3 Nov 2025 15:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y0ZvHAbHF8gRr0yDFqLOpZ90I89Y2FdWC71WcIzW47g=; b=Lzhu6DGy1EhH8B
	VfpS7w21EP77ejCDeK21NAZ2jVyjhh/FgeDuDXl3lNi+H56kJOq9lOp1Te8uGf2hH0rFJUe1SXWwg
	zSPYAk6c+JKFiLfUMSRx6sN3Hag3X1pt409VWL+/LGXeuV2DokMEqRawhEaRohRR6vntAZFW8OV5N
	GXmuq0GPKluRN3W/dQiROv0Xrx3gRlTBFZwcwFFWg/272y4B014oGxDwdFoc5CbpbWjeUSTlF2JP6
	Qp0XOFduL6vOLzp6Q6VuY0GTj3gICPYRil5Lj2ahEFc4/GTyFfMwOslWc66EOYH6A4FnUsAOkDkHH
	rfQcylAVXnVBWkeat3QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFwMA-0000000A84a-3kBX;
	Mon, 03 Nov 2025 15:20:30 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFwM8-0000000A83t-0ZRL
	for wireless-regdb@lists.infradead.org;
	Mon, 03 Nov 2025 15:20:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 55BD4439EA
	for <wireless-regdb@lists.infradead.org>; Mon,  3 Nov 2025 15:20:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36DA6C116C6
	for <wireless-regdb@lists.infradead.org>; Mon,  3 Nov 2025 15:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762183227;
	bh=z06Fe1dDgZ79bzqqI4jcMbkz4cfWhPYgAA7c+FRNAUE=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=hcA9Phwe7xlLSA3Ug3ru8+tFMysHQUkPrBzFObU7EovXDDkE3wJfEoFoLoTiCj+2V
	 rEF2h2mQhMEMiItGAhSlSi0jKhTopPpKFFRcynGs2XuACVrl7Rkb+YlW9I2xX1p9Hh
	 mv2Ui4bOBdvscsWGJE3b3Hfpd+Wq7EBa2v2XWz/LT6aO7NndnrGOen8nFiWmzY1qIU
	 CA9L+Y6Lq2/kSIm0eKeZMrizJx1odgwAjoy47NjjPvkPlV2n+C78YFFKAaghcW9VOO
	 fQV+W+2wQ7B/L0e76EIMj6O20qCuam8eiGC9Qs2BGXgyGNORREDfaZ6BCgze/UBALL
	 hWJAJbqEPajEA==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-3652d7800a8so33939781fa.0
        for <wireless-regdb@lists.infradead.org>; Mon, 03 Nov 2025 07:20:27 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWZXvpSm0N1Ld3MTWnibZdSyl42vEAtqTDqssubLc4kBfWlvagblZiHWANsykCCEeS+mfna5e+vorFYw6ffmg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxNCjNyBnwGiLz7XFD0zTB2dHsRtUk1cSpKCXRq4MrY1TLB5o7W
	OAWfnQg/wiH2z9bOKzEZ59WeOpW1+GCqJC7T4Nlq2jTjt67MyADBhpYeU3JpmogjIm6ys10cQzQ
	2YNCptPuhd8+7q/FNcIIGMKeuEaWnVbY=
X-Google-Smtp-Source: AGHT+IGrKRKQ1z2u/DzDWGtq6JFAin7JWjUb8jT5U3Z8Op0kyN+UW2XIfIl1DsnrvHv07jhv/yxPUphx2GdIzPgpTbU=
X-Received: by 2002:a2e:b88b:0:b0:37a:2d23:9e89 with SMTP id
 38308e7fff4ca-37a2d23a783mr19888061fa.49.1762183225585; Mon, 03 Nov 2025
 07:20:25 -0800 (PST)
MIME-Version: 1.0
References: <20251029012429.68658-1-me@ndoo.sg> <CAGb2v64omSs0uVL00n7vGRF_-=qb8xLCjdnyWRq_Caukf2ntXA@mail.gmail.com>
 <CA+yTfBB57CA5c=bKdOjPWYR7F9Nq38Bao3+Q3LKYjOYJJ8WfxQ@mail.gmail.com>
In-Reply-To: <CA+yTfBB57CA5c=bKdOjPWYR7F9Nq38Bao3+Q3LKYjOYJJ8WfxQ@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 3 Nov 2025 23:20:11 +0800
X-Gmail-Original-Message-ID: <CAGb2v66TY3Xq_Znsv-SO5czROvw6T1f_eU8W8YYU_QVziaQA6g@mail.gmail.com>
X-Gm-Features: AWmQ_bkeWtoIf-I8ZkPLazC07RjnzwEm9ZoZ_DuM1pmsJIOCAyuYaU-YuLMUheo
Message-ID: <CAGb2v66TY3Xq_Znsv-SO5czROvw6T1f_eU8W8YYU_QVziaQA6g@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Malaysia (MY)
 for 2025
To: Andrew Yong <me@ndoo.sg>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_072028_213082_A34B4524 
X-CRM114-Status: GOOD (  21.42  )
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

It's fine. I just didn't want to force push unless absolutely necessary.


ChenYu

On Wed, Oct 29, 2025 at 6:47=E2=80=AFPM Andrew Yong <me@ndoo.sg> wrote:
>
> Good day ChenYu,
>
> Indeed, the commit message is also largely the same, there was
> actually no differences relating to Wi-Fi class assignments, just some
> moving around of the table rows because of changes to other unrelated
> class assignments.
>
> I just wanted to at least get the reference updated so that the next
> person who comes along doesn't have to check against issue 2 of 2025.
>
> I should have mentioned that on the new patch thread to save you the
> extra comparison, sorry!
>
> Andrew
>
> On Wed, Oct 29, 2025 at 2:22=E2=80=AFPM Chen-Yu Tsai <wens@kernel.org> wr=
ote:
> >
> > On Wed, Oct 29, 2025 at 9:24=E2=80=AFAM Andrew Yong <me@ndoo.sg> wrote:
> > >
> > > Malaysia Communications and Multimedia Commission announced CLASS ASS=
IGNMENT NO. 2 OF 2025[1].
> > >
> > > With reference to class assignments on pages 9 and 10, and Power Spec=
tral Density (PSD) limits on page 20, update the following rules:
> > >
> > > 2400-2500 MHz: Align previous 2402-2482 MHz rule to class assignment
> > > 5150-5250 MHz:
> > >   1. Align previous 5170-5250 MHz rule to class assignment
> > >   2. Mark as NO-OUTDOOR
> > > 5250-5350 MHz:
> > >   1. Align previous 5250-5330 MHz rule to class assignment
> > >   2. Limit EIRP from 1 W to 200 mW due to PSD limit of 10 mW/MHz, cal=
culated at 20 MHz channel width
> > >   3. Mark as NO-OUTDOOR
> > > 5470-5650 MHz:
> > >   1. Align previous 5490-5650 MHz rule to class assignment
> > >   2. Limit EIRP from 1 W to 200 mW due to PSD limit of 10 mW/MHz, cal=
culated at 20 MHz channel width
> > > 5725-5875 MHz: Align previous 5735-5835 MHz rule to class assignment
> > > 5925-6425 MHz: Increase EIRP from 200 mW to 250 mW (remains within PS=
D limit of 12.5 mW/MHz)
> > >
> > > [1] https://www.mcmc.gov.my/skmmgovmy/media/General/pdf2/Class-Assign=
ment-No-2-of-2025.pdf
> > >
> > > Signed-off-by: Andrew Yong <me@ndoo.sg>
> >
> > I applied it on top of your previous patch. Conflict resolution shrunk
> > the patch down to just the URL change.
> >
> > ChenYu
> >
> > > ---
> > >  db.txt | 16 +++++++++-------
> > >  1 file changed, 9 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/db.txt b/db.txt
> > > index 1d17271..dc72989 100644
> > > --- a/db.txt
> > > +++ b/db.txt
> > > @@ -1450,14 +1450,16 @@ country MX: DFS-FCC
> > >         (5925 - 6425 @ 320), (12), NO-OUTDOOR
> > >
> > >  # Source:
> > > -# https://www.mcmc.gov.my/skmmgovmy/media/General/CA-No-1-of-2022_-s=
igned_19012022.pdf
> > > +# https://www.mcmc.gov.my/skmmgovmy/media/General/pdf2/Class-Assignm=
ent-No-2-of-2025.pdf
> > >  country MY: DFS-FCC
> > > -       (2402 - 2482 @ 40), (500 mW)
> > > -       (5170 - 5250 @ 80), (1000 mW), AUTO-BW
> > > -       (5250 - 5330 @ 80), (1000 mW), DFS, AUTO-BW
> > > -       (5490 - 5650 @ 160), (1000 mW), DFS
> > > -       (5735 - 5835 @ 80), (1000 mW)
> > > -       (5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
> > > +       (2400 - 2500 @ 40), (500 mW)
> > > +       (5150 - 5250 @ 80), (1000 mW), AUTO-BW, NO-OUTDOOR
> > > +       # 5250 - 5350 MHz regulatory limit is 1000 mW, but 200 mW rea=
ches the PSD limit of 10 mW / MHz at 20 MHz channel width
> > > +       (5250 - 5350 @ 80), (200 mW), DFS, AUTO-BW, NO-OUTDOOR
> > > +       # 5470 - 5650 MHz regulatory limit is 1000 mW, but 200 mW rea=
ches the PSD limit of 10 mW / MHz at 20 MHz channel width
> > > +       (5470 - 5650 @ 160), (200 mW), DFS
> > > +       (5725 - 5875 @ 80), (1000 mW)
> > > +       (5925 - 6425 @ 320), (250 mW), NO-OUTDOOR
> > >
> > >  # Source:
> > >  # https://www.cran.na/yglilidy/2023/04/GG-8060-dated-3-April-2023.pd=
f
> > > --
> > > 2.50.1 (Apple Git-155)
> > >
> > >

