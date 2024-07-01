Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72F8DC2BD09
	for <wireless-regdb@archiver.kernel.org>; Mon,  1 Jul 2024 09:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ezYYQSDlqo++ZXFWXXf6u8zhpydpdMuGTk+EjDBsyVk=; b=fWy37Dv5boj6p6
	bKuRdHCqv3n2V0QQUejhq2LBgYxUA0LpM3y1aJDAV0PFeqdEv+6xWry1TkudTgGos7aXq1bWO3xb3
	bRO+so86EHkD+7BXDw82uZuGI7fbV5PrEMoD2QGNErxgVY/wFNmK+XIokXXaBK/eLn/jqrk+t/8e1
	PBVOY6z1dTujOedVV+ym+YXYmVAL4DxXenGGdgIZBHfudAmC1DBB8TXvflKBlDRPgBxjuNda9j2ne
	yiszjXAuAX9gsnhJudiOCBiuvxCm77t/FDNdNqIFSELgzawNthAP+GUdVrCmMT7fue4+zTWZ288dW
	t5sKstXUoRcU+nkIsVXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOCuL-00000002MiL-3e2K;
	Mon, 01 Jul 2024 09:01:09 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOCuI-00000002Mh0-47jm
	for wireless-regdb@lists.infradead.org;
	Mon, 01 Jul 2024 09:01:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 49BC3CE10BD
	for <wireless-regdb@lists.infradead.org>; Mon,  1 Jul 2024 09:01:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 970DBC4AF0A
	for <wireless-regdb@lists.infradead.org>; Mon,  1 Jul 2024 09:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719824464;
	bh=Kxtbl8cDBMjbTL4kGU6mhOa8DAjjdTsa58adBx+9QrI=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=ZPD8siRAHjCfvmjv+SUymR5IIkexvspoBZFRuqSglAVYrgykuzgnhbf1fct1qM2Od
	 V3/txEUqsvAZTpvS8k3xLnb563/NoMNeZffpN/4sN2FsUqj1Y+fPuTi8oH/Bb3EM9K
	 n1TEX52fz7O6RrEgRn8fOjoWJT8iE+te+UmzU6dHSEMeYJSgz8r+3jGM3v15v6nDno
	 j5T5F6jXH4yNshWFQKEZGoFTCU+RWXBDtVRLJGxyMNC53oEt9rztaxESLVjWglWxKz
	 gSk/t2baUDZXWXCU5kSlsbYxRp7Z8ZEs9+xu05klZh8tCSp7Nvph77TH2/hyDtD7rk
	 O9qYY45umy4Rw==
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2ec002caeb3so33146881fa.2
        for <wireless-regdb@lists.infradead.org>; Mon, 01 Jul 2024 02:01:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUBJTVWxvGDWys7dKz7f3S9Ms3DoAOYRbghT/mwEm/e/dB+1tLLSJwCCYLZN/fY/pIB+JwrXwvJZHrB565O11PDf6bO9tQNgb775mEhwSGilyk/
X-Gm-Message-State: AOJu0Ywb9zYq47QynZB8K+2G8WOuHfTtjK9iT1c9IzJL+ZrFOwgcInJ1
	pQw7+a1UUjIaG0eV/p2Z1TJ+ZnxpG9DOBt9JaVR1r3/DDTF7yHtMowtIeuUIYx8uTHA8YLqVi8a
	SrCOVFRpKPLPr5PyZxLUHAO2mxHs=
X-Google-Smtp-Source: AGHT+IFH82fIrft+vPFRrkFUdR5HcTeNXvbtf44v8BJ+4vFHVPTjhXrL5rhK4W30aAYSi9w+IsRHYPbouJLD7S1uYu8=
X-Received: by 2002:a05:651c:2229:b0:2ec:637a:c212 with SMTP id
 38308e7fff4ca-2ee5e6e7256mr36247571fa.39.1719824462901; Mon, 01 Jul 2024
 02:01:02 -0700 (PDT)
MIME-Version: 1.0
References: <20240624025623.6021-1-pkshih@realtek.com> <20240624025623.6021-3-pkshih@realtek.com>
In-Reply-To: <20240624025623.6021-3-pkshih@realtek.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 1 Jul 2024 17:00:50 +0800
X-Gmail-Original-Message-ID: <CAGb2v66WBG6FjXCvE5+sUv1YXfMxLHiQPH-st_wzCJH8XDF=mQ@mail.gmail.com>
Message-ID: <CAGb2v66WBG6FjXCvE5+sUv1YXfMxLHiQPH-st_wzCJH8XDF=mQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] wireless-regdb: Update regulatory info for Kenya
 (KE) for 2022
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_020107_403962_EFFE1646 
X-CRM114-Status: GOOD (  20.81  )
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
> Communications of Authority of Kenya issued GUIDELINES ON THE USE OF
> RADIOFREQUENCY SPECTRUM BY SHORT RANGE DEVICES on JUNE 2022 [1].
> The section 5.8. covers frequency bands and technical parameters for
> non-specific short range applications and wireless access systems.
>
>  - 2400-2483.5 MHz: 2W e.i.r.p.
>  - 5150-5350 MHz: 200mW; max e.i.r.p. density of 10mW/MHz
>                   (ETSI: -6 dBm to be 17 dBm)
>  - 5470-5725 MHz: 250mW; Max mean e.i.r.p. of 1W &
>                   Max mean e.i.r.p. density of 50mW /MHz
>                   (ETSI: -6 dBm to be 18 dBm)

The database documents e.i.r.p values. So it should be 1W - 6 dBm.
The -6 dBm interpretation should be fully documented.

    1W (30 dBm) - 6 dBm =3D 24 dBm

This is the same as the "Limit for RF output power at the lowest power
level (PL) of the TPC range" for this particular range. See below.

>  - 5725-5875 MHz: 23 dBm/MHz; Mean e.i.r.p. of 2W in any 10 MHz band
>                   (ETSI: -6 dBm to be 17 dBm)

The original rule was probably wrong or out of date. Please update the
numbers together. The regulations say:

   Mean e.i.r.p. spectral density of 23 dBm/MHz
   Mean e.i.r.p. of 2W in any 10 MHz band

WiFi channels are at least 20 MHz. That means the nominal limit is
4W / 36 dBm with TPC. This is the same as ETSI EN 302 502. This is
the correct ETSI reference for the 5.8 GHz range. This also says

    The FWA device shall have the capability to reduce the operating
    mean EIRP level to a level not exceeding 24 dBm for ChS =3D 20 MHz
    and 21 dBm for ChS =3D 10 MHz.

And since neither this database nor Linux supports specifying TPC,
we could just reduce the power limit to 24 dBm so that the device
always conforms. This is an interpretation of the rule, and should
be properly documented, saying that this is derived from the lowest
power setting under TPC.


Thanks
ChenYu


>  - 5925-6425 MHz:
>    * LPI: 23 dBm (200 mW)
>           Mean e.i.r.p. density for in-band emissions 10 dBm/MHz
>           Indoor only
>    * VLP: 14 dBm (25 mW)
>           Mean e.i.r.p. density for in-band emissions 1 dBm/MHz
>           Indoor and outdoor use
>
> Reference ETSI EN 301 893 [2], for the 5 GHz and 5.8 GHz ranges, TPC is
> required. being able to reduce TX power by up to 6 dB. (Add this rule
> followed by [1] with annotation "ETSI:")
>
> [1] https://www.ca.go.ke/sites/default/files/2023-06/Guidelines-on-the-Us=
e-of-Radiofrequency-Spectrum-by-Short-Range-Devices-2022.pdf
> [2] https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.01.01_60=
/en_301893v020101p.pdf
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
> v2:
>   - align freq range of reference
>   - use power unit as reference
>   - -6dBm for 5 GHz and 5.8 GHz ranges
> ---
>  db.txt | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 60343a745ecf..648530192b75 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -984,11 +984,15 @@ country JP: DFS-JP
>         # ref: http://www.arib.or.jp/english/html/overview/doc/1-STD-T74v=
1_1.pdf
>         (57000 - 66000 @ 2160), (10 mW)
>
> +# Source:
> +# https://www.ca.go.ke/sites/default/files/2023-06/Guidelines-on-the-Use=
-of-Radiofrequency-Spectrum-by-Short-Range-Devices-2022.pdf
> +# ETSI EN 301 893: https://www.etsi.org/deliver/etsi_en/301800_301899/30=
1893/02.01.01_60/en_301893v020101p.pdf
>  country KE: DFS-JP
> -       (2402 - 2482 @ 40), (20)
> -       (5170 - 5250 @ 80), (23)
> -       (5490 - 5570 @ 80), (30), DFS
> -       (5735 - 5775 @ 40), (23)
> +       (2400 - 2483.5 @ 40), (2000 mW)
> +       (5150 - 5350 @ 80), (17), DFS
> +       (5470 - 5725 @ 80), (18), DFS
> +       (5725 - 5875 @ 40), (17), DFS
> +       (5925 - 6425 @ 320), (23), NO-OUTDOOR
>
>  country KH: DFS-ETSI
>         (2402 - 2482 @ 40), (20)
> --
> 2.25.1
>

