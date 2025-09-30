Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69B7DCAC5B9
	for <wireless-regdb@archiver.kernel.org>; Tue, 30 Sep 2025 08:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QRv19+Xl2y1o5obBWMetl9b/B+Jrz8MKskfsOm2xojI=; b=DWV3VAf5R16C97
	PjvJhYpixbYraz5GhkMPKCIvk8Mg0EKSXwN/IqTbeNPJ7FTVIpjDMqUmWSKqYCviKJslp2MbA1ngo
	fudNTVfolGi13IyGNKLGjl5LYUwCF8jsi5aZ15l2D3QPEVHTx1TvxXO4SZpwq0AYNXnTn6n4/5F0W
	YRIswCctge91/pDVA25d60cHIeY8aF+nQdajgCFHhosX+t8H4LckULRNANSNP42dk5tSXVEjG6VA+
	lbY6NonXcdkDe9xGdn1SHTedsy/Fg/1dihMzyjlA3JBRhIYcRwWKQ3MhM4HOpg5PGh/1MuPBF8vZu
	40nrFHEJAA54fQegQJrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3VYp-00000004byE-2s92;
	Tue, 30 Sep 2025 08:18:11 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3VYn-00000004bxp-3SXQ
	for wireless-regdb@lists.infradead.org;
	Tue, 30 Sep 2025 08:18:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 3DBF660404
	for <wireless-regdb@lists.infradead.org>; Tue, 30 Sep 2025 08:18:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8BAFC113D0
	for <wireless-regdb@lists.infradead.org>; Tue, 30 Sep 2025 08:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759220288;
	bh=sro3kF+GZN6CtuGOXqjDppP9TCw0ZwvpxxnzMN83Bg4=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=ED9SV4oO6EramEUqhtE0ohsENuZPsREs9LV76TWL24t8c9kBq8pE+CTIqt7ZtnQ9T
	 /o+BeFVNLDK8S6+nynSmpPZTj3ISADvwqzDaEMVppbylJpcmju77mDeJgM7fpTMlTZ
	 owyb1jMBm/qg/G3vHkl/b82S5dmCx/z051x4t+NkDZEMs9Wl4hmk02+J+jDOr+5fdZ
	 ThsfWIH4vxcOa/OvY2rGOe/IzKBRxyr1t7QQE/n2aFrlR2x/oa0ZEW7MK/swLX6u3Z
	 Rs249JqKSls/sofrCxno6+VLFkyBAb369CSAe0skwRrNhpdjXNSa+8/En9quBWd43D
	 WNuqI3pC0rlPw==
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-362e291924aso47714381fa.1
        for <wireless-regdb@lists.infradead.org>; Tue, 30 Sep 2025 01:18:08 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUanK7ZP52RVkbVDhkCgHDAhF7PcLI+ijEMnbUOqDOxZJsAjx4z8RafkoF5S3iSL5ZObu2cn+rf/eJG1m0miA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzTZUstsnqUA/4nj/VtDNZSu2zwoPUdTutGCJbfx8B2bbFi8tFo
	euz54M3A8LlMzxgUnqKvpz90ULNa1gIIKJWrrBH2t6nV8kmRBzSTpLrrqwBtWikaJXBeUWL8JdX
	QZNw7OxvMWn37Mq30JDziEuqTALrpvUs=
X-Google-Smtp-Source: AGHT+IFLMGL/k7x2u5Jd3xHIUsPZdLkAQWtCh8aVbbq69AEUs407rWWCopb1AhtOQ1i8kB50jgf9DZRkmEOEQBIt4nI=
X-Received: by 2002:a2e:b8d1:0:b0:36b:b0eb:9d64 with SMTP id
 38308e7fff4ca-36f7ee605famr46461161fa.30.1759220287259; Tue, 30 Sep 2025
 01:18:07 -0700 (PDT)
MIME-Version: 1.0
References: <20250930042948.427154-1-wens@kernel.org> <CAHrRpunr+hbWiO1jY=jGZOiqGWcXFGYBSJi17+r-AgOMwssaXg@mail.gmail.com>
In-Reply-To: <CAHrRpunr+hbWiO1jY=jGZOiqGWcXFGYBSJi17+r-AgOMwssaXg@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 30 Sep 2025 16:17:54 +0800
X-Gmail-Original-Message-ID: <CAGb2v65wSPCeW=qgrjX1cBUfbYj55U9HUOdPw3n0zHm0PJpNNA@mail.gmail.com>
X-Gm-Features: AS18NWBIy9S10wBIP1mf2VN3iJtHtPEptndTSbTJR0hMjKM-e18Fg3ifdQ6eP3E
Message-ID: <CAGb2v65wSPCeW=qgrjX1cBUfbYj55U9HUOdPw3n0zHm0PJpNNA@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Permit lower 6 GHz band for Kazakhstan (KZ)
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: Ping-Ke Shih <pkshih@realtek.com>, Pavel Starosek <starosekpd@gmail.com>, 
	wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
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

On Tue, Sep 30, 2025 at 3:25=E2=80=AFPM Ping-Ke Shih <pkshih@gmail.com> wro=
te:
>
> Chen-Yu Tsai <wens@kernel.org> wrote:
> >
> > By Order of the Minister of Digital Development No. 564/NK dated
> > September 19, 2024 [1], an amendment was made to the assignment of
> > frequency bands, opening up the lower part of the 6 GHz band (5,945 MHz
> > to 6,425 MHz) was opened up to "SRD (wideband data transmission systems=
)
> > WAS/RLAN Data transmission systems/radio local area networks".
> >
> > The power is limited to 200 mW e.i.r.p. with a spectral density of 10
> > mW/MHz. Only indoor use is permitted.
> >
> > While at it, also change the power limits to use mW units to match the
> > official documents.
> >
> > Initial information was provided by the Wi-Fi Alliance website, which
> > has a map [2] showing all countries that have enabled 6 GHz WiFi, and
> > links to official documents. This document was not sufficient as it did
> > not include power limits or other restrictions.
> >
> > A subsequent search found a blog post [3] providing details and titles
> > of the official documents in English. An AI agent was used to search
> > for the original text of said order [1] after rummaging through
> > government websites in Russian and Kazakh failed to find anything.
> >
> > [1] https://adilet.zan.kz/rus/docs/V2400035100
> > [2] https://www.wi-fi.org/regulations-enabling-6-ghz-wi-fi
> > [3] https://www.onewindow.pro/blog-posts/6-ghz-band-regulation-in-the-r=
epublic-of-kazakhstan
> >
> > Signed-off-by: Chen-Yu Tsai <wens@kernel.org>
> > ---
> > If you received this patch, please help review it. The changes are
> > based on translations of the original text / tables, so a second set
> > of eyes would be appreciated.
> >
> >  db.txt | 9 +++++----
> >  1 file changed, 5 insertions(+), 4 deletions(-)
> >
> > diff --git a/db.txt b/db.txt
> > index 6e1ad30..16bcb32 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -1136,11 +1136,12 @@ country KY: DFS-FCC
> >  # http://adilet.zan.kz/rus/docs/V1500010730
> >  # http://adilet.zan.kz/rus/docs/V1500010375
> >  country KZ: DFS-ETSI
> > -       (2400 - 2483.5 @ 40), (20)
> > -       (5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
> > +       (2400 - 2483.5 @ 40), (100 mW)
> > +       (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> >         (5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
>
> The power limit of 5150-5350 MHz is 200 mW, maximum spectral density
> e.i.r.p. 10 mW/MHz.
>
> So, 5250 - 5350 should be 23 dBm or 200 mW.

I had this question as well. Looking at the original submission history,
it seems that the limit for 5250-5350 MHz was halved to cover TPC
requirements. See [1]. I'd like to follow the existing values unless
someone can point to documents stating otherwise.

Thanks
ChenYu

[1] https://lore.kernel.org/wireless-regdb/20191029144815.GR30813@ubuntu-xp=
s13/

> > -       (5470 - 5725 @ 160), (20), NO-OUTDOOR, DFS
> > -       (5725 - 5850 @ 80), (20), NO-OUTDOOR
> > +       (5470 - 5725 @ 160), (100 mW), NO-OUTDOOR, DFS
> > +       (5725 - 5850 @ 80), (100 mW), NO-OUTDOOR
> > +       (5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
> >         (57000 - 66000 @ 2160), (40)
> >
> >  country LB: DFS-FCC
> > --
> > 2.47.3
> >
> >

