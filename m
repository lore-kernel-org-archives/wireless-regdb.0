Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFC30FF885A
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 Apr 2026 06:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fBKKdOWfK3iJ66LXpr4zbDRlZ8thsVbRRIjDXQCTSyM=; b=qhe0JBOAwwtEnd
	n1Lm+cFqx3zVCb5wff53rsX4nI1Vb9VdqdSuLErkkkL6HyLEkKKGqXaWVebEFr63+gBj1m9wiZepf
	OWLYGSUjk2SMC4AdXxZI1pyVjrbSx8f+ROprjQoQXUJgrfp2fnnX5CsMA5hJs9NGYj4a/yqEF8Kw4
	Ul9z8lv1kQ3DrKZKop3qKHS6Rh9jQbDL3mRRjj8WJ59zInEAon0+gQ4I0ozvsA+9e7dFsa7e/5QgI
	b7jVwtfLjvlyXMJ7G5IjSD8GYST5tgUajCf4If9ze91SBEnDQZtLbGadO9P3zPOT0jilsB0d3CbRt
	uc6vLvtaZe35dY/a0Cbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHbxg-00000000dTx-2ucb;
	Tue, 28 Apr 2026 06:30:24 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHbxe-00000000dTc-1eFT
	for wireless-regdb@lists.infradead.org;
	Tue, 28 Apr 2026 06:30:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 91001437DF
	for <wireless-regdb@lists.infradead.org>; Tue, 28 Apr 2026 06:30:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7383BC2BCAF
	for <wireless-regdb@lists.infradead.org>; Tue, 28 Apr 2026 06:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777357821;
	bh=yt1fmoQSyrP69z6wKoVJz4MqWpZoTPB8nD9BOasw8XM=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=AhGsMCqY2kH1WHF2GsQtfd+QHQi76GZYrc6tE9VBksgiRfIuVbBAHHy9x7dezp2IX
	 ISkn26j+L/dpS5sJgMXQ05P7COdJ4ppWICjyo8P1Hyo3YmyHTM2BGQ/xdeN0uu4Y0/
	 izVlcnbkIWUIBQh9RMC89AaIkslzw432IY3S2215HZIO5wfbpic9bD3Os5SxMw571H
	 ksr47sGlE/JDtfpGMj3SWfWt6UyS14EkitHgGhVLzlqKL+fJN9JQ7OAwmYJL32GpeZ
	 VxqQzZka21V3mQv/k7zKCqbUIGKDGSEx3ULexSq8+r5Cel7eKCHATwiiSO78AWRj89
	 1vEfm230gW3bw==
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-38ddeb0f5abso84093421fa.3
        for <wireless-regdb@lists.infradead.org>; Mon, 27 Apr 2026 23:30:21 -0700 (PDT)
X-Gm-Message-State: AOJu0YyTUyWkinTMIo9xUksZOZNHvIQrxdKWk3XIcPNfpXAdQGLzHR5F
	YjArmCadevWNBXsAzWGSn17xewdNr4nWx5Y0EJFu/Lh2/5RE2H8zeAZ8MYRCnH1grbuvgUROcro
	Etea2RUyxM/Mhpe7SQGyNZ2ZPKfkG3sM=
X-Received: by 2002:a05:651c:1602:b0:38f:e999:6a5a with SMTP id
 38308e7fff4ca-39240d2be8fmr5745401fa.11.1777357819729; Mon, 27 Apr 2026
 23:30:19 -0700 (PDT)
MIME-Version: 1.0
References: <20260418201717.2152301-1-loukot@gmail.com>
In-Reply-To: <20260418201717.2152301-1-loukot@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 28 Apr 2026 15:30:06 +0900
X-Gmail-Original-Message-ID: <CAGb2v64GhRi_+qqSMVkAmqcA3xNaEWNGcAQqQEDckDMG80rH+g@mail.gmail.com>
X-Gm-Features: AVHnY4JEoSxQZgKAPSE_7dn29MXVM0191Qks0C1nRUIp9oNSf-EMukFBDyLTtis
Message-ID: <CAGb2v64GhRi_+qqSMVkAmqcA3xNaEWNGcAQqQEDckDMG80rH+g@mail.gmail.com>
Subject: Re: [PATCH v2] wireless-regdb: Update 5/6 GHz power rules for Russia (RU)
To: Louis Kotze <loukot@gmail.com>
Cc: wireless-regdb@lists.infradead.org, vkosikhin@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_233022_475997_96B9EE31 
X-CRM114-Status: GOOD (  17.31  )
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

On Sun, Apr 19, 2026 at 5:17=E2=80=AFAM Louis Kotze <loukot@gmail.com> wrot=
e:
>
> The 5650-5850 and 5925-6425 MHz entries use 100 mW EIRP. The SCRF
> spectrum allocation (Annex 2 of SCRF 07-20-03-001) permits 200 mW
> EIRP, indoor, with LBT. The LBT requirement is satisfied by the
> standard IEEE 802.11 CCA mechanism in the MAC layer.
>
> Leave 5150-5350 MHz at 100 mW. The SCRF spectrum allocation permits
> 200 mW here too, but the per-standard equipment certification rules
> cap 802.11n (Order 124) and 802.11ax (Order 321) at 100 mW. Per
> maintainer guidance, regdb should encode the most restrictive
> applicable limit.
>
> Primary-source analysis (SCRF PDFs and per-standard Orders), as well
> as a forthcoming source-URL update from Valeriy Kosikhin, are in the
> lore thread.
>
> Link: https://lore.kernel.org/wireless-regdb/20260417060000.ru-analysis@g=
mail.com/
> Signed-off-by: Louis Kotze <loukot@gmail.com>
> ---
> Changes since v1:
>   - Keep 5150-5350 at 100 mW per most-restrictive-limit guidance
>     (Chen-Yu Tsai).
>   - Add 5650-5850 bump to 200 mW (missed in v1, which only addressed
>     5925-6425).
>   - Replace eleoscompliance.com reference (flagged as uninformative
>     in v1 review) with a lore link to the primary-source analysis
>     thread. A follow-up patch from Valeriy Kosikhin will update the
>     in-tree source-URL comment to the SCRF primary documents after
>     lawyer review.
>
> v1: https://lore.kernel.org/wireless-regdb/20260411222155.299441-4-loukot=
@gmail.com/
>
>  db.txt | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 343b256..26413da 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1771,8 +1771,8 @@ country RS: DFS-ETSI
>  country RU:
>         (2400 - 2483.5 @ 40), (100mW)
>         (5150 - 5350 @ 160), (100 mW), NO-OUTDOOR
> -       (5650 - 5850 @ 160), (100 mW), NO-OUTDOOR
> -       (5925 - 6425 @ 160), (100 mW), NO-OUTDOOR
> +       (5650 - 5850 @ 160), (200 mW), NO-OUTDOOR
> +       (5925 - 6425 @ 160), (200 mW), NO-OUTDOOR

Just to follow up, there was a patch to enlarge the allowed channel
width to 320 MHz [1]. Do either of you know whether this is valid?
If yes, could you reply to it with a Reviewed-by?


Thanks
ChenYu


[1] https://lore.kernel.org/linux-wireless/20250708-russia-320-v1-1-53641e8=
dd417@0upti.me/


>         # 60 GHz band channels 1-4, ref: Changes to NLA 124_Order =E2=84=
=96129_22042015.pdf
>         (57000 - 66000 @ 2160), (40), NO-OUTDOOR
>
>
> base-commit: 3ceaf3bc0a3d81acd0c1bc413a620ed18e41475f
> --
> 2.53.0
>

