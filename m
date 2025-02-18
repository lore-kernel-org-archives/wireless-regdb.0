Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2BDCC02198
	for <wireless-regdb@archiver.kernel.org>; Tue, 18 Feb 2025 05:34:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGPXAUrFqydNYnZ2BfNGtDuAZB8fRov+iziSKSSJ+l4=; b=HGJYKsY1dtK8om
	CoK+DjP+GyHKz5SVft2kLQo0jkRb/PuE4AIngugjX3KRpSVg7Ge0XaNCJEsrpNTaVKR8CulIYCWcL
	iP09sPKDM83ivR0NpTzqUTT3wcxXuKnB1Y2idTAxIGQeQ5rzT1qJHccc3IRxfm0a8Hnel9BP43Ba3
	tK+CXXPewroE/8Ir3f09rZy/4zUyfj50ciBb7AqWynU9FBWR7SWNA7rJyBlJ206JbH528gCRT1zcS
	nRvR/1PNygQM1CfyUaXGYGlH5XiIkeakKHZ8pZ81/pkg1CfgKmGJp4BYfOJEDDV8VFDLt/g4key1M
	FpaJK34ZTf2DebW3Ir3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkGFy-00000006s3d-08x0;
	Tue, 18 Feb 2025 05:34:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkGBO-00000006rHh-0qw6
	for wireless-regdb@lists.infradead.org;
	Tue, 18 Feb 2025 05:30:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D777C5C5B21
	for <wireless-regdb@lists.infradead.org>; Tue, 18 Feb 2025 05:29:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA953C4CEE8
	for <wireless-regdb@lists.infradead.org>; Tue, 18 Feb 2025 05:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739856608;
	bh=SRLhRMvGZy9+ksm1deWp4jZ3fd0gE+mMpKcQ0UJAkIM=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=cqWxarKhJPBp/RsAzgzFFOSN3FeHYRB6BWTCy8WIXbIbv2Dh/+SwUFCqROBSJbCgd
	 d9zzFKMw6gcFzFtLwvlW6L/Yxk5LkF91vrn6PZ//7NSbvmZ6v38pfcdrPEQDh91y/n
	 jsBgTSCJqQUOxB+85cnswt1bgmUi0B61QImvxx1sY7KIyUWVbA9fGBLg5Tk4ZVAt9I
	 A78YeMO9WrS1xiY9nienjkJCqZe95IRNlFFGP+a9kHJz0v7iwKCSMGxGGzDt5I0fHK
	 wJSVUyYUikzcJfl35Ot1HUG/HjZe0bXaHKwtaAmnWv17xvEByCh/SiJNddLWoSiMNj
	 jKyUWR4inP86w==
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-30918c29da2so41059131fa.0
        for <wireless-regdb@lists.infradead.org>; Mon, 17 Feb 2025 21:30:08 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXC1h9la+T7EOykk5/1Y8+3WaLopoJskmuNSJVu7LagP0faJF4F5CIJVWyMPHsGJmU2e86oJfNkWQeuQeILFg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy2g72er2+cI6tP0Dmd3w4y1P+Jd92e+XL5vsjbpgVrvOH3JJck
	N8uLRCqlij1RpPujHHbbGSyw9Zg3WgZaBQEBbcr9PENgUQYXADLtfa/9+WHqeS6adLkjBvs4X3j
	ddzc8JnkBVh/f4VDwKANq3+LK6ns=
X-Google-Smtp-Source: AGHT+IGjxjNnioiZl84qFq+LDVdB0u0Ed9PGp4NJYT1Sr6MQj/z9h9q+qSimQbuw5rwlezSF/74BT96NwfiQjRJKDbw=
X-Received: by 2002:a2e:7010:0:b0:309:25ce:8b8b with SMTP id
 38308e7fff4ca-30927a42c1cmr35628981fa.4.1739856607076; Mon, 17 Feb 2025
 21:30:07 -0800 (PST)
MIME-Version: 1.0
References: <20250218025957.13818-1-pkshih@gmail.com>
In-Reply-To: <20250218025957.13818-1-pkshih@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 18 Feb 2025 13:29:52 +0800
X-Gmail-Original-Message-ID: <CAGb2v66Qev8nQvt54dKDC+Q+rJ5m6+erWO2L4_vSMVqrTe_DRQ@mail.gmail.com>
X-Gm-Features: AWEUYZkZEgvpDeQmCWC4hackSWfOSldOfUQ5KzPGEVw6moEyk4SbA4xKG7JzsCg
Message-ID: <CAGb2v66Qev8nQvt54dKDC+Q+rJ5m6+erWO2L4_vSMVqrTe_DRQ@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory rules for Iran (IR) on
 both 2.4 and 5Ghz for 2019
To: Ping-Ke Shih <pkshih@gmail.com>, Johannes Berg <johannes@sipsolutions.net>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, 
	mobin@mobintestserver.ir
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_213010_366534_640BD483 
X-CRM114-Status: GOOD (  19.83  )
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

On Tue, Feb 18, 2025 at 11:00=E2=80=AFAM Ping-Ke Shih <pkshih@gmail.com> wr=
ote:
>
> From: Ping-Ke Shih <pkshih@realtek.com>
>
> Decision No. 4004-01DEC-CRA, 8th Edition - February 2019,
> Radiocommunications and Regulatory Organization.
> General radio license for the use of parts of the frequency bands
> 2400-2483.5 MHz, 5150-5250 MHz, 5350-5250 MHz, 5470-5725 MHz, and
> 5850-5725 MHz in radio access networks. [1]
>
> * 2400 - 2483.5
>   - 100 mW e.i.r.p
>   - 10dBm in every 1Mhz

Should keep a note saying for outdoor only usage, the limit is 4000 mW.

> * 5150 - 5250
>   - 200 mW e.i.r.p
>   - 10dBm/MHz per 1MHz bandwidth or -6dBm/25kHz per 25kHz bandwidth
> * 5250 - 5350
>   - 200 mW e.i.r.p
>   - 10dBm/MHz per 1MHz bandwidth
>   - DFS

For outdoor only usage, the limit is 1000 mW.

Also, for outdoor usage, TPC is required, and there is no provision
for 3 dB power reduction if TPC is not implemented.

So I would mark this band as indoor only for now.

> * 5470 - 5725
>   - 1000 mW e.i.r.p
>   - 17dBm/MHz per 1MHz bandwidth
>   - DFS
>   - If TPC is not used, the maximum radiated e.i.r.p. must be reduced
>     by 3dB.
>   - Outdoor use only
>     (Since NO-INDOOR flag is not supported by current format, don't add
>      this entry.)

There are NO-INDOOR and NO-OUTDOOR flags for the database. The kernel
doesn't have a matching IEEE80211_CHAN_OUTDOOR_ONLY flag though.
Maybe that should be added?

Johannes, what do you think?

> * 5725 - 5850
>   - 4000 mW e.i.r.p
>   - 36dBm in every 500 kHz
>   - DFS
>   - Outdoor use only
>     (Since NO-INDOOR flag is not supported by current format, don't add
>      this entry.)

This band is point to point only. TPC is required without provision for no =
TPC.

> These information is from [4], Mobin Aydinfar shared the official link [1=
]
> (inaccessible from outside of Iran), a mirror version [2] and translated
> version [3].
>
> [1] https://asnad.cra.ir/fa/Public/Documents/Details/73af8590-f065-eb11-9=
68f-0050569b0899
> [2] https://mobintestserver.ir/Iran-2.4Ghz-5Ghz-cra-official-doc.pdf
> [3] https://mobintestserver.ir/Iran-2.4Ghz-5Ghz-cra-official-table.ods
> [4] https://lore.kernel.org/linux-wireless/c9ccf5ba-c091-45c4-9283-970bfa=
4f1afe@mobintestserver.ir/T/#u
>
> Cc: Mobin Aydinfar <mobin@mobintestserver.ir>

Please use "Reported-by" instead, and also add

Closes: https://lore.kernel.org/linux-wireless/c9ccf5ba-c091-45c4-9283-970b=
fa4f1afe@mobintestserver.ir/T/#u


Thanks
ChenYu

> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
>  db.txt | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index d56ad32d31c9..0189355dff17 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -934,9 +934,12 @@ country IN:
>         (5470 - 5725 @ 160), (24), DFS
>         (5725 - 5875 @ 80), (30)
>
> -country IR: DFS-JP
> -       (2402 - 2482 @ 40), (20)
> -       (5735 - 5835 @ 80), (30)
> +# Source:
> +# https://asnad.cra.ir/fa/Public/Documents/Details/73af8590-f065-eb11-96=
8f-0050569b0899
> +country IR: DFS-ETSI
> +       (2400 - 2483.5 @ 40), (100 mW)
> +       (5150 - 5250 @ 80), (200 mW)
> +       (5250 - 5350 @ 80), (200 mW), DFS
>
>  # IS as part of CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 8=
93)
>  # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 4=
40)
> --
> 2.25.1
>

