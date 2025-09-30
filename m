Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ADDACAC5B9
	for <wireless-regdb@archiver.kernel.org>; Tue, 30 Sep 2025 08:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7yCCvV271rsdqfptu10r0u0/kEuRoIYrEG6Rb3RKJDc=; b=RzZKujBXFfhu8ZzgnuRi5F9+dW
	RWArwzO1IRKIhzBCqpJK0KpagPDXJd6sHKgnhEP4DLP0Ls30jB4u9A6asCcJ+NySBluP90TiZ6ZT9
	MW7VLqPKzvxKOrZVJDldkncD9LpaooMnVRTabwyQ7vYSxc51bJgWYLDJutqO+3Pgo4WTA6no6pRn7
	gQNOp0pigPoh8n2oNJ1GlfAFMOL70LkG0VxTHO0oOa0XG4WxqhqHrcLC3IA23FKrT0Dr90XSHLMNr
	toUy2oJlh89c2Mv3qSZIeBMZvpNzqkB4i2b1pbs+x1Idr8ifS4VWL5aipKUjxjzJgQvJN07JepayC
	HFo8gfWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3VhB-00000004dLV-1IiT;
	Tue, 30 Sep 2025 08:26:49 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Vh7-00000004dKH-3tlv
	for wireless-regdb@lists.infradead.org;
	Tue, 30 Sep 2025 08:26:47 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-62fc14af3fbso8285085a12.3
        for <wireless-regdb@lists.infradead.org>; Tue, 30 Sep 2025 01:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759220804; x=1759825604; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7yCCvV271rsdqfptu10r0u0/kEuRoIYrEG6Rb3RKJDc=;
        b=LIq9qNyc1pLaQfq8SukAWVDn+WvQlTWY+AHqMV8BRo/RA9Vv8PRmnJ1TWR1KXICnef
         nUCtXXIs7/IzGP4vxxYjKEwWx6L1yFmn3ldnjUXe6nPMWOv2UzlxyQzpDjCiwezzwcm4
         /bFPVhV9Oc3v6tmpkRKoD9wjCDG+Zgnqmj6tojK4/fqQ8hT34tfvUYOCPBviMsAWtQtF
         wMHeyst6NGCBrsgaW5zBUCfbSf14tCYVnIxdx30b9pWTt/yST48i/P8Bf7DjpBtHkxgK
         0VLfzos9tyf0ZHdqvTmU3a4mEs+6i596JKaa4V+HNsuGJC6J5uBUlfYjJx6wbO5MustK
         D4PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759220804; x=1759825604;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7yCCvV271rsdqfptu10r0u0/kEuRoIYrEG6Rb3RKJDc=;
        b=Y+TErOKiy1XQic0zFxSqAG7wdqVu4zY0ke5h4CfBdCrEflcyYT2X5K2f3fZBsWyMCQ
         GTuzKaZutbgacw7NS+fpXagVPxdMCX1U/bw/LG7JZoenzEvQV/l+VDYAOVn1S0dq9aRP
         iedQuSONfyeaDJF0Po2gxk6JmYpxfXCbKGF+0Qe4g+Eqf01cDWFTv4+rnOVtdwIZsaGN
         D65leGDVor7msPUr5rtae3UjewD7I+TDo5XhEFjsBcVALpXwvVRqJzUzkgAxcH4cFvjB
         7IIrjGiEI9d+/wbkzDuf/yyktZlfLzZpj8bsOX+2rPzs+KG6i0edQnyvAPvdKXvA/Ryp
         a/mg==
X-Forwarded-Encrypted: i=1; AJvYcCXQ+JkylGelJDcVFYHMY0JDF9h/7pMxkijsYI23jmpSyNlXAISC21zyAS97nN4eUKUBSKjLTz6UfYzqhGBohg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwjsgF9yErbxgsHpke5BTTg9cyR9NGW2mCWN4spgBSECIsycolf
	Onhdm8muC8v2nBvI5A591gHAnckKr1jSj+Qr3UzEA22G4Dy9iUavd8HPuxH8A3LXH9aaVR2+wX5
	wk/qy7SzzLmwQenvqEau6uugtPQR3EPk=
X-Gm-Gg: ASbGncu68PMsLWgH2bv0t3MNLMx3+iXTfRiCcKvs+7dRyDeX9+XEjFXmyGpMhxVSjJ8
	+kyS0S4Xr6mB0K086gCVkMBSu6T4xwfz6iNy0BqwGB2EB4T7QkKaqXdysCwpHKuAPfHpvsUK4n/
	zNQKAuEQK2ToTUORed8Oet5Ceih9HJCuqAERNfG9wbHVk2+fFdrCENs8USr0FGK7GBP/UKcWri9
	LqSIOAKB2JISqrQu9qjr2Ausa9+7Zqwpthugbas0Q==
X-Google-Smtp-Source: AGHT+IEZ1/sLHld0TckfMBDGKCziLaLmZ5s/Sltpa7v3V9+zDBZl2DaNPjl02PUVjARd7Bh4vV3AtYZQIiTSd9XcTy4=
X-Received: by 2002:a05:6402:5052:b0:62d:4988:cc70 with SMTP id
 4fb4d7f45d1cf-6349fa83a01mr17509552a12.32.1759220803825; Tue, 30 Sep 2025
 01:26:43 -0700 (PDT)
MIME-Version: 1.0
References: <20250930042948.427154-1-wens@kernel.org> <CAHrRpunr+hbWiO1jY=jGZOiqGWcXFGYBSJi17+r-AgOMwssaXg@mail.gmail.com>
 <CAGb2v65wSPCeW=qgrjX1cBUfbYj55U9HUOdPw3n0zHm0PJpNNA@mail.gmail.com>
In-Reply-To: <CAGb2v65wSPCeW=qgrjX1cBUfbYj55U9HUOdPw3n0zHm0PJpNNA@mail.gmail.com>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Tue, 30 Sep 2025 16:26:32 +0800
X-Gm-Features: AS18NWCMXtOMGLGQONzfH4-t6VHI8AtjPmmTHP7jsf6YrFUw8Qez5l22Ch3327Q
Message-ID: <CAHrRpum=kos=b+h=dPvQ2YaoXqPCEudjuU9-VNGQYRg928x=Ug@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Permit lower 6 GHz band for Kazakhstan (KZ)
To: wens@kernel.org
Cc: Ping-Ke Shih <pkshih@realtek.com>, Pavel Starosek <starosekpd@gmail.com>, 
	wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_012646_103527_F0AFF16C 
X-CRM114-Status: GOOD (  28.07  )
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
> On Tue, Sep 30, 2025 at 3:25=E2=80=AFPM Ping-Ke Shih <pkshih@gmail.com> w=
rote:
> >
> > Chen-Yu Tsai <wens@kernel.org> wrote:
> > >
> > > By Order of the Minister of Digital Development No. 564/NK dated
> > > September 19, 2024 [1], an amendment was made to the assignment of
> > > frequency bands, opening up the lower part of the 6 GHz band (5,945 M=
Hz
> > > to 6,425 MHz) was opened up to "SRD (wideband data transmission syste=
ms)
> > > WAS/RLAN Data transmission systems/radio local area networks".
> > >
> > > The power is limited to 200 mW e.i.r.p. with a spectral density of 10
> > > mW/MHz. Only indoor use is permitted.
> > >
> > > While at it, also change the power limits to use mW units to match th=
e
> > > official documents.
> > >
> > > Initial information was provided by the Wi-Fi Alliance website, which
> > > has a map [2] showing all countries that have enabled 6 GHz WiFi, and
> > > links to official documents. This document was not sufficient as it d=
id
> > > not include power limits or other restrictions.
> > >
> > > A subsequent search found a blog post [3] providing details and title=
s
> > > of the official documents in English. An AI agent was used to search
> > > for the original text of said order [1] after rummaging through
> > > government websites in Russian and Kazakh failed to find anything.
> > >
> > > [1] https://adilet.zan.kz/rus/docs/V2400035100
> > > [2] https://www.wi-fi.org/regulations-enabling-6-ghz-wi-fi
> > > [3] https://www.onewindow.pro/blog-posts/6-ghz-band-regulation-in-the=
-republic-of-kazakhstan
> > >
> > > Signed-off-by: Chen-Yu Tsai <wens@kernel.org>
> > > ---
> > > If you received this patch, please help review it. The changes are
> > > based on translations of the original text / tables, so a second set
> > > of eyes would be appreciated.
> > >
> > >  db.txt | 9 +++++----
> > >  1 file changed, 5 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/db.txt b/db.txt
> > > index 6e1ad30..16bcb32 100644
> > > --- a/db.txt
> > > +++ b/db.txt
> > > @@ -1136,11 +1136,12 @@ country KY: DFS-FCC
> > >  # http://adilet.zan.kz/rus/docs/V1500010730
> > >  # http://adilet.zan.kz/rus/docs/V1500010375
> > >  country KZ: DFS-ETSI
> > > -       (2400 - 2483.5 @ 40), (20)
> > > -       (5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
> > > +       (2400 - 2483.5 @ 40), (100 mW)
> > > +       (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> > >         (5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
> >
> > The power limit of 5150-5350 MHz is 200 mW, maximum spectral density
> > e.i.r.p. 10 mW/MHz.
> >
> > So, 5250 - 5350 should be 23 dBm or 200 mW.
>
> I had this question as well. Looking at the original submission history,
> it seems that the limit for 5250-5350 MHz was halved to cover TPC
> requirements. See [1]. I'd like to follow the existing values unless
> someone can point to documents stating otherwise.

Thanks for the info. Would you like to add the reference to commit message?
Anyway, it is fine to me.

Reviewed-by: Ping-Ke Shih <pkshih@gmail.com>

>
> Thanks
> ChenYu
>
> [1] https://lore.kernel.org/wireless-regdb/20191029144815.GR30813@ubuntu-=
xps13/
>
> > > -       (5470 - 5725 @ 160), (20), NO-OUTDOOR, DFS
> > > -       (5725 - 5850 @ 80), (20), NO-OUTDOOR
> > > +       (5470 - 5725 @ 160), (100 mW), NO-OUTDOOR, DFS
> > > +       (5725 - 5850 @ 80), (100 mW), NO-OUTDOOR
> > > +       (5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
> > >         (57000 - 66000 @ 2160), (40)
> > >
> > >  country LB: DFS-FCC
> > > --
> > > 2.47.3
> > >
> > >

