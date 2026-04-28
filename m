Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40097FF886F
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 Apr 2026 06:26:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nmSC6DaII4MMuc7vNQh/dy3IgmO/6n26joqSsPDQkP4=; b=fG3JjoKSBEnLSj
	SD9YFw/XpIb6lEyUl+/IE741B3yFMTL/2F5eRKakzXVgLKh7drRNzq21OmxZkZPxM7EwKV3DjjwU3
	mHI/jeWnx0hDfFTI9yYBv7w3+rR3IR5EvsbO+uXrv5gh8zcg9gQmcsKclqbEpW0WeDoHUGvqrwJvL
	Ka34OAbq5vI51NvqH/JRRpC81ieezwKXB/7GBTRn8iKkUY/ezfvNS8i2D8IDu90d3e3ts8Mr40mae
	OlF17mFiwIxb+EndR26ypmqjra4WqB8/WLw6MbmlX0rfPQddT/lSQEGo2a4TFi4hZuWnbmMMdfvck
	cOeLzxXwPcZ0oQvSKK6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHbtb-00000000d6s-1lY2;
	Tue, 28 Apr 2026 06:26:11 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHbtY-00000000d6F-2rvH
	for wireless-regdb@lists.infradead.org;
	Tue, 28 Apr 2026 06:26:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2C53741697
	for <wireless-regdb@lists.infradead.org>; Tue, 28 Apr 2026 06:26:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E48EC2BCB5
	for <wireless-regdb@lists.infradead.org>; Tue, 28 Apr 2026 06:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777357568;
	bh=vnta2+YDM978p/Iq00SBFTMes1N2Q/waoiGqZc4/amg=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=ptuAq4cjrJe2NplBXEHTqTHpvsoW0C6JKlRN8u1F+P3Z7g/xJ5LfpVCVvivm7EOpG
	 tFnPKkYrgPnhg5XLZ7WcCkzj4QZ/xdJMGqE/P9Qwwb1kIbmft00r7RN+slimSnTumS
	 TUCNPNMDMt+DoQo4mnqKmeLcyeAmxQ7dHwv+eBmNkINY4QhGW8ZilS+OeamRUJTIEA
	 Ke1G++G2KCrgVj5o0XUOY02HpkxriTSBZ/S1UBnKS1IlQ2oi5WQVKG1iOr8KlXmhfS
	 D5ByuX9sSiEGcD3AeceTR4l2+hIKCKIJ17BUcvEDD0mFrZ3lqe01kYsvexePt/Jv9n
	 PuHplXLGeHQag==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-38e936caafeso112081581fa.2
        for <wireless-regdb@lists.infradead.org>; Mon, 27 Apr 2026 23:26:07 -0700 (PDT)
X-Gm-Message-State: AOJu0Ywik36O0ZJBZCofHpVwpX78ilSMTCHy3BNvNdsowrjtYeFo49Bn
	dETjWn4tM2dso8CvcNPIu75il8XAfvp2UqWGQo1nJkqGX9sR/Z/+6X6xDYdFfks+aefkZDbbuxr
	1BPexKsAuJncP/fiiqofiqfbzjwrTuic=
X-Received: by 2002:a2e:a588:0:b0:38a:2c06:a270 with SMTP id
 38308e7fff4ca-39241206aa7mr4360311fa.30.1777357566364; Mon, 27 Apr 2026
 23:26:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAMcSecJ7nDo+-JqGri80m8yn_cp9UfajHqLQDPYup7Zh7QVj7Q@mail.gmail.com>
 <CAGb2v65cGJLYMAJTu00BocqprModBUfYd94GVNEemJj33g+gfg@mail.gmail.com> <CAMcSecLssysJKfNXuhPjq2QLNVeO6Wpa-oW9W_hXxYsMT36mZQ@mail.gmail.com>
In-Reply-To: <CAMcSecLssysJKfNXuhPjq2QLNVeO6Wpa-oW9W_hXxYsMT36mZQ@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 28 Apr 2026 15:25:52 +0900
X-Gmail-Original-Message-ID: <CAGb2v65u9PJz5124eQgMBTYkShOTMM2DdvgVprtku+hPvuA_0A@mail.gmail.com>
X-Gm-Features: AVHnY4LSs3MEr-X8_gjOsAXQ-R8Fl_cBM_lXfOopShnb9TTXrh-M2M2RVqbvXZQ
Message-ID: <CAGb2v65u9PJz5124eQgMBTYkShOTMM2DdvgVprtku+hPvuA_0A@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Add 6 GHz LPI rule for South Africa (ZA)
To: Louis Kotze <loukot@gmail.com>
Cc: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_232608_763644_F48AEE72 
X-CRM114-Status: GOOD (  28.87  )
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

On Fri, Apr 10, 2026 at 5:09=E2=80=AFPM Louis Kotze <loukot@gmail.com> wrot=
e:
>
> Thanks for the quick reply.
>
> Indoor is the right choice. The LPI rule at 23 dBm is the primary use
> case =E2=80=94 indoor WiFi 6E/7 access points. The current VLP-only rule
> (14 dBm) breaks 6 GHz entirely for indoor setups because the
> regulatory mismatch with LPI access points causes repeated association
> failures.
>
> ICASA references EN 303 687, which restricts LPI to indoor use, so
> NO-OUTDOOR is required.
>
> Updated patch below =E2=80=94 replaces the VLP rule rather than adding a
> second one.

Can you resend this as a separate patch, i.e. not as a reply to an
existing thread? Otherwise the tooling can't pick it out.

And don't include replies in the commit message.


Thanks
ChenYu

> Signed-off-by: Louis Kotze <connect@prolificstudio.co.za>
> ---
>  db.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/db.txt b/db.txt
> index 343b256..778ac21 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -2180,6 +2180,6 @@ country ZA: DFS-ETSI
>   (5170 - 5250 @ 80), (20), AUTO-BW
>   (5250 - 5330 @ 80), (20), DFS, AUTO-BW
>   (5490 - 5710 @ 160), (30)
> - (5925 - 6425 @ 320), (14)
> + (5925 - 6425 @ 320), (23), NO-OUTDOOR
>
>  country ZW: DFS-ETSI
>
>
> Regards
> Louis Kotze
>
> On Fri, Apr 10, 2026 at 9:26=E2=80=AFAM Chen-Yu Tsai <wens@kernel.org> wr=
ote:
> >
> > On Thu, Apr 9, 2026 at 7:34=E2=80=AFPM Louis Kotze <loukot@gmail.com> w=
rote:
> > >
> > > Hi maintainers,
> > > Please have a look at the following request:
> > >
> > > ICASA (Independent Communications Authority of South Africa) publishe=
d
> > > Notice 1822 of 2023 on 23 May 2023, amending Annexure B of the Radio
> > > Frequency Spectrum Regulations, 2015, to allow licence-exempt use of
> > > the lower 6 GHz band (5925-6425 MHz) for WAS/RLAN.
> > >
> > > The notice references the ETSI EN 303 687 standard and defines two
> > > device classes for 5925-6425 MHz:
> > >
> > >   1. Low Power Indoor (LPI)
> > >      - Max EIRP         : 23 dBm (200 mW)
> > >      - Restriction      : Indoor use only
> > >
> > >   2. Very Low Power (VLP)
> > >      - Max EIRP         : 14 dBm (25 mW)
> > >      - Restriction      : None
> > >
> > > Currently, the database only contains the VLP rule (14 dBm). Add the
> > > LPI rule (23 dBm, NO-OUTDOOR).
> > >
> > > Without the LPI rule, clients connecting to indoor access points
> > > advertising 6 GHz at LPI power levels experience repeated association
> > > failures due to regulatory mismatch ("regulatory prevented using AP
> > > config, downgraded"), which on MLO (Multi-Link Operation) setups
> > > causes the 6 GHz link to fail and disrupts the connection.
> >
> > Unfortunately we can only have one rule per band. So it's either allow
> > outdoor usage or better indoor performance.
> >
> > ChenYu
> >
> > > Reference:
> > >   ICASA Notice 1822 of 2023
> > >   Amendment to Annexure B, Radio Frequency Spectrum Regulations, 2015
> > >   URL: https://www.icasa.org.za/news/2023/icasa-releases-more-spectru=
m-for-wi-fi-services-in-the-lower-6ghz-band
> > > Signed-off-by: Louis Kotze <connect@prolificstudio.co.za>
> > > ---
> > >  db.txt | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/db.txt b/db.txt
> > > index 343b256..778ac21 100644
> > > --- a/db.txt
> > > +++ b/db.txt
> > > @@ -2180,6 +2180,7 @@ country ZA: DFS-ETSI
> > >   (5170 - 5250 @ 80), (20), AUTO-BW
> > >   (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> > >   (5490 - 5710 @ 160), (30)
> > > + (5925 - 6425 @ 320), (23), NO-OUTDOOR
> > >   (5925 - 6425 @ 320), (14)
> > >
> > >  country ZW: DFS-ETSI
> > > --
> > >
> > >
> > > Thank you and Regards
> > > Louis Kotze

