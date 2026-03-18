Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC93DFCD0DC
	for <wireless-regdb@archiver.kernel.org>; Wed, 18 Mar 2026 08:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fd8+Ondao47st2m+mbZMDzrF/K5vzCeDbgM3PZNZB8M=; b=10j8yQwSvNR7cd
	YkApwB1V6VcGP+kxh7F6RSR5fRgjvMcwDF0PsWE2rfbMzb0gwoOpC5shepVtg3LgQeyC8CUNLUg79
	5nJ7CWXzzyMCobnv5Wz9DfYgs7/IDPjaUOpOb+cCseg/mqoyeWwo3F879TRPjvXIvCBCOPPkBlz+j
	+Mtp6JNE+nC2je12UAmOBGTRP7cNIoJi08fVm8L/oL7sI+AZaFQjuQT/pA5iWRkFlxV6nwccMpvdR
	jYKW2f4QagqwvsPZkpvY+f8rubQZz08BcVaJEPLiKa9cQX2Y6jo49Fd1cL8TkSC6M0kJt9Me4lYbT
	stZthr40gPdgxWWUjklA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2mLr-000000083Y5-33hj;
	Wed, 18 Mar 2026 08:34:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2mLq-000000083Xx-1OXh
	for wireless-regdb@lists.infradead.org;
	Wed, 18 Mar 2026 08:34:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5D898600AE
	for <wireless-regdb@lists.infradead.org>; Wed, 18 Mar 2026 08:34:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F2A6C19421
	for <wireless-regdb@lists.infradead.org>; Wed, 18 Mar 2026 08:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773822841;
	bh=Rr7V3Tp0SLbeQUYmplQKFnVGM5fyp0F7ROgB9ujybFg=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=Z9ZDRoRv7CSlJOWS76mL8Cf6WqRLE/uKVF6WyzbZ4Mt1Ew8oh/z86LuBJiXt4WlsN
	 kM6e/VUscvGZEB8FwUcO7ceTHZa3hmQIQ+gC2Lk6u2nozTKPye7vHqJKsnXhMGSzVL
	 mgjO/1SCH6R0fvdnIvSrtZ4419cu8nZjkVYoxP+rMAEo8VOGx+57WaeKLUBp718dKt
	 S3QQ4PGNpXtbTwYDyjLmATk5xQvBrcu3ctL65qgm4w5G38N/p3ElyPIi6K6t8liFwO
	 R44mtXkQmdRgaHoFEYPrHoQWjHBs4NWUv0rthXGCwM27iQ1/Z6R+tIjfenFmkGCTt2
	 y2i0GtRjmdsUA==
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-38a01c80c34so55946881fa.0
        for <wireless-regdb@lists.infradead.org>; Wed, 18 Mar 2026 01:34:00 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVvyve9xuf3AsFQBGyd9m5VEHglC+Ytb1rH+rNuqxYxrLSi0ZEe4aARztrPL1XQzi5TtldGARpipSCnEoVk3A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6xtg/1aLWn+9aXbHdHULvhqYkN6sS17mtu0iw6Cu4iAMvCXEy
	BRYkp+ygpWKOQfyDK2fyAsnWYzkxXZw+aBs07cUGUuQR/vW1r21hX14wiVj4+Rp3FXTkdLANuMw
	a/b40KGwi9f7ursesDxTHdRkVbpa+n9c=
X-Received: by 2002:a2e:3218:0:b0:38a:56d0:9d24 with SMTP id
 38308e7fff4ca-38bd5850543mr8541301fa.18.1773822839319; Wed, 18 Mar 2026
 01:33:59 -0700 (PDT)
MIME-Version: 1.0
References: <20260318064834.103731-1-pkshih@gmail.com>
In-Reply-To: <20260318064834.103731-1-pkshih@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 18 Mar 2026 16:33:47 +0800
X-Gmail-Original-Message-ID: <CAGb2v65PcZcBYg7qaeFaVH0=1fowOkW+7gL5wWA0wTMBu74JHg@mail.gmail.com>
X-Gm-Features: AaiRm515ymUQV6NzLLrYHCEkgTiS1JHZNlqKJwthyqKeaiTWpsK5F7tEKWkQZko
Message-ID: <CAGb2v65PcZcBYg7qaeFaVH0=1fowOkW+7gL5wWA0wTMBu74JHg@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Add regulatory info for CEPT countries
 FO, GI, IM, SM and VA listed by WiFi Alliance
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
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

On Wed, Mar 18, 2026 at 2:48=E2=80=AFPM Ping-Ke Shih <pkshih@gmail.com> wro=
te:
>
> From: Ping-Ke Shih <pkshih@realtek.com>
>
> In commit 5a8ced5ad313 ("wireless-regdb: Update regulatory info for CEPT
> countries for 6GHz listed by WiFi Alliance"), the following are skipped a=
s
> they do not have corresponding entries in the database yet.
>
>      - Faroe Islands (FO)
>      - Gibraltar (GI)
>      - Isle of Man (IM)
>      - San Marino (SM)
>      - Holy See (Vatican City State) (VA)

Confirmed the list. Also checked against another source [1].

[1] https://help.ui.com/hc/en-us/articles/8691786444567-Regions-Supporting-=
6-GHz

> Look up the CEPT decisions [2], and add entries along with decisions [3],
> [4] and [5] for 2/5/6 GHz regulations.
>
> The 2 GHz band by ECC Decision (11)05 [3], which the adoption of ERC
> Recommendation 70-03 [6], the regulations and the frequency bands to be
> used for Short Range Devices (SRDs) are included in specific annexes to

The 2 GHz band is now governed by ERC Recommendation 70-03 [6] with the
withdrawal of ERC Decision ERC/DEC/(01)07 by ECC Decision (11)05 [3].

> this Recommendation. By ERC Recommendation 70-03 annex 3 (WIDEBAND DATA
> TRANSMISSION SYSTEMS):
>
>  * 2400-2483.5 MHz
>    - 100 mW

Looks correct.

ERC Recommendation 70-03 annex 3 also includes the 60GHz range (57-71 GHz).
Can you check that? We would need some other source of information like
the WiFi Alliance page to verify that the countries have adopted the
decision. I don't think the CEPT decisions are directly binding.

The end of the document also has a table of the implementation status
of some bands in some countries. It is obvious the table is not complete.

> The 5 GHz band by ECC Decision (04)08 [4]:
>
>  * 5150-5250 MHz
>    - 200 mW
>    - Indoor use
>  * 5250-5350 MHz
>    - 200 mW (due to TPC required, -3dBm, 100 mW is adopted)
>    - DFS, TPC
>    - Indoor use
>  * 5470-5725 MHz
>    - 1 W (due to TPC required, -3dBm, 500 mW is adopted)
>    - DFS, TPC
>    - Indoor and outdoor use
>
> The 6 GHz band by ECC Decision (20)01 [5]:
>
>  * LPI devices (adopted)
>    - 5945-6425 MHz
>    - Restricted to indoor use only
>    - Maximum mean e.i.r.p.: 23 dBm
>    - Maximum mean e.i.r.p. density: 10 dBm/MHz
>  * VLP devices
>    - 5945-6425 MHz
>    - Indoors and outdoors
>    - Maximum mean e.i.r.p.: 14 dBm
>    - Maximum mean e.i.r.p. density: 1 dBm/MHz

Looks correct.

> [1] https://www.wi-fi.org/regulations-enabling-6-ghz-wi-fi
> [2] https://docdb.cept.org/document/category/ECC_Decisions?status=3DACTIV=
E
> [3] https://docdb.cept.org/download/1535
> [4] https://docdb.cept.org/download/4501
> [5] https://docdb.cept.org/download/4685
> [6] https://docdb.cept.org/download/3700

This doesn't seem to be the latest version. The online version is here:

    https://docdb.cept.org/document/845

and shows the latest revision was published on Feb 13, 2026.

> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
>  db.txt | 35 +++++++++++++++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
>
> diff --git a/db.txt b/db.txt
> index d54ef78e0da8..e2afb145ede5 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -731,6 +731,13 @@ country FM: DFS-FCC
>         (5490 - 5730 @ 160), (24), DFS
>         (5735 - 5835 @ 80), (30)
>
> +country FO: DFS-ETSI
> +       (2402 - 2483.5 @ 40), (100 mW)

This should start at 2400 for all the newly added countries.

> +       (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> +       (5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW
> +       (5470 - 5725 @ 160), (500 mW), DFS
> +       (5945 - 6425 @ 320), (23), NO-OUTDOOR
> +
>  # FR as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 30=
1 893)
>  # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 4=
40)
>  #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/T=
XT/?uri=3DCELEX:02005D0513-20070213
> @@ -801,6 +808,13 @@ country GH: DFS-FCC
>         (5490 - 5730 @ 160), (24), DFS
>         (5735 - 5835 @ 80), (30)
>
> +country GI: DFS-ETSI
> +       (2402 - 2483.5 @ 40), (100 mW)
> +       (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> +       (5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW
> +       (5470 - 5725 @ 160), (500 mW), DFS
> +       (5945 - 6425 @ 320), (23), NO-OUTDOOR
> +
>  country GL: DFS-ETSI
>         (2402 - 2482 @ 40), (20)
>         (5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=3DETSI
> @@ -976,6 +990,13 @@ country IL: DFS-ETSI
>         (5725 - 5875 @ 80), (25 mW), AUTO-BW
>         (5945 - 6425 @ 320), (200 mW), NO-OUTDOOR
>
> +country IM: DFS-ETSI
> +       (2402 - 2483.5 @ 40), (100 mW)
> +       (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> +       (5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW
> +       (5470 - 5725 @ 160), (500 mW), DFS
> +       (5945 - 6425 @ 320), (23), NO-OUTDOOR
> +
>  # Source:
>  # https://dot.gov.in/spectrummanagement/delicensing-24-24835-ghz-band-gs=
r-45-e-5150-5350-ghz-gsr-46-e-and-5725-5875-ghz
>  # https://dot.gov.in/spectrummanagement/license-exemption-5-ghz-gsr-1048=
e-dated-22102018
> @@ -1855,6 +1876,13 @@ country SK: DFS-ETSI
>         # 60 GHz band channels 1-4 (ETSI EN 302 567)
>         (57000 - 66000 @ 2160), (40)
>
> +country SM: DFS-ETSI
> +       (2402 - 2483.5 @ 40), (100 mW)
> +       (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> +       (5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW
> +       (5470 - 5725 @ 160), (500 mW), DFS
> +       (5945 - 6425 @ 320), (23), NO-OUTDOOR
> +
>  # Source:
>  # Regulation N=C2=B0 2004-005 ART/DG/DRC/D.R=C3=A9g
>  country SN: DFS-FCC
> @@ -2072,6 +2100,13 @@ country UZ: DFS-ETSI
>         (5170 - 5250 @ 80), (20), AUTO-BW
>         (5250 - 5330 @ 80), (20), DFS, AUTO-BW
>
> +country VA: DFS-ETSI
> +       (2402 - 2483.5 @ 40), (100 mW)
> +       (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> +       (5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW
> +       (5470 - 5725 @ 160), (500 mW), DFS
> +       (5945 - 6425 @ 320), (23), NO-OUTDOOR
> +
>  # Source:
>  # http://www.ntrc.vc/regulations/Jun_2006_Spectrum_Managment_Regulations=
.pdf
>  country VC: DFS-ETSI
> --
> 2.25.1
>

