Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18DC0C2BD09
	for <wireless-regdb@archiver.kernel.org>; Mon,  1 Jul 2024 08:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yv+RDCzlqa1FeYPrX4j1rmu5dg5kYXecRQL+VrSTBZE=; b=YOs1gUXKR/6eR4
	Y7frL8YmiSmU2le6ek8nBgyLRznAtosvscvOqoc/IxBN9F9MyxIXrpSP+iwub2cR9IgYocJRT4ejx
	A3iMqxTvv7kTp/IxBh+M9vn696bG8FOks0l89JDC/AnWaXzZ/piViY9JulrIZiBO4WZ0xUNB1h5if
	N3fdakwm45dGeZFOmEEQluPvsXb+7+mUYc6JbVqJrzVtSNj8Uuj3Rr/JHEB1giCUqku8yoieKyE3I
	7UbneWTarZujjqLGY5YfRe+hNizDP919cXMvk/1MriGebcmjE8rTDSc2CvDM4t3f0uBa6U2wUD6XA
	SSUoymMwq+kASJW2CjyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOCoi-00000002KqQ-3fNh;
	Mon, 01 Jul 2024 08:55:20 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOCof-00000002KpW-2vLG
	for wireless-regdb@lists.infradead.org;
	Mon, 01 Jul 2024 08:55:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2022F60EB2
	for <wireless-regdb@lists.infradead.org>; Mon,  1 Jul 2024 08:55:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8D1DC4AF0C
	for <wireless-regdb@lists.infradead.org>; Mon,  1 Jul 2024 08:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719824116;
	bh=SuvjarER2AZq18GyRlIXRrOt6IN/6thFb0jUI4bj+3g=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=au8CpYPCxv7TsB3HuOHLinc+CPyPloR8g1pdqFPzXB3V4mrJNkzthTim5KHDriwO0
	 MI9bV95o80ddoGUmXK5UW49g5GgBFC2OI2jQWvHylAvaSk5IrQvEN9durdbcJs1ypE
	 1sPLkDvLXH1FJXKOz7o4eWFCzxPFZTmADmkP1jwAv4jZrPr7fpOwcv7DJt40mwVMTi
	 ZrA2hVsQRvtM+S2K0zWq/fXpAFMM3xp6RfB7pUMxot4MEz6gOxwDLPrcMo1PLOmoN9
	 SUecsVc0dsnYZL1sfYGOyeTA9GQ7SnEVx3DOXoXK3eHcJoVT2II5IUXR9bITGebsut
	 xA6qY9Z3R/Kcg==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2ee4ab5958dso32374641fa.1
        for <wireless-regdb@lists.infradead.org>; Mon, 01 Jul 2024 01:55:16 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXXUgjS/0o/1BigEvLtMuUD6M+fho0d1u7n+xn+2XK/dobKx4/fFASSM26xNnB+7TzrLFi2hLURGww157veVlFa2LmAO2NARC3IAmOIKW0TqZG+
X-Gm-Message-State: AOJu0YyRtNT+lLI8IcF5ZJ3+utNaXU7uH03iEfryTtNIglwGBnsEgsXh
	dYdCags8d24OnPR4nhWOnCWBa8dtzzqGZojBe3PJLStCO2zQO8CjM2CApy8MzMf9jMWTxlUzORl
	L5xC6SlYGgs9GIWHJx0yPAjW5iX8=
X-Google-Smtp-Source: AGHT+IEiwZPU1FVVO+z7Xw7oqUU9yTGlMQMY63gZIOt5jn79c63KhcekBw3AwEObZJeMR7rFpA/IoqkOzJNFiFuLPlM=
X-Received: by 2002:a2e:8907:0:b0:2ec:825:91b9 with SMTP id
 38308e7fff4ca-2ee53bfb12amr25859461fa.9.1719824115094; Mon, 01 Jul 2024
 01:55:15 -0700 (PDT)
MIME-Version: 1.0
References: <20240624025623.6021-1-pkshih@realtek.com> <20240624025623.6021-2-pkshih@realtek.com>
 <CAGb2v651jAs9g-UqCeoPgmiigpNDTVY_itvhwq9VBHPuzfdPRg@mail.gmail.com>
In-Reply-To: <CAGb2v651jAs9g-UqCeoPgmiigpNDTVY_itvhwq9VBHPuzfdPRg@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 1 Jul 2024 16:55:01 +0800
X-Gmail-Original-Message-ID: <CAGb2v65aRPo3kwvUA8WZXxnbjJmGNr5OsU9=92zLzCUSB8MzSQ@mail.gmail.com>
Message-ID: <CAGb2v65aRPo3kwvUA8WZXxnbjJmGNr5OsU9=92zLzCUSB8MzSQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] wireless-regdb: Update regulatory info for Jordan
 (JO) for 2022
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_015517_856275_151F78FA 
X-CRM114-Status: GOOD (  21.99  )
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

On Mon, Jul 1, 2024 at 4:22=E2=80=AFPM Chen-Yu Tsai <wens@kernel.org> wrote=
:
>
> On Mon, Jun 24, 2024 at 10:56=E2=80=AFAM Ping-Ke Shih <pkshih@realtek.com=
> wrote:
> >
> > The Hashemite Kingdom of Jordan, Telecommunications Regulatory Authorit=
y
> > issued pursuant to the provisions of Articles (12A) and (22) of the
> > Telecommunications Law No. 31 of 1995, as amended. [1]
> >
> > The effective radiated power (EIRP) of devices used in local radio comp=
uter
> > networks must not exceed the following values:
> >
> >  - 2400-2483.5 MHz: 100 milliwatts (20 dBm)
> >  - 5150-5350 MHz: 200 milliwatts (23 dBm), (ETSI: 20 dBm, DFS)
> >  - 5470-5725 MHz: 1 watt (30 dBm), (ETSI: 27 dBm, indoor only, DFS)
> >  - 5725-5875 MHz: 200 mW (23 dBm), (ETSI: indoor only)
> >  - 5925-6425 MHz:
> >    * 25 milliwatts (14 dBm) (for outdoor and portable devices)
> >    * 200 milliwatts (23 dBm) (for devices operated indoors only)
> >  - 57-71 GHz: 10 W (40 dBm)
> >
> > Follow ETSI EN 301 893 [2], which specifies reduced power limit of
> > 20 and 27 dBm for the range 5150-5350 and 5470-5725 respectively for
> > devices that don't implement TPC; and classifies the 5470 - 5725 MHz an=
d
> > 5725 - 5875 MHz ranges as indoor use only; and DFS is required for band=
s
> > 5250 - 5350 Mhz and 5470 - 5725 Mhz. (Add these rules followed rules of
> > [1] with "ETSI:" annotation)
> >
> > [1] https://trc.gov.jo/EchoBusV3.0/SystemAssets/PDF/RSMD/cb9f9a83-43a6-=
4e66-8432-6e02ecaf465b_RLAN%20Arabic%20%20Final%20-%20clean%20with%2057-71%=
20GHz.pdf
> > [2] https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.01.01_=
60/en_301893v020101p.pdf
> >
> > Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> > ---
> > v2:
> >   - Follow ETSI EN 301 893 to modify limits, and add description in com=
mit
> >     message.
> >   - add 57-71 GHz
> > ---
> >  db.txt | 12 +++++++++---
> >  1 file changed, 9 insertions(+), 3 deletions(-)
> >
> > diff --git a/db.txt b/db.txt
> > index 61c46186919e..60343a745ecf 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -957,10 +957,16 @@ country JM: DFS-FCC
> >         (5490 - 5730 @ 160), (24), DFS
> >         (5735 - 5835 @ 80), (30)
> >
> > +# Source:
> > +# https://trc.gov.jo/EchoBusV3.0/SystemAssets/PDF/RSMD/cb9f9a83-43a6-4=
e66-8432-6e02ecaf465b_RLAN%20Arabic%20%20Final%20-%20clean%20with%2057-71%2=
0GHz.pdf
> > +# ETSI EN 301 893: https://www.etsi.org/deliver/etsi_en/301800_301899/=
301893/02.01.01_60/en_301893v020101p.pdf
> >  country JO: DFS-JP
>
> Change this to DFS-ETSI given that the official regulations just point
> to ESTI for details.
>
> > -       (2402 - 2482 @ 40), (20)
> > -       (5170 - 5250 @ 80), (23)
> > -       (5735 - 5835 @ 80), (23)
> > +       (2400 - 2483.5 @ 40), (20)
> > +       (5150 - 5350 @ 80), (20), DFS
>
> Per ETSI regulations, DFS is only required for 5250 - 5350. Please split
> this into two rules. And please add AUTO-BW to both.
>
> Also, looking at the official regulations again, I believe it is worded
> in a way that does not require TPC for 5150 - 5350. So please raise the
> limit back up to 32 dBm.

I meant 23 dBm.

> Thanks
> ChenYu
>
> > +       (5470 - 5725 @ 80), (27), DFS, NO-OUTDOOR
> > +       (5725 - 5875 @ 80), (23), NO-OUTDOOR
> > +       (5925 - 6425 @ 320), (23), NO-OUTDOOR
> > +       (57000 - 71000 @ 2160), (40)
> >
> >  # Source:
> >  # https://www.soumu.go.jp/main_content/000635492.pdf
> > --
> > 2.25.1
> >

