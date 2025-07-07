Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9673BC8303C
	for <wireless-regdb@archiver.kernel.org>; Mon,  7 Jul 2025 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uO7lJ0Nu83yVHPo7ce3NYWRuOg9qkWXJbhKHfP89mHQ=; b=EBWkEuvjBtDo+d
	8KaISA4c40zd1AwJ6httAheouHLUnOAnhDIroPVljMQgJAkZ16dwi5yeL6V2orDdWAU8VQe/2tYBR
	xsGTQ5bO64ZZ7U+m7SB6U6N7+5VmsS4lBqfq/0fViZHwmflpcHx1RlDGBF2zMDIxiebiCngEwugmG
	+eLmYPg28dX6/W6NeSE8xY4u0sH2jmqTnUP58oZT6/uPncWbVliDXOSmQM0rufcBgUx8gDg2k6u1d
	ses2w2akcoKpLCkVCDjAiNS8sLuzwWs20slJsuaIaU/W41urVn0xsDRqYAp3bpKsmid6Z4hpoM67U
	pjPI/234RDKKEin9hSxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYcsW-00000001K9D-3jAf;
	Mon, 07 Jul 2025 03:50:52 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYcsU-00000001K8e-1Mxp
	for wireless-regdb@lists.infradead.org;
	Mon, 07 Jul 2025 03:50:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B5D0C5C1178
	for <wireless-regdb@lists.infradead.org>; Mon,  7 Jul 2025 03:50:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 663A3C4CEF3
	for <wireless-regdb@lists.infradead.org>; Mon,  7 Jul 2025 03:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751860249;
	bh=zBrk3gr3EMuJgfva1axAChNlDapiw+6JIlHReWfneOc=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=bcORkvBC5WZTwDMBu1qM7LHgbR0dsPhf/ePzLnsBQzNlmNsr5MOvWwFtAzoj3wQNd
	 /rSr3jQKWo95ViZARiLIqBYSZbQbBtbikYxYEqcYneaROdCJNZ40yXOm5AeX8bqC5n
	 fRN52OLghFm7lK0U+Nc+eY09zdc3ViWhf1offRFf22wSUYm8/8MGAamKSjOQ7g4uZQ
	 Wp1bdWmrgDo6JrkLog0xFm201Fp19YiV9k0cm6NIuZ0+KjrlBx/CLoY0KfpZBiYZIW
	 G91jCnKDUTVk01TJ4shkIY3swKZHklCGz/Il2Q5b7+LiM1aBkQ+NJIvZ+QxMcNUnaS
	 lv5h4ID//CmFQ==
Received: by mail-il1-f181.google.com with SMTP id e9e14a558f8ab-3e058c64a76so15426785ab.0
        for <wireless-regdb@lists.infradead.org>; Sun, 06 Jul 2025 20:50:49 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUvW8qOPIMsxP4+uIT2cmq2mfEUd8CK5rIFU0zCC2mhvpyOZCyxNZ/YOyP/LIE4cDwNKJZlhBnTUDgO+AvMjg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxh97+xgmT97/VEfvmdjFKUhvgcFGTxtmVcG9V33SLIruXKO58t
	xON4dXhc+0LA/4koajaHSN8LigmT5TSNTnlnRYU18lbP8L8xgNaLdAEv5x6G9BH/g8na9dRcwa6
	mSJ3wn4Mf8LPOoMz3FfAAr2SBhMonjS4=
X-Google-Smtp-Source: AGHT+IEUkm2SryigzV7PfUI3YFthXtIPKU6oz/EVxJ07bo9LaMZ7K+I7Qt9bnzASO2rLNeWJF4CeRP1Gpizv1dJopL4=
X-Received: by 2002:a05:6e02:144b:b0:3df:4783:e37 with SMTP id
 e9e14a558f8ab-3e1371e863dmr83898855ab.17.1751860248614; Sun, 06 Jul 2025
 20:50:48 -0700 (PDT)
MIME-Version: 1.0
References: <20250707024615.38507-1-pkshih@gmail.com>
In-Reply-To: <20250707024615.38507-1-pkshih@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 7 Jul 2025 11:50:33 +0800
X-Gmail-Original-Message-ID: <CAGb2v64uB7-4yNCxQiU0bXEk0Px=vF+Oh5+fYevzdPUhcsXLWg@mail.gmail.com>
X-Gm-Features: Ac12FXxwmUR4IaMMnSps7nefgiamAl7vvO7Cl1tuJLedRJ9_m1VwxYMUPZrwPS0
Message-ID: <CAGb2v64uB7-4yNCxQiU0bXEk0Px=vF+Oh5+fYevzdPUhcsXLWg@mail.gmail.com>
Subject: Re: [PATCH 1/3] wireless-regdb: Update regulatory info for CEPT
 countries for 6GHz listed by WiFi Alliance
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250706_205050_449144_6378818A 
X-CRM114-Status: GOOD (  19.05  )
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

On Mon, Jul 7, 2025 at 10:46=E2=80=AFAM Ping-Ke Shih <pkshih@gmail.com> wro=
te:
>
> From: Ping-Ke Shih <pkshih@realtek.com>
>
> The regulations enabling 6GHz WiFi [1] of WiFi Alliance lists CEPT
> countries including
>  - Albania (AL)
>  - Andorra (AD)
>  - Austria (AT)
>  - Belarus (BY)
>  - Belgium (BE)
>  - Georgia (GE)
>  - Iceland (IS)
>  - Liechtenstein (LI)
>  - Macedonia, The Former Yugoslav Republic of (MK)
>  - Moldova, Republic of (MD)
>  - Monaco (MC)
>  - Montenegro (ME)
>  - Norway (NO)
>  - Russian Federation (RU)
>  - Switzerland (CH)
>  - T=C3=BCrky (TR)
>  - Ukraine (UA)

This is slightly confusing because the CEPT document lists 46 countries.

> Add 6 GHz frequency entry if not being added yet.

Please add the links to [2][3] to all of them. And could you also add
the link to the other countries that already have a 6 GHz entry? Just
so we know that they are harmonized.

> But being pending to add rules to below entires because countries are not
                                          ^ entries
> existing yet:

As in, no entry in the database exists?

Probably rewrite this as:

The following are skipped as they do not have corresponding entries in
the database yet. Adding an entry just for 6 GHz would cause 2.4 GHz and
5 GHz bands from the world domain to stop working.


Thanks
ChenYu

>  - Faroe Islands (FO)
>  - Gibraltar (GI)
>  - Isle of Man (IM)
>  - San Marino (SM)
>  - Holy See (Vatican City State) (VA)
>
> Links of all these countries are to point to ECC/DEC/(20)01 [2] [3], whic=
h
> decision enters into force on 8 November 2024; preferred date for
> implementation of this Decision shall be 8 May 2025.
>
>  * LPI devices
>    - 5945-6425 MHz
>    - Restricted to indoor use only
>    - Maximum mean e.i.r.p.: 23 dBm
>    - Maximum mean e.i.r.p. density: 10 dBm/MHz
>  * VLP devices
>    - 5945-6425 MHz
>    - Indoors and outdoors
>    - Maximum mean e.i.r.p.: 14 dBm
>    - Maximum mean e.i.r.p. density: 1 dBm/MHz
>
> [1] https://www.wi-fi.org/regulations-enabling-6-ghz-wi-fi
> [2] https://docdb.cept.org/implementation/16737
> [3] https://docdb.cept.org/download/4685
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
>  db.txt | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/db.txt b/db.txt
> index acfbcbf29887..b5b1308460cc 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -41,6 +41,7 @@ country AD: DFS-ETSI
>         (5470 - 5725 @ 160), (500 mW), DFS, wmmrule=3DETSI
>         # short range devices (ETSI EN 300 440-1)
>         (5725 - 5875 @ 80), (25 mW)
> +       (5945 - 6425 @ 320), (23), NO-OUTDOOR
>         # 60 GHz band channels 1-4, ref: Etsi En 302 567
>         (57000 - 66000 @ 2160), (40)
>
> @@ -80,6 +81,7 @@ country AL: DFS-ETSI
>         (5470 - 5725 @ 160), (500 mW), DFS, wmmrule=3DETSI
>         # short range devices (ETSI EN 300 440-1)
>         (5725 - 5875 @ 80), (25 mW)
> +       (5945 - 6425 @ 320), (23), NO-OUTDOOR
>
>  # Source:
>  # 2.4 GHz https://www.psrc.am/contents/document/4749
> @@ -355,6 +357,7 @@ country BY: DFS-ETSI
>         (5170 - 5250 @ 80), (20), AUTO-BW
>         (5250 - 5330 @ 80), (20), DFS, AUTO-BW
>         (5490 - 5710 @ 160), (27), DFS
> +       (5945 - 6425 @ 320), (23), NO-OUTDOOR
>
>  country BZ: DFS-JP
>         (2402 - 2482 @ 40), (30)
> @@ -742,6 +745,7 @@ country GE: DFS-ETSI
>         (2402 - 2482 @ 40), (20)
>         (5170 - 5250 @ 80), (18), AUTO-BW
>         (5250 - 5330 @ 80), (18), DFS, AUTO-BW
> +       (5945 - 6425 @ 320), (23), NO-OUTDOOR
>         # 60 GHz band channels 1-4, ref: Etsi En 302 567
>         (57000 - 66000 @ 2160), (40)
>
> @@ -1234,6 +1238,7 @@ country MC: DFS-ETSI
>         (5470 - 5725 @ 160), (500 mW), DFS, wmmrule=3DETSI
>         # short range devices (ETSI EN 300 440-1)
>         (5725 - 5875 @ 80), (25 mW)
> +       (5945 - 6425 @ 320), (23), NO-OUTDOOR
>
>  # Source:
>  # http://www.cnfr.md/index.php?pag=3Dsec&id=3D117&l=3Den
> @@ -1266,6 +1271,7 @@ country ME: DFS-ETSI
>         (5470 - 5725 @ 160), (500 mW), DFS, wmmrule=3DETSI
>         # short range devices (ETSI EN 300 440-1)
>         (5725 - 5875 @ 80), (25 mW)
> +       (5945 - 6425 @ 320), (23), NO-OUTDOOR
>
>  country MF: DFS-ETSI
>         (2402 - 2482 @ 40), (20)
> @@ -1292,6 +1298,7 @@ country MK: DFS-ETSI
>         (5470 - 5725 @ 160), (500 mW), DFS, wmmrule=3DETSI
>         # short range devices (ETSI EN 300 440-1)
>         (5725 - 5875 @ 80), (25 mW)
> +       (5945 - 6425 @ 320), (23), NO-OUTDOOR
>         # 60 GHz band channels 1-4, ref: Etsi En 302 567
>         (57000 - 66000 @ 2160), (40)
>
> @@ -1924,6 +1931,7 @@ country UA: DFS-ETSI
>         (5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW, wmmrule=
=3DETSI
>         (5470 - 5725 @ 160), (100 mW), DFS, NO-OUTDOOR, wmmrule=3DETSI
>         (5725 - 5850 @ 80), (100 mW), NO-OUTDOOR
> +       (5945 - 6425 @ 320), (23), NO-OUTDOOR
>         # 60 GHz band channels 1-4, ref: Etsi En 302 567
>         (57000 - 66000 @ 2160), (40 mW), NO-OUTDOOR
>
> --
> 2.25.1
>

