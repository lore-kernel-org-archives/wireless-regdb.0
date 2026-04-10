Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21BF3E9904C
	for <wireless-regdb@archiver.kernel.org>; Fri, 10 Apr 2026 07:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aH4ccFXAfkhzf63/+tGWDn5UaMSk8BnFqT7YEFz948s=; b=mXf/Xe52WZ4aTN
	dSo08avgeepG9jUU5/u5OE9jVUH4I6RlEu6QU6BwfB1TcK90koJ/U36JbecXbr+YCYs0TYLBSNeXe
	UJKWC0uWuqLIhoSpihFmWZRIjTWou8Qrs/Ik5qQlw5ipu45T534F4thsawyaSbMEJ4a82kyA3hwlG
	gAeeu+D8eoh1BfXhbqgTAj57ZX+QCXuwpPt97dBKEaFwQwqXNK9nxD4tSxb6PlpusyayrZRq43gL+
	RC3VSW7jhaFRUGH2cYJVXeZkgcjZGm1XdF1DjWWYgrwZNW4o694uaMJ0TH20XUKVor5Kkjcf2ZuJS
	9DNv9dFcaLqCD6pLgkgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB6GR-0000000BjdD-3HYp;
	Fri, 10 Apr 2026 07:26:51 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB6GP-0000000Bjce-0GF4
	for wireless-regdb@lists.infradead.org;
	Fri, 10 Apr 2026 07:26:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E58F7431CB
	for <wireless-regdb@lists.infradead.org>; Fri, 10 Apr 2026 07:26:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7F31C19421
	for <wireless-regdb@lists.infradead.org>; Fri, 10 Apr 2026 07:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775806007;
	bh=QHX2o70i7VyXulmplM87zVcJ7ZwdEFSzRQmfXgWJ47w=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=bsWLQpyG0tLlh6vpHqqj6tuh7BTPi6zIJc3r0NXG9n/1WO4Z8npOu9OQEDytYVCnj
	 LYv1M4K67GeW/qjabhCgOCkXjgNY8L5dn5QFKDFPCehAPsVwMi8NqByeV4YRR5fTjr
	 HPis4PV/aEzdKJOkwn7gJhhN2H1YGtSnz7iDVbOvQsRCS8Rg+XE+qjcuy2y+JvTUqm
	 TacnR1gpRujw95VupFzoUPxHjiWrv5l5xeboDToQoMvlOIaHozJZ9eGRKdmvu6vfRh
	 jHXARUIBTYVW71SxW65YKrLUifPstcwNEvmeqL43waB0QOVlbK8JNU88glEdaLDwNB
	 WLhM3L35C08tw==
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-38e0aa4221fso13792901fa.2
        for <wireless-regdb@lists.infradead.org>; Fri, 10 Apr 2026 00:26:47 -0700 (PDT)
X-Gm-Message-State: AOJu0YxvrqoOrY7qTtP0bcc/dpc1TO20O9zSpJ9S16aKRJWZq3qX5+ex
	mCXTqytrTJ5yPfnTjXS2X1PlqxDQl41aiNVpboR1Pt1kQlx1bYa4NabKQSwb5QT41PJuopaNLOy
	KpppNymn5x5UBEizYhsa688grrJqtr1I=
X-Received: by 2002:a2e:be1c:0:b0:38e:4810:4f44 with SMTP id
 38308e7fff4ca-38e4bdecf43mr5711741fa.4.1775806006210; Fri, 10 Apr 2026
 00:26:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAMcSecJ7nDo+-JqGri80m8yn_cp9UfajHqLQDPYup7Zh7QVj7Q@mail.gmail.com>
In-Reply-To: <CAMcSecJ7nDo+-JqGri80m8yn_cp9UfajHqLQDPYup7Zh7QVj7Q@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 10 Apr 2026 15:26:34 +0800
X-Gmail-Original-Message-ID: <CAGb2v65cGJLYMAJTu00BocqprModBUfYd94GVNEemJj33g+gfg@mail.gmail.com>
X-Gm-Features: AQROBzBpm0gMNPt7QPhRcZ8XIU9kqbzRkw4E6b4jvldjb7scIMqfBFBPzHyqJt8
Message-ID: <CAGb2v65cGJLYMAJTu00BocqprModBUfYd94GVNEemJj33g+gfg@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Add 6 GHz LPI rule for South Africa (ZA)
To: Louis Kotze <loukot@gmail.com>
Cc: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260410_002649_137127_C5B71A1A 
X-CRM114-Status: GOOD (  19.22  )
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

On Thu, Apr 9, 2026 at 7:34=E2=80=AFPM Louis Kotze <loukot@gmail.com> wrote=
:
>
> Hi maintainers,
> Please have a look at the following request:
>
> ICASA (Independent Communications Authority of South Africa) published
> Notice 1822 of 2023 on 23 May 2023, amending Annexure B of the Radio
> Frequency Spectrum Regulations, 2015, to allow licence-exempt use of
> the lower 6 GHz band (5925-6425 MHz) for WAS/RLAN.
>
> The notice references the ETSI EN 303 687 standard and defines two
> device classes for 5925-6425 MHz:
>
>   1. Low Power Indoor (LPI)
>      - Max EIRP         : 23 dBm (200 mW)
>      - Restriction      : Indoor use only
>
>   2. Very Low Power (VLP)
>      - Max EIRP         : 14 dBm (25 mW)
>      - Restriction      : None
>
> Currently, the database only contains the VLP rule (14 dBm). Add the
> LPI rule (23 dBm, NO-OUTDOOR).
>
> Without the LPI rule, clients connecting to indoor access points
> advertising 6 GHz at LPI power levels experience repeated association
> failures due to regulatory mismatch ("regulatory prevented using AP
> config, downgraded"), which on MLO (Multi-Link Operation) setups
> causes the 6 GHz link to fail and disrupts the connection.

Unfortunately we can only have one rule per band. So it's either allow
outdoor usage or better indoor performance.

ChenYu

> Reference:
>   ICASA Notice 1822 of 2023
>   Amendment to Annexure B, Radio Frequency Spectrum Regulations, 2015
>   URL: https://www.icasa.org.za/news/2023/icasa-releases-more-spectrum-fo=
r-wi-fi-services-in-the-lower-6ghz-band
> Signed-off-by: Louis Kotze <connect@prolificstudio.co.za>
> ---
>  db.txt | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/db.txt b/db.txt
> index 343b256..778ac21 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -2180,6 +2180,7 @@ country ZA: DFS-ETSI
>   (5170 - 5250 @ 80), (20), AUTO-BW
>   (5250 - 5330 @ 80), (20), DFS, AUTO-BW
>   (5490 - 5710 @ 160), (30)
> + (5925 - 6425 @ 320), (23), NO-OUTDOOR
>   (5925 - 6425 @ 320), (14)
>
>  country ZW: DFS-ETSI
> --
>
>
> Thank you and Regards
> Louis Kotze

