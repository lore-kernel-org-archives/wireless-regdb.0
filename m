Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26FD6C61CE2
	for <wireless-regdb@archiver.kernel.org>; Mon, 24 Aug 2026 07:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w9HQsIs34F9CkFfEOrlbBQvrjXnhasrgbQZNTVtnk84=; b=1oJ1PgIHynhiEOn6jLY0uujs6o
	xeYNjXHwpkSATXgrqF6TbuGE9QihZRR/a2335QLRb2e/DkD5ekUSvioj63buKqe9IIOxW4aKvcdhh
	lMr1/5uBI45PUr5KCX8siyv+E+9NbwbONH0eFgQPu5zabCfKqy3BCP1zgRwDR6Lh2YxLZqPf9RGA+
	ja7oORy/f1RltEa4ArtjIpISO7uPlbXLpKocbBrAMr/XSfaRMICtspoMJGcOQDIs/FYNcYkcgja+x
	Yihhr2N2VnyXoB0GxbwyAespyhuYGxGJd4cWK5pklDYkUtK67MlhlcyIC/l2cPLqTQoaJX1330XNa
	fS5hK/EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyP1V-0000000G43I-1pKs;
	Mon, 24 Aug 2026 07:23:13 +0000
Received: from mail-yx2-x09.google.com ([2607:f8b0:4864:41::9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyP1R-0000000G42o-1BkG
	for wireless-regdb@lists.infradead.org;
	Mon, 24 Aug 2026 07:23:10 +0000
Received: by mail-yx2-x09.google.com with SMTP id 956f58d0204a3-66c8744245dso1222294d50.1
        for <wireless-regdb@lists.infradead.org>; Mon, 24 Aug 2026 00:23:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787556188; cv=none;
        d=google.com; s=arc-20260327;
        b=WUtQuQycN06i9ZZe9Z92z96aK75ON77YnrJRpp+OlBNslnGIrLOI0CvquNJ5dZW3wi
         Lynh7+HyhEhaJuJ40NhdLx2GwieLtxThXw7UUExNepn037AN2uJSFbnfCzniGv+TdQdM
         q+4fQLGD3WrvF2fdL1UMVeIdATzyKven9qlAvv5vpU7Q5Xm8WHZbahf0rjskhjwVuCtY
         cOjx/T4sJlPKDdFEusMobYScNeGD+V546Kp8h+WgXvDWKwUBKRXpYBQZolIkqFsOmqWO
         AkjKdPENQM98GqtOx9ysyUkVF3AuXcnyqLPJXktUBIBzbSLi+ANMKgJ5hMQ4Zz4G+KGX
         Sr0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=w9HQsIs34F9CkFfEOrlbBQvrjXnhasrgbQZNTVtnk84=;
        fh=X2ihyQg0/cU9tScyupCN7gFkiGJBrKPqsFBD43His3g=;
        b=MJ0noiroDWlv5MmLbpskQpVqOtexK7DKWeMUo838n1XpwEAMwTUIpVGCFPIVfEd33j
         6c9c/5WsFEO6Mt0dQJUPkZsC7ROdl2hFNBvMdPaBEWlZLwybFjrv772/UmUWFJCZEPBv
         RUCd+T7ApeLJ+Wj00qucwtQR0l46P8nZ4QIPR3ef/JEbvGvHn7tnRyaV8M6p2VOfbXKp
         e24ifruAwvn77suYiujBkt/f3icZCo88Ucd2/Vp10Y8MpXZFKoFGSTCeHhQxqD4tyuet
         9vG/XzKJq37Sw0o5IGr6IThPVyLJ0j+JEkhJZ79WvfMCC2y5W5+DgGcFIPg75e5i7Ep9
         bKzw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787556188; x=1788160988; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=w9HQsIs34F9CkFfEOrlbBQvrjXnhasrgbQZNTVtnk84=;
        b=R6DGoXxreCB9sLp0FMQQyDjxmiFLh2zXgckpn/gSoPALA3Z1M2Bfr4i53hlbLaxt+E
         ZrSG5tcKHMYtLxGVVjZB+f/GO90/cwjKaXGzzR/r9kjSQJhle91LntEjdpH5Mf0K6ReD
         GX1Zjs4mYY44WZiF83319QC/4iGvgtuzVEwZMzOK8xW1hCO3A6gTpgBcqTsbzIxsN+tl
         +Bed/aZj6gRbdEZexLG9KR11rI3QtRyg7dV5GH9dqkcCChpubBCNpvx0VC0QtQSts4/j
         jXePH9tN9bKU13FtUukwvOf7FF5Bu9XIxSBsS6hScygkqwDoJA7wYxhOsBJDopGgKlOa
         1Ujg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787556188; x=1788160988;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=w9HQsIs34F9CkFfEOrlbBQvrjXnhasrgbQZNTVtnk84=;
        b=rB9HsP5kH2vwZAUJ07dgPXsjMicq33mM5t9STBAhRz4AezJeXjssLGp32Ye3DHLgWW
         n7CaVTOHN8MkdNjeeknGc0UA3thm3iHFGp0MCcMvwCKIqXojIeSb6JU0waTCk/7KWFNM
         /OxRhncAHRDE6t0NaOAO4cKJgMs9BLpRH2h8bT9VvLrJ08sFLabs4231AXhpzkDa9aIx
         3vYE8nklJF3CvR6FNukTu7AqyjdV01qaUPU5efsLLpNYw6BwHmUaDpJ0PxF8bQV/aUtl
         kTTKJhgHnSdKScTLdKwPQ7SoLsrtQ0qwbGkKpxyTsf5v6Ix319BF1ETjxYjVbCl/7Oou
         MoJQ==
X-Forwarded-Encrypted: i=1; AHgh+Rook4lufkb5gmLDUmcBuPTIdk1R5rL4cvCIypIddHVhKLqKRaCIEsqVPRX01yzgjwBin4QlKe9YXYn5LGNMLg==@lists.infradead.org
X-Gm-Message-State: AFuF++lvepXn8b7IGIM5e6RalLOTIsjhdi5Xresvnio9TZZj0CNZ9rdl
	VQAzGqCLS9aZOLy6PxvlLQcx4UHWtbq+qerg7WdyhL2t5dCv1lt1FfLdkAZH1rmwSqIIscftY6s
	u4cf2AHI4YbBHr/9EjK/BHNwwo3N1nhs=
X-Gm-Gg: AR+sD131e2YJ30+BomxyUQDmHqsKBC8qWToKQiRUdLXjXh+3xPcxgRFZ2gbgkKkIBap
	000XDDBvVx2NWwf33Zbx5W1nexuUr/1IieZsLwO3gU7MeoIl7KzfHa2ajGGDb7cpPHkKIzP0Ztc
	13ItueTzKC8STOmHYsWpZJpLNLQiFV20vsHPI/ts5My4RGZin6n6DV3Y0vm03FIJS0LRHrKO+09
	pQZD7mUKXSMkLTiHmU2119Vn0pqsSV7HiQPGVxTuVg1TuhXZosAocpsdR83TqoYiwiABfnfEh5B
	qMhyoOzZ7eW5D2jx40RyO2zWxIo6VxYERxB+fHNe64QGT7ez2wTTuSs39V4IoMt84E1+bwcRbPh
	tC76yjXFZQVr5pVxPyzzwB6h62ZDJRzj9W+KkjDi3ES9/MZe5TrOcgfQ=
X-Received: by 2002:a05:690e:4104:b0:66a:b622:5974 with SMTP id
 956f58d0204a3-66ce4a87ee9mr7426309d50.22.1787556187879; Mon, 24 Aug 2026
 00:23:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAJF5HCtEvb-aiusJuzmCvu-db4orDwsSnG+mOfCbLXXYRCbtvg@mail.gmail.com>
 <CAGb2v66bvMC9wU9gYknRdM+0oG7UcGquHCu5KYiwJjWZDRtk1g@mail.gmail.com>
In-Reply-To: <CAGb2v66bvMC9wU9gYknRdM+0oG7UcGquHCu5KYiwJjWZDRtk1g@mail.gmail.com>
From: Ibrahim Hossain Abir <xbowpc@gmail.com>
Date: Mon, 24 Aug 2026 13:22:54 +0600
X-Gm-Features: AcwNN1VFBmOib0Kf5woET0ol44OGtNb-WbcFiLSb0pKfxwJ_FsR1Bnxdtun4z50
Message-ID: <CAJF5HCtAVMbarNYDkrKWE97Lib+YJk8ZE+5eWsEZ4fKVTp8tOw@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: update regulatory rules for Bangladesh (BD)
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org, sforshee@kernel.org, 
	wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_002309_332119_CF3F91F2 
X-CRM114-Status: GOOD (  18.08  )
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
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

Hi ChenYu,

Thank you for the review.

Regarding the reference:
The official BTRC circular (dated Sept 15, 2024) specifically
authorizes the 5925=E2=80=936425 MHz frequency range for Wi-Fi/WLAN/IoT sha=
red
usage in Bangladesh. However, this notice does not define explicit
EIRP power limits, TPC, or DFS requirements.

In the initial patch, standard conservative limits (such as 23 dBm for
6 GHz LPI) were derived from standard Wi-Fi 6E/7 spectrum norms.

Could you advise on how wireless-regdb prefers to handle cases where
the regulatory body approves the band without listing explicit EIRP
limits in their notice? Would setting a conservative default (like 20
dBm / 100 mW EIRP) for 5925=E2=80=936425 MHz be acceptable for Patch v2?

Thanks,
Ibrahim Hossain Abir


On Mon, Aug 24, 2026 at 10:38=E2=80=AFAM Chen-Yu Tsai <wens@kernel.org> wro=
te:
>
> On Mon, Aug 24, 2026 at 4:26=E2=80=AFAM Ibrahim Hossain Abir <xbowpc@gmai=
l.com> wrote:
> >
> > wireless-regdb: update regulatory rules for Bangladesh (BD)
> >
> > Update regulatory rules for Bangladesh (BD) based on the official BTRC
> > (Bangladesh Telecommunication Regulatory Commission) directive dated
> > September 15, 2024.
> >
> > Enables U-NII-1/2A, U-NII-2C (DFS), U-NII-3/4, and lower 6 GHz (5925-64=
25 MHz).
> >
> > Official BTRC Notice:
> > https://btrc.gov.bd/pages/notices/6922ee00dbfbab28ce0c438d
>
> This only says that the lower 6 GHz range is allowed. It does not say
> what the power limits are, or if there are any other restrictions.
>
> > User Impact Reference:
> > https://community.intel.com/t5/Wireless/6-GHz-Wi-Fi-6E-Not-Detected-on-=
Intel-AX211-in-Bangladesh/m-p/1740885
> >
> > Signed-off-by: Ibrahim Hossain Abir <xbowpc@gmail.com>
> > ---
> >  db.txt | 8 +++++---
> >  1 file changed, 5 insertions(+), 3 deletions(-)
> >
> > diff --git a/db.txt b/db.txt
> > index 0000000..1111111 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -223,5 +223,7 @@ country BD: DFS-JP
> >   (2402 - 2482 @ 40), (20)
> > - (5735 - 5835 @ 80), (30)
> > + (5150 - 5350 @ 80), (20), NO-OUTDOOR, AUTO-BW
> > + (5470 - 5725 @ 160), (20), DFS, AUTO-BW
> > + (5725 - 5850 @ 80), (30)
> > + (5925 - 6425 @ 320), (23), NO-OUTDOOR
>
> A reference with the band and power limits, as well as any other
> restrictions like DFS or TPC (andif TPC is required, what is the
> limit if TPC is not implemented) needs to be provided. We cannot
> put random numbers into the database without justification.
>
>
> Thanks
> ChenYu

