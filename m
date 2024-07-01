Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CB63C2BD09
	for <wireless-regdb@archiver.kernel.org>; Mon,  1 Jul 2024 09:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PE6fyhBdActmp3jTFVWZT4nG6nWM66miAz7ePrMwBws=; b=V9krcWJ/PeaMpI
	MAmrQLbEO61EYYOcvyA+gc5fztgXZbVpwuNSlbnd6H4VgCPnIKM78nN2xZ1KbGRue86n9NwylyKUC
	Qtxl0nycXg5o5zWBG9rt5Y8fFnsht2QEWrCudOnu5pZMLd+ycLxR50EIk6GMkeCX9GEaVIxzADrJ0
	qpj9iMrZAsRMWRMVwgOaJmzpbIwwRZjoSsDxUoRP3frFbLZ4RD+4z5I1YFz+aEII9ab+sTWcfk6Ju
	303zI+pQ9AmAbZwfXMowoTnpch0xjiU9BxDHcCAMWX5rpBp23VF6wPvPCy5GQEVLyDPQeMsHKNqYB
	AjqHkOFw4u6kASQ05Czw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODJ4-00000002RFW-2WKX;
	Mon, 01 Jul 2024 09:26:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODIz-00000002RES-48bE
	for wireless-regdb@lists.infradead.org;
	Mon, 01 Jul 2024 09:26:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 641FC61181
	for <wireless-regdb@lists.infradead.org>; Mon,  1 Jul 2024 09:26:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1863CC4AF0C
	for <wireless-regdb@lists.infradead.org>; Mon,  1 Jul 2024 09:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719825997;
	bh=E8ISHJRZ0T/wmgb74RMlaRUlrSpgkvdgYZlNdp66hSo=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=g63thwVTDS93Gpb36X1j8fIy2YOuYjLmODvt//DMk3KDd7AkcXlUyAmh7ByNU+llJ
	 Z89zA2tRiN2UIlcaN0pyXVQ7fXv5hxOcvou12z0ev3KcrZo57q7LNd4RQajWKS07rL
	 TchVrFTxx+dAz7G2wW6h8sysq5+CJ8XnukjCgffzI4W9+Thih3IxWD5Z0I0/XlVpck
	 TLHEw3vDXsvPAeMthiGw29Ocd8dh0J7cCwH2LuZ9htsJ4YQC4v4Gd86i8muaJ1F4aK
	 5VVZmkVJ0KhlpeZP2clntxhOWO7JBrYJekdtXNQfhoMGkoENGpIwqPyz1nCdbeUOlU
	 QY2Ysi7BnKM2Q==
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2eaea28868dso37869451fa.3
        for <wireless-regdb@lists.infradead.org>; Mon, 01 Jul 2024 02:26:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXdd2gNb+ed3g5VqqU2j21BWI80NWyhaIl534ddSEJBbsf/COk4FJ9zRC0r6bJAOuU8ZuLtdzZxuelAo6j6cRz2PK7V0EnvePAzzab+UdfltoY8
X-Gm-Message-State: AOJu0YzhOly5zZP45dxvkoncTsVoyLqWYIWx6mXr0AF+9dC0VxuRqccS
	CBihL+GLMCwURtA0ciVK/PItHKAjseLDDHsO8DLN0UlPkur4+fdmNJlzwEqpkiwgsAsqiM32s7O
	BDFDYMQ4waX/5AqAMCX9O//efrIY=
X-Google-Smtp-Source: AGHT+IHMe03KviipNWz/spwITQbaWDQjiqkIVKXLq6j97XrzUf1loSPVyZVsGkgp8u4hDeEBZfH6FAGujQnAED7LTqI=
X-Received: by 2002:a05:651c:118d:b0:2ec:5685:f061 with SMTP id
 38308e7fff4ca-2ee5e3a3f04mr37129561fa.21.1719825995419; Mon, 01 Jul 2024
 02:26:35 -0700 (PDT)
MIME-Version: 1.0
References: <20230416013031.158433-1-sforshee@kernel.org> <d448ca6a-106a-478f-ad80-5c8730765ca0@nbd.name>
In-Reply-To: <d448ca6a-106a-478f-ad80-5c8730765ca0@nbd.name>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 1 Jul 2024 17:26:22 +0800
X-Gmail-Original-Message-ID: <CAGb2v64ArWLugdvZfGxSGA3eqxcozMo1Xov77_93=A=FwtijNw@mail.gmail.com>
Message-ID: <CAGb2v64ArWLugdvZfGxSGA3eqxcozMo1Xov77_93=A=FwtijNw@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: update regulatory rules for India (IN)
To: Felix Fietkau <nbd@nbd.name>
Cc: Seth Forshee <sforshee@kernel.org>, wireless-regdb@lists.infradead.org, 
	linux-wireless@vger.kernel.org, Keshav <the.ridikulus.rat@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_022638_130586_A49E7D0B 
X-CRM114-Status: GOOD (  13.85  )
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

On Sat, Jun 22, 2024 at 1:54=E2=80=AFAM Felix Fietkau <nbd@nbd.name> wrote:
>
> On 16.04.23 03:30, Seth Forshee wrote:
> > Increase the max EIRP for 2.4 GHz to 30 dBm, and add DFS for 5250-5350
> > MHz and 5470-5725 MHz.
> >
> > Source:
> > https://dot.gov.in/spectrummanagement/delicensing-24-24835-ghz-band-gsr=
-45-e-5150-5350-ghz-gsr-46-e-and-5725-5875-ghz
> > https://dot.gov.in/spectrummanagement/license-exemption-5-ghz-gsr-1048e=
-dated-22102018
> >
> > Signed-off-by: Seth Forshee <sforshee@kernel.org>
> > ---
> >   db.txt | 9 ++++++---
> >   1 file changed, 6 insertions(+), 3 deletions(-)
> >
> > diff --git a/db.txt b/db.txt
> > index 915a3b94d418..2a7779510cc5 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -850,11 +850,14 @@ country IL: DFS-ETSI
> >       # Table B List of conditions, row 68, wireless device using 802.1=
1a/n/ac protocol
> >       (5725 - 5875 @ 80), (200 mW), AUTO-BW
> >
> > +# Source:
> > +# https://dot.gov.in/spectrummanagement/delicensing-24-24835-ghz-band-=
gsr-45-e-5150-5350-ghz-gsr-46-e-and-5725-5875-ghz
> > +# https://dot.gov.in/spectrummanagement/license-exemption-5-ghz-gsr-10=
48e-dated-22102018
> >   country IN:
> > -     (2402 - 2482 @ 40), (20)
> > +     (2402 - 2482 @ 40), (30)
> >       (5150 - 5250 @ 80), (30)
> > -     (5250 - 5350 @ 80), (24)
> > -     (5470 - 5725 @ 160), (24)
> > +     (5250 - 5350 @ 80), (24), DFS
> > +     (5470 - 5725 @ 160), (24), DFS
>
> What about the DFS region? The DFS channels won't work without it.

The given references do not specify which region to follow. So unless someo=
ne
provides more information, there is nothing we can do.

ChenYu

