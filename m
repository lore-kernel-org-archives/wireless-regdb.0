Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 694091088E64
	for <wireless-regdb@archiver.kernel.org>; Thu, 19 Mar 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ywOJcWTqxF6hWy/WoRxYC1tt5klL89T7P0xRBUxLoiQ=; b=OaM0rMY8l7XXNUkX0flYTKyVYK
	4z9JXgw4R7LRnmsui9+3Tj+JW7Ly2E2V+y+lC2Q5EQQ8bES16PDBAJItqW2i6IB84cRHKWfIMU0n+
	ToQZFLFzyGlPAlMx1l/xCI5IOLX1urqgvu2WomjWq2dbj9MyjuS8uDpjDGZM+oZ65X+1oERAj4Iak
	fA4/dtWLY57XpuEF3QkTsMJbSlwRO1NP0DbrzGmP1mpbDV3yo742XAxV345YbtYvp/dd5HKdX9Ucq
	1z67eowVR84tjZog6hYVj4jKDwXfk0m1QdtN6TJLKUwIX4QczijeO0lDtZJgeEz88/hk1Fe5xg4yC
	UjUEjM2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w33Cn-00000009lJi-2oxh;
	Thu, 19 Mar 2026 02:33:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w33Cl-00000009lJX-3d4Y
	for wireless-regdb@bombadil.infradead.org;
	Thu, 19 Mar 2026 02:33:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=ywOJcWTqxF6hWy/WoRxYC1tt5klL89T7P0xRBUxLoiQ=; b=m3kvZkAUdF6KnfQ67TwT1gsRNM
	3CnR4hy/QyyKHPEyQRgeatKhNr478+VqOEfVjzqGvhe7hk2SaDFc2raFhREwMMRI8C6VuW1gu7bQI
	cfbhyi01NSpSpua0tT/RcitDKlfDlNJjMMkQFQjUhj6N1fBVK5beeQmS9KvTNoyeEu/QYgWM9wUMc
	j6sZuosikoqvxNheFZv82L/p73F5aquGf1inWZe4c1SoOcjs/esQc5fbhzrKFVqAgt+CxUUXvAfsc
	lqwPyI/QRzZ3ql9cNsP5Fshty/Y5Fmf9YSxhZUhc05Zer7ICvE+PL8nfOPgb4Z7Q12l2fZh7EBeCb
	qlzfacRA==;
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w33Cd-0000000Ca0k-3XEu
	for wireless-regdb@lists.infradead.org;
	Thu, 19 Mar 2026 02:33:43 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-b976e181895so78306766b.1
        for <wireless-regdb@lists.infradead.org>; Wed, 18 Mar 2026 19:33:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773887615; cv=none;
        d=google.com; s=arc-20240605;
        b=E1mXO6XLqcpY7aVQtYCe88xUPgfqkWZCRCwabBHs/IV1qLnRZAbu0iwWdcVBVk4F3p
         n+V8erYlPYz1SDT1s9z9eujTQ3uf3KvWmp+F/WgHsguvFCVGfzDW9PeVIn0Gc0hsnL4l
         GS7XEHjCwBrYnGzZ5MuNOhtYBV3pqelerWBONsQk104kEVGGKzStgw8Z50j7RvoqD4Ji
         8IzQ8WVzu2dr2g8Hco25CJh0T4p6sOreYhRrIZ7idBEyfG54mNkYwJyajmGk7/OwefAq
         LGfcNGo8USiL3OlrX4Fdx+4+XQ7Zc7vxRkvr0OgLYUOXTJeVyXbQdR/BxUXAeC1tsykk
         Mzuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ywOJcWTqxF6hWy/WoRxYC1tt5klL89T7P0xRBUxLoiQ=;
        fh=K3eWxDeQoh2+qfjf5JfXXBtPzzIM0g0xLmBzspcDsGc=;
        b=YdOtB7vDh+2zEgxSBhrNTy/OTGQbfF8yOLUkXHaL++Ep9uWSprBDDUqmuDRCyVZhX8
         sUfLHPGAyA1tgaZGWwAf2eKfabYO6et5LV5A6Xosn50N69l2C0IkTZ7EiUNZ2JlBD1Gt
         ZVfhFhHR7VrZvaKRagMXZKNBIK1NPG4yvk6Wvu2WZYmX6Fb0rSazxSIVH4ID/ZwWlPeL
         pe6kUMivVMwj6TJoX950ilOv7IHDJRhA2LUYwrpFHvpoVfwX/PTbpgHlTeLuzVyd24Kp
         nwCaJ9E6eoO7IWVsUFdUh7LVotbfqnpdQ4DX5HXoWg4tUFtiTBKiul8akoL686ZncPqy
         3Mfg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773887615; x=1774492415; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ywOJcWTqxF6hWy/WoRxYC1tt5klL89T7P0xRBUxLoiQ=;
        b=Bs0WPpY3FAN3jc4D6kL/FQFvQlmSjsEq6bBexmBXJd3jdIyVeZ0v8yj0RPaL27qyl0
         NjeWVDo3V5JyeqQLXyoNzWimSlpejKjItIBEcaFH6ZeWSBN3LN2Nrwwt0wpIa26cvHtJ
         sUSDZZgoT/99UL0CpCxiYWFUtCDtPjRAm/K1hCp7MxbJshB1cbSuCRUrr1KQViJOzgDt
         zRKWGGa+oqN1vHQ5DdM5U9oWJYUNe5huLxtsVQfZEfkirqLrWvTkMrhjk1qTqshxfHJb
         vYrMihtvFSnMOlcaLbxWqC6/QIuVZLGusOG6jB3qLSJFz3hizzt/HDR0ZNfYqMfKIwmM
         EyCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773887615; x=1774492415;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ywOJcWTqxF6hWy/WoRxYC1tt5klL89T7P0xRBUxLoiQ=;
        b=ZRbAK6cJdHYdU7Pv8LIBubgCxbhienFt1q+UZnCNnrZy/B3vwRXCrnRhMiLJHqz1aH
         aoCNu+7nCRCIj89PFI9M+7RqIxfuspXMUwd5M1WTOGvCaCYvunVH+6hfXA/Lw6uB3BWb
         WnTntWQyzZ+l/+NSjnWFQOydn2i+P7N9LnDV9HBFQRPIzOZItP+YjXZgcXalImQuRooX
         Fdf/LFgwfx0nHzLl77CoJgfPH2MUgSVnEyqNVAuQx37ilZymggsQCEMzzBeB53yUbwGA
         qX95hVzrPpaW6lXzAsiopYSfbiLrvk/vrSBUd5AkpqRM9VxhhHz3QTL26nuWGkyH50H/
         5Jzw==
X-Forwarded-Encrypted: i=1; AJvYcCVktOmYn+nCvzsa1Rt5XjQLXPGnfJ16l4mr+tBY3+3tfBoan1waRuM4Yax0pQepBJe8eOhBLorNCO5iazFRGg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzHy3ALQfBFJt3VqXFG/wYxBBcf3nqNpsJIosQVXkcaTELn8hb+
	cmTGHP8ttxgHsLNNRBknEo0tzNWNuKlLgnuUoQykMTCPziYEZ7ifxEKlLY3tHw+cpsG8auZ0qot
	JUHUhrNpodvd7CdMOD34PIA/qDOGUeKQ=
X-Gm-Gg: ATEYQzxVYWfV1U+vkszF8Uh13mf6mP/XQWuckWEma9xPQJpXk339uRH2SxMz/ZUYOH9
	o5un4qor2Wf+AfeTZGfyQf7YhW4bvM1jl34ZrLkOqVckNJ2Ft0LJBBwBJjTLR93mbAUcjABsuRw
	KPSTgDGdlaLGMWWA5aY4gFyacsdxm48gZqbBjHk4A8HMh803NPFo3qZlkUU0GhYvmcDJz5CHWaM
	FKkgzchyG2Wq9qL6UyoWd8B+ReQV8aq5eHNPnlXllcfeyfUm6cmx1S/NK/Cq/7xSq5K28bcNKWH
	cIExqyNL1tOKgwKOaAo=
X-Received: by 2002:a17:907:72cd:b0:b97:4e42:23e3 with SMTP id
 a640c23a62f3a-b97f498c144mr334147666b.26.1773887615048; Wed, 18 Mar 2026
 19:33:35 -0700 (PDT)
MIME-Version: 1.0
References: <20260318064834.103731-1-pkshih@gmail.com> <CAGb2v65PcZcBYg7qaeFaVH0=1fowOkW+7gL5wWA0wTMBu74JHg@mail.gmail.com>
In-Reply-To: <CAGb2v65PcZcBYg7qaeFaVH0=1fowOkW+7gL5wWA0wTMBu74JHg@mail.gmail.com>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Thu, 19 Mar 2026 10:33:23 +0800
X-Gm-Features: AaiRm53Jsgd5CG5Igb5Bep8Tw9tlR0uxe4njpKvJkFg9TEXi34KjjXMtkzNrT9E
Message-ID: <CAHrRpunyjQteOdA7SbuAzzrkOxP8rwS7OXkmcWC6LDh948y-jA@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Add regulatory info for CEPT countries
 FO, GI, IM, SM and VA listed by WiFi Alliance
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_023340_500630_3D39803A 
X-CRM114-Status: GOOD (  29.40  )
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

Chen-Yu Tsai <wens@kernel.org> wrote:
>
> On Wed, Mar 18, 2026 at 2:48=E2=80=AFPM Ping-Ke Shih <pkshih@gmail.com> w=
rote:
> >
> > From: Ping-Ke Shih <pkshih@realtek.com>
> >
> > In commit 5a8ced5ad313 ("wireless-regdb: Update regulatory info for CEP=
T
> > countries for 6GHz listed by WiFi Alliance"), the following are skipped=
 as
> > they do not have corresponding entries in the database yet.
> >
> >      - Faroe Islands (FO)
> >      - Gibraltar (GI)
> >      - Isle of Man (IM)
> >      - San Marino (SM)
> >      - Holy See (Vatican City State) (VA)
>
> Confirmed the list. Also checked against another source [1].
>
> [1] https://help.ui.com/hc/en-us/articles/8691786444567-Regions-Supportin=
g-6-GHz
>
> > Look up the CEPT decisions [2], and add entries along with decisions [3=
],
> > [4] and [5] for 2/5/6 GHz regulations.
> >
> > The 2 GHz band by ECC Decision (11)05 [3], which the adoption of ERC
> > Recommendation 70-03 [6], the regulations and the frequency bands to be
> > used for Short Range Devices (SRDs) are included in specific annexes to
>
> The 2 GHz band is now governed by ERC Recommendation 70-03 [6] with the
> withdrawal of ERC Decision ERC/DEC/(01)07 by ECC Decision (11)05 [3].

will update by v2.

>
> > this Recommendation. By ERC Recommendation 70-03 annex 3 (WIDEBAND DATA
> > TRANSMISSION SYSTEMS):
> >
> >  * 2400-2483.5 MHz
> >    - 100 mW
>
> Looks correct.
>
> ERC Recommendation 70-03 annex 3 also includes the 60GHz range (57-71 GHz=
).
> Can you check that? We would need some other source of information like
> the WiFi Alliance page to verify that the countries have adopted the
> decision. I don't think the CEPT decisions are directly binding.
>
> The end of the document also has a table of the implementation status
> of some bands in some countries. It is obvious the table is not complete.

For 60GHz, it looks like EU implementation deadline on 1 January 2020 [1], =
but
CEPT countries aren't all EU. I only found ECC Report 288 [2] [3], but it i=
sn't
decision (so it must not have a implementation deadline). I think we can't =
fill
60GHz entries for now.

[1] https://eur-lex.europa.eu/eli/dec_impl/2019/1345/oj/eng
[2] https://docdb.cept.org/document/8213
[3] https://docdb.cept.org/download/1365

>
> > The 5 GHz band by ECC Decision (04)08 [4]:
> >
> >  * 5150-5250 MHz
> >    - 200 mW
> >    - Indoor use
> >  * 5250-5350 MHz
> >    - 200 mW (due to TPC required, -3dBm, 100 mW is adopted)
> >    - DFS, TPC
> >    - Indoor use
> >  * 5470-5725 MHz
> >    - 1 W (due to TPC required, -3dBm, 500 mW is adopted)
> >    - DFS, TPC
> >    - Indoor and outdoor use
> >
> > The 6 GHz band by ECC Decision (20)01 [5]:
> >
> >  * LPI devices (adopted)
> >    - 5945-6425 MHz
> >    - Restricted to indoor use only
> >    - Maximum mean e.i.r.p.: 23 dBm
> >    - Maximum mean e.i.r.p. density: 10 dBm/MHz
> >  * VLP devices
> >    - 5945-6425 MHz
> >    - Indoors and outdoors
> >    - Maximum mean e.i.r.p.: 14 dBm
> >    - Maximum mean e.i.r.p. density: 1 dBm/MHz
>
> Looks correct.
>
> > [1] https://www.wi-fi.org/regulations-enabling-6-ghz-wi-fi
> > [2] https://docdb.cept.org/document/category/ECC_Decisions?status=3DACT=
IVE
> > [3] https://docdb.cept.org/download/1535
> > [4] https://docdb.cept.org/download/4501
> > [5] https://docdb.cept.org/download/4685
> > [6] https://docdb.cept.org/download/3700
>
> This doesn't seem to be the latest version. The online version is here:
>
>     https://docdb.cept.org/document/845
>
> and shows the latest revision was published on Feb 13, 2026.

will update to https://docdb.cept.org/download/4916 by v2.

>
> > Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> > ---
> >  db.txt | 35 +++++++++++++++++++++++++++++++++++
> >  1 file changed, 35 insertions(+)
> >
> > diff --git a/db.txt b/db.txt
> > index d54ef78e0da8..e2afb145ede5 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -731,6 +731,13 @@ country FM: DFS-FCC
> >         (5490 - 5730 @ 160), (24), DFS
> >         (5735 - 5835 @ 80), (30)
> >
> > +country FO: DFS-ETSI
> > +       (2402 - 2483.5 @ 40), (100 mW)
>
> This should start at 2400 for all the newly added countries.

Oops. Sorry for the mistakes.

>
> > +       (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> > +       (5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW
> > +       (5470 - 5725 @ 160), (500 mW), DFS
> > +       (5945 - 6425 @ 320), (23), NO-OUTDOOR
> > +
> >  # FR as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN =
301 893)
> >  # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300=
 440)
> >  #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN=
/TXT/?uri=3DCELEX:02005D0513-20070213
> > @@ -801,6 +808,13 @@ country GH: DFS-FCC
> >         (5490 - 5730 @ 160), (24), DFS
> >         (5735 - 5835 @ 80), (30)
> >
> > +country GI: DFS-ETSI
> > +       (2402 - 2483.5 @ 40), (100 mW)
> > +       (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> > +       (5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW
> > +       (5470 - 5725 @ 160), (500 mW), DFS
> > +       (5945 - 6425 @ 320), (23), NO-OUTDOOR
> > +
> >  country GL: DFS-ETSI
> >         (2402 - 2482 @ 40), (20)
> >         (5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=3DETSI
> > @@ -976,6 +990,13 @@ country IL: DFS-ETSI
> >         (5725 - 5875 @ 80), (25 mW), AUTO-BW
> >         (5945 - 6425 @ 320), (200 mW), NO-OUTDOOR
> >
> > +country IM: DFS-ETSI
> > +       (2402 - 2483.5 @ 40), (100 mW)
> > +       (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> > +       (5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW
> > +       (5470 - 5725 @ 160), (500 mW), DFS
> > +       (5945 - 6425 @ 320), (23), NO-OUTDOOR
> > +
> >  # Source:
> >  # https://dot.gov.in/spectrummanagement/delicensing-24-24835-ghz-band-=
gsr-45-e-5150-5350-ghz-gsr-46-e-and-5725-5875-ghz
> >  # https://dot.gov.in/spectrummanagement/license-exemption-5-ghz-gsr-10=
48e-dated-22102018
> > @@ -1855,6 +1876,13 @@ country SK: DFS-ETSI
> >         # 60 GHz band channels 1-4 (ETSI EN 302 567)
> >         (57000 - 66000 @ 2160), (40)
> >
> > +country SM: DFS-ETSI
> > +       (2402 - 2483.5 @ 40), (100 mW)
> > +       (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> > +       (5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW
> > +       (5470 - 5725 @ 160), (500 mW), DFS
> > +       (5945 - 6425 @ 320), (23), NO-OUTDOOR
> > +
> >  # Source:
> >  # Regulation N=C2=B0 2004-005 ART/DG/DRC/D.R=C3=A9g
> >  country SN: DFS-FCC
> > @@ -2072,6 +2100,13 @@ country UZ: DFS-ETSI
> >         (5170 - 5250 @ 80), (20), AUTO-BW
> >         (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> >
> > +country VA: DFS-ETSI
> > +       (2402 - 2483.5 @ 40), (100 mW)
> > +       (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> > +       (5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW
> > +       (5470 - 5725 @ 160), (500 mW), DFS
> > +       (5945 - 6425 @ 320), (23), NO-OUTDOOR
> > +
> >  # Source:
> >  # http://www.ntrc.vc/regulations/Jun_2006_Spectrum_Managment_Regulatio=
ns.pdf
> >  country VC: DFS-ETSI
> > --
> > 2.25.1
> >

