Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469BA606A31E
	for <wireless-regdb@archiver.kernel.org>; Mon, 23 Nov 2026 08:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hcsSQYYd;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=jNsRHqFr
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=olsXRWb2mJ7alyZvuOZMo0SuIvMzdv85vW212okoksM=; b=hcsSQYYdlCnfo5qj2pt3jPtmX5
	8qGWjU5ewQ4OqtF4zhTs0BA+ilO+p9CpUORisxE48TEb12aPosHLb1LIpQfbHS7L81MGWsejAvhBP
	HAOOhCRTRQe9cjr2G74xngK50l+7fdTSOnNvnhIWIfRSGgtRHlffLsLKdNGL3YzLoZZb0HjYtZ+qT
	G67ktIxhgwxm/NKoUyclvE+Ne7XHawkcVSSKfQYjvcWVpY6ZBCrFCUh2u8reBqBhiSQoUD+s8oZhp
	s1kgbKh/+IfEPOOwp/ElZI1uzOIXzDQvLf5qlfVle1/O4prOJVUxkrNtTC7XZt+38Gwufi/UpVpl0
	wmgWMp5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVPZE-00000002aUR-1u3u;
	Mon, 23 Nov 2026 08:38:28 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVPZB-00000002aTw-2tfF
	for wireless-regdb@lists.infradead.org;
	Mon, 23 Nov 2026 08:38:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C5A086022B
	for <wireless-regdb@lists.infradead.org>; Mon, 23 Nov 2026 08:38:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FFB31F000CF
	for <wireless-regdb@lists.infradead.org>; Mon, 23 Nov 2026 08:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795423104;
	bh=olsXRWb2mJ7alyZvuOZMo0SuIvMzdv85vW212okoksM=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=jNsRHqFrwpVJ5pa0h+vkOLJCrJd3VzNadiI5uMKOD+UJoUzByZlneH1ozBfPQjEJr
	 nF4uuxQevHqZ1O0jK63Q3XS7STMtYeGbqk6ZLmYnkQdCV/CNyfkCnuRQuRavo8CCg8
	 2Tq37Um1pshYzVbF3FGG0zDjIm7I88Yubsm0pNCo4XS6/22N5ZKjmG13yMgtIF1xP1
	 +TazNqN8iEfxCgjX6pjyCVZ3t2KI9MGC4rkRvlk8/W7F4FKUziLHwLyhCOLyCPnipS
	 nlWl+2IYpVDK1DRfOdTvGCkS4phMhbFR53BpL1QirTKfdGQ2pJzyWTgpVfgbVagHM5
	 Hqjm4IqO2IWnA==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-3acd239776cso25114011fa.0
        for <wireless-regdb@lists.infradead.org>; Mon, 23 Nov 2026 00:38:24 -0800 (PST)
X-Forwarded-Encrypted: i=1; AL+hErE+dFdk3M/XAl7syrfZbLqo6Aw8+2PcQg3tmvf6uKHXaWfzckdR2Vgz51XXC5u4XUX8sPfR2MK6qUrCftjSfw==@lists.infradead.org
X-Gm-Message-State: APuU4Z9xc59lon0UwnLihklJU5+g8SK4RqT7Y+FsLTLMe+pGsSJ7FaPP
	2kYVaq22tZ5XS3tOHin8tcHLuO93cho1OiZbhzZ+k5+lyAIqr12lneEWI9b7+Gz/fieUd9UfXPT
	mEL9yRiQ6nAL8WAwR6MFAzqTwTVc2EsQ=
X-Received: by 2002:a2e:a98b:0:b0:3ac:dd62:754d with SMTP id
 38308e7fff4ca-3ae7fa550a8mr26835181fa.17.1795423102935; Mon, 23 Nov 2026
 00:38:22 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <5DB6FB38-A5F9-4CD4-8AAE-7A3FCFF90520@rfareas.com>
In-Reply-To: <5DB6FB38-A5F9-4CD4-8AAE-7A3FCFF90520@rfareas.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 23 Nov 2026 16:38:09 +0800
X-Gmail-Original-Message-ID: <CAGb2v64WJg8hR8eoqqbV=n-0qPVE5ARBG3mKU3+sR4nDmp_btw@mail.gmail.com>
X-Gm-Features: Aa3M54rw8DU2heO0ApwbPBuztkO0RFtLTwf07gI6P_fCHDM9IZ-pHgQkG53m6j0
Message-ID: <CAGb2v64WJg8hR8eoqqbV=n-0qPVE5ARBG3mKU3+sR4nDmp_btw@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Belarus (BY)
To: RFAREAS Support <support@rfareas.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Reply-To: wens@kernel.org
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Mon, Nov 23, 2026 at 2:14=E2=80=AFAM RFAREAS Support <support@rfareas.co=
m> wrote:
>
> From: Valery Belousov <support@rfareas.com>
>
> The BY entry has no source and allows 5490-5710 MHz at 27 dBm, which
> is not permitted for licence-exempt use in Belarus.
>
> Licence-exempt Wi-Fi is set out in Resolution No. 9 of the Ministry
> of Communications and Informatization of 1 July 2013, the list of radio
> equipment operated without a frequency assignment permit. Items 7 and 8
> were replaced by Resolution No. 13 of 29 August 2016; Resolution No. 1
> of 10 January 2018 changed "output power" in item 7 to "e.i.r.p.".
> All three acts are published on the National Legal Internet Portal
> pravo.by.
>
> Limits as stated in the resolution:
>   item 7, 2400-2483.5 MHz: 100 mW e.i.r.p.
>   item 8, 5150-5350 MHz and 5650-5725 MHz: 200 mW e.i.r.p.
> Both items: IEEE 802.11 equipment installed inside buildings,
> structures and vehicles, not using antennas installed outside them.
>
> Changes:
>  * 2.4 GHz: 2400-2483.5 MHz, 100 mW, NO-OUTDOOR.
>  * 5150-5350 MHz: 200 mW (was 20 dBm), NO-OUTDOOR; DFS is kept for
>    5250-5350 MHz.

Assuming the DFS requirement comes from ITU-R Resolution 229 /
ETSI EN 301 893, then the TPC requirement also applies, and since
Linux does not support TPC, the -3 dBm reduction should be applied
for 5250-5350 MHz.

Could you check?


Thanks
ChenYu

>  * Replace 5490-5710 MHz with 5650-5725 MHz, 200 mW, NO-OUTDOOR, DFS.
>    The band is 75 MHz wide, so the maximum bandwidth is 40 MHz.
>  * Add the sources.
>
> Item 18, added by Resolution No. 2 of 24 January 2019, also lists
> 5785-5875 MHz, but only for use in Minsk during the II European Games
> 2019, so it is not included.
>
> Signed-off-by: Valery Belousov <support@rfareas.com>
> ---
> Found while cross-checking wireless-regdb against the national acts for t=
he
> RFAREAS Wi-Fi regulatory map (https://rfareas.com/blog/tools/wifimap/).
>
>  db.txt | 18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 43dc0b3..e416c54 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -386,11 +386,21 @@ country BW: DFS-ETSI
>         (5470 - 5725 @ 160), (250 mW), DFS
>         (5725 - 5850 @ 80), (24), DFS
>
> +# Source:
> +# Resolution of the Ministry of Communications and Informatization No. 9
> +# of 1 July 2013 (radio equipment operated without a frequency assignmen=
t
> +# permit), items 7 and 8, as amended by Resolution No. 13 of 29 August 2=
016
> +# and Resolution No. 1 of 10 January 2018:
> +# https://pravo.by/document/?guid=3D3961&p0=3DW21327720
> +# https://pravo.by/document/?guid=3D3961&p0=3DW21631260
> +# https://pravo.by/document/?guid=3D3961&p0=3DW21832737
> +# Both items allow use only inside buildings, structures and vehicles,
> +# without antennas outside them.
>  country BY: DFS-ETSI
> -       (2402 - 2482 @ 40), (20)
> -       (5170 - 5250 @ 80), (20), AUTO-BW
> -       (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> -       (5490 - 5710 @ 160), (27), DFS
> +       (2400 - 2483.5 @ 40), (100 mW), NO-OUTDOOR
> +       (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> +       (5250 - 5350 @ 80), (200 mW), NO-OUTDOOR, DFS, AUTO-BW
> +       (5650 - 5725 @ 40), (200 mW), NO-OUTDOOR, DFS
>
>  country BZ: DFS-JP
>         (2402 - 2482 @ 40), (30)
> --
> 2.43.0
>

