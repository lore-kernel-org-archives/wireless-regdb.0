Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F4085C3ABC9
	for <wireless-regdb@archiver.kernel.org>; Fri, 16 May 2025 08:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z84UpTCcjt+Qclr/xN+kWD0YwdZSeW++2sDKOk3+xwg=; b=cBRFxgBh1HfyiZ
	xiCxCpPmlLNXhFndasUFeLphsaOt8tMXuE00NIVKWy6JmDru0xHiPLlZXUBx/J5UVo8/UlykZkZgT
	5HYR1t65cjrh4yw0pbSO0uxKUkJnUaBtb9t48wwPkOLgEubhUOSqNC5k2wVxhHIvzfIcMijnecUCE
	/o/+5bzj3bK5yC7+Bdun9Z30aArmoiWB8i+kprYHtZd0FoEdI0iZgJ1z10m7escRRbnvUPDwUL7az
	U2h67h0DMrEAcq9kr2EfBZgPKIP2qSaKeLG1NMlNXCY+dnt5cAjUvEKRQNYkSSBcinaWqVlPp9JFs
	IhRULQ4XHF7Ek6YlPdaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFqNJ-00000002qFl-2dOe;
	Fri, 16 May 2025 08:25:01 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFqMq-00000002q1U-0KM3
	for wireless-regdb@lists.infradead.org;
	Fri, 16 May 2025 08:24:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 6A9B0A4E5D4
	for <wireless-regdb@lists.infradead.org>; Fri, 16 May 2025 08:24:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2176C4CEEF
	for <wireless-regdb@lists.infradead.org>; Fri, 16 May 2025 08:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747383871;
	bh=k1IkYIpC/XMZRNdQPyB74NmYaVkGKM/tmyE6yGkXqaE=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=srdFHDaXnBZFIEXmU6I/wfbGl7JFxVOyjCcVF+/cU77+2U5Dfav5W7Tksje4a89xh
	 ERiuq0oSfqHji3XtI1AwS0QtjQx923fEVKUjf0WaOIGyaJ8cKtQwnXP0sJ9L8tNgi+
	 F0uS6arNgGxHEO54nE5Z4m2IDtBKZAyCWpV/Gzw0q2grB5HOTS1gcTLxgSu+g04Klh
	 O6EBpXJK6ghmfG48FpPZoEG3S+qX1d9W9wCFHEDPXujW/SVHFY2xWEF/8JPoBI9B3Y
	 ChAyeEIdI3WgxVvdK4PpNWSuYdHcMCpreohYjgF+7XVoJKAPnjAsyQO9lyK/otPIC7
	 5YPyyi7SPAWkw==
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-326b5dce9ffso11632051fa.0
        for <wireless-regdb@lists.infradead.org>; Fri, 16 May 2025 01:24:30 -0700 (PDT)
X-Gm-Message-State: AOJu0Yw2eYArZAMYh5DoizqLel3/qMChdSeov6vqZ3R3dZFAyGazAlop
	wAZ9kr9w1b0521ICN2W2om29IUD9qE1G+KiKCX8fftERetbk5Cj18pMWr6qqn4OHIyXEPcV15W9
	VBpdp84DHYkv3OH/ICXBDOwF926GJ2Ak=
X-Google-Smtp-Source: AGHT+IGdeFzkNN6VgTlV1XGX3DBCSazRrWrhPUVx0lSh+AujsoZAbS4kpsHjaV4pf2kF7jRwwc2dvHyN0ZUqh+XRoD4=
X-Received: by 2002:a2e:a546:0:b0:30b:c07d:29f3 with SMTP id
 38308e7fff4ca-328077570e0mr8784491fa.21.1747383869298; Fri, 16 May 2025
 01:24:29 -0700 (PDT)
MIME-Version: 1.0
References: <c6eb2f23-f15a-4a4f-9934-f8d524bc2cd1@aegrel.ee>
In-Reply-To: <c6eb2f23-f15a-4a4f-9934-f8d524bc2cd1@aegrel.ee>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 16 May 2025 16:24:17 +0800
X-Gmail-Original-Message-ID: <CAGb2v66AATrsy-q6j3973SiDbxx0yO=ZX++BhSedrkZ9ULQ=nQ@mail.gmail.com>
X-Gm-Features: AX0GCFt_O4CiJKYUETOQjWwlaikOq0k1hjnh-BmTaBLC3TOg4coqpJaSgJV_q0M
Message-ID: <CAGb2v66AATrsy-q6j3973SiDbxx0yO=ZX++BhSedrkZ9ULQ=nQ@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Estonia (EE)
 for 2024
To: =?UTF-8?B?VGFhdmkgRW9tw6Rl?= <taaviw@aegrel.ee>
Cc: wireless-regdb <wireless-regdb@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_012432_249452_B7091AD5 
X-CRM114-Status: GOOD (  14.72  )
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

On Mon, Mar 24, 2025 at 8:26=E2=80=AFAM Taavi Eom=C3=A4e <taaviw@aegrel.ee>=
 wrote:
>
> Allow S1G operation based on currently applicable usage rules specified
> in annex 6 of "Raadiosageduste kasutamise tingimused ja tehnilised n=C3=
=B5uded
> sagedusloast vabastatud raadioseadmetele"
>
> Enable AUTO-BW for all 5GHz bands as no bandwidth limit is specified for
> these bands.
>
> Specify 6GHz power limit in mW to match others.
>
> Fix 60GHz band to match regulation and allow bandwidths specified by 802.=
11ay.

I just realized that you didn't provide a Signed-off-by in the patch.
I can't apply your patch without it.

Can you provide it? Just reply to the thread with a proper Signed-off-by
tag.


Thanks
ChenYu

> ---
>  db.txt | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index e331d4f..83f7924 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -618,18 +618,21 @@ country EC: DFS-FCC
>  #  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/=
TXT/PDF/?uri=3DCELEX:32021D1067&from=3DEN
>  # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/downloa=
d/25c41779-cd6e/Rec7003e.pdf
>  # EE: https://www.ttja.ee/et/ettevottele-organisatsioonile/sideteenused/=
raadioseadmed/wifi-seade
> +# EE: https://www.riigiteataja.ee/akt/117052024018?leiaKehtiv (Lisa 6)
>  # EE: https://www.itu.int/ITU-D/study_groups/SGP_1998-2002/JGRES09/pdf/e=
stonia.pdf
>  country EE: DFS-ETSI
> +       (863 - 868 @ 1), (25 mW)
> +       (915.8 - 919.4 @ 1), (25 mW)
>         (2400 - 2483.5 @ 40), (100 mW)
>         (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=3DETSI
>         (5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=
=3DETSI
> -       (5470 - 5725 @ 160), (500 mW), DFS, wmmrule=3DETSI
> +       (5470 - 5725 @ 160), (500 mW), DFS, AUTO-BW, wmmrule=3DETSI
>         # short range devices (ETSI EN 300 440-1)
> -       (5725 - 5875 @ 80), (25 mW)
> +       (5725 - 5875 @ 80), (25 mW), AUTO-BW
>         # 6 GHz band
> -       (5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=3DETSI
> +       (5945 - 6425 @ 320), (200 mW), NO-OUTDOOR, wmmrule=3DETSI
>         # 60 GHz band channels 1-4 (ETSI EN 302 567)
> -       (57000 - 66000 @ 2160), (40)
> +       (57000 - 71000 @ 8640), (40)
>
>  # https://www.tra.gov.eg/wp-content/uploads/2022/03/EGY-NTRA-March-2022-=
SRD_English_Final.pdf
>  country EG: DFS-ETSI
> --
> 2.45.2
>

