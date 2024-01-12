Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CA0AC4707B
	for <wireless-regdb@archiver.kernel.org>; Fri, 12 Jan 2024 03:05:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9knKDtRrI8UltEJ2z5qWDZ2baxy+kchSQYItq5ySR04=; b=MmBkom5fIGmBRU+XE4x7Fzq/Oz
	Ews1LLMXMRYQXtCeKIb5DQ9ZCnuBlhfPKcIAB7MTykMxSB5+WeFJjOcP6i+Adg2HOjhz6DtJ8LFIY
	uB4EgeBbIO39KTzdq8sZPy7N3/wmW0PeGcThH3Xjy/Wwul3gz8M2LLp94IAUfiSAQxwYR8sx7pXkg
	V0foAydppfj74g8U6G+t0QSKJfouq/7IN66PUsePZQKTunXztsWVVitVP61gQsqrNIz7ADrEJPlOa
	0790PzBVo8xysGmVIFe5JziCEF4ZigPsHqqPVrffLth8E9zbXz8fpDsUOUbbzlj/9bFNcVh+W1Ea9
	tL7dFEdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rO7rj-001jlH-0R;
	Fri, 12 Jan 2024 03:05:51 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rO7rf-001jkR-0x
	for wireless-regdb@lists.infradead.org;
	Fri, 12 Jan 2024 03:05:49 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-5fa52e173f7so28020857b3.3
        for <wireless-regdb@lists.infradead.org>; Thu, 11 Jan 2024 19:05:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndoo.sg; s=google; t=1705028745; x=1705633545; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9knKDtRrI8UltEJ2z5qWDZ2baxy+kchSQYItq5ySR04=;
        b=ON+v7fdJDSTa9apX+TP1bUFAeeEIHf2fO2wC6qtTKqNoQBUNN7jm8Smi4xzw7k48Bl
         2UqH0qdSJvdKNM6BwXNZV7hO2WvZqpstrN4IhreTnYq/8kvmNCyq8CA+xeUSPE3OsNpc
         HD7fVTusKL8VWRzED981nm0anzrgCbLr5otBA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705028745; x=1705633545;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9knKDtRrI8UltEJ2z5qWDZ2baxy+kchSQYItq5ySR04=;
        b=kLG0t0Jqa0Ve0v/VhNRHkLfSB3fDyCz3Swx9ps+n7+lIfODu0ZVvin1NCpnm9OqSd8
         ryjNyobwE9nD/J9r8/hCF5/1A4fow/974BelUzSBn0Oj1wo4+iD8RsGR5Jpo1cRknwEc
         kEWF+aS2tCWV1ZBKfzGuIO1jOOWULB1pElOT0RDeqX0dxl7rT9fgZ+/5kXNIz/wDutPB
         SJFTwjk/qzW6akc5hqICuVQWKUulWs6hzRHblyPdWK/uA8eEmp2f7y/AJUUCrXVWIDpr
         fPR0fyM7ykmeRv2+GVKadTAN9LdaQx4n+lrxVJyc6wB44CJUruFRWmXf8MLFPg11+PpM
         7qSw==
X-Gm-Message-State: AOJu0YwGaK69muSKV+yNHD54LBvamK/kaF+yn3Im5+7YABxUP5+XyB1W
	YddTc+gVChzwcwArvBhVSJaibEebZxuuO1mLzr15IRTfWmHf
X-Google-Smtp-Source: AGHT+IHZCs79hVBCria2hmD+rqwczAvYxhoto4hPZfNDPZRUFCXYeYYNHXuk5RXUXcmPt4CeCqM+dxqBVacU7RUFVIM=
X-Received: by 2002:a81:f10c:0:b0:5fa:5312:743c with SMTP id
 h12-20020a81f10c000000b005fa5312743cmr676766ywm.63.1705028745200; Thu, 11 Jan
 2024 19:05:45 -0800 (PST)
MIME-Version: 1.0
References: <20230903102022.11186-1-me@ndoo.sg> <CAGb2v65uD9TQuMzrMo8JoWEMp8WbVrKAf92tn17tA98GXdPWZQ@mail.gmail.com>
In-Reply-To: <CAGb2v65uD9TQuMzrMo8JoWEMp8WbVrKAf92tn17tA98GXdPWZQ@mail.gmail.com>
From: Andrew Yong <me@ndoo.sg>
Date: Fri, 12 Jan 2024 11:05:29 +0800
Message-ID: <CA+yTfBBUymdYxiO2wFUzVvDX6+nkq9mhx-MWEEi4jEw3WqGgcg@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
 for Singapore (SG) for September 2023
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_190547_398704_25D1EC98 
X-CRM114-Status: GOOD (  25.99  )
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

Hi there Chen-Yu,

On Fri, Dec 22, 2023 at 12:35=E2=80=AFPM Chen-Yu Tsai <wens@kernel.org> wro=
te:
>
> On Sun, Sep 3, 2023 at 9:25=E2=80=AFPM Andrew Yong <me@ndoo.sg> wrote:
> >
> >  - Update regulatory rules for September 2023 IMDA TS SRD [1]
> >  - Enable 5945 - 6425 MHz (Wi-Fi 6E) band per legislation
> >  - Switch units from dBm to mW to match values listed in legislation
> >  - Allow AUTO-BW between 5470 - 5850 MHz to permit additional 160 MHz B=
W options
> >
> > [1] https://www.imda.gov.sg/-/media/imda/files/regulation-licensing-and=
-consultations/ict-standards/telecommunication-standards/radio-comms/imdats=
srd.pdf
>
> Thanks for the patch!
>
> > Signed-off-by: Andrew Yong <me@ndoo.sg>
> > ---
> >  db.txt | 34 ++++++++++++++++++----------------
> >  1 file changed, 18 insertions(+), 16 deletions(-)
> >
> > diff --git a/db.txt b/db.txt
> > index fdc2c13..cbe1a88 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -1584,25 +1584,27 @@ country SE: DFS-ETSI
> >         # 60 GHz band channels 1-4 (ETSI EN 302 567)
> >         (57000 - 66000 @ 2160), (40)
> >
> > -# https://www.imda.gov.sg/-/media/Imda/Files/Regulation-Licensing-and-=
Consultations/ICT-Standards/Telecommunication-Standards/Radio-Comms/IMDATSS=
RD.pdf
> > -# IMDA TS SRD, Issue 1 Revision 1, April 2019, subsequently "IMDA TS S=
RD"
> > -# 2400 - 2483.5 MHz: IMDA TS SRD, Table 1 (25); ANSI C63.10-2013 and F=
CC Part 15 Section 15.247 or EN 300 328
> > -# 5150 - 5350 MHz: IMDA TS SRD, Table 1 (29); FCC Part 15 Section 15.4=
07 (1) 5.15-5.25 GHz (2) 5.25-5.35 GHz; EN 301 893
> > -# 5470 - 5725 MHz: IMDA TS SRD, Table 1 (30); FCC Part 15 Section 15.4=
07 (2) 5.47-5.725 GHz; EN 301 893
> > -# 5725 - 5850 MHz: IMDA TS SRD, Table 1 (27); FCC Part 15 Section 15.2=
47; FCC Part 15 Section 15.407 (3) 5.725-5.85 GHz
> > -# 57000 - 66000 MHz: IMDA TS SRD, Table 1 (31); ETSI EN 302 567
> > -# Note: 27dBm for 5470-5725MHz bands is 3dBm reduction per FCC Part 15=
 Section 15.407 (2) 5.47-5.725 GHz; EN 301 893 as referenced by IMDA TS SRD
> > +# https://www.imda.gov.sg/-/media/imda/files/regulation-licensing-and-=
consultations/ict-standards/telecommunication-standards/radio-comms/imdatss=
rd.pdf
> > +# IMDA TS SRD, Issue 1 Revision 3, Sep 2023, subsequently "IMDA TS SRD=
"
> > +# 2400 - 2483.5 MHz: IMDA TS SRD, Table 1 Sub-band 32e
> > +# 5150 - 5350 MHz: IMDA TS SRD, Table 1 Sub-band 33a
> > +# 5470 - 5725 MHz: IMDA TS SRD, Table 1 Sub-band 34
> > +# 5725 - 5850 MHz: IMDA TS SRD, Table 1 Sub-band 35
> > +# 5945 - 6425 MHz: IMDA TS SRD, Table 1 Sub-band 45b
> > +# 57000 - 66000 MHz: IMDA TS SRD, Table 1 Sub-band 40
> > +# Note: 500mW for 5470-5725MHz bands per FCC Part 15 Section 15.407 (2=
) 5.47-5.725 GHz as referenced by IMDA TS SRD
> >  #  AU and BG regulatory domains use the same interpretation of cited F=
CC and ETSI standards
> > -# Note: The transmit power for 5250-5350MHz bands can be raised by 3dB=
m when TPC is implemented: IMDA TS SRD Table 1 (29)
> > -# Note: The transmit power for 5470-5725MHz bands can be raised by 3dB=
m when TPC is implemented: IMDA TS SRD Table 1 (30)
> > +# Note: The transmit power for 5250-5350MHz bands can be raised by 3dB=
m when TPC is implemented: IMDA TS SRD, Table 1 Sub-band 33a
> > +# Note: The transmit power for 5470-5725MHz bands can be raised by 3dB=
m when TPC is implemented: IMDA TS SRD Table 1 Sub-band 34
>
> "... raised by 100 mW ..." given the new units?

Ack, will amend in v2.

>
> Also, such a provision is not given for 5470-5725MHz in the spec. My
> interpretation of the text is that a "reference" is referencing other
> regulations for "reference" when designing the local rules, not that it
> allows following those references directly, unless explicitly noted.

From the parallel discussion at [1], it sounds like this has been the
interpretation used for multiple regdomains, e.g. AU.

IMHO, it would be outside of the scope of this patch which implements
changes since the last Singapore regulation release. I would prefer a
separate patch to comment out 5470-5725MHz, which can later be
reverted/uncommented once a decision is reached.

Though my opinion would be that a separate patchset that universally
addresses all the interpreted/grey-area TPC offsets, would be more
appropriate, once that decision is reached.

Anyway, I'll defer to your decision as the maintainer; I'll keep this
band in my patchv2 meanwhile and do a v3 if I'm not in time for your
decision.

>
> >  country SG: DFS-FCC
> > -       (2400 - 2483.5 @ 40), (23)
> > -       (5150 - 5250 @ 80), (23), AUTO-BW
> > -       (5250 - 5350 @ 80), (20), DFS, AUTO-BW
> > -       (5470 - 5725 @ 160), (27), DFS
> > -       (5725 - 5850 @ 80), (30)
> > -       (57000 - 66000 @ 2160), (40)
> > +       (2400 - 2483.5 @ 40), (200 mW)
> > +       (5150 - 5250 @ 80), (200 mW), AUTO-BW
> > +       (5250 - 5350 @ 80), (100 mW), DFS, AUTO-BW
> > +       (5470 - 5725 @ 160), (500 mW), DFS, AUTO-BW
>
> This needs more justification. Unlike for the 5.15 ~ 5.35 GHz range,
> the standard does _not_ give an option without TPC for this band.
>
> > +       (5725 - 5850 @ 80), (1000 mW), AUTO-BW

As above.

>
> Instead of AUTO-BW here, can you follow the examples from TW and US of
> expanding the previous band by 5 MHz? That should cover the 160 MHz
> channel.

Ack, will amend in v2.

Thanks for reviewing.
Andrew

[1] https://lists.infradead.org/pipermail/wireless-regdb/2024-January/00149=
0.html

>
>
> ChenYu
>
> > +       (5945 - 6425 @ 320), (250 mW), NO-OUTDOOR
> > +       (57000 - 66000 @ 2160), (10000 mW)
> >
> >  # SI as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN =
301 893)
> >  # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300=
 440)
> > --
> > 2.41.0
> >
> >
> > _______________________________________________
> > wireless-regdb mailing list
> > wireless-regdb@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/wireless-regdb

