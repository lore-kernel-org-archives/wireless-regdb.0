Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7DE2D46C16
	for <wireless-regdb@archiver.kernel.org>; Thu, 29 Jan 2026 02:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2urmzUjTyUEoXk3lBNO0jeySho24WOjeBPLbB1jDUvE=; b=QI9mvY50vVD1KJY0OZgdm7kgjl
	fTV5IfN2G2rPYjJnLgXywlrRo56+xKYFfQWJ/RkD9QZg6VyFIzJh3oEo6hdeXu022dbF28hXod9LF
	fiDPeAGIxyiCS1v+n5nC6ToHko4sx9g53VPMTRIh7V1YKZZllXAQlK68Zpz1L5xnmIydHH6qvai1C
	6VQIDYVzbUkxV7o/PKlXBboY1cAKHUE0VFB1gW1E41biPBcdicWPSG+ttxJER1JBXRg1bt+qD5xWP
	1hR1KQBrPSMK/UkrDk10Vvi9xUUbAK1bHNTI94HTxdXoqMlsIW+EToCdrYhYlkofWL+5WY/r8Tg9p
	Zae/hKEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlHUx-0000000H6jL-1Y7z;
	Thu, 29 Jan 2026 02:11:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlHUw-0000000H6j3-1fSB
	for wireless-regdb@bombadil.infradead.org;
	Thu, 29 Jan 2026 02:11:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=2urmzUjTyUEoXk3lBNO0jeySho24WOjeBPLbB1jDUvE=; b=RLeDEtGqd5y4C+zeIkGXG95w03
	GL4kgDtpcJVevyGTfRrk52I/M10LOtG3oEbR4iaz5Ul561kT7ueqmKQimuFOtDnPiJJ0aSMHIvLnp
	Ww+D7ViZJu198ObeoHp81eJbbSEbxFNWK6pfp6slEuRr67LMMnvmIHcjE0D+bxrqmDU+YabsrzO+I
	cHMY8cRW2KL4iQdyaJk83OAEzsRIMJis1S6IyHHxrCbIcSgMQkEjQ8asXER+b8MNW70jBorCjAXmD
	HJ37NacQkCGw93v2xm1H8jo/IEerI+uygMPZ6ge4PzVXdWGd1Z+UjAHSBbTABN7k1Qq+clAXRVwHD
	N2QjyYZQ==;
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlHUl-00000009gWH-1VMp
	for wireless-regdb@lists.infradead.org;
	Thu, 29 Jan 2026 02:11:01 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-658b511573cso857683a12.0
        for <wireless-regdb@lists.infradead.org>; Wed, 28 Jan 2026 18:10:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769652651; cv=none;
        d=google.com; s=arc-20240605;
        b=geu/GCzTsclESaphs2Cs6KFm3ahA9ije0iANEbWqP8IuyjT5HgjAcpH8JrRjdvRzzI
         AZGsJgcnA9H4Io6BTEZLK/UWIUFE2WgejdynI91cksPoSJJKw3KskErBRO01/ZmJwajo
         mwDKPq3Di84GZEcHv4n5C4NYOsffb1MVFTeIyUUa4CN6qR+n3fMmurg960NTN8PBk3sl
         g38U6l7tmjMT3UVcastymhD3f9p8Nkqy1hnxVETJil5z3G7D8Nbglkfe0cDjgNLHb08D
         HpRnk4t79U9I24U5Hhwwku/ynVVx6Al8zBj9s6jq2diKxPN7vwe7lti//cI7zvrfjs7t
         3p+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=2urmzUjTyUEoXk3lBNO0jeySho24WOjeBPLbB1jDUvE=;
        fh=HBM8G9Vp470bovuDuyYrCpiaQPdKxB3bRSImFdDDwbo=;
        b=ODaSa+j0Yj3Xzp7lCLv6553iy62/l1rS6p8bv8VCM37B/lW5MybkQkZaDrdl96wwzF
         ItlVmn53lN8oLSrTbaiY6PcbPFB2kzxCCEZnc2p8HkPmzLj3GuTA+TuQeskIJjcExlRN
         frNPi6GKpeKE8OMKxGi+IQIUTchl8lplXG0PsJIRD1TonGAeCWtHyH7E9q75aYArss/x
         pT4h08E76uDAtqDOGW9FPwq/Ckhfemuvbf2Dn/4dGE0aS7qp72BGGL+bnjVGAswp6hC5
         IWh09GiBzKKF9KXGrBBUiRi+mFynLcbS6YgODkAaIL04PaSEjMQzL0jwcH477Xy9AmLm
         HlWg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769652651; x=1770257451; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2urmzUjTyUEoXk3lBNO0jeySho24WOjeBPLbB1jDUvE=;
        b=JV7If7aun7LeA5ZW8TdE5ePlR5VbujWz1OCSrvrRojC9Oy4gg4QOM9vaaINPukDAit
         rfZxUq3DT7AA2QVUEjauCJ2Pebho8al3E7wpO9c1gttdLrjxX4Vvfo3XJqwKjtq/CiXH
         Nn2riDkQwUskfBK2CU9PRfaxqA4T6bYbWfNVOGkkOJhAKp9TC0F+5HnObpYmQMQRUo9P
         mpX8l+FlVqj3jjYEviv92a49ihAzzaUSo9UfemywAjq44s8HljdgFj2hw6wLDbyvk0DW
         lJgOX94OJMMbZiNqLul0zGJz/d+vS9uWUj1IVP5RJjsbzii0A58Nk0lkKyQ9yjaOh/fD
         i1Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769652651; x=1770257451;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2urmzUjTyUEoXk3lBNO0jeySho24WOjeBPLbB1jDUvE=;
        b=dJCZxkHRRFPf2QuY/E0dXdf/sKhnzi5CqCh7GEPX2IkzPzUwIRv8ADmGnBAjg5Fxtp
         CQ2ZP0X05vwHbmLnsa++43bL5r1nne7uHqtVV9K44/x8a2Cuvez71TEBHe7s6wQz07Mk
         p17JHebDhLcOmO9oHxF5+9Hx2RfsDs4ISq2CKc3GMvmMOe9fNEDW8WF5rweWZEFFf7Gq
         ys6mLne0fFxv3T+7s5ItUcT3/ZhXY7v4Aw/zjzhvSLwSTzEMUkPrWINhi0E+/nBvOORI
         0N/DmM5rND+u0V+IOfGGLRtLOXx9KwkzgQm2kXeSWYLxaG8WtAXrPFBbva3Qf3OZx/wg
         4zBg==
X-Forwarded-Encrypted: i=1; AJvYcCX2T+OCQIYVgosUeo9DCTxzEndide0qQRugiLLc/3xgWlkngIu3hptHvPwj3akC20X3QhVm/uz92ZvdX9c4qA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwrU8uzihQNutPO2GnNHlk59dh6g8lGJcN/W3B2vQNtq455Tm4h
	ZMfdD2DEYBD9sa9BJ5X3qkkAkdoPGdViLqi581WyxrLuJ3ihCCS6KYGtvVntOdgwyTEh/GUBql7
	f9Aft0snkKdiBGyE5EpwGNWC4bbRvjGp+T/VA
X-Gm-Gg: AZuq6aImSnnyzQgQZSfpUmduNqW4E9p+ew7a6+g8Ow7OrtVgaTWBoxQ5HTtxEtHJBId
	k02lZWc5K5YVMyzjE/3gawEaKitQzQ8MryVdKN7u920oreLG6YZrtpp1O7YaLERUAgocNcszABX
	uQO+4I3cAdG4P7UAhLMPu5R8s+3BRfALdUyQYZ1BBEaHPgK9iCmcjDAsfHMEm2JmFSQNj39IxpJ
	x2v+jbQea3Gm4j05R70HE6rdqCBpwPQ3JtfVQJOeyuOU5yNGq/uafm3S+aX6yDGMs/xXL0=
X-Received: by 2002:a05:6402:1469:b0:658:bab5:5801 with SMTP id
 4fb4d7f45d1cf-658bab55b16mr2555056a12.5.1769652650452; Wed, 28 Jan 2026
 18:10:50 -0800 (PST)
MIME-Version: 1.0
References: <20260128102525.872517-1-gaurav.kansal@nic.in>
In-Reply-To: <20260128102525.872517-1-gaurav.kansal@nic.in>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Thu, 29 Jan 2026 10:10:39 +0800
X-Gm-Features: AZwV_Qi_Nx51l-T8bisCdD1uffOdSFXKZ_6OXeIMqTZp6aDGseGCDs00nccdhkY
Message-ID: <CAHrRpuk7Xqab+BC57m_5KWJVr8rc+_LHWwKr-pWmvR3y9W2ghA@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: add IN rules for lower 6 GHz (5925-6425
 MHz) LPI and VLP
To: gaurav.kansal@nic.in
Cc: wens@kernel.org, linux-wireless@vger.kernel.org, 
	wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_021057_118008_5CF7C1A7 
X-CRM114-Status: GOOD (  13.06  )
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

<gaurav.kansal@nic.in> wrote=EF=BC=9A
>
> From: Gaurav Kansal <gaurav.kansal@nic.in>
>
>     DoT / Gazette notification (20 Jan 2026) delicensed lower 6 GHz (5925=
-6425 MHz).
>     Add rules for:
>      - Low Power Indoor (LPI) 5925-6425 MHz, up to 1000 mW (30 dBm) EIRP,=
 NO-OUTDOOR
>      - Very Low Power (VLP) 5925-6425 MHz, up to 25 mW (14 dBm) EIRP
>
>     References:
>      - DoT / Gazette notification (Jan 20, 2026)
>        https://blog.gauravkansal.in/2026/01/Gazette%20on%20the%20Use%20of=
%20Low%20Power%20and%20Very%20Low%20Power%20Wireless%20Access%20System%20in=
%20Lower%206%20GHz%20band%20-%202026.pdf

Is it possible to tag original official link?

>        https://blog.gauravkansal.in/2026/01/Opening-India-Lower-6-GHz-Ban=
d-for-Wireless-Use:-A-Strategic-Regulatory-Landmark.html
>        https://en.wikipedia.org/w/index.php?title=3DList_of_WLAN_channels=
#India_2
>      - Linux wireless-regdb db.txt format docs
>     Signed-off-by: Gaurav Kansal gaurav.kansal@nic.in
> ---
>  db.txt | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/db.txt b/db.txt
> index dc72989..0f90f6e 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -974,12 +974,20 @@ country IL: DFS-ETSI
>  # Source:
>  # https://dot.gov.in/spectrummanagement/delicensing-24-24835-ghz-band-gs=
r-45-e-5150-5350-ghz-gsr-46-e-and-5725-5875-ghz
>  # https://dot.gov.in/spectrummanagement/license-exemption-5-ghz-gsr-1048=
e-dated-22102018
> +# Info about 6 GHz added by Gaurav Kansal (gaurav.kansal@nic.in)
> +# Lower 6 GHz delicensed for India: 5925-6425 MHz (on 21.Jan.2026)
> +# LPI: Low Power Indoor (indoor only) =E2=80=94 1000 mW =3D 30 dBm EIRP
> +# VLP: Very Low Power (outdoor allowed at very low EIRP) =E2=80=94 25 mW=
 =3D 14 dBm EIRP
> +# https://blog.gauravkansal.in/2026/01/Opening-India-Lower-6-GHz-Band-fo=
r-Wireless-Use:-A-Strategic-Regulatory-Landmark.html
> +# https://blog.gauravkansal.in/2026/01/Gazette%20on%20the%20Use%20of%20L=
ow%20Power%20and%20Very%20Low%20Power%20Wireless%20Access%20System%20in%20L=
ower%206%20GHz%20band%20-%202026.pdf
>  country IN:
>         (2402 - 2482 @ 40), (30)
>         (5150 - 5250 @ 80), (30)
>         (5250 - 5350 @ 80), (24), DFS
>         (5470 - 5725 @ 160), (24), DFS
>         (5725 - 5875 @ 80), (30)
> +       (5925 - 6425 @ 320), (1000 mW), NO-OUTDOOR, AUTO-BW

I'd prefer in unit of dBm as [1].

I think no need AUTO-BW that is to merge adjacent rules to have large bandw=
idth.

> +        (5925 - 6425 @ 320), (25 mW), AUTO-BW

Use tab as indent instead.

I'm not aware we can possibly have two entries with the same frequency rang=
e,
and I only added one entry for indoor (or no indoor/outdoor restriction) be=
fore.
Checking freq_reg_info_regd(), I think only first matched entry is adopted,=
 but
no error to build reg-db by 'make'.

>
>  # Source:
>  # https://asnad.cra.ir/fa/Public/Documents/Details/73af8590-f065-eb11-96=
8f-0050569b0899
> --
> 2.47.3
>
>

