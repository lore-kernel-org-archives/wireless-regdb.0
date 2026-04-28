Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3F54FF885A
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 Apr 2026 06:57:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zUe4QteJGepwAdo2gMgtKn+ymjQ8icIqRemfv0NWsYE=; b=bG0G4zK07SRpiz
	JXpDFjv1SuIRIvyHzwbxGVghbHuHHHFQ/yZmhJUz6YD1lA+GtMdn+WJ2SoPHl/GBCjqFmDeYUZJn8
	QFtvPRhPFy/KPzGywV9o6t3evRsdVvd1LfKfzLTzaAm66ruvuCVnRRFHKUB+XRcnLm6y+C3bUk6vV
	jKHGELBHOTAAGovo0xeJcl4ZrhjvuBl9USCAUl5fhHIRtyozUdMwkBJgyE0hEtTAVKKTZ/4n4drA3
	LV1z6I0gehYKNBQJb2Foo+dJoMPidSDvFmmG+dvBOVVFhUcNpXo1VIhyyg6svj4X9W8vCkZo/4xjt
	yBtx03wVLQpgcFTA3Ygw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHcNi-00000000esK-1NqN;
	Tue, 28 Apr 2026 06:57:18 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHcNg-00000000esE-2xtp
	for wireless-regdb@lists.infradead.org;
	Tue, 28 Apr 2026 06:57:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1329360133
	for <wireless-regdb@lists.infradead.org>; Tue, 28 Apr 2026 06:57:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD8C2C2BCAF
	for <wireless-regdb@lists.infradead.org>; Tue, 28 Apr 2026 06:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777359435;
	bh=lWrdM2SjRzIwrZ4CHDBSQc3n/YiBy7qNIwxSUU9W/PA=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=qvJZ5Ugn4eiJdKpQAaPrqStEje6niMZvq3q1MkzXN09jugnP/Q30n5NRI9tm93yxJ
	 v9EHYxViMIPRHK+Vv0pjBio4WBrhswPM+J0TD8L89VsBsfHwbg5M/ROjSv9I60BvW3
	 hUQRVgcaoa016dqJjoTIa/670nqVCSfiN5bxYEXKB8BxtVGEaj/l/ODpli5yBwJh7V
	 G5dX84d/jypfbJoFw/rviWSaeDWdNQmbB6j4IGEtn3iZQJ3F+zK4fhyiEBLAF2ajJk
	 shV/UDhwTa57bD+m46hGZmA5WA8PsZ4Lc271C5c99LqraOoiMY2qBrGqAVJGCx0kQl
	 rluMuC9uDlt8g==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-38e91b06006so91106171fa.2
        for <wireless-regdb@lists.infradead.org>; Mon, 27 Apr 2026 23:57:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ86gk0drI46+jZ3lWC8OpqNPE+Ijv+NSgQn48s8HBgjwc30rum7CDn5+MxpYXiSEGmg6LXVaT8KWeNS1f4U+w==@lists.infradead.org
X-Gm-Message-State: AOJu0YxVBpIeyNP4h4YInH5kVg2kcc2f3ND8GZ8XbNiA5aTflnttf86W
	Qj1IrdrnAT+MrGibbyElZbhuTdIp+KofLSJACnEYp1XU9DCn2NU6oeNE+dOzVaq6Rq5VQc7/bKV
	Sd/lA7EQoIZRY0iJkvjqWByq4rzI9wpQ=
X-Received: by 2002:a05:651c:212a:b0:38a:5102:9190 with SMTP id
 38308e7fff4ca-39240fca0c2mr5687421fa.28.1777359434160; Mon, 27 Apr 2026
 23:57:14 -0700 (PDT)
MIME-Version: 1.0
References: <CB87FEAB-DAEC-49D6-83C2-8B8D59025164.1@smtp-inbound1.duck.com>
In-Reply-To: <CB87FEAB-DAEC-49D6-83C2-8B8D59025164.1@smtp-inbound1.duck.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 28 Apr 2026 15:57:00 +0900
X-Gmail-Original-Message-ID: <CAGb2v650r=2+=Z4VBMdX4+55p2XLpG0dvHUGPZBrgp473NJn8Q@mail.gmail.com>
X-Gm-Features: AVHnY4K2vtNCI2r-eTOCxzr9M1KJJ6LNCzcPowlkx0LxaXshA-fzFUH6lsfT4pY
Message-ID: <CAGb2v650r=2+=Z4VBMdX4+55p2XLpG0dvHUGPZBrgp473NJn8Q@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Brunei
 Darussalam (BN) for 2022
To: hfzz7@duck.com
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

Hi,

Thank you for the patch and sorry for taking so long to get to it.

On Sat, Oct 25, 2025 at 4:53=E2=80=AFPM <hfzz7@duck.com> wrote:
>
> In 2022, Authority for Info-communications Technology Industry of Brunei =
Darussalam (AITI) updates The Brunei Darussalam Radio Spectrum Plan. [1]
>
> * 2400-2483.5 MHz
>         - 200 mW
>
> * 5150-5350 MHz
>         - 1000 mW
>         (For 5250-5.350 MHz, DFS and TPC are required)
>
> * 5470-5725 MHz
>         - 1000 mW
>         - DFS
>         - TPC

The database nor Linux supports TPC. Here we can follow FCC 15.407 and
limit the power to under 500mW:

    Transmit power control (TPC). U-NII devices operating in the
    5.25-5.35 GHz band and the 5.47-5.725 GHz band shall employ
    a TPC mechanism. The U-NII device is required to have the
    capability to operate at least 6 dB below the mean EIRP value
    of 30 dBm. A TPC mechanism is not required for systems with
    an e.i.r.p. of less than 500 mW.

> * 5725-5850 MHz
>         - 4000 mW
>
> Also, add regulatory info for WiGig/60 GHz
> * 57000-66000 MHz
>         - 10 W / 10000 mW

This limit is for indoor use only.  The remark column says

    outdoor use is restricted to maximum EIRP of 25 dBm and maximum
    EIRP power spectral density of -2 dBm / MHz

So please add the INDOOR-ONLY flag.

> Note: According to the Telecommunications (Radio-communication) Regulatio=
ns, 2013 of the Telecommunications Order, 2001 (S 38/2001), "non-localised =
use" refers to the operations of specified radio-communication equipment or=
 network at a specific frequency or in any specified frequency within the w=
hole of Brunei Darussalam. [2]

Please wrap the commit message to 80 characters per line. This however
doesn't apply to URLs.


Thanks
ChenYu

> [1] https://aiti.gov.bn/media/planjc1p/bd-radio-spectrum-plan-2019.pdf
> [2] https://www.agc.gov.bn/AGC%20Images/LAWS/Gazette_PDF/2013/EN/s086.pdf
>
> Signed-off-by: Hafiz Zafran <hfzz7@duck.com>
> ---
>  db.txt | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 1d17271..8e5cbb5 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -326,11 +326,15 @@ country BM: DFS-FCC
>         (5490 - 5730 @ 160), (24), DFS
>         (5735 - 5835 @ 80), (30)
>
> -country BN: DFS-JP
> -       (2402 - 2482 @ 40), (20)
> -       (5170 - 5250 @ 80), (20), AUTO-BW
> -       (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> -       (5735 - 5835 @ 80), (20)
> +# https://aiti.gov.bn/media/planjc1p/bd-radio-spectrum-plan-2019.pdf
> +# Section 7.5, Page 244-251
> +country BN: DFS-FCC
> +       (2400 - 2483.5 @ 40), (200 mW)
> +       (5150 - 5250 @ 80), (1000 mW), AUTO-BW
> +       (5250 - 5350 @ 80), (1000 mW), DFS, AUTO-BW
> +       (5470 - 5730 @ 160), (1000 mW), DFS
> +       (5725 - 5850 @ 80), (4000 mW), AUTO-BW
> +       (57000 - 66000 @ 2160), (10000 mW)
>
>  country BO: DFS-JP
>         (2402 - 2482 @ 40), (20)
> --
> 2.51.1
>
>

