Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87B0FCF6491
	for <wireless-regdb@archiver.kernel.org>; Mon, 30 Sep 2024 07:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5TiKq25mFZ+fSgMPozHVEkA3hvL5DHva/IzKaOaly4s=; b=KlDzurRSqh1/bU
	v4/dymt6EPfe6WpFiV/CPAg1RAPcUpX3fyo04fGSdX3uNrjrKGOegJY8Z3PDg01M/EeS916Tv4up9
	T8jjY+416NnnLYXDkuKnZ+8Yosx5CMnzeV9zrlZ25GSdDh6y1cO/fL3UqfpOiluDrbID8/HlBJUJF
	2Bv33iriH8rPUGYDzyeQ5oMm+QE/P8tSxlan7M96X6Zub2Qt96PFD6Eq+zE4ofcdCJOJ9AQQWWmuv
	XaaRdc18XG4wxGFHD0/4kiE0cutw6090Ah2GGttEx0CARGNreTh2KITFMa0DIi7WK9YkcPYmJbvPO
	qnoR8y3aCOvGTxfuX1mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svB2O-0000000GD5t-00Kw;
	Mon, 30 Sep 2024 07:41:44 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svB2I-0000000GD5I-3HP3
	for wireless-regdb@lists.infradead.org;
	Mon, 30 Sep 2024 07:41:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EFEC05C2712
	for <wireless-regdb@lists.infradead.org>; Mon, 30 Sep 2024 07:41:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B24A5C4CEC7
	for <wireless-regdb@lists.infradead.org>; Mon, 30 Sep 2024 07:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727682097;
	bh=/ItUKa7wXs6970KPiCDNNpw0rMdnwOPYYth69xFUMKg=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=gF4raLw3DEn4T8dn1IpNLa07JExYZHTrZRLvpewLsnxtbfrv/9cB7bZQ1GLYQHNVP
	 QfViJTSA10CdmW/LxJX2bSpuWVdB2m50Bvb9MuOgbojBOMUcx4a58v9X2AG+qLtitf
	 kM90dblHzMUwEbNhCbbL+BbB5mBX6G+4Zi1TWhrJtJhl5SvMtVqwmfKcqIVf+SaF86
	 yP6E/kLTFu6hRc13nblVbNNgl7YQo+7Mc79ABhBkjyvNemDQZ9M1GWVkRfHYAzdsam
	 Jj6+4Je0fcYCh4DhkYmfM0Cc1wz4sAuNfOOEe95r/9cBzWljrUT9uWVqWvWwgCzEYh
	 StdEneuZ5mC/A==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2fad0f66d49so4930131fa.3
        for <wireless-regdb@lists.infradead.org>; Mon, 30 Sep 2024 00:41:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU3hn6lFHoZOPkCTVMx3SUBScLXcf/FyML64x7HJhGRejKkV+m1kBTel9uG1oRj8yyEA07UyqWtx0sdXIPcKg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+ZTgtgMe0bF8c/z0otyRVTkKdkyblaNHkQ7TIuX/9fsp1BQOs
	mZznztZNVaCN/fAzaMo5f8wFDfs2EBZN69qW4Nxtz05RTVRBCk3Riim5f49cb6GuYyR0grillUc
	xUNwbWKq436SMKRWg+CBB2Ms9cd0=
X-Google-Smtp-Source: AGHT+IGvBa2RV59K1aOUc591u0qgleoAZBcTiRo63ipi/AbR9v6SMQLzcJFc0I9+h8PdFNqARUJmhhYPS2XHO2IgcOQ=
X-Received: by 2002:a05:651c:2222:b0:2fa:c2c4:f9f5 with SMTP id
 38308e7fff4ca-2fac2c4fe91mr24297781fa.38.1727682096036; Mon, 30 Sep 2024
 00:41:36 -0700 (PDT)
MIME-Version: 1.0
References: <20240920011901.5038-1-pkshih@gmail.com>
In-Reply-To: <20240920011901.5038-1-pkshih@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 30 Sep 2024 15:41:23 +0800
X-Gmail-Original-Message-ID: <CAGb2v65J1FV-POEh+QciWUxE-OZyRuh+Wfad9TuimJrrDHcjkQ@mail.gmail.com>
Message-ID: <CAGb2v65J1FV-POEh+QciWUxE-OZyRuh+Wfad9TuimJrrDHcjkQ@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Tanzania (TZ)
 for 2024
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_004138_978250_17D366A1 
X-CRM114-Status: GOOD (  17.61  )
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

On Fri, Sep 20, 2024 at 9:19=E2=80=AFAM Ping-Ke Shih <pkshih@gmail.com> wro=
te:
>
> From: Ping-Ke Shih <pkshih@realtek.com>
>
> United Republic of Tanzania, Tanzania Communications Regulatory Authority
> released Minimum Technical Specifications for Short Range Devices (SRDs)
> on 2024 [1].
>
>  * 2400-2483.5 MHz
>    - 100 mW e.i.r.p.
>  * 5150-5350 MHz
>    - 200 mW mean e.i.r.p.
>      * The maximum mean e.i.r.p. density shall be limited to 10 mW/MHz
>        in any 1 MHz band.
>    - EN 301 893

This also restricts 5250-5350 to 100 mW due to lack of TPC.

ChenYu

>      * DFS: 5250-5350 MHz
>    - Restricted to indoor use.
>  * 5470-5725 MHz
>    - 250 mW e.i.r.p
>      * The maximum mean e.i.r.p. density shall be limited to 50 mW/MHz
>        in any 1 MHz band
>    - EN 301 893
>      * DFS: 5470-5725 MHz
>    - Indoor as well as outdoor use allowed.
>  * 5725-5850 MHz
>    - 1W
>    - EN 302 502
>      * DFS: 5850 - 5875 MHz
>      * FWA device shall have the capability to reduce the operating
>        mean EIRP level to a level not exceeding 24 dBm for ChS =3D 20 MHz
>        (24 dBm is adopted)
>  * 5945-6425 MHz
>    - 23 dBm for LPI usage
>      (should be indoor naturally)
>    - 14 dBm for VLP usage
>
> [1] https://www.tcra.go.tz/download/sw-1719952895-Minimum%20Technical%20S=
pecifications%20for%20Short%20Range%20Devices%20(SRD),%20June%202024.pdf
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
>  db.txt | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 9a55f6b8cc98..5ef3236d26ae 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1860,9 +1860,15 @@ country TW: DFS-FCC
>         # 60g band, LP0002 section 4.13.1.1 (1)(A), EIRP=3D40dBm(43dBm pe=
ak)
>         (57000 - 66000 @ 2160), (40)
>
> -country TZ:
> -       (2402 - 2482 @ 40), (20)
> -       (5735 - 5835 @ 80), (30)
> +# Source:
> +# https://www.tcra.go.tz/download/sw-1719952895-Minimum%20Technical%20Sp=
ecifications%20for%20Short%20Range%20Devices%20(SRD),%20June%202024.pdf
> +country TZ: DFS-ETSI
> +       (2400 - 2483.5 @ 40), (100 mW)
> +       (5150 - 5250 @ 80), (200 mW), AUTO-BW, NO-OUTDOOR
> +       (5250 - 5350 @ 80), (200 mW), DFS, AUTO-BW, NO-OUTDOOR
> +       (5470 - 5725 @ 160), (250 mW), DFS, NO-OUTDOOR
> +       (5725 - 5850 @ 80), (24), DFS
> +       (5945 - 6425 @ 320), (23), NO-OUTDOOR
>
>  # Source: https://zakon.rada.gov.ua/laws/show/z0201-15#n48
>  # Although it is allowed to use up to 250 mW for some 5 GHz frequency ra=
nges,
> --
> 2.25.1
>

