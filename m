Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26CEEE93813
	for <wireless-regdb@archiver.kernel.org>; Mon, 13 Apr 2026 04:46:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZDXLTfCctJ/sNXqCsbYIHDI3zhkb7lQa5ALwRFUUzk=; b=nAV3COiDXOtr+p
	z3rckrh80ZnIWU5MWwhdtdPvrLMhCvV5e9I26mFFKQJV2mhkWbwPTBRL3DT9feF66mdc3iwNxpLgN
	k0aD9e9aRgSB9Y/NCuRlGDNl4w7JNH57fZbyxwBBjfGAWe71EXmjfvNAzIhZekGe+PKRNcwXUzPeP
	PD1ltLVtd18PxgN34Z9kPmMRZ8HUFAxHvrzNsneuCaGQTaX2zecg6QUTrHxfHMS4gX2PCtvhXp2wV
	nl3Ci09ehk/kPz9CpsHIBGG2JIdeKk6f5omZOiHUCvRMC5aGfXcmmpJXUiEkENEQ33tEuhIP44nzS
	K6mawSfuGwKqL+OrDiFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wC9Bn-0000000Ez84-3PpQ;
	Mon, 13 Apr 2026 04:46:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wC9Bk-0000000Ez7Y-3i4y
	for wireless-regdb@lists.infradead.org;
	Mon, 13 Apr 2026 04:46:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B2BBC40571
	for <wireless-regdb@lists.infradead.org>; Mon, 13 Apr 2026 04:46:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94C1CC2BCB0
	for <wireless-regdb@lists.infradead.org>; Mon, 13 Apr 2026 04:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776055579;
	bh=1c0WxfNvUj05/8y1pVRni5isdyort7EkLLeutq49Y3A=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=g2PGXsAZxiYTk2U3NsNoenlbe8BwCRlsA+5xKWjkiygvfvFiZCRzF1kO9Tikl73R8
	 UUUJGQpEfHIdkwBVRhSX/DGZqu91ip2+RC4dGeklxEgau/W1j2Xd8dvsxFgSGt0M8G
	 gxjLYAyvXREA0jl1d0ahLwpxH7nmaKxnBRH+gTcwqDKBzUr8djfPevNTGU2Ke8mtBJ
	 4fF+OHE49reXkxcJIWcywVq79NQlbsT8HvtKzU0aGZHu9Ol5IV8u71hYhqQvQEFEMe
	 9oYbfuGb1/7nFztmrPoZd9EqpWI3c1MDp/rIam3H7XuOZrgdfPONs3sB551QNoPIZh
	 NCypamFUeJx8A==
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-38e7b8e3f38so3095081fa.3
        for <wireless-regdb@lists.infradead.org>; Sun, 12 Apr 2026 21:46:19 -0700 (PDT)
X-Gm-Message-State: AOJu0YyZ5i89uk/jyVyJegj2e5vIyNd+FHyPmePUQQsWBFetO4cxN+y3
	C0qoHdH7pNSTZi4mni+CyyHETDYJm7xaRr0hT3ifx9vSa6SFtLq2pHskCEhvNpezQSx+TIzKz8F
	XPkH4SvOrq1D1Gtg5dgRqL5V95D5qq5w=
X-Received: by 2002:a05:6512:1294:b0:5a3:fd71:2781 with SMTP id
 2adb3069b0e04-5a3fd71279cmr610066e87.34.1776055577973; Sun, 12 Apr 2026
 21:46:17 -0700 (PDT)
MIME-Version: 1.0
References: <20260411222155.299441-1-loukot@gmail.com> <20260411222155.299441-3-loukot@gmail.com>
In-Reply-To: <20260411222155.299441-3-loukot@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 13 Apr 2026 12:46:05 +0800
X-Gmail-Original-Message-ID: <CAGb2v67UxMfMgaWSVk_3iweLuqyO4zX=pow=Zccwv+Ld6r2xtg@mail.gmail.com>
X-Gm-Features: AQROBzBqdV6FdqIJaLGUgiO_euNytwO7Lsyeg8dRDIqFA_sT2js3UEjNDJXWagw
Message-ID: <CAGb2v67UxMfMgaWSVk_3iweLuqyO4zX=pow=Zccwv+Ld6r2xtg@mail.gmail.com>
Subject: Re: [PATCH 2/5] wireless-regdb: Update 6 GHz rules for South Korea (KR)
To: Louis Kotze <loukot@gmail.com>
Cc: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260412_214621_523071_94B3C3BF 
X-CRM114-Status: GOOD (  15.90  )
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

On Sun, Apr 12, 2026 at 6:22=E2=80=AFAM Louis Kotze <loukot@gmail.com> wrot=
e:
>
> MSIT issued Announcement No. 2026-9 (February 10, 2026, effective
> April 1, 2026), revising 6 GHz power limits and bandwidth:
>
>   Lower band (5925-6425 MHz): 1 W (30 dBm) EIRP indoor
>   Upper band (6425-7125 MHz): 0.5 W (27 dBm) EIRP indoor

> MSIT Announcement No. 2024-22 (May 30, 2024) previously updated the
> maximum bandwidth from 160 MHz to 320 MHz.
>
> Since the database supports only one rule per band, use 27 dBm
> (the upper band limit) to ensure compliance across the full
> 5925-7125 MHz range. Update bandwidth from 160 to 320 MHz.

The database supports one rule per frequency range.

You can write it as two ranges, and add AUTO-BW to both. The kernel
will see this and know that the two bands can be combined. That way
if someone is using a smaller channel width that fits into the lower
band, they can use a higher power limit. This is what we do for the
5 GHz bands that have varying requirements.

ChenYu

> Reference:
>   MSIT Announcement No. 2026-9
>   https://gma.caict.ac.cn/en/update/103
> Signed-off-by: Louis Kotze <loukot@gmail.com>
> ---
>  db.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/db.txt b/db.txt
> index 172029e..9938089 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1136,7 +1136,7 @@ country KR: DFS-JP
>         (5470 - 5725 @ 160), (20), DFS
>         (5725 - 5850 @ 80), (23)
>         # 6 GHz band
> -       (5925 - 7125 @ 160), (15), NO-OUTDOOR
> +       (5925 - 7125 @ 320), (27), NO-OUTDOOR
>         # 60 GHz band channels 1-4
>         (57000 - 66000 @ 2160), (43)
>
> --
> 2.53.0
>

