Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFBDFC83030
	for <wireless-regdb@archiver.kernel.org>; Mon,  7 Jul 2025 04:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFz3xGowQbYgyfSIvMk3bP5wo0yX9SV79GsVBd0LaFY=; b=exiWfnDDxUwjqS
	ra62EGiESjNvfte6qiiFeypC/xsqg+6hKkPjVawzGEA71XzxDLCKB3ri57Abwjvi3hHQJpmA7v/K9
	VYNI6OmkEfInmi32/VnGkr4x/jhcDhBWcT+3UgWs3LuqAhUKJzsoAO4FViYtdGUybtzMFW2FhTHta
	+8rlfoiPrcEnDAbhGctOoNJQQjsS+zgIqpz44WY/rhfw9hNzF50UoL16Av0umLv/Ak5vzHJ2D9ilt
	kzbe3O1Jl25EVlL7pWsw0Jjo092gnGbZnV7YXSaxiiroGbPEo15PJzjjpMkzTqwehzeYjDbNhZvMX
	z5T21/usviHWM5oO9n8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYdN7-00000001NE4-2FUw;
	Mon, 07 Jul 2025 04:22:29 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYdN5-00000001NDs-3tnk
	for wireless-regdb@lists.infradead.org;
	Mon, 07 Jul 2025 04:22:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A322D6112D
	for <wireless-regdb@lists.infradead.org>; Mon,  7 Jul 2025 04:22:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5883DC4CEE3
	for <wireless-regdb@lists.infradead.org>; Mon,  7 Jul 2025 04:22:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751862146;
	bh=5+93ssUC6VKJl35DtySJ/SkhoGSoUVTaXmFY1tVnaDo=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=LZmKJXcKC/72Zmvfoba8Slk6fyThp9QFFUAgG+hnegyPGKqZTZVkoGzJmLJueq295
	 0PIpBZs2aMHiy7huk2IAhl7wHELPKmkHbHkY+DmLo/y4mvv8n+myXzQw0KQQAIJe4K
	 z/MBRSAvxFbRZ8/IBW64xj9aWPTczI/hc5uf3qO4ZaA6RhmPrGo9V5+YVfIGWABxgP
	 c1OfYrCaJ6ptXwT/8OEal6X/SQM3lFpVw1GjAZyAa+wPxKpaw8Wy60wC1UuWZLtVve
	 hy2dOMHdWrBOhntsf4jnFYfyiKh0DjLM7o1bohBuBYBFI02y6DwMoJMygHDpmp9je8
	 8I/9LHHb58NJg==
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-32f2947ab0cso5001001fa.2
        for <wireless-regdb@lists.infradead.org>; Sun, 06 Jul 2025 21:22:26 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW8Qce9tmEyTQ/d1EZQquNFR9czyrYyjPCzk6TqO4s55yxrZ24JZgUKgezJ9vhsSvIoX2EcSMBA6QHADLTWxA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwbFpxqtN6gojAXMLzvDsdenHcW96BKzR4EtzMFYYxtpTpwoTCp
	xkCkqFYelwZ28A6cH2lwU/jy1DqHZzteHSiQJwiztIBQzUVecfhgv9Qlu2ahYbfoNoXPfUADJyo
	wX6MNtXhm3BpOqGTrgyMt5H8rYb77BTM=
X-Google-Smtp-Source: AGHT+IEzY/XDR/2Pipln24Dnn+raZilYwmg6/6daROMXtMIAVacErtwSQuUikWganuovogXTZII8E6s2ySZqZO8Aiyw=
X-Received: by 2002:a05:651c:10a1:b0:32b:387b:de0e with SMTP id
 38308e7fff4ca-32e5f568d0fmr26839451fa.7.1751862144666; Sun, 06 Jul 2025
 21:22:24 -0700 (PDT)
MIME-Version: 1.0
References: <20250707024615.38507-1-pkshih@gmail.com> <CAGb2v64uB7-4yNCxQiU0bXEk0Px=vF+Oh5+fYevzdPUhcsXLWg@mail.gmail.com>
 <CAHrRpum2QD9GnHiWz3Exf140g-Y9p86Q7HD_Awg-wiWON3LEjQ@mail.gmail.com>
In-Reply-To: <CAHrRpum2QD9GnHiWz3Exf140g-Y9p86Q7HD_Awg-wiWON3LEjQ@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 7 Jul 2025 12:22:10 +0800
X-Gmail-Original-Message-ID: <CAGb2v65HLghihGpHebiYcqaaLoetY__0j5wSOdgXpQVDHaUi2w@mail.gmail.com>
X-Gm-Features: Ac12FXxGDPVMCv0GcvdaiAj3bzKMR1NneFpe_l9Zs9Zpi2XjaGAvLWECyYI38aE
Message-ID: <CAGb2v65HLghihGpHebiYcqaaLoetY__0j5wSOdgXpQVDHaUi2w@mail.gmail.com>
Subject: Re: [PATCH 1/3] wireless-regdb: Update regulatory info for CEPT
 countries for 6GHz listed by WiFi Alliance
To: Ping-Ke Shih <pkshih@gmail.com>
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

On Mon, Jul 7, 2025 at 12:15=E2=80=AFPM Ping-Ke Shih <pkshih@gmail.com> wro=
te:
>
> Chen-Yu Tsai <wens@kernel.org> wrote=EF=BC=9A
> >
> > On Mon, Jul 7, 2025 at 10:46=E2=80=AFAM Ping-Ke Shih <pkshih@gmail.com>=
 wrote:
> > >
> > > From: Ping-Ke Shih <pkshih@realtek.com>
> > >
> > > The regulations enabling 6GHz WiFi [1] of WiFi Alliance lists CEPT
> > > countries including
> > >  - Albania (AL)
> > >  - Andorra (AD)
> > >  - Austria (AT)
> > >  - Belarus (BY)
> > >  - Belgium (BE)
> > >  - Georgia (GE)
> > >  - Iceland (IS)
> > >  - Liechtenstein (LI)
> > >  - Macedonia, The Former Yugoslav Republic of (MK)
> > >  - Moldova, Republic of (MD)
> > >  - Monaco (MC)
> > >  - Montenegro (ME)
> > >  - Norway (NO)
> > >  - Russian Federation (RU)
> > >  - Switzerland (CH)
> > >  - T=C3=BCrky (TR)
> > >  - Ukraine (UA)
> >
> > This is slightly confusing because the CEPT document lists 46 countries=
.
>
> As the (force/preferred) date mentioned in ECC/DEC/(20)01, I think
> CEPT countries should
> implement  6 GHz regulation, but to be conservative, I only add
> countries listed in
> Wi-Fi Alliance.

I see.

> >
> > > Add 6 GHz frequency entry if not being added yet.
> >
> > Please add the links to [2][3] to all of them. And could you also add
> > the link to the other countries that already have a 6 GHz entry? Just
> > so we know that they are harmonized.
>
> Did you want me filling all CEPT countries with 6 GHz entry or only
> listed countries in this commit message?
> I'd prefer latter one. Please let me know your thinking. Thank you.

Only listed ones then. However, if you do notice any of the other CEPT
countries already have 6 GHz enabled, please add it as well.

ChenYu


> >
> > > But being pending to add rules to below entires because countries are=
 not
> >                                           ^ entries
> > > existing yet:
> >
> > As in, no entry in the database exists?
> >
> > Probably rewrite this as:
> >
> > The following are skipped as they do not have corresponding entries in
> > the database yet. Adding an entry just for 6 GHz would cause 2.4 GHz an=
d
> > 5 GHz bands from the world domain to stop working.
>
> Thanks for the advice.

