Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A6DDC35FFC
	for <wireless-regdb@archiver.kernel.org>; Tue, 25 Mar 2025 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mHf23PYpONH7NSarovgoaVkFPmYakxvDZRh5TQAtW1Q=; b=zxq92uuBdHRk0o
	lRYCxTnpn/aih3SdnKUc8uG35UjRq0QQ3Ns+LesCF+RaDnjCrl6GnhXt5PyWHEjNzZBvjHaZsi0Dx
	A9Yrn5unXZOWMYJVfEeba9oEt0NRutkQNKupHas0eb5DDQsd0aBc3yBJooysfYFOxHcdI4Bp7FLLf
	1ZDjhavy54NUyUhLIK9YS6jEZdO8pabqFangZmUsZ5WFgN2aKDWYocQs5XSRlMnARmCyx++7XOq7u
	hqhXN/u63DkmunxcMOlxPdplCJPLhn99zfYaPO80gMFv7KoQRW9jxe+hkvwYxo/0vo/C8pI7hu1nf
	P5+ykhSecpKU/2uUfVFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twwFW-00000004qbQ-3B4J;
	Tue, 25 Mar 2025 04:50:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twwFU-00000004qax-31sm
	for wireless-regdb@lists.infradead.org;
	Tue, 25 Mar 2025 04:50:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B2E885C5735
	for <wireless-regdb@lists.infradead.org>; Tue, 25 Mar 2025 04:48:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AAD1C4CEE8
	for <wireless-regdb@lists.infradead.org>; Tue, 25 Mar 2025 04:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742878246;
	bh=5zDi8YoOLLY6kzWiEV4UjU7bS9nBQXo8CLxRn2hADeE=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=KRygjic2PTsuo3/B5Bs2RMjmAXw9AsAmte5VsUq1DBulnNXK6rEXthX9GvQLXXeG9
	 Baty5bHiIKxsKptLunkwt5b8UekoEZe8qW5vzZM3snd6LKgB42wLW/DEne1bRQctxK
	 a1MCtWEDOUyIdmzQz0e99rmLCo9S+QaV0xS7eTZ+yAyk0pebKdRk0sAJrZDFFUfVSw
	 8OM+Cg1+3U8g7mDFIaQV5VXwv9ZgdgJIiomF93i2/SfQ/eqnpmvedZNLR7SNas3cpn
	 FDv5oRqrCzDrLWlhNyNrY9Gg2dqd9ibE5O6G5GwrxDdcrINyys2LAYYZZRWxrzsn/P
	 cLJzO0qMipXzw==
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-30c461a45f8so51736901fa.1
        for <wireless-regdb@lists.infradead.org>; Mon, 24 Mar 2025 21:50:45 -0700 (PDT)
X-Gm-Message-State: AOJu0Yy86TzjHF2zPl0spEG/PIoIwI1GqGGaaeNeZZe1Nl3JKQN9u1hx
	j8rDdGDzt1/LNCoF/WlPUWENKM/VUXGDdhtSLeHJp6duSZZQ9JkJHx3Zg2xBZTnu9gl+wdrzr3l
	yM2dcn2MzwTmSK6EltRLh+TDISnY=
X-Google-Smtp-Source: AGHT+IFUQjv/K4LMNsuWqItOtnw2coVKy8FkrbnI9ro3SessxkEYPqjNmS4WKU1ZWdMWwS/NGYvTzAh9UIUHP5qtNRc=
X-Received: by 2002:a2e:bc1b:0:b0:30b:cc6a:fff7 with SMTP id
 38308e7fff4ca-30d7e1ed7cdmr53753701fa.6.1742878244347; Mon, 24 Mar 2025
 21:50:44 -0700 (PDT)
MIME-Version: 1.0
References: <c6eb2f23-f15a-4a4f-9934-f8d524bc2cd1@aegrel.ee>
In-Reply-To: <c6eb2f23-f15a-4a4f-9934-f8d524bc2cd1@aegrel.ee>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 25 Mar 2025 12:50:32 +0800
X-Gmail-Original-Message-ID: <CAGb2v647q2-K_jQXFHxgjYiG=xxvVajtmAPu7XcOBTCdG3fALQ@mail.gmail.com>
X-Gm-Features: AQ5f1JrGKFaz9WX1gznR-jRqeh_RcI6__9F_MHRPOlDHNHVYGBkMbCzbH2DbUNo
Message-ID: <CAGb2v647q2-K_jQXFHxgjYiG=xxvVajtmAPu7XcOBTCdG3fALQ@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Estonia (EE)
 for 2024
To: =?UTF-8?B?VGFhdmkgRW9tw6Rl?= <taaviw@aegrel.ee>
Cc: wireless-regdb <wireless-regdb@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_215048_881280_6E44A1BB 
X-CRM114-Status: GOOD (  15.27  )
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

Thank you for the update. I do wonder if it's reasonable to apply
non-specific SRD rules to WLAN (it probably is OK), and whether it
is actually useful or not given the drastically different power
limits.

> Specify 6GHz power limit in mW to match others.

Should read: ... to match regulations.

We want the numbers and units used to match the regulations verbatim,
unless some other limit applies that causes a change (such as reducing
the limit by 3 dBm due to lack of TPC.)

I'll update the wording when applying.


ChenYu

> Fix 60GHz band to match regulation and allow bandwidths specified by 802.=
11ay.
>
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

