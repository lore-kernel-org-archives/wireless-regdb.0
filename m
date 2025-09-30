Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F7BECAC5B9
	for <wireless-regdb@archiver.kernel.org>; Tue, 30 Sep 2025 08:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6SlLvvJinaAuYlVS2t7jvPR1UWeQSmp1JYog8PUyqAk=; b=AGoWNoew6098+Ifc33CAeHSNXM
	eZccqfWKyHAb+gYCTJt8QadB6Ee5TMXG/eTE/M1aQV+5H5vThA52X14yfXVUnBvdFxPgXPRGUSwVs
	U+DaAV4ZRqa7xSCDDB/r7n4STilf+zC0vG3bQ5GXaMkLEF7twtCvQOIZkCFObi9ffoNhcQVTG1rng
	GT2noAMzMUNF+I6k5/aVng+cjFxeRMZ/UFJu/1zewvQQpRtimEfCuZ+LZ/kgPrJBH60ay5VrF0RQK
	6D7Igc1h2c6QuB7oQyqah/5Y3bYkSMOUpW+OSn57tqm5wN5nDbSeRb3kEUxMZ3+23jjEMO60sSR6I
	cEIP2VXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Vk6-00000004e6G-0A0k;
	Tue, 30 Sep 2025 08:29:50 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Vk3-00000004e5I-3p0z
	for wireless-regdb@lists.infradead.org;
	Tue, 30 Sep 2025 08:29:49 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-62ecd3c21d3so10287648a12.0
        for <wireless-regdb@lists.infradead.org>; Tue, 30 Sep 2025 01:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759220986; x=1759825786; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6SlLvvJinaAuYlVS2t7jvPR1UWeQSmp1JYog8PUyqAk=;
        b=QHZNTy7Pt2+HDdWZjBDpjLDfDH8+4r3IXvDqIs2MgspHxyHpqDH0V0H4vC1Z4vR06X
         HlazQdxHMhBOPh061nT+A30INc8uWVBO7cDxCFlesolhiEBsQc4xz8orF9ccj8pok47k
         pQ3qwR+4beX6pSDZMeNCI5EcNTydqBJWkbxz71gjH2EwzuCQ3gz6TJsa9rhwJWEKalBc
         VrRd/eumt98Z2zomEBeDANcoUYmvr1H9WLaYX79xSwAqeh3MNkzIJYjYkpi5Y+Zy0TsL
         j4T3TMufA4zXjSdDhTmizGXSd/De+D6I6hUuBM2ecLkPiML0TvXwXbJ2rXUm7oy2uRaQ
         xXsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759220986; x=1759825786;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6SlLvvJinaAuYlVS2t7jvPR1UWeQSmp1JYog8PUyqAk=;
        b=Ik+BEgLSUwT8lrPjzqC7TQ4ShxgXaLGQA03IxC24KBTdsAlhdBcyemEBplXNur4SWw
         g4mQBLtZ8gtJUS0c93dgVeC3YCCroAFxc0AGamnPqdyfqnjd9hGiYHgCfDFgDaPVZArc
         fW+y9aoVcsyt8GhOcBuQS7BZpvwos0Gmc3OPYOF+a4aLvOCu3dWHeLzl7dI37RMs1XKn
         UuvStY/yMh3oDu1kx/vD8ru1ORoIFupWTNSQlaEdeHEfGntaZppkyHBEgSTWOz/nOYAg
         4lpGIiVEj1IsG7l62eWyPpVDedbK7rG0+GdwQy0ZD/Ie9eikVQrE2JphmbPQaWqP0tp0
         +0+w==
X-Forwarded-Encrypted: i=1; AJvYcCUkUQSEZVnDUja11/Wlf2kpvAShX1s5Q9pQwiA+Zu0Y1N1MqtMe/c/nmA7gZVRRLXZOCQKMGVw2wS8UMzrZbA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxzyPR9ePor9FXRGZBgRMOAvgPft7xbzVk2vXEC6IEglK8i8e31
	+bV1yUpIB2+LYINUZ6+xu/TRxlMa6j6SkjYV6VWOthMxFlLo6veDmFT6ekktFnj9Ujw7q5MMNTU
	dDBk880DF+CKOPxFm7DQPjIwLEgxbGro=
X-Gm-Gg: ASbGncuGfjQTeyGm4oK6FD/Zk6yAI3mueDFHpSUe9PeLcIuoSjl1SCvPV+QSscptjXW
	i11aYGwvvCsXv/RQ0NxajLGlsZHRhoQlaekJLoOqx3bMS2jDPr5BwPtGyUZhCLK+xI8ou01XUI6
	FAkje9xrSK5gJkHuUwD0gnrjbBUHkgNMdk9w6AtkczKWMSLjq9t/Q7GgHVZuoH3xk/+qrbn1U=
X-Google-Smtp-Source: AGHT+IH5YekqQgFJjUFrO0jzbtWB4khK1HL08YXCjPWwgh1Ae++V5Ftuu/LEstsULtasxSzfjfU1Vvotict2ReA0BHg=
X-Received: by 2002:a05:6402:268f:b0:634:a85c:8c9c with SMTP id
 4fb4d7f45d1cf-634a85c8e1dmr16501864a12.12.1759220984180; Tue, 30 Sep 2025
 01:29:44 -0700 (PDT)
MIME-Version: 1.0
References: <20250930042948.427154-1-wens@kernel.org> <CAHrRpunr+hbWiO1jY=jGZOiqGWcXFGYBSJi17+r-AgOMwssaXg@mail.gmail.com>
 <CAGb2v65wSPCeW=qgrjX1cBUfbYj55U9HUOdPw3n0zHm0PJpNNA@mail.gmail.com> <CAHrRpum=kos=b+h=dPvQ2YaoXqPCEudjuU9-VNGQYRg928x=Ug@mail.gmail.com>
In-Reply-To: <CAHrRpum=kos=b+h=dPvQ2YaoXqPCEudjuU9-VNGQYRg928x=Ug@mail.gmail.com>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Tue, 30 Sep 2025 16:29:33 +0800
X-Gm-Features: AS18NWCvK9jeI-jDeBFE1mrfn99Y7wy_1Q3dZLIBSV48e5aWfewnb74h57EdySs
Message-ID: <CAHrRpumYJ8T4E1__Gmiq_W7BCjURp7N-4F=+O+LQA8UTcyc6gA@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Permit lower 6 GHz band for Kazakhstan (KZ)
To: wens@kernel.org
Cc: Ping-Ke Shih <pkshih@realtek.com>, Pavel Starosek <starosekpd@gmail.com>, 
	wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_012947_984021_B20DF48C 
X-CRM114-Status: GOOD (  28.97  )
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
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

Ping-Ke Shih <pkshih@gmail.com> wrote:
>
> Chen-Yu Tsai <wens@kernel.org> wrote:
> >
> > On Tue, Sep 30, 2025 at 3:25=E2=80=AFPM Ping-Ke Shih <pkshih@gmail.com>=
 wrote:
> > >
> > > Chen-Yu Tsai <wens@kernel.org> wrote:
> > > >
> > > > By Order of the Minister of Digital Development No. 564/NK dated
> > > > September 19, 2024 [1], an amendment was made to the assignment of
> > > > frequency bands, opening up the lower part of the 6 GHz band (5,945=
 MHz
> > > > to 6,425 MHz) was opened up to "SRD (wideband data transmission sys=
tems)
> > > > WAS/RLAN Data transmission systems/radio local area networks".
> > > >
> > > > The power is limited to 200 mW e.i.r.p. with a spectral density of =
10
> > > > mW/MHz. Only indoor use is permitted.
> > > >
> > > > While at it, also change the power limits to use mW units to match =
the
> > > > official documents.
> > > >
> > > > Initial information was provided by the Wi-Fi Alliance website, whi=
ch
> > > > has a map [2] showing all countries that have enabled 6 GHz WiFi, a=
nd
> > > > links to official documents. This document was not sufficient as it=
 did
> > > > not include power limits or other restrictions.
> > > >
> > > > A subsequent search found a blog post [3] providing details and tit=
les
> > > > of the official documents in English. An AI agent was used to searc=
h
> > > > for the original text of said order [1] after rummaging through
> > > > government websites in Russian and Kazakh failed to find anything.
> > > >
> > > > [1] https://adilet.zan.kz/rus/docs/V2400035100
> > > > [2] https://www.wi-fi.org/regulations-enabling-6-ghz-wi-fi
> > > > [3] https://www.onewindow.pro/blog-posts/6-ghz-band-regulation-in-t=
he-republic-of-kazakhstan
> > > >
> > > > Signed-off-by: Chen-Yu Tsai <wens@kernel.org>
> > > > ---
> > > > If you received this patch, please help review it. The changes are
> > > > based on translations of the original text / tables, so a second se=
t
> > > > of eyes would be appreciated.
> > > >
> > > >  db.txt | 9 +++++----
> > > >  1 file changed, 5 insertions(+), 4 deletions(-)
> > > >
> > > > diff --git a/db.txt b/db.txt
> > > > index 6e1ad30..16bcb32 100644
> > > > --- a/db.txt
> > > > +++ b/db.txt
> > > > @@ -1136,11 +1136,12 @@ country KY: DFS-FCC
> > > >  # http://adilet.zan.kz/rus/docs/V1500010730
> > > >  # http://adilet.zan.kz/rus/docs/V1500010375
> > > >  country KZ: DFS-ETSI
> > > > -       (2400 - 2483.5 @ 40), (20)
> > > > -       (5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
> > > > +       (2400 - 2483.5 @ 40), (100 mW)
> > > > +       (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> > > >         (5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
> > >
> > > The power limit of 5150-5350 MHz is 200 mW, maximum spectral density
> > > e.i.r.p. 10 mW/MHz.
> > >
> > > So, 5250 - 5350 should be 23 dBm or 200 mW.
> >
> > I had this question as well. Looking at the original submission history=
,
> > it seems that the limit for 5250-5350 MHz was halved to cover TPC
> > requirements. See [1]. I'd like to follow the existing values unless
> > someone can point to documents stating otherwise.
>
> Thanks for the info. Would you like to add the reference to commit messag=
e?
> Anyway, it is fine to me.
>
> Reviewed-by: Ping-Ke Shih <pkshih@gmail.com>

Ah. Sorry. Please apply my company e-mail.

Reviewed-by: Ping-Ke Shih <pkshih@realtek.com>

>
> >
> > Thanks
> > ChenYu
> >
> > [1] https://lore.kernel.org/wireless-regdb/20191029144815.GR30813@ubunt=
u-xps13/
> >
> > > > -       (5470 - 5725 @ 160), (20), NO-OUTDOOR, DFS
> > > > -       (5725 - 5850 @ 80), (20), NO-OUTDOOR
> > > > +       (5470 - 5725 @ 160), (100 mW), NO-OUTDOOR, DFS
> > > > +       (5725 - 5850 @ 80), (100 mW), NO-OUTDOOR
> > > > +       (5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
> > > >         (57000 - 66000 @ 2160), (40)
> > > >
> > > >  country LB: DFS-FCC
> > > > --
> > > > 2.47.3
> > > >
> > > >

