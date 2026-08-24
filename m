Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E734BC5DF94
	for <wireless-regdb@archiver.kernel.org>; Mon, 24 Aug 2026 04:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uhEVXwjacnboWKfDN+ktqXG/vu4w+iOXfwWiYGNFjiI=; b=TjrB7pDf+xYVfI
	vMGXjunRmYUKArd+ZyHBardc6D4bPo6m977JaFb7bWnKeyedTzN7rtMg7d2JX4vRQ8v/BWtV+8vJ2
	EHzYPmajDLyVrs3EL18gqbEUtH3ZhURgzaHRqqj8zMA7F4CN8xu102enSxlmKqrTPrRQkvFgrhwWf
	9BF2HpEhM6fiWNC/33InEGaePtPOi6dJrQD5EgrbXrUctrI5q2Fm1KEwqCwqfi2+mvd09bHqvsSHF
	bXO5ceHs7+YX94+KtkTwQFcxmaw+JzbEa8EdgJGoRry/kB/tCGqJFZTvNO/6+1PdlnSmdf+BYP5P7
	mGefEolqwhFHtQgJkWIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyMSB-0000000Fuhd-3rrf;
	Mon, 24 Aug 2026 04:38:35 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyMSA-0000000FuhX-3Gso
	for wireless-regdb@lists.infradead.org;
	Mon, 24 Aug 2026 04:38:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3F471600C8
	for <wireless-regdb@lists.infradead.org>; Mon, 24 Aug 2026 04:38:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECA6D1F00A3D
	for <wireless-regdb@lists.infradead.org>; Mon, 24 Aug 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787546314;
	bh=uhEVXwjacnboWKfDN+ktqXG/vu4w+iOXfwWiYGNFjiI=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=Rq65UXLwlEZ1AUb6OlfwGuaXZy5+DKCt5ry9Zm7M1vICtJF+IcpCwaj5e6lyvWP2C
	 zgc/goC1HsyXyhVm3UD9HlY7EQST1G2w9zt4EFoNubcxNJWuviU5VqBZw5vG182EW6
	 OMh4SsAAxFMxOdnsal2NQ5kFRK3NSwyvGeczh0+9F6smDRwJDo9jN7Srxw0fB5Xyww
	 OD6+4abajj4MyQS5i9jYfReuig8ju5bsyRnlK8bPLlUyAWNZhDEQwl+SE8jcM9teHT
	 KoPtqhuGWEsPxQuaDG4ajf45LVwohHHzOF5CFVBCRiZKfBY6xNFifZrmJlW8w1ufc0
	 m3QYyKfwF57Bg==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-39c7ed5410bso17795831fa.0
        for <wireless-regdb@lists.infradead.org>; Sun, 23 Aug 2026 21:38:33 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RqjQiGCsMOBK0fYeAFOieK0ThiwubKJf5Y/dqDYjhouMGpbigOkJSlyYHGhsIfRgx55y9U/BJYObQAtohGb5A==@lists.infradead.org
X-Gm-Message-State: AFuF++kzZPcHv0FR87CenOdXTclezLc7XiXlU86bCwCz7jtcails7Gm2
	Or1oY5YT4Tahx6VOv8adQLeerWnRGhOe0zWyHpe7YRvm8nuNNPkQNv/U31PYkhTlseRsngNur9D
	JHR/KaG/fv0nov0kzqv7jogKy3Zs8W2g=
X-Received: by 2002:a05:651c:2223:b0:3a1:b1e4:419c with SMTP id
 38308e7fff4ca-3a1c1e994f9mr30399681fa.10.1787546312444; Sun, 23 Aug 2026
 21:38:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAJF5HCtEvb-aiusJuzmCvu-db4orDwsSnG+mOfCbLXXYRCbtvg@mail.gmail.com>
In-Reply-To: <CAJF5HCtEvb-aiusJuzmCvu-db4orDwsSnG+mOfCbLXXYRCbtvg@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 24 Aug 2026 12:38:19 +0800
X-Gmail-Original-Message-ID: <CAGb2v66bvMC9wU9gYknRdM+0oG7UcGquHCu5KYiwJjWZDRtk1g@mail.gmail.com>
X-Gm-Features: AcwNN1Uz_DzU818P0jHfWiAMPknVbVZcv0nbIZMxAQwh07QaW150neXxOvonvhI
Message-ID: <CAGb2v66bvMC9wU9gYknRdM+0oG7UcGquHCu5KYiwJjWZDRtk1g@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: update regulatory rules for Bangladesh (BD)
To: Ibrahim Hossain Abir <xbowpc@gmail.com>
Cc: linux-wireless@vger.kernel.org, sforshee@kernel.org, 
	wireless-regdb@lists.infradead.org
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

On Mon, Aug 24, 2026 at 4:26=E2=80=AFAM Ibrahim Hossain Abir <xbowpc@gmail.=
com> wrote:
>
> wireless-regdb: update regulatory rules for Bangladesh (BD)
>
> Update regulatory rules for Bangladesh (BD) based on the official BTRC
> (Bangladesh Telecommunication Regulatory Commission) directive dated
> September 15, 2024.
>
> Enables U-NII-1/2A, U-NII-2C (DFS), U-NII-3/4, and lower 6 GHz (5925-6425=
 MHz).
>
> Official BTRC Notice:
> https://btrc.gov.bd/pages/notices/6922ee00dbfbab28ce0c438d

This only says that the lower 6 GHz range is allowed. It does not say
what the power limits are, or if there are any other restrictions.

> User Impact Reference:
> https://community.intel.com/t5/Wireless/6-GHz-Wi-Fi-6E-Not-Detected-on-In=
tel-AX211-in-Bangladesh/m-p/1740885
>
> Signed-off-by: Ibrahim Hossain Abir <xbowpc@gmail.com>
> ---
>  db.txt | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 0000000..1111111 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -223,5 +223,7 @@ country BD: DFS-JP
>   (2402 - 2482 @ 40), (20)
> - (5735 - 5835 @ 80), (30)
> + (5150 - 5350 @ 80), (20), NO-OUTDOOR, AUTO-BW
> + (5470 - 5725 @ 160), (20), DFS, AUTO-BW
> + (5725 - 5850 @ 80), (30)
> + (5925 - 6425 @ 320), (23), NO-OUTDOOR

A reference with the band and power limits, as well as any other
restrictions like DFS or TPC (andif TPC is required, what is the
limit if TPC is not implemented) needs to be provided. We cannot
put random numbers into the database without justification.


Thanks
ChenYu

