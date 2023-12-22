Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B54ACC46CD3
	for <wireless-regdb@archiver.kernel.org>; Fri, 22 Dec 2023 03:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fge+IDTzXkqeg9r5qBn9pOmuSXPZCJ+xcWDHuxt01C4=; b=YtW8nqCLzuL+dG
	wIJgO2SZT0n4CpW75IG99thSlRIh6GQthvu+91TUSfRfpyY+34LgakQoWJfBxohwx9bC4JVfHOhWc
	rLxNwTys8aMAxdyWTslLVzWH1G0y9RCgjj+ijH06lRMH8xLGNQ0wcEfBuKz1zkGlCO8nPcnLg3Nf6
	OW7ulwqVuyp4ge+JBKYXXgtpqySMkwwJKo+kE8B77n2/on/SRwXhynhnPk4MvAYMEl8tmwmuVwTjR
	E+oq/clhuykD2au8PhoddiWxg8osqEVr5ITEfVNBTr1beprXkxqz9gCh2MwOP8yVcfYv0XwF2O5gC
	5wV9K2Q+mHBOPSoQ/2Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGWUM-004mw4-0x;
	Fri, 22 Dec 2023 03:46:18 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGWUJ-004mvf-0g
	for wireless-regdb@lists.infradead.org;
	Fri, 22 Dec 2023 03:46:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 8A893B82175
	for <wireless-regdb@lists.infradead.org>; Fri, 22 Dec 2023 03:46:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16AD9C433C8
	for <wireless-regdb@lists.infradead.org>; Fri, 22 Dec 2023 03:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703216772;
	bh=/HBMIDCXdXSM0Cck61qEYJH7Milhscnpb8KzIzjkFTg=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=B/CiACY8B4EYxT6Gd9aRpmfBhQ8eFVanMXimJlKmTKN/h3fnHsrXM574YDdXXfxiQ
	 o4SKq3FtTtjsmVGyg2OtVgD3jhhRWQIYrq8+naavjCCkMoSRiKE+jYj3LP5R8yvFgw
	 QGHY20V+LBg3WY12cRvK9kmP6REC1zwgIFuRJLpzILBL7TD1tz2vA2E+iUIPh+R5KM
	 PFPbJxkJ9HnF1piKvVpqklHiHadR5hPoUFaYEv+eJSBZYR+1at3L239alKVKQe3XXu
	 XYdjuKjrIJnrJAU7BWIgg9oP1KF01WDfydVVnt+E/jVk8cHAsQ8689LgtXH5rgvI6Z
	 jTNT+5BDDIUKw==
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-6d099d316a8so1437629b3a.0
        for <wireless-regdb@lists.infradead.org>; Thu, 21 Dec 2023 19:46:12 -0800 (PST)
X-Gm-Message-State: AOJu0YxCNUbH4oQybB6QezmfqZxpy3bIOACCOHbi32hgYdqVREReRry8
	RWr5xpml8/2Pq34THUn/CdXkNKfgxofWZg6NGsM=
X-Google-Smtp-Source: AGHT+IHiT1bovAevHK8u4faffnPvE7l8gJ5pn0mJQVTTG5mSfKYLXBDmlSSUE/X2nx+9IBov5k7VW7YJXtAf0X1AqGo=
X-Received: by 2002:a05:6a20:da:b0:18b:d207:d857 with SMTP id
 26-20020a056a2000da00b0018bd207d857mr729730pzh.11.1703216771663; Thu, 21 Dec
 2023 19:46:11 -0800 (PST)
MIME-Version: 1.0
References: <CAE+BM3kzS-xYjLWyBqTaYpEAmR1p=8UuxR957QZW1soKwakmZQ@mail.gmail.com>
In-Reply-To: <CAE+BM3kzS-xYjLWyBqTaYpEAmR1p=8UuxR957QZW1soKwakmZQ@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 22 Dec 2023 11:46:00 +0800
X-Gmail-Original-Message-ID: <CAGb2v65nTNa4GQdao85ZG08HToNx6vvK8MxkkW5SSKu7To-1Bg@mail.gmail.com>
Message-ID: <CAGb2v65nTNa4GQdao85ZG08HToNx6vvK8MxkkW5SSKu7To-1Bg@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] Correctly parse power with gain and eirp
To: Rusty Howell <rustyhowell@gmail.com>
Cc: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_194615_553249_5B15FF69 
X-CRM114-Status: GOOD (  15.87  )
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

On Thu, Sep 14, 2023 at 12:16=E2=80=AFPM Rusty Howell <rustyhowell@gmail.co=
m> wrote:
>
> From 082a38a3de11701ea1edf40a2f3268ec5115c691 Mon Sep 17 00:00:00 2001
> From: Rusty Howell <rhowell@control4.com>
> Date: Wed, 13 Sep 2023 11:13:19 -0600
> Subject: [PATCH] Correctly parse power with gain and eirp
>
> Parse a power entry like "(6, 20)" or "(20", or "(N/A, 20)".
> Previously, the example ASCII file format show in this page would not par=
se.
> https://wireless.wiki.kernel.org/en/developers/regulatory/wireless-regdb#=
mailing_list_for_regulatory_updates

Antenna gain was removed from the database in commit e56cd96
("wireless-regdb: remove antenna gain").

The wiki needs to be updated.

ChenYu

> ---
>  dbparse.py | 17 +++++++++++++----
>  1 file changed, 13 insertions(+), 4 deletions(-)
>
> diff --git a/dbparse.py b/dbparse.py
> index 1e87813..b36ff9c 100755
> --- a/dbparse.py
> +++ b/dbparse.py
> @@ -264,16 +264,25 @@ class DBParser(object):
>
>      def _parse_power_def(self, pname, line, dupwarn=3DTrue):
>          try:
> -            max_eirp =3D line
> -            if max_eirp =3D=3D 'N/A':
> -                max_eirp =3D '0'
> -            max_ant_gain =3D float(0)
> +            max_eirp =3D ''
> +            max_ant_gain =3D ''
> +            if ',' in line:
> +                max_ant_gain, max_eirp =3D line.split(',')
> +                if max_ant_gain =3D=3D 'N/A':
> +                    max_ant_gain =3D '0'
> +            else:
> +                max_ant_gain =3D '0'
> +                max_eirp =3D line
> +                if max_eirp =3D=3D 'N/A':
> +                    max_eirp =3D 0.0
> +
>              def conv_pwr(pwr):
>                  if pwr.endswith('mW'):
>                      pwr =3D float(pwr[:-2])
>                      return 10.0 * math.log10(pwr)
>                  else:
>                      return float(pwr)
> +            max_ant_gain =3D float(max_ant_gain)
>              max_eirp =3D conv_pwr(max_eirp)
>          except ValueError:
>              self._syntax_error("invalid power data")
> --
> 2.25.1
>
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb

