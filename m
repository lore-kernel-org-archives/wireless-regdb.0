Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE7DEC27C4F
	for <wireless-regdb@archiver.kernel.org>; Fri, 21 Jun 2024 08:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IabJ/dzcDO3PgKyHd4ZggNKSp13nJgpap+iL64+P7OY=; b=D4rQqwNeSaYSr4
	prWQ2JTzUYVA/vEIuHR2mWlbDD5NJk86zpiKjoaRYrsWmMQgHE9c3k4DLS3H5LZSe66cvFonGZjKE
	/hhV4Rh7ugM319H/8edyRuDftjOh4VCmc4pJGY6lryNUnWOU0Nog92YaRQVZsAE4MCwEv0siO3Tck
	k9f8sT8vJgNgZ5iXp2TLeAffKmcCRTitFjK6a82AHcBRFaY8Tt4QR6txoJTsA0ZlmElyT0TNNqPen
	tQBKCtnG0jPZYd6br8VPJKs1F8wIEeLRwR4eximumptvlgm5J9VS1SCK9JaplFkLp185gjA1ZvsOU
	De6v8TAhGXP2FaPtZZ5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKZS9-00000008J0H-3dYz;
	Fri, 21 Jun 2024 08:17:01 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKZS5-00000008Iza-1ISd
	for wireless-regdb@lists.infradead.org;
	Fri, 21 Jun 2024 08:16:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7C6A562472
	for <wireless-regdb@lists.infradead.org>; Fri, 21 Jun 2024 08:16:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3457BC4AF0B
	for <wireless-regdb@lists.infradead.org>; Fri, 21 Jun 2024 08:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718957816;
	bh=EwpLKs93OwUsfS5SOLBq7fPsW+vKaPaOTW+HAoC6xnw=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=PKgHlwL/NhX6pNRYgFl0594+QzAdQedJefqff1G60F/h2xBVOKTRgGTezvGhna0le
	 WzhkpnkOy3l1kLDBAPrxjzklVYu7uiRu3uf16gjJ5wYHneGw9KjHT/IqCYolVSmSIh
	 MXWq1jh/mjD/oK/fSo44LvF9oFRl9R8ZnjnXiGD+co1qYK+LyxKYFehytQaD/gXSPu
	 JUpBzOWBMwXs+EvFRxkTzWWpG7M3LEt4WLWV+y5eK0iVUa2MVG1GPWeToVCAkgGJE4
	 m+rvBdTEdhSHUzEW9zCJ8uqjCwTJxoCGO3cfunfx+io+FRUN9pWOtpxLxZTg78JWal
	 hbmvJS6tzFzPw==
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2ec0f3b9cfeso17894041fa.0
        for <wireless-regdb@lists.infradead.org>; Fri, 21 Jun 2024 01:16:56 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX9LqPkc7qf5loF+dZK0XbvTj3NYhD5oS+NTDzZpqZ7rltSvbTdNJ+AthRGdUdXM0zk0F1BX6okCTwsWcEhzP2qdwdvGPT1ByEHGSuOlh0KEinS
X-Gm-Message-State: AOJu0YwX4HyfT6yyti8Zt6uDomf2AdI0laSGNrMCuuIfNPRnl/c4JLws
	rFNFzsPV6XG8ROsxqyEO9d8i8oUkBrdqFhvOQUPzzXZpkuQ0N/s8tC6FqPRDFHJ0b1YmZ2BCMG5
	h//eIVSVXs8R5HQYMdTG3z6snS9E=
X-Google-Smtp-Source: AGHT+IHxmYfAfMJYDDiU+wXkFnpXJR2EvbgbYpzz/GrNW12w+YAqtYubNubax9azFUOM3EC+9XHT/DS5IwgcgIsvz50=
X-Received: by 2002:a2e:3516:0:b0:2ec:f68:51e0 with SMTP id
 38308e7fff4ca-2ec3cff8ee1mr42474881fa.44.1718957814491; Fri, 21 Jun 2024
 01:16:54 -0700 (PDT)
MIME-Version: 1.0
References: <20240621052205.28925-1-pkshih@realtek.com> <20240621052205.28925-2-pkshih@realtek.com>
In-Reply-To: <20240621052205.28925-2-pkshih@realtek.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 21 Jun 2024 16:16:42 +0800
X-Gmail-Original-Message-ID: <CAGb2v66m4BcEQUd4NxzVGADhwLdzW5=z4EGCqDgjqCY3YFTFBw@mail.gmail.com>
Message-ID: <CAGb2v66m4BcEQUd4NxzVGADhwLdzW5=z4EGCqDgjqCY3YFTFBw@mail.gmail.com>
Subject: Re: [PATCH 2/6] wireless-regdb: Update regulatory info for
 Liechtenstein (LI) on 6GHz
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_011657_499468_3771D030 
X-CRM114-Status: GOOD (  15.78  )
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
> CEPT ECC/DEC/(20)01 of 20 November 2020 on the harmonised use of the
> frequency band 5945-6425 MHz for Wireless Access Systems including Radio
> Local Area Networks (WAS/RLAN), which [1] defines
>
>  - LOW POWER INDOOR (LPI) DEVICES
>    * Restricted to indoor use only
>    * Maximum mean e.i.r.p. 23 dBm
>    * Maximum mean e.i.r.p. density 10 dBm/MHz
>
>  - VERY LOW POWER (VLP) WAS/RLAN DEVICES
>    * Indoors and outdoors; Use on drones is prohibited
>    * Maximum mean e.i.r.p. 14 dBm
>    * Maximum mean e.i.r.p. density 1 dBm/MHz
>
> Liechtenstein, Frequency Allocation Plan (FAP) and Specific Assignments [=
2]
> note references of 5945 - 6425 MHz on Wideband data transmission systems:
>  - RIR1010-11,

This is the regional regulatory rule, which is what the database follows.
Please add a link in the commit message and in the database to
https://www.ofcomnet.ch/api/rir/1010/11

>  - ECC/DEC/(20)01

This is [1]. Please add the reference.

>  - EC Decision (EU) 2021/1067 on WAS/RLANs.

Please add a link.

Thanks
ChenYu


>
> [1] https://docdb.cept.org/download/1448
> [2] https://archiv.llv.li/files/ak/pdf-llv-ak-frequenzzuweisungsplan.pdf
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
>  db.txt | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/db.txt b/db.txt
> index 7b34fe2d8660..e10c3fc752e9 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1071,6 +1071,7 @@ country LC: DFS-ETSI
>  # LI: https://www.ofcomnet.ch/api/rir/1010/04
>  # LI: https://www.ofcomnet.ch/api/rir/1008/12
>  # LI: https://www.ofcomnet.ch/#/fatTable
> +# CEPT ECC Decision (20)01 for 6GHz: https://docdb.cept.org/download/144=
8
>  country LI: DFS-ETSI
>         (2400 - 2483.5 @ 40), (100 mW)
>         (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=3DETSI
> @@ -1078,6 +1079,7 @@ country LI: DFS-ETSI
>         (5470 - 5725 @ 160), (500 mW), DFS, wmmrule=3DETSI
>         # short range devices (ETSI EN 300 440-1)
>         (5725 - 5875 @ 80), (25 mW)
> +       (5945 - 6425 @ 320), (23), NO-OUTDOOR
>         # 60 GHz band channels 1-4 (ETSI EN 302 567)
>         (57000 - 66000 @ 2160), (40)
>
> --
> 2.25.1
>

