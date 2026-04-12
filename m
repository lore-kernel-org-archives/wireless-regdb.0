Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E285AF3ED67
	for <wireless-regdb@archiver.kernel.org>; Sun, 12 Apr 2026 02:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XZfixy9KzuMUS7NUkPDnwsoWgVp7BWwk0SGtUqW376o=; b=aS/tmyhy+AeyLK
	r6RKpcyAMEhDmzTYAnKd+hJ9AdrWG68DDdhpsU3d2REg6tmOJr057t+KwcVc0b4Zni9Q9bcrvIGUB
	MRUQO4VIolEWZM4PjOfOMFsEgjya9uz80LxJZG8O1L6BwZtXeWVJc+I5yoGV5MSmjAjBUUoC/2epO
	dhTR9Jo6eQE8E1AaAVvSeej5RaBthRGVFLba4pgFDuaTjpJJgQ4eO0yR+SSAeBw0/8Ejdxzqr4kZn
	UkGjkJSrkxQqu6AsvH1MinyTHDYcLP8pPmb/zok2h15OHVvOcUIdX7PggVvdDKPnxX0GS88ozaN4T
	ESQLm1Tg8cXie5Y4BoQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBkf8-0000000Dypk-2T9O;
	Sun, 12 Apr 2026 02:35:02 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBkf5-0000000Dyp7-2hVs
	for wireless-regdb@lists.infradead.org;
	Sun, 12 Apr 2026 02:35:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 64C8D406FE
	for <wireless-regdb@lists.infradead.org>; Sun, 12 Apr 2026 02:34:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 452F4C2BCB0
	for <wireless-regdb@lists.infradead.org>; Sun, 12 Apr 2026 02:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775961296;
	bh=J4h5BNjdcCB9I5+OCxw9HW5PbjEmnG7Sjv6LP2tIQoU=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=fRNDRIbZ+FYmesMDUGY4QSVXyh1mHxSk4N4j5raCzdvVOm39gl6Fsa5FPiygXhAgz
	 Lr1Zc+VAbn6e4JK9F2pFtIUMqM7J1Tp3tmeF09M1j0wkV6RhFLL5zI8gCA4NfuESAL
	 FyaQ1RdrxK5Wn7w/UAZaArsS67Y9p/ONLomoO+298qlrdzY31MyY6yY+mK3HbpwsKd
	 znAybTQbgw0Y6ytl+pzgMSzRvC+bnqZY0E9D1l4gY/v9kqPVDR4tm9tG9ul7Jse3iC
	 nv+bHhbFdgBV6/p40P50MnhTQsAVd5FjPzQvLiqnrDxm8fJQV66ZefaS9QAuGx8U4Q
	 yvRD7bmzMG3xQ==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-38cbb1ad0b6so29573401fa.2
        for <wireless-regdb@lists.infradead.org>; Sat, 11 Apr 2026 19:34:56 -0700 (PDT)
X-Gm-Message-State: AOJu0YzW2zg6ZAP+nM9/cf9uiympLZ58++0e/Q3lo/xioPWhmyHcxAa8
	ekPpvUfcUgjsBnz9F2dpl6fykHDyCzvqMh/+CMet0KxGz3hgz3dxLhP4s31jV3qsh5VX6xVA4RV
	lvQyujApoTkvD3I7xVaexTQzvm40U+Og=
X-Received: by 2002:a2e:b887:0:b0:38e:c9f:a14c with SMTP id
 38308e7fff4ca-38e4bf0374emr24246831fa.24.1775961294675; Sat, 11 Apr 2026
 19:34:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAMcSec+mFSUDm+M=0YaNDe26Z2nup2VzzJqz9psxh2-wkT=7Zw@mail.gmail.com>
 <CAMcSecKaRR1_cqHneKGDOnD9o=CJgqdGXnPeaRM3QjCEn6Lykg@mail.gmail.com>
In-Reply-To: <CAMcSecKaRR1_cqHneKGDOnD9o=CJgqdGXnPeaRM3QjCEn6Lykg@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Sun, 12 Apr 2026 10:34:42 +0800
X-Gmail-Original-Message-ID: <CAGb2v64q6L43iZYusUuJ5h1yvZKzpAKYbOa8d1OL+9puJ6Mxvg@mail.gmail.com>
X-Gm-Features: AQROBzDrBUHOh134cBIQn4jhfdel19_G9WbtUb7yqzohcqPDpZLGD6qQRR9LNNI
Message-ID: <CAGb2v64q6L43iZYusUuJ5h1yvZKzpAKYbOa8d1OL+9puJ6Mxvg@mail.gmail.com>
Subject: Re: Question: Should FCC-region 6 GHz entries use the India PSD methodology?
To: Louis Kotze <loukot@gmail.com>
Cc: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260411_193459_727958_831D9DBE 
X-CRM114-Status: GOOD (  14.20  )
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

Hi,

On Sun, Apr 12, 2026 at 6:38=E2=80=AFAM Louis Kotze <loukot@gmail.com> wrot=
e:
>
> Hi Chen-Yu,
>
> Following the patch series I just submitted, I have a question about
> the FCC-region 6 GHz entries.
>
> Currently 12 countries (US, CA, BR, AR, CO, PE, SV, MX, CL, KY, HN,
> PY) use 12 dBm for 6 GHz LPI. I understand this was chosen as the
> absolute minimum across all device types and channel widths.
>
> However, the India (IN) entry (commit 5db6ce73) uses a different
> methodology =E2=80=94 PSD at 20 MHz minimum channel width:
>
>   India: 11 dBm/MHz =C3=97 20 MHz =3D 24 dBm
>
> Applying the same approach to FCC (5 dBm/MHz PSD):
>
>   FCC: 5 dBm/MHz =C3=97 20 MHz =3D 18 dBm

The PSD limit is actually -1 dBm/MHz. The device class we consider is
6XD (indoor low power client). This translates to 12.01 dBm at 20 Mhz
channel width. So the current rule in the database is correct.

> 18 dBm is compliant at every standard WiFi channel width (>=3D20 MHz)
> for both AP and client devices:
>
>   Width   PSD limit   FCC client max   18 dBm   Legal?
>   20 MHz    18 dBm       24 dBm        18 dBm   Yes
>   40 MHz    21 dBm       24 dBm        18 dBm   Yes
>   80 MHz    24 dBm       24 dBm        18 dBm   Yes
>   160 MHz   27 dBm       24 dBm        18 dBm   Yes
>   320 MHz   30 dBm       24 dBm        18 dBm   Yes
>
> The reason I ask: during my work on the South Africa (ZA) fix, the
> 9 dBm gap between the regdb (14 dBm) and the AP's advertised power
> (23 dBm) caused repeated "regulatory prevented using AP config,
> downgraded" errors and complete 6 GHz association failure. The FCC
> gap is 18 dBm (12 vs 30), which would cause the same or worse
> symptoms for any Linux user connecting to a standard FCC LPI access
> point on 6 GHz.
>
> Would the India PSD-at-20-MHz methodology be appropriate for FCC
> countries as well?

As mentioned above, they are using the same methodology. It's just that
the FCC PSD limit is very low.


Thanks
ChenYu

