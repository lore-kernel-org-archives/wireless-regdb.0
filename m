Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FA78C27C4F
	for <wireless-regdb@archiver.kernel.org>; Fri, 21 Jun 2024 08:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hdvZsCNLAx9VxmJxp85H9g1hpZiFx7ihmgzDaIlD928=; b=yc7Rmum8P3Ghwg
	8yp7v8C/LEjworTPvSczoUknylXzZB56yDM+GiGvaG1NlR/WRK1chO6DP+l45WwZ1ewsZipw3Adgf
	kXZjQcrkSVKBpYVbdD8OIa24gSxaX2QeOnqmkEvUQgtgoIK8Cr/p4Kw2MA/aQr/g4yrL9UkgqIdXa
	i2GJ52qNvumGGd+/ajNh8jBmBT+obIkG77Oz86UweuKZ3UNNR6qJrFOVH+i11yA+MgbWrGSF3E90N
	w6TxaFfYCl4JtxLlLdHKUoBKTHacwgqy2vreJ4BtPiJKH6+Lz0Jc6XSWJDWC2PN4zB9KAu3IPLWmR
	rMtsAtDrmFPMAWg9pNkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKZEY-00000008FU8-0SBd;
	Fri, 21 Jun 2024 08:02:58 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKZEU-00000008FSY-2mv5
	for wireless-regdb@lists.infradead.org;
	Fri, 21 Jun 2024 08:02:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id CB39FCE2693
	for <wireless-regdb@lists.infradead.org>; Fri, 21 Jun 2024 08:02:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A866C4AF08
	for <wireless-regdb@lists.infradead.org>; Fri, 21 Jun 2024 08:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718956972;
	bh=TX9PT3dsdR3Ku8elxbSi4dnTMBFv0/L4MzW3NGz2bXg=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=k8K8HIsWt0T6gKeTduGlnl2KjdOUJ9yvtOHPB0BWUSUqq1yrN/HroTl1Uaw4CJdxf
	 W8MYsuF3ZC8ysO8V8joVXdWGii7Sf2rGoudUAJ3wZPJIrbZXzoJIrU4pZaEsRCvw4m
	 mWMtyRYrv5Qaevb5PExV8AOzW7N78I7+/9jgpwv67cydB3Ipwow/4E5609/psMSgnu
	 2PoyxzcMiQ/qWBKkA0C0k7lBVr24Yss9s3TXP/0TvIgaLE0bMVcFX3yZSWIdG91y6Y
	 +Fy/je7gFSQhJeIM52TxD/L0wksaLSIyHePw/1ULzfw4GlF2Sqg8KHXCKZv9uFbkVD
	 /51fscQBAWFlw==
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2e95a75a90eso16646311fa.2
        for <wireless-regdb@lists.infradead.org>; Fri, 21 Jun 2024 01:02:52 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXVHxY92AqYiPLQDZyXyMNfWADJBVkFLZxN68jp3lqVN5eF0AfyLbkf+cGXEJJ5PNaGQBDzdMoYViSkjj5LSWJKQhniJpmdxC0Z/6hIVarR5Cuo
X-Gm-Message-State: AOJu0Yzo/9KT4uPATWEjWgPy778dhWS8pVy6zWmuQMRuSQPvY5uwMAe7
	gINJxf+AA5myOD+fmH1DCjsunKWPUhkDa2sRyrWxEN94nH2DrseYK5YRZcXPo2KfDH78fXA5da+
	sJvq9rvnACb9gjfuIjnayEAyV9zc=
X-Google-Smtp-Source: AGHT+IHseXUlpZIsK55F8Aen+KcX6porKdvFtnDLk+gH5XoMQOoPBuigKYNjgP/iMCgpPYpH/Puhid+/wyIUQn8Mepw=
X-Received: by 2002:a2e:80c9:0:b0:2eb:1ac4:c9cc with SMTP id
 38308e7fff4ca-2ec3cfe1c38mr44297271fa.52.1718956970433; Fri, 21 Jun 2024
 01:02:50 -0700 (PDT)
MIME-Version: 1.0
References: <20240621052205.28925-1-pkshih@realtek.com> <20240621052205.28925-3-pkshih@realtek.com>
In-Reply-To: <20240621052205.28925-3-pkshih@realtek.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 21 Jun 2024 16:02:38 +0800
X-Gmail-Original-Message-ID: <CAGb2v66D19xhJhq_=w49Q2t4JdB+_718DsRrT4AF24DT+zD=Aw@mail.gmail.com>
Message-ID: <CAGb2v66D19xhJhq_=w49Q2t4JdB+_718DsRrT4AF24DT+zD=Aw@mail.gmail.com>
Subject: Re: [PATCH 3/6] wireless-regdb: Update regulatory info for Jordan
 (JO) for 2022
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_010255_109301_5E62F15B 
X-CRM114-Status: GOOD (  14.92  )
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

On Fri, Jun 21, 2024 at 1:22=E2=80=AFPM Ping-Ke Shih <pkshih@realtek.com> w=
rote:
>
> The Hashemite Kingdom of Jordan, Telecommunications Regulatory Authority
> issued pursuant to the provisions of Articles (12A) and (22) of the
> Telecommunications Law No. 31 of 1995, as amended. [1]
>
> The effective radiated power (EIRP) of devices used in local radio comput=
er
> networks must not exceed the following values:
>
>  - 2400-2483.5 MHz: 100 milliwatts (20 dBm)
>  - 5150-5350 MHz: 200 milliwatts (23 dBm)
>  - 5470-5725 MHz: 1 watt (30 dBm)

The reference also says to follow ESTI EN 301 893 for this range,
especially in regards to transmit power control. EN 301 893 specifies
reduced power limit of 27 dBm for devices that don't implement TPC.

And for the 5250 - 5350 range, TX power for devices without TPC are
limited to 20 dBm.

>  - 5725-5875 MHz: 200 mW (23 dBm)

The reference classifies the 5470 - 5725 MHz and 5725 - 5875 MHz ranges
as indoor use only.

>  - 5925-6425 MHz:
>    * 25 milliwatts (14 dBm) (for outdoor and portable devices)
>    * 200 milliwatts (23 dBm) (for devices operated indoors only)

Please also add the 60 GHz range: 57 - 71 GHz @ 10 W (40 dBm).

Last, the (translated) reference specifies that "All possible standards
and measures must be taken by activating interference reduction techniques"=
,
including DFS and TPC, and "Devices that do not support interference reduct=
ion
techniques are dealt with according to the technical standards issued by
European Standardization Institute ETSI".

I take it to mean that DFS is required for bands 5250 - 5350 and 5470 - 572=
5.

Thanks
ChenYu


> [1] https://trc.gov.jo/EchoBusV3.0/SystemAssets/PDF/RSMD/cb9f9a83-43a6-4e=
66-8432-6e02ecaf465b_RLAN%20Arabic%20%20Final%20-%20clean%20with%2057-71%20=
GHz.pdf
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
>  db.txt | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index e10c3fc752e9..a742498c1116 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -957,10 +957,14 @@ country JM: DFS-FCC
>         (5490 - 5730 @ 160), (24), DFS
>         (5735 - 5835 @ 80), (30)
>
> +# Source:
> +# https://trc.gov.jo/EchoBusV3.0/SystemAssets/PDF/RSMD/cb9f9a83-43a6-4e6=
6-8432-6e02ecaf465b_RLAN%20Arabic%20%20Final%20-%20clean%20with%2057-71%20G=
Hz.pdf
>  country JO: DFS-JP
> -       (2402 - 2482 @ 40), (20)
> -       (5170 - 5250 @ 80), (23)
> -       (5735 - 5835 @ 80), (23)
> +       (2400 - 2483.5 @ 40), (20)
> +       (5150 - 5350 @ 80), (23)
> +       (5470 - 5725 @ 80), (30)
> +       (5725 - 5875 @ 80), (23)
> +       (5925 - 6425 @ 320), (23), NO-OUTDOOR
>
>  # Source:
>  # https://www.soumu.go.jp/main_content/000635492.pdf
> --
> 2.25.1
>

