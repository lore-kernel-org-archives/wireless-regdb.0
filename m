Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63BF6C30653
	for <wireless-regdb@archiver.kernel.org>; Mon,  1 Jul 2024 08:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8frOwNtYvpVOmTFhFEbgHHlrArZwc4BK6/1/Bf/qAaY=; b=xAxJyhOfFB6Orx
	uy0VZ6XVEhrxOm+W+AVyWOrE/K3WZKC7DZ7NVfAkI6AhIKT+iCJgCR19FfS3It3/TB7IQ5+dlt+Or
	E0nDowJsef+iAwgfClw9Reds2zi8jh7TZwvqsOsHpiR4g1h0HG2GII6dgVMXe6lkKlLIjQ4greGrL
	OSMZTsCbHT8Y/p5emMFn7a0Xy4d2nkgGunLpCo0AFa69oMjyRgrxpgW4pvra7lDr7AWQV/EwmdFEB
	tdPbJzxABa6fZMntktf3g7OAHBBK0G9Z15iMZiVck9XvUyCBJjeoSCg9ihn2sG0IZWjU08DSD25cy
	EF7EA/UE/GkbwRg9s5oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOCJK-00000002DFl-2XWl;
	Mon, 01 Jul 2024 08:22:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOCJG-00000002DD0-2uE7
	for wireless-regdb@lists.infradead.org;
	Mon, 01 Jul 2024 08:22:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id F3E2E61176
	for <wireless-regdb@lists.infradead.org>; Mon,  1 Jul 2024 08:22:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6EFDC116B1
	for <wireless-regdb@lists.infradead.org>; Mon,  1 Jul 2024 08:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719822169;
	bh=etDKPv7Xh9jyEOTpkdontCfJuNZCwvUVLWArvma6Xnw=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=uKGTUtI+44ZVfmyJhsolXFllv3q23tvQsM3Vj1szw1KMmIBRLNydxu+fmUMAcUWwx
	 X6wfE5fUzlF+c9pGJ4FAV/uDaR5PgL/dRLJJ4bwe/6MqsZNAObt8nCy8F+dvzoq/H1
	 MMCxpD8EGafV2iZpGHwdt3X7PUMZCE5V9U+cIo07P6HhUMezmmX4WlPNyprCV9LN7Y
	 heN8v7Z+weN3nu20hVHOvHcGJ6P49z++CegK9pq84rWDZFOsvJwYOQTYkjjE9EkNcz
	 sPRRa2z2m1TuZ4jmZTnlkgOqNOO6b5M/iBDlhR/zDtELLkJOzM/x3Y1wpZ8Ee1Z2Su
	 xsUV/5QJ/muMg==
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2eabd22d3f4so26461571fa.1
        for <wireless-regdb@lists.infradead.org>; Mon, 01 Jul 2024 01:22:49 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU7Fky1shtVOoa9AG2HOYd0uy4/lNFZhXnQTmQ3+iBhPt2wG6d7MVc/RIeC0mZ/Fdk/LhDUEF8d+3AwaqP0mPOLw3IkmlH4sQHmDttPGZL61faP
X-Gm-Message-State: AOJu0YxkCkZuJtpZV+DBNSF86SHaMsbPy0PxFF679076XyVy0XKYmaVJ
	D3MCy6s31iyxR1KdsKbN74RUPgLxh+mfWMlhPf86f5w9qNRy0JpdoYXOVi1wJszO7/rZBWcKDIk
	v+EaAR/e22dEDRAIMlMPOu06YCoQ=
X-Google-Smtp-Source: AGHT+IG8RbFpu2qiW1h6ieR5fk4bV7qtPVD01aL5AJOdpK06BM0QyhDeHX/bAVd0V7j7qdIDIVZ/loisV06KDGsJlzQ=
X-Received: by 2002:a2e:88ca:0:b0:2ec:529e:6522 with SMTP id
 38308e7fff4ca-2ee5e3b3823mr32033411fa.31.1719822167969; Mon, 01 Jul 2024
 01:22:47 -0700 (PDT)
MIME-Version: 1.0
References: <20240624025623.6021-1-pkshih@realtek.com> <20240624025623.6021-2-pkshih@realtek.com>
In-Reply-To: <20240624025623.6021-2-pkshih@realtek.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 1 Jul 2024 16:22:35 +0800
X-Gmail-Original-Message-ID: <CAGb2v651jAs9g-UqCeoPgmiigpNDTVY_itvhwq9VBHPuzfdPRg@mail.gmail.com>
Message-ID: <CAGb2v651jAs9g-UqCeoPgmiigpNDTVY_itvhwq9VBHPuzfdPRg@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] wireless-regdb: Update regulatory info for Jordan
 (JO) for 2022
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_012250_875104_545184F1 
X-CRM114-Status: GOOD (  19.11  )
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

On Mon, Jun 24, 2024 at 10:56=E2=80=AFAM Ping-Ke Shih <pkshih@realtek.com> =
wrote:
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
>  - 5150-5350 MHz: 200 milliwatts (23 dBm), (ETSI: 20 dBm, DFS)
>  - 5470-5725 MHz: 1 watt (30 dBm), (ETSI: 27 dBm, indoor only, DFS)
>  - 5725-5875 MHz: 200 mW (23 dBm), (ETSI: indoor only)
>  - 5925-6425 MHz:
>    * 25 milliwatts (14 dBm) (for outdoor and portable devices)
>    * 200 milliwatts (23 dBm) (for devices operated indoors only)
>  - 57-71 GHz: 10 W (40 dBm)
>
> Follow ETSI EN 301 893 [2], which specifies reduced power limit of
> 20 and 27 dBm for the range 5150-5350 and 5470-5725 respectively for
> devices that don't implement TPC; and classifies the 5470 - 5725 MHz and
> 5725 - 5875 MHz ranges as indoor use only; and DFS is required for bands
> 5250 - 5350 Mhz and 5470 - 5725 Mhz. (Add these rules followed rules of
> [1] with "ETSI:" annotation)
>
> [1] https://trc.gov.jo/EchoBusV3.0/SystemAssets/PDF/RSMD/cb9f9a83-43a6-4e=
66-8432-6e02ecaf465b_RLAN%20Arabic%20%20Final%20-%20clean%20with%2057-71%20=
GHz.pdf
> [2] https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.01.01_60=
/en_301893v020101p.pdf
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
> v2:
>   - Follow ETSI EN 301 893 to modify limits, and add description in commi=
t
>     message.
>   - add 57-71 GHz
> ---
>  db.txt | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 61c46186919e..60343a745ecf 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -957,10 +957,16 @@ country JM: DFS-FCC
>         (5490 - 5730 @ 160), (24), DFS
>         (5735 - 5835 @ 80), (30)
>
> +# Source:
> +# https://trc.gov.jo/EchoBusV3.0/SystemAssets/PDF/RSMD/cb9f9a83-43a6-4e6=
6-8432-6e02ecaf465b_RLAN%20Arabic%20%20Final%20-%20clean%20with%2057-71%20G=
Hz.pdf
> +# ETSI EN 301 893: https://www.etsi.org/deliver/etsi_en/301800_301899/30=
1893/02.01.01_60/en_301893v020101p.pdf
>  country JO: DFS-JP

Change this to DFS-ETSI given that the official regulations just point
to ESTI for details.

> -       (2402 - 2482 @ 40), (20)
> -       (5170 - 5250 @ 80), (23)
> -       (5735 - 5835 @ 80), (23)
> +       (2400 - 2483.5 @ 40), (20)
> +       (5150 - 5350 @ 80), (20), DFS

Per ETSI regulations, DFS is only required for 5250 - 5350. Please split
this into two rules. And please add AUTO-BW to both.

Also, looking at the official regulations again, I believe it is worded
in a way that does not require TPC for 5150 - 5350. So please raise the
limit back up to 32 dBm.


Thanks
ChenYu

> +       (5470 - 5725 @ 80), (27), DFS, NO-OUTDOOR
> +       (5725 - 5875 @ 80), (23), NO-OUTDOOR
> +       (5925 - 6425 @ 320), (23), NO-OUTDOOR
> +       (57000 - 71000 @ 2160), (40)
>
>  # Source:
>  # https://www.soumu.go.jp/main_content/000635492.pdf
> --
> 2.25.1
>

