Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49D72E93815
	for <wireless-regdb@archiver.kernel.org>; Mon, 13 Apr 2026 05:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ShryAWnL+9i84pCRuxLEnyLO0mKaVF4mGsTeKEXD3P0=; b=KQ5dGDTFQfB/LI
	MN+fVYUELgDl5EPczWnzpjtFP8cnsJXy+RHbrFsOz9Ugm76NOxaL5AiAPfIfobJDhefugdcz9NEhM
	ED/xFX3plEQTDBgkKsqQnJSl71XB/QmQiwuLU7/2E1q4mn2tL+itu7MmU2LbD0UkaQJkZpGZjLZJg
	i6qE7Z/vWJINiASWmfbsZ0mhHM3yQK+zzl8EeSuc2HX4OF9tpv4BM/1w5z2UY0HnspG7EDsOI5MTW
	mcW+/t5wqFm2ZoDY0eD/7w0ZwopJquew0No+nPCgQMVVzGzONmM/07AuLO3iJpfzezLnB+zhany/o
	QIXbV9T+/pO9iKp4BPMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wC9Sm-0000000Ezg8-29uE;
	Mon, 13 Apr 2026 05:03:56 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wC9Sj-0000000EzfZ-2Isz
	for wireless-regdb@lists.infradead.org;
	Mon, 13 Apr 2026 05:03:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D6B91440BD
	for <wireless-regdb@lists.infradead.org>; Mon, 13 Apr 2026 05:03:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3C2FC2BCB1
	for <wireless-regdb@lists.infradead.org>; Mon, 13 Apr 2026 05:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776056632;
	bh=+g8XS2oHnOyByBbtbMfLhB++JZithFmYIqfV0nWfxOA=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=fI+RthLJ2GR8Lfig+725IqNVWnfFsNgEMkw0ebzHdNQVtMFqdQqVjU5hZ5U5I3Y7V
	 OgTDIZPEW6E6SBiL2YcMp7GmZ5HCM+khKxmlXN1j1QPz7Tvy8rpx7EV8xG3n9o5dpu
	 0xkwP5M4B7KlPHwm0+MMjWap6GlA2GD9K1houAm2aQl0KO6Bt7e6H2Ydg7/G5iSMX0
	 dhbE609ylsYdvmxyQtgJwm8O4IsL53NdXyOS08WpOyFWpbhy68zfavpmznG7BjHOxF
	 lRn8HzECNVqyPsXD98dz3Z6f5MVqu9flfnPZ1LTtN643ICm3OtAIB2nsirbcm2yZ6Q
	 gjgQjHdxkl5Ig==
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-38dd575bcf3so41463211fa.3
        for <wireless-regdb@lists.infradead.org>; Sun, 12 Apr 2026 22:03:52 -0700 (PDT)
X-Gm-Message-State: AOJu0YyPkl28rh7+onnvpXhaSBorrnhC7FAEGNDwQNjpEd5rqtAdkLEw
	1TWkatKsu16c78kxm2ZZEfoenPBXPxrFTFe/vGeS2tnwVD+UwsdrNiujZxSvPeWokHwi1b0jHQ4
	7GsDsreFDVqZjGoQVJj7JjDFcQz0rYNU=
X-Received: by 2002:a05:651c:b21:b0:38b:be3e:b73a with SMTP id
 38308e7fff4ca-38e4bef9041mr34841161fa.16.1776056631037; Sun, 12 Apr 2026
 22:03:51 -0700 (PDT)
MIME-Version: 1.0
References: <20260411222155.299441-1-loukot@gmail.com> <20260411222155.299441-4-loukot@gmail.com>
In-Reply-To: <20260411222155.299441-4-loukot@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 13 Apr 2026 13:03:38 +0800
X-Gmail-Original-Message-ID: <CAGb2v67DTq4tRgaPqG3WU6d+6mHdxdhcCvdX1QKd5ByKoF+=Xg@mail.gmail.com>
X-Gm-Features: AQROBzCBAM16bjtnoPHzkcoAlP0yZI13w2qrT7yT2JF6G0Ez_22dct86RJR34V4
Message-ID: <CAGb2v67DTq4tRgaPqG3WU6d+6mHdxdhcCvdX1QKd5ByKoF+=Xg@mail.gmail.com>
Subject: Re: [PATCH 3/5] wireless-regdb: Fix 6 GHz LPI power for Russia (RU)
To: Louis Kotze <loukot@gmail.com>
Cc: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260412_220353_642657_CE2578BD 
X-CRM114-Status: GOOD (  15.64  )
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
> The State Commission for Radio Frequencies (GKRCH) Decision No. 22-65
> (December 23, 2022) authorized 6 GHz LPI at 200 mW (23 dBm) EIRP
> with 10 mW/MHz PSD. The current entry incorrectly uses 100 mW.
>
> Reference:
>   GKRCH Decision No. 22-65 (2022-12-23)
>   https://www.eleoscompliance.com/en/article/russia-the-federal-communica=
tion-agency-fac-of-russia-allows-6ghz-wifi

This page doesn't actually contain any useful information.

I can't seem to access the reference from the original submission.
I'll try again later.

I did find https://www.gccorp.com.tw/en/?p=3D2173 using the document name
you gave, but that also mentions that "automatic power control system"
is required. I assume that is TPC, which Linux basically doesn't have.
So we still have a problem here. If the rules were based on FCC or EU
regulations, then we sort of adopt a 3 dBm reduction in the limit.


ChenYu

> Signed-off-by: Louis Kotze <loukot@gmail.com>
> ---
>  db.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/db.txt b/db.txt
> index 9938089..777d323 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1772,7 +1772,7 @@ country RU:
>         (2400 - 2483.5 @ 40), (100mW)
>         (5150 - 5350 @ 160), (100 mW), NO-OUTDOOR
>         (5650 - 5850 @ 160), (100 mW), NO-OUTDOOR
> -       (5925 - 6425 @ 160), (100 mW), NO-OUTDOOR
> +       (5925 - 6425 @ 160), (200 mW), NO-OUTDOOR
>         # 60 GHz band channels 1-4, ref: Changes to NLA 124_Order =E2=84=
=96129_22042015.pdf
>         (57000 - 66000 @ 2160), (40), NO-OUTDOOR
>
> --
> 2.53.0
>

