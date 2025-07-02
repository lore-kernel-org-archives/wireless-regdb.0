Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BBE5C7EE30
	for <wireless-regdb@archiver.kernel.org>; Wed,  2 Jul 2025 07:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/EmtKNpLV1wuppjdHJcp+jhS0vREUC35ykYwMdMeJCw=; b=4Jypz025z3jE12qMheQsrsP3iF
	m/pJTWXTbNEBXZP7+a0gIQ1WRg2uuYxGEsvBeeVOVDQFH83maDvddvtWyn6isCDgpS8Ox7ZyfePHt
	3MOgS0UfFvqPc1EdcWVM77f33DD49/chRspvA/7bv2zb1ggFWt4vhXoxIAb05rDlsv5HyGxygbkiw
	kGinm80uRa1ncHYjMVRkuH2bLjPi/GdbUIS+6v+MPgun2spzMciwLmp9Q1WSwlxnONSc/2ETeH3NC
	vGTiCHWk2qHtXPQ41tLQu+Qi6GAELhluLd79IOmuTx5FczcYzN817lV2LF4oT7V/4mJRnXMwd+Xws
	b+wWydmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWsEq-00000007Xof-0XcI;
	Wed, 02 Jul 2025 07:50:40 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWsEm-00000007XoI-3oEv
	for wireless-regdb@lists.infradead.org;
	Wed, 02 Jul 2025 07:50:38 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-ad572ba1347so598588466b.1
        for <wireless-regdb@lists.infradead.org>; Wed, 02 Jul 2025 00:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751442635; x=1752047435; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/EmtKNpLV1wuppjdHJcp+jhS0vREUC35ykYwMdMeJCw=;
        b=U769GupFZHGoKonvziZIGdZda8E+NNZuhLaj0eu+yI7ALAKIOhBSwgI/9PuvbAhlYS
         wu+SCQYxkIewiz6RCNvbe0MEJSL6Z4M7y+cvF7ElbwEAm/NXnSAIDzqvnEAmYN6wyfji
         Vv1eYh45h3Zr6SZ5qzEokkfNTf4nfGBafitcr9qFCUclVbCQgmvZFITDh7ofWVm42cBZ
         s2i3Knv/+S+cdvx4pK87eN04ONhbKaN/gz7P4TgIvfpT2UdmcCBu4gPqnb6KUgyTZIRV
         b05qHEyeYw6YQun7J21cBEz65Ito+aZ2gEREM3tu7MvNpFoO+GILUYGPN7HZaV0NmG8k
         mp+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751442635; x=1752047435;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/EmtKNpLV1wuppjdHJcp+jhS0vREUC35ykYwMdMeJCw=;
        b=kBgN9o19nWLfUIimJtfQ4PIgDZGDQ1y3JXOm3ylJi6Zh8sRLSQk58xS3+3HJovXwrY
         71IdmKbLuWXjXtdZMZt1fpTOwQlU4CveDE1IWvXiqpi0AxdjgdwE6Kz2UjgFE05QsCHd
         /5pmk2U+umULBxLVx6sUMVe6ANxtJRFiZGb5j9HX7agMnAAPwYZQLHIFcBnbaho0T9/H
         ZmM6nH9WH7Jb5IHglQ7pYQPzhqqOpFP3BX6fd3Cl22htuWHQlGVUzERrBuSotN4LP+B5
         2rV5wfiA5fs2bUH9NZhhlEqvMkcNJn2VQ1QlAR40UEQReL/+uYWuy+o3tOMotqmwange
         fGUA==
X-Forwarded-Encrypted: i=1; AJvYcCWVM/AIU8EcCeDjQWUwjA9sfzg+NbwCEap+vQnbkJDrHqKiQE+NbHMmNpeBxcNQ0QtCjTS/JAL91TMXR+nwSQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5QLoUJjBAkzTxPOEGKloqpgXG1E+zVE3fLktrWY6nMFniGve1
	LETHxL7eEKjLAKl4345GhRlXTNyofRlbmPe3pOmeBDmZloCcmuG2cBjrXxehtv++zdNtMOrNXTx
	jPy+FCwn/w6dxby73XJjwMEaBdr3Jc7++pA==
X-Gm-Gg: ASbGncvSiwb40dK80e8cKCgYp4ThjKpvs9284pJsZZSmeW3PVUEYRdlabXyLfjQrNJw
	vxKd+SGrq2xDPlpXR4E81m7g8vuAxA0L9tjWHA6WV4+4ZsNxZx9JqJvqcTrL9PAPYdieowU0Lm6
	rBfiAM6csuhtbb3XwiBosDsk7spchoIPlZZjRB+b80a4M=
X-Google-Smtp-Source: AGHT+IE6La0g8qRD8zHQFlQBaAcefxIOZCxxslGrHN5ee1te8a1PXmHq7cRrHwzL2R8sUuiK/uqIjRCvKvEbGhdHyGw=
X-Received: by 2002:a17:907:3cca:b0:add:fb01:c64a with SMTP id
 a640c23a62f3a-ae3c2d95d66mr194213466b.43.1751442634387; Wed, 02 Jul 2025
 00:50:34 -0700 (PDT)
MIME-Version: 1.0
References: <20250618054904.9107-1-pkshih@gmail.com> <CAGb2v65E7K0yRz==OTyBd_LCWwU+0MYWSivgJG4x70gS1Cp93w@mail.gmail.com>
In-Reply-To: <CAGb2v65E7K0yRz==OTyBd_LCWwU+0MYWSivgJG4x70gS1Cp93w@mail.gmail.com>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Wed, 2 Jul 2025 15:50:45 +0800
X-Gm-Features: Ac12FXyxk-hToU5xt0idQY1B-nIjw_nd8QJ-Jbncrdq6C1wI200kwkVNIlHOXew
Message-ID: <CAHrRpumH3DJ2orNksahgri+SjZz=W79EHuUEjRaVjNtwJb6uAw@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Egypt (EG) for 2024
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250702_005036_964248_2169794C 
X-CRM114-Status: GOOD (  18.07  )
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

Chen-Yu Tsai <wens@kernel.org> wrote=EF=BC=9A
>
> On Wed, Jun 18, 2025 at 1:49=E2=80=AFPM Ping-Ke Shih <pkshih@gmail.com> w=
rote:
> >
> > From: Ping-Ke Shih <pkshih@realtek.com>
> >
> > National Telecommunications Regulatory Authority (NTRA) released Radio
> > Spectrum Guidelines for Short-range Devices (SRD) on November 2024.
> >
> > As Table 4 Mandatary requirements for Wideband Data Transmission System=
s:
> > Including Wireless LAN (Wi-Fi and Multiple GIGABIT wireless systems for
> > Indoor applications only)
> >
> > * Wi-Fi for indoor applications only, so add NO-OUTDOOR for all entries=
.
> >
> > * 2400 - 2483.5 MHz
> >   - 100 mW e.i.r.p.
> >   - EN 300 328
> > * 5150 - 5350 MHz
> >   - 200 mW e.i.r.p.
> >   - DFS and TPC in 5250 - 5350 MHz
> >     * for devices without TPC, the limit is lowered 3 dBm
> >   - EN 301 893
> > * 5925 - 6425 MHz
> >   - 250 mW e.i.r.p.
> >   - EN 303 687
> > * 57 - 66 GHz
> >   - 40 dBm e.i.r.p.
> >   - EN 302 567
> >
> > [1] https://www.tra.gov.eg/wp-content/uploads/2024/11/EGY-NTRA-November=
-2024-SRD_English-1.pdf
> >
> > Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> > ---
> >  db.txt | 10 ++++++----
> >  1 file changed, 6 insertions(+), 4 deletions(-)
> >
> > diff --git a/db.txt b/db.txt
> > index e331d4f763e3..4a05bdca781e 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -632,11 +632,13 @@ country EE: DFS-ETSI
> >         (57000 - 66000 @ 2160), (40)
> >
> >  # https://www.tra.gov.eg/wp-content/uploads/2022/03/EGY-NTRA-March-202=
2-SRD_English_Final.pdf
> > +# https://www.tra.gov.eg/wp-content/uploads/2024/11/EGY-NTRA-November-=
2024-SRD_English-1.pdf
> >  country EG: DFS-ETSI
> > -       (2402 - 2483.5 @ 40), (20)
> > -       (5150 - 5250 @ 80), (23), AUTO-BW, wmmrule=3DETSI
> > -       (5250 - 5350 @ 80), (20), DFS, AUTO-BW, wmmrule=3DETSI
> > -       (57000 - 66000 @ 2160), (40)
> > +       (2402 - 2483.5 @ 40), (100 mW), NO-OUTDOOR
> > +       (5150 - 5250 @ 80), (200 mW), AUTO-BW, wmmrule=3DETSI, NO-OUTDO=
OR
> > +       (5250 - 5350 @ 80), (100 mW), DFS, AUTO-BW, wmmrule=3DETSI, NO-=
OUTDOOR
>
> The database parser requires the wmmrule flag be the last flag for some
> reason. I fixed it up locally and will force push it out.

Sorry for the mistakes. I forgot to run the parser before sending out patch=
.

>
> ChenYu
>
> > +       (5925 - 6425 @ 320), (250 mW), NO-OUTDOOR
> > +       (57000 - 66000 @ 2160), (40), NO-OUTDOOR
> >
> >  # ES as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN =
301 893)
> >  # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300=
 440)
> > --
> > 2.25.1
> >

