Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4422BC83038
	for <wireless-regdb@archiver.kernel.org>; Wed,  2 Jul 2025 04:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ASbbblohaYhvdHggb9VEfr02EPZqkaP//CSig0p1ovI=; b=aqzFcT4nplx97N
	dSXpGp70vZgs7wrrl3ke059AqUg95/y4v/ryq6TH5CnN/JdEHvewk9Nq0G7fcyD2tOtcI8vaJYMAr
	ssXMJphFAFpchkdt8tUe7YULbvZpd9iccswoEbxlEnAZ1gt2A7S3fbUAIqTF1mqYH1H8SNMbd9DwR
	Mlsdvv4kqWVr+9vJjn/QbT0eEWFKyHAUPMhwCkIA/v2CQQccq9d8YhjrmTZ96vgUlfXqwIpBQw+aN
	AnREOOGhlbZ6BIgd1HeQwf6PSehFGKjnVSc5+nrNbAlTPxbT10Y2oAvwn8ILZuDJ3voof1vLU9mUI
	mTt/1hj3k87bKHoLnkwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWpB2-00000007BhC-07en;
	Wed, 02 Jul 2025 04:34:32 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWpB1-00000007Bh6-02fp
	for wireless-regdb@lists.infradead.org;
	Wed, 02 Jul 2025 04:34:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 18F826000A
	for <wireless-regdb@lists.infradead.org>; Wed,  2 Jul 2025 04:34:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4286C4CEEF
	for <wireless-regdb@lists.infradead.org>; Wed,  2 Jul 2025 04:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751430869;
	bh=4gsTPOrdy7QYDrIhvx9/sRa5vTKXYTzvN/28QQ3hLwk=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=F3xkhLxdEiwj6lnsY/P9b8Gx9QBDzlMWhZmalFZpgeL54W1Ku2cm73P5v3c3gpHA9
	 05ftSJJ7d/mlDMV6ISHQ63vPMDDctEDExMcHBi6yTuoxPZTxCwlDKrZunpRK3PbwEf
	 Gil/Ara6Iqzqxc3O1aoQ2N/SlvUQ0UlPCi4W4bRayXyZB64qwoQB0Z/MDXen+vQdMv
	 5Ce/dmsjPIO8oS+Lvu2yz6t+wpEXlfwKvHxlB0KIGIxVoMt/XamiNMbeb9VVSUHEMl
	 cUuBqld5xhXmvEk7gsXdo6ZdTumGlXAYikZTQ6E5RgKVl7nSMPg256YkZCbApSp9M7
	 TcJnzNYHLQqVg==
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-32ac52f78c1so64610951fa.3
        for <wireless-regdb@lists.infradead.org>; Tue, 01 Jul 2025 21:34:29 -0700 (PDT)
X-Gm-Message-State: AOJu0YzWOHorFPgAp7F6WsMrx8CwQaF8MzMz/p+FprqanID1ILdq3SRS
	L+SL8OauKJlr98yYMBRj3leytqJoYarHDrcC0ME5ld5Q2JnRs4P0+P+pYV0rn7gAl10mrwWgy0K
	DqUFALSJulQlSMGW2eKVz0HTkGswD98Y=
X-Google-Smtp-Source: AGHT+IG/dq8BWFDgxIS2F9towL4OcexZWsj57hY+CJ5ZQtCNoTu74iu1KmpLBGMmqnLYlN4cEIHBYyCJCAcGTcJDmN0=
X-Received: by 2002:a05:651c:2117:b0:32b:5272:38eb with SMTP id
 38308e7fff4ca-32e000de116mr5416511fa.40.1751430868141; Tue, 01 Jul 2025
 21:34:28 -0700 (PDT)
MIME-Version: 1.0
References: <c6eb2f23-f15a-4a4f-9934-f8d524bc2cd1@aegrel.ee> <CAGb2v66AATrsy-q6j3973SiDbxx0yO=ZX++BhSedrkZ9ULQ=nQ@mail.gmail.com>
In-Reply-To: <CAGb2v66AATrsy-q6j3973SiDbxx0yO=ZX++BhSedrkZ9ULQ=nQ@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 2 Jul 2025 12:34:15 +0800
X-Gmail-Original-Message-ID: <CAGb2v64_LXmb8cX7Uh5xwRGt=MH0GAmugCrJwHTykT=s3v5xGw@mail.gmail.com>
X-Gm-Features: Ac12FXx5syhyqQRrFlK4dWesxPfm1JUXgGZyclgJ1bdUh9JyAJvSOxTc4tckjts
Message-ID: <CAGb2v64_LXmb8cX7Uh5xwRGt=MH0GAmugCrJwHTykT=s3v5xGw@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Estonia (EE)
 for 2024
To: =?UTF-8?B?VGFhdmkgRW9tw6Rl?= <taaviw@aegrel.ee>
Cc: wireless-regdb <wireless-regdb@lists.infradead.org>
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

On Fri, May 16, 2025 at 4:24=E2=80=AFPM Chen-Yu Tsai <wens@kernel.org> wrot=
e:
>
> Hi,
>
> On Mon, Mar 24, 2025 at 8:26=E2=80=AFAM Taavi Eom=C3=A4e <taaviw@aegrel.e=
e> wrote:
> >
> > Allow S1G operation based on currently applicable usage rules specified
> > in annex 6 of "Raadiosageduste kasutamise tingimused ja tehnilised n=C3=
=B5uded
> > sagedusloast vabastatud raadioseadmetele"
> >
> > Enable AUTO-BW for all 5GHz bands as no bandwidth limit is specified fo=
r
> > these bands.
> >
> > Specify 6GHz power limit in mW to match others.
> >
> > Fix 60GHz band to match regulation and allow bandwidths specified by 80=
2.11ay.
>
> I just realized that you didn't provide a Signed-off-by in the patch.
> I can't apply your patch without it.
>
> Can you provide it? Just reply to the thread with a proper Signed-off-by
> tag.

Ping?

> Thanks
> ChenYu
>
> > ---
> >  db.txt | 11 +++++++----
> >  1 file changed, 7 insertions(+), 4 deletions(-)
> >
> > diff --git a/db.txt b/db.txt
> > index e331d4f..83f7924 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -618,18 +618,21 @@ country EC: DFS-FCC
> >  #  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/E=
N/TXT/PDF/?uri=3DCELEX:32021D1067&from=3DEN
> >  # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/downl=
oad/25c41779-cd6e/Rec7003e.pdf
> >  # EE: https://www.ttja.ee/et/ettevottele-organisatsioonile/sideteenuse=
d/raadioseadmed/wifi-seade
> > +# EE: https://www.riigiteataja.ee/akt/117052024018?leiaKehtiv (Lisa 6)
> >  # EE: https://www.itu.int/ITU-D/study_groups/SGP_1998-2002/JGRES09/pdf=
/estonia.pdf
> >  country EE: DFS-ETSI
> > +       (863 - 868 @ 1), (25 mW)
> > +       (915.8 - 919.4 @ 1), (25 mW)
> >         (2400 - 2483.5 @ 40), (100 mW)
> >         (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=3DET=
SI
> >         (5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=
=3DETSI
> > -       (5470 - 5725 @ 160), (500 mW), DFS, wmmrule=3DETSI
> > +       (5470 - 5725 @ 160), (500 mW), DFS, AUTO-BW, wmmrule=3DETSI
> >         # short range devices (ETSI EN 300 440-1)
> > -       (5725 - 5875 @ 80), (25 mW)
> > +       (5725 - 5875 @ 80), (25 mW), AUTO-BW
> >         # 6 GHz band
> > -       (5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=3DETSI
> > +       (5945 - 6425 @ 320), (200 mW), NO-OUTDOOR, wmmrule=3DETSI
> >         # 60 GHz band channels 1-4 (ETSI EN 302 567)
> > -       (57000 - 66000 @ 2160), (40)
> > +       (57000 - 71000 @ 8640), (40)
> >
> >  # https://www.tra.gov.eg/wp-content/uploads/2022/03/EGY-NTRA-March-202=
2-SRD_English_Final.pdf
> >  country EG: DFS-ETSI
> > --
> > 2.45.2
> >

