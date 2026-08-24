Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56469C5DF94
	for <wireless-regdb@archiver.kernel.org>; Mon, 24 Aug 2026 07:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQETx+twl973G4FbIh3mQc++j4px3UTMu1k/gnA07m4=; b=VqnjIyl3kW66hn
	QE2jv5L/7+1whY80cgzjhkWecb+qe6j3Y/JhUBO4CiAhYHL8TWYBmUFxeoqJwLJWe7/0stHWx5mXw
	eYkDcpZa2aBEEQOPcGlDTLNtx+T2hdWpBx/4HzXDS5L+y32NrUwFFhONBnEiUjhAtbaBMGqvpcV5T
	uHonAa2sA0EFB4q35F0/w+dRpSYXbASeVNJKkFT3W50IPc26vxqFx+et+FhDCD7GvmpQfzwo+oZ0g
	fxvtKQ6IGTOVkDrCkauyEBEO4Q64FIL8jbrZg0G3LRkisG24BDwKTNZPoMg4hAsvL2jNxUnEr7Je/
	kyxeRNeP9uMu92cByPuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyPHT-0000000G6mF-00br;
	Mon, 24 Aug 2026 07:39:43 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyPHR-0000000G6lg-45wG
	for wireless-regdb@lists.infradead.org;
	Mon, 24 Aug 2026 07:39:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 519EC402F4
	for <wireless-regdb@lists.infradead.org>; Mon, 24 Aug 2026 07:39:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 369531F00A3A
	for <wireless-regdb@lists.infradead.org>; Mon, 24 Aug 2026 07:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787557181;
	bh=FQETx+twl973G4FbIh3mQc++j4px3UTMu1k/gnA07m4=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=OumuAoZiYC2LdrP5CuLMMByZR7Ai+g3h9Ma6iSjQgG3DMHQf3aMSNA+NTiywS8y9r
	 RHbxUSZXNygo9WSNlAhK+V22HrpycHSfC91PAZ9HZlB0bsP4Es747tO7ubnco5mDb0
	 ClHri30/TAeA03Ivhqhv22LotgaypWxrLKh37aVQDUeyMuVLkv2MPRU39H/wbO7uYc
	 kiQg3pqy1Jl63A7zYJSsB+4yf944884MEJYGYsOFYdqhBfp9Ln0zw5WMZqzzBC2ju2
	 MmxW/ETVBhLNlDhz2k3Uuf8aM/f0yJSP8lnF3ScRJTjgIloQwa9WdZdei2x/Z4xu4A
	 9sbXv62rA19Pw==
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-3a1585728b5so24443641fa.0
        for <wireless-regdb@lists.infradead.org>; Mon, 24 Aug 2026 00:39:41 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RphNWsJxSyQhCPWSh1lmtQLj9+CY4TVqhjt7Yu4+06hdp+P0MNq00Pma7eTLs1eiKcqjRbSnv1+09eOBXzm+A==@lists.infradead.org
X-Gm-Message-State: AFuF++m7dMMkKbkV5xAeAgsJouqvx80awcFpe+MySJvmbHQTF/jYJOIE
	Z212K1sDa2PApAGwmoKH3+EktWuFi3t1W/yCrYwN5uUYg8wSGgMJrMEZsCfPEdZfSFHWdFibBE/
	TXH625EZ+S66gH9QCpxceiXzStGoIYfw=
X-Received: by 2002:a05:651c:b29:b0:39b:2757:c1d3 with SMTP id
 38308e7fff4ca-3a1aec08881mr57239121fa.9.1787557179643; Mon, 24 Aug 2026
 00:39:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAJF5HCtEvb-aiusJuzmCvu-db4orDwsSnG+mOfCbLXXYRCbtvg@mail.gmail.com>
 <CAGb2v66bvMC9wU9gYknRdM+0oG7UcGquHCu5KYiwJjWZDRtk1g@mail.gmail.com> <CAJF5HCtAVMbarNYDkrKWE97Lib+YJk8ZE+5eWsEZ4fKVTp8tOw@mail.gmail.com>
In-Reply-To: <CAJF5HCtAVMbarNYDkrKWE97Lib+YJk8ZE+5eWsEZ4fKVTp8tOw@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 24 Aug 2026 15:39:25 +0800
X-Gmail-Original-Message-ID: <CAGb2v66-ee1n9E2-GmFZu02HRmFFWPQ1KB-L9uPQcq1i5HSpEw@mail.gmail.com>
X-Gm-Features: AcwNN1W17ZcnTDpUslucQDZqrt3n9VNZpNg1C04tJ1jHKInO7qgADqCWGd4vEtQ
Message-ID: <CAGb2v66-ee1n9E2-GmFZu02HRmFFWPQ1KB-L9uPQcq1i5HSpEw@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: update regulatory rules for Bangladesh (BD)
To: Ibrahim Hossain Abir <xbowpc@gmail.com>
Cc: linux-wireless@vger.kernel.org, sforshee@kernel.org, 
	wireless-regdb@lists.infradead.org
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

On Mon, Aug 24, 2026 at 3:23=E2=80=AFPM Ibrahim Hossain Abir <xbowpc@gmail.=
com> wrote:
>
> Hi ChenYu,
>
> Thank you for the review.
>
> Regarding the reference:
> The official BTRC circular (dated Sept 15, 2024) specifically
> authorizes the 5925=E2=80=936425 MHz frequency range for Wi-Fi/WLAN/IoT s=
hared
> usage in Bangladesh. However, this notice does not define explicit
> EIRP power limits, TPC, or DFS requirements.
>
> In the initial patch, standard conservative limits (such as 23 dBm for
> 6 GHz LPI) were derived from standard Wi-Fi 6E/7 spectrum norms.
>
> Could you advise on how wireless-regdb prefers to handle cases where
> the regulatory body approves the band without listing explicit EIRP
> limits in their notice? Would setting a conservative default (like 20
> dBm / 100 mW EIRP) for 5925=E2=80=936425 MHz be acceptable for Patch v2?

As previously mentioned we cannot accept random limits without justificatio=
n.
The regulatory body needs to specify limits, or outright state they defer
to some other standard.

Please help reach out to the regulatory body for clarification. They should
provide the information, otherwise folks doing the certification have nothi=
ng
to base it off of.


Thanks
ChenYu

> Thanks,
> Ibrahim Hossain Abir
>
>
> On Mon, Aug 24, 2026 at 10:38=E2=80=AFAM Chen-Yu Tsai <wens@kernel.org> w=
rote:
> >
> > On Mon, Aug 24, 2026 at 4:26=E2=80=AFAM Ibrahim Hossain Abir <xbowpc@gm=
ail.com> wrote:
> > >
> > > wireless-regdb: update regulatory rules for Bangladesh (BD)
> > >
> > > Update regulatory rules for Bangladesh (BD) based on the official BTR=
C
> > > (Bangladesh Telecommunication Regulatory Commission) directive dated
> > > September 15, 2024.
> > >
> > > Enables U-NII-1/2A, U-NII-2C (DFS), U-NII-3/4, and lower 6 GHz (5925-=
6425 MHz).
> > >
> > > Official BTRC Notice:
> > > https://btrc.gov.bd/pages/notices/6922ee00dbfbab28ce0c438d
> >
> > This only says that the lower 6 GHz range is allowed. It does not say
> > what the power limits are, or if there are any other restrictions.
> >
> > > User Impact Reference:
> > > https://community.intel.com/t5/Wireless/6-GHz-Wi-Fi-6E-Not-Detected-o=
n-Intel-AX211-in-Bangladesh/m-p/1740885
> > >
> > > Signed-off-by: Ibrahim Hossain Abir <xbowpc@gmail.com>
> > > ---
> > >  db.txt | 8 +++++---
> > >  1 file changed, 5 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/db.txt b/db.txt
> > > index 0000000..1111111 100644
> > > --- a/db.txt
> > > +++ b/db.txt
> > > @@ -223,5 +223,7 @@ country BD: DFS-JP
> > >   (2402 - 2482 @ 40), (20)
> > > - (5735 - 5835 @ 80), (30)
> > > + (5150 - 5350 @ 80), (20), NO-OUTDOOR, AUTO-BW
> > > + (5470 - 5725 @ 160), (20), DFS, AUTO-BW
> > > + (5725 - 5850 @ 80), (30)
> > > + (5925 - 6425 @ 320), (23), NO-OUTDOOR
> >
> > A reference with the band and power limits, as well as any other
> > restrictions like DFS or TPC (andif TPC is required, what is the
> > limit if TPC is not implemented) needs to be provided. We cannot
> > put random numbers into the database without justification.
> >
> >
> > Thanks
> > ChenYu

