Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86042C83013
	for <wireless-regdb@archiver.kernel.org>; Wed,  2 Jul 2025 04:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KA98BdKCh5oS9/TAYbpR/Rj1CPi4GoXifqKDYjvR5yc=; b=nPHx9aeFdw32DY
	t5yjUHQj0wA/n6Ot2syhL0mnfE41j3g2OluFy01dILn8vO4oNKevxFqtsULuhAiRmlwbwV1+QgYGF
	tDe3f7t4V0pAQ3Waf+tHbLHV4PI9n2VPBOWn4gU30O481QPCrPZ+mHmlXLdgsYrf5ME5/VTzl+v70
	Gcs7A4Wbq9DHr+3L4rNg6dlLPIxbUE+Bdx+ThkfV6AGqs1RZEd8hZOwnDEZpm0t1gOWVqh2nd8am5
	UC+qWo+Ijh+Go/J0f1A586u5WzZY7aOub0O2W96utqBhd3+9hsIjxiZceG5bAbyqR3SnTJA439kaF
	rs5DSIYEQKgS72afNmpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWp94-00000007BYN-2ECb;
	Wed, 02 Jul 2025 04:32:30 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWp91-00000007BXt-1SaW
	for wireless-regdb@lists.infradead.org;
	Wed, 02 Jul 2025 04:32:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 548964577A
	for <wireless-regdb@lists.infradead.org>; Wed,  2 Jul 2025 04:32:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C4C8C4CEF3
	for <wireless-regdb@lists.infradead.org>; Wed,  2 Jul 2025 04:32:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751430746;
	bh=pW5M7RB7yP26nn3ovt54nB0lYFengwwwgfq3Wa0Ayl0=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=mSPRER3t9wxVdYqgO8AAh3iHY6z7CUxh9wtpoe4eUGfpO7uEvJyZmOdHPUY4gy9Yt
	 KUlZduzQbglKuKHlytsseEYjUknGX2hHT3JKmT22SJSspajBtMxoNA25HX+itnmuv9
	 N1wODY/eRMQlbRkLOiLNB2R5kI28uKAunr1Y/jYnMGTIPzQOlvLWf1lUv23X9tYaDa
	 Z7/uo7KFHBRQ5FjRPVI0K5tj43oxMFC/2S2cKTWrcfI0n3bzznT9OIbY1xju+tufcF
	 NJvt04AuDxwdDjJzcAUIrDitvn67E8jQBqT+6Z77wN9ztzAMcGTT1+vkL77DTVJ9gO
	 JiGkdRfCA0b+A==
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-32b7113ed6bso35734211fa.1
        for <wireless-regdb@lists.infradead.org>; Tue, 01 Jul 2025 21:32:26 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUfT8zsh0OnCGhf33Pz0MrkuzSP+2JqriarSfP4ciROsyg/dASeI9cJya2VGAaBOQz+FyPhUqMziudFmtK+ZA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwN59iaewrSFvckUbWznxSrHxMTUx4+OYBX7cSZ9g9cNjRRG+NM
	3WYY41bD95k3rJxE5xMZRE7jLjX1UhVysWcCHQMNKGqpjcMVZ/dE2kHZmUVDWJqfq+AEYI1oaY0
	ki7IeaEDzgX2xHkrMut6d8yyYksF5IL8=
X-Google-Smtp-Source: AGHT+IFlGO4sNolgF2KA1RatvPB6wV1AHaPeP1a3aJaT5obEfpzFYbBkapw3+tRs6mBRepvGR1gc3MT6642g+4tPabg=
X-Received: by 2002:a05:651c:2204:b0:32b:3c11:5177 with SMTP id
 38308e7fff4ca-32e00044a77mr4933951fa.21.1751430744564; Tue, 01 Jul 2025
 21:32:24 -0700 (PDT)
MIME-Version: 1.0
References: <20250618054904.9107-1-pkshih@gmail.com>
In-Reply-To: <20250618054904.9107-1-pkshih@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 2 Jul 2025 12:32:12 +0800
X-Gmail-Original-Message-ID: <CAGb2v65E7K0yRz==OTyBd_LCWwU+0MYWSivgJG4x70gS1Cp93w@mail.gmail.com>
X-Gm-Features: Ac12FXylc4Od60Knly9PgbYZ86cMiQLma7woh9tu6U68rpRSCN2PyCv_VqoWow8
Message-ID: <CAGb2v65E7K0yRz==OTyBd_LCWwU+0MYWSivgJG4x70gS1Cp93w@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Egypt (EG) for 2024
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_213227_432255_0560A949 
X-CRM114-Status: GOOD (  16.89  )
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

On Wed, Jun 18, 2025 at 1:49=E2=80=AFPM Ping-Ke Shih <pkshih@gmail.com> wro=
te:
>
> From: Ping-Ke Shih <pkshih@realtek.com>
>
> National Telecommunications Regulatory Authority (NTRA) released Radio
> Spectrum Guidelines for Short-range Devices (SRD) on November 2024.
>
> As Table 4 Mandatary requirements for Wideband Data Transmission Systems:
> Including Wireless LAN (Wi-Fi and Multiple GIGABIT wireless systems for
> Indoor applications only)
>
> * Wi-Fi for indoor applications only, so add NO-OUTDOOR for all entries.
>
> * 2400 - 2483.5 MHz
>   - 100 mW e.i.r.p.
>   - EN 300 328
> * 5150 - 5350 MHz
>   - 200 mW e.i.r.p.
>   - DFS and TPC in 5250 - 5350 MHz
>     * for devices without TPC, the limit is lowered 3 dBm
>   - EN 301 893
> * 5925 - 6425 MHz
>   - 250 mW e.i.r.p.
>   - EN 303 687
> * 57 - 66 GHz
>   - 40 dBm e.i.r.p.
>   - EN 302 567
>
> [1] https://www.tra.gov.eg/wp-content/uploads/2024/11/EGY-NTRA-November-2=
024-SRD_English-1.pdf
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
>  db.txt | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index e331d4f763e3..4a05bdca781e 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -632,11 +632,13 @@ country EE: DFS-ETSI
>         (57000 - 66000 @ 2160), (40)
>
>  # https://www.tra.gov.eg/wp-content/uploads/2022/03/EGY-NTRA-March-2022-=
SRD_English_Final.pdf
> +# https://www.tra.gov.eg/wp-content/uploads/2024/11/EGY-NTRA-November-20=
24-SRD_English-1.pdf
>  country EG: DFS-ETSI
> -       (2402 - 2483.5 @ 40), (20)
> -       (5150 - 5250 @ 80), (23), AUTO-BW, wmmrule=3DETSI
> -       (5250 - 5350 @ 80), (20), DFS, AUTO-BW, wmmrule=3DETSI
> -       (57000 - 66000 @ 2160), (40)
> +       (2402 - 2483.5 @ 40), (100 mW), NO-OUTDOOR
> +       (5150 - 5250 @ 80), (200 mW), AUTO-BW, wmmrule=3DETSI, NO-OUTDOOR
> +       (5250 - 5350 @ 80), (100 mW), DFS, AUTO-BW, wmmrule=3DETSI, NO-OU=
TDOOR

The database parser requires the wmmrule flag be the last flag for some
reason. I fixed it up locally and will force push it out.

ChenYu

> +       (5925 - 6425 @ 320), (250 mW), NO-OUTDOOR
> +       (57000 - 66000 @ 2160), (40), NO-OUTDOOR
>
>  # ES as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 30=
1 893)
>  # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 4=
40)
> --
> 2.25.1
>

