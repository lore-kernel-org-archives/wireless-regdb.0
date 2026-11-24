Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E6A606A31E
	for <wireless-regdb@archiver.kernel.org>; Tue, 24 Nov 2026 06:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0s/mImu5;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=nSFb3ReJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=RRfQhKttchyTzL2DUDqatrik9XZiWt92JJ2q1y9Xqto=; b=0s/mImu5CtUNeTibxsS+UDxJ1S
	VslmJPq7zE4yAPMZP2CF1/81DiigzKbnumc1bzJuS7LgVAXrQiqhV4iJnDRycLqlGvi2D+9hqD4ND
	GwI1o6s4n29bhKfFy7dv4taznGdFYwPWnjx/f2ueHQlSc7abEavnvEFyrrSr61AicgWYSBEv6dWY5
	hfSn/Xg65aHFt+k5+x03WuwX1za5PgNcMoe3T9s3i+YwvmoY7BUJg8F72Yk8B2Yq66qLOD0x7zcel
	qGGJZ/1AUc5xq23quhdzRFIp2/CFI6h9Ntyt1q8NL689fPEV5yXmh7gkwQbwZ7xCNgiF+PVIzb45D
	Hnkcfq8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkDE-00000005fJT-47KN;
	Tue, 24 Nov 2026 06:41:08 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkDD-00000005fJC-1ZEG
	for wireless-regdb@lists.infradead.org;
	Tue, 24 Nov 2026 06:41:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E2F9B4190D
	for <wireless-regdb@lists.infradead.org>; Tue, 24 Nov 2026 06:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC0DD1F000C6
	for <wireless-regdb@lists.infradead.org>; Tue, 24 Nov 2026 06:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795502466;
	bh=RRfQhKttchyTzL2DUDqatrik9XZiWt92JJ2q1y9Xqto=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=nSFb3ReJp2I9t3CQ03x82mNhDgZ8qN/wCnwOlvQ+LfBf1LZxxNhq9quXrrgNZyql1
	 9GRKbOn/2hqiSnMYAYw33hiD0/nA4fE6mCbr9L5ZMa63OQkv3c1fGrQO/tC6jpNLe3
	 IWae5OAVDf3XGj4x9vYDd+G+fH0pEbhnGZqNcxTMryiWQJQ5CQ4J+hkga69FbLzLAD
	 Sn05G8NWccx65T5osb8cIv7EignnYnBS4IqzOExT31Lox0fOFizxocsae5IkBtmvof
	 YVyxh5aSZHHUkcGNx2Bu5fy3OBb2mgFTNtQsvpM0h1t1R7eyZtgzQJD4sW7bn/P1Vj
	 Ke8aAoEY2dVjw==
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-3ae6a0ffb55so33843401fa.2
        for <wireless-regdb@lists.infradead.org>; Mon, 23 Nov 2026 22:41:06 -0800 (PST)
X-Forwarded-Encrypted: i=1; AL+hErGbPGwd4LD3QWq7ty7nxHhq99PSUyImqSvPtSfcGd1c/TLBSg3KuQUczTuWGwfoZouLhFG5IEthJXNz1STCJA==@lists.infradead.org
X-Gm-Message-State: APuU4Z/FZ4zlOO5yb7GuaRt+bM5JueebOBVtlxK1AYKI+MqSV/RnrjYv
	StIyMKnpoT7ANqYi2YcSWHxPtwEvKalHX6zRaVoFwm3nWbq0asvDdk/QbknXZlSSIww3n3NxiWY
	dPrutM5RGFDi6ViMDwscmczQ3YHEdHP4=
X-Received: by 2002:a05:6512:131e:b0:5c1:ac60:71fa with SMTP id
 2adb3069b0e04-5c1bc81cf71mr3704573e87.49.1795502465109; Mon, 23 Nov 2026
 22:41:05 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <C1FB55C5-D453-4358-856A-54D0097561C8@rfareas.com>
In-Reply-To: <C1FB55C5-D453-4358-856A-54D0097561C8@rfareas.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 24 Nov 2026 14:40:52 +0800
X-Gmail-Original-Message-ID: <CAGb2v67-2yV6oUA--fnG=ndHrOy4Li7pdZrNf954AwSm_Xk+dw@mail.gmail.com>
X-Gm-Features: Aa3M54pCqL-6FHjaHOCn2xkt_WlcGPIc4N3tNLpgWQluXE2A3PzhWX7zgI70xjo
Message-ID: <CAGb2v67-2yV6oUA--fnG=ndHrOy4Li7pdZrNf954AwSm_Xk+dw@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Georgia (GE)
To: RFAREAS Support <support@rfareas.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Reply-To: wens@kernel.org
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Tue, Nov 24, 2026 at 4:04=E2=80=AFAM RFAREAS Support <support@rfareas.co=
m> wrote:
>
> From: Valery Belousov <support@rfareas.com>
>
> The GE entry has no source for the 2.4 and 5 GHz rules and does not
> allow 5470-5725 MHz, which is permitted for licence-exempt use in
> Georgia.
>
> Licence-exempt WAS/RLAN is set out in Table 3 of Annex 1 to the
> National Radio Frequency Spectrum Allocation Plan (GNCC Resolution
> No. 6 of 30 June 2006), as amended by GNCC Resolution No. 9 of
> 25 July 2024, published on the official legislative portal matsne.gov.ge.
>
> Limits as stated in Table 3 (all e.i.r.p.):
>   2400-2483.5 MHz: 100 mW, 10 mW/MHz for wideband modulations
>   5150-5350 MHz:   200 mW mean, 10 mW/MHz, indoor use only
>   5470-5725 MHz:   1 W mean, 50 mW/MHz
>   5945-6425 MHz:   200 mW mean
>   57-71 GHz:       40 dBm mean, 23 dBm/MHz, fixed outdoor excluded
> Note 3.2 requires DFS (as in EN 301 893) in 5250-5350 MHz and
> 5470-5725 MHz. Note 3.3 requires TPC in the same bands and lowers the
> e.i.r.p. limits by 3 dB if TPC is not used.
>
> Changes:
>  * 2.4 GHz: 2400-2483.5 MHz, 100 mW.
>  * 5150-5250 MHz: 200 mW (was 18 dBm), NO-OUTDOOR.
>  * 5250-5350 MHz: 100 mW (was 18 dBm, 5250-5330 MHz), NO-OUTDOOR, DFS
>    (200 mW with TPC).
>  * Add 5470-5725 MHz, 500 mW, DFS (1 W with TPC).
>  * 60 GHz: extend to 71 GHz as in the table.
>  * Add the source and the TPC note.
>
> 5725-5875 MHz is listed in the table only for EN 302 502 (fixed
> broadband data transmission systems), not for WAS/RLAN under
> EN 301 893, so it is not added. The 6 GHz rule already matches.

There is also a non-specific SRD entry for this range limited at 25mW.
Would that be usable? If so, please send a follow-up patch.

I will apply this patch for now.

> Signed-off-by: Valery Belousov <support@rfareas.com>
> ---
> Found while cross-checking wireless-regdb against the national acts for t=
he
> RFAREAS Wi-Fi regulatory map (https://rfareas.com/blog/tools/wifimap/).
>
>  db.txt | 20 +++++++++++++++-----
>  1 file changed, 15 insertions(+), 5 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index f5b7cc1..ac9aad5 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -808,16 +808,26 @@ country GD: DFS-FCC
>         (5735 - 5835 @ 80), (30)
>
>  # Source:
> +# National Radio Frequency Spectrum Allocation Plan (GNCC Resolution No.=
 6
> +# of 30 June 2006), Annex 1, Table 3 (wideband data transmission systems=
,
> +# including WAS/RLAN), as amended by GNCC Resolution No. 9 of 25 July 20=
24:
> +#  https://matsne.gov.ge/ka/document/view/6234066
> +# Note 3.3 of the table requires TPC in 5250-5350 MHz and 5470-5725 MHz =
and
> +# lowers the limits by 3 dB without it. 5725-5875 MHz is listed only for
> +# EN 302 502 (fixed broadband data transmission), not for WAS/RLAN.
>  # Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
>  #  https://docdb.cept.org/implementation/16737
>  #  https://docdb.cept.org/download/4685
>  country GE: DFS-ETSI
> -       (2402 - 2482 @ 40), (20)
> -       (5170 - 5250 @ 80), (18), AUTO-BW
> -       (5250 - 5330 @ 80), (18), DFS, AUTO-BW
> +       (2400 - 2483.5 @ 40), (100 mW)
> +       (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> +       # 200 mW with TPC (note 3.3); Linux has no TPC, so 3 dB less
> +       (5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW
> +       # 1 W with TPC (note 3.3); Linux has no TPC, so 3 dB less
> +       (5470 - 5725 @ 160), (500 mW), DFS
>         (5945 - 6425 @ 320), (23), NO-OUTDOOR
> -       # 60 GHz band channels 1-4, ref: Etsi En 302 567
> -       (57000 - 66000 @ 2160), (40)
> +       # 60 GHz band channels 1-6, ref: ETSI EN 302 567
> +       (57000 - 71000 @ 2160), (40)
>
>  country GF: DFS-ETSI
>         (2402 - 2482 @ 40), (20)
> --
> 2.43.0
>
>
> --
> RFAREAS Support
>

