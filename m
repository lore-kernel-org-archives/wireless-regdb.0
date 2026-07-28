Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87567C53219
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 Jul 2026 08:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ooz1xkKptKYP2iSp4E2C8N3V/igQ5DE7A8nERFJXrFM=; b=HSW9PaOFe+HaII
	9DpsNv7L+Hka8GDFzB0znpqAcHW3sURtkvEtptY5LCAIuMH2fj3ys/yT9UyZwsTINen3HYP4GqLGQ
	IwJEJdtV0y7Po73SglJSYxLVQx7P+Y8flBJldg3frdFF7jK1BQtuWLlWh5ShKLQCx2U9vuM6zok7X
	TnQHpxSDLjge1h5s9IxQuw3HW76Czrrb4T0UOZKcbnbXvDFseD+U32cDUQX6F8NgXmbPO6Hu3aLo3
	oHZE5zj0w59BEVbbLh10Nt4j8YprbOtYybeafycVJp6tJaRetVF0CoKOqBXuDfTjNgRz3gja942Hf
	ziILliCMSxc1jvdPW+VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wodOd-00000004k59-3j6O;
	Tue, 28 Jul 2026 08:42:43 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wodOc-00000004k51-0uFq
	for wireless-regdb@lists.infradead.org;
	Tue, 28 Jul 2026 08:42:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9D9C9435AB
	for <wireless-regdb@lists.infradead.org>; Tue, 28 Jul 2026 08:42:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 826EA1F00A3A
	for <wireless-regdb@lists.infradead.org>; Tue, 28 Jul 2026 08:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785228161;
	bh=Ooz1xkKptKYP2iSp4E2C8N3V/igQ5DE7A8nERFJXrFM=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=DMrfA/C4o7ka3MS7Dw2q/c+SZAlWFGEXbcilBngaxOmLj2gBouE1iVoI18fEoCguu
	 sugqkqtOrcWYiJWHT3ev06Hrz1b64mgbGLcScU4K7jjq91R4wa7h6kf6PQ5ckfGcpn
	 zkPztSl/CBTIZitxz1C1+z8QbrEZEjxsM1Q7a3u5IR9v09f7NT9jj6xCBzSuuz/+Rp
	 YEGwecpBIE4k1wb6bqfgYZgpr8a4MFfGaYytdR/1agqHF8Qs61aFnu7yqHvaZlpMWg
	 ALIEuqf6TRrxKjFZ7TRWBgY3AdijHrHeqazJtrQE/N7hqetZWTCgiDiPkPZ2gVZh1W
	 sMfMo5H28F9wA==
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-39c7fd45465so31236631fa.1
        for <wireless-regdb@lists.infradead.org>; Tue, 28 Jul 2026 01:42:41 -0700 (PDT)
X-Gm-Message-State: AOJu0YwznK5yPiU8IcZfJyXk3qZ6i47WQm5EASewErtzUmWkmBmeY6ah
	tPqkDenkbPCawVHYh9jB0s7LnshoKuNc2fhTcIukoRiXWGkv7xUQTyyDZdnMrNYz0u6FYW3AWU5
	odNPhJ2n2BDDfLGy0JlhfB/KHJrHHJ8Y=
X-Received: by 2002:a2e:be0d:0:b0:39b:2df2:9014 with SMTP id
 38308e7fff4ca-39f51cdef3bmr2562341fa.7.1785228159716; Tue, 28 Jul 2026
 01:42:39 -0700 (PDT)
MIME-Version: 1.0
References: <20260727090002.357376-1-loukot@gmail.com>
In-Reply-To: <20260727090002.357376-1-loukot@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 28 Jul 2026 16:42:24 +0800
X-Gmail-Original-Message-ID: <CAGb2v65dq_f7POyRw+dOHnK=V5_4pN75+eqKvSmfzDFj+i5G5g@mail.gmail.com>
X-Gm-Features: AUfX_myO1oB3kwL-wUKZQj-oirsgZaYRx1-PfOiFUy2SzyzJwYqKIc_DxzzQ4cw
Message-ID: <CAGb2v65dq_f7POyRw+dOHnK=V5_4pN75+eqKvSmfzDFj+i5G5g@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update 5 GHz rules for South Africa (ZA)
To: Louis Kotze <loukot@gmail.com>
Cc: wireless-regdb@lists.infradead.org
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

On Mon, Jul 27, 2026 at 5:00=E2=80=AFPM Louis Kotze <loukot@gmail.com> wrot=
e:
>
> ICASA has substituted Annexure B of the Radio Frequency Spectrum
> Regulations in full twice since South Africa's 5 GHz rules were last
> touched. The operative table is Notice 1822, Government Gazette 48643
> of 18 May 2023. Notice 1822 section 1 recites the chain itself:
>
>   Notice 279, Gazette 38641, 30 March 2015 (original Annexure B)
>   Notice 386, Gazette 38754, 30 April 2015
>   Notice 781, Gazette 40436, 22 November 2016
>   Notice 737, Gazette 45690, 21 December 2021 (substitutes in full)
>   Notice 1822, Gazette 48643, 18 May 2023 (substitutes in full)
>
> The 6 GHz row already cites this notice, added in b7bced8
> ("wireless-regdb: Update regulatory rules for South Africa (ZA) on
> 6GHz"). The 5 GHz rows were not revisited then and still reflect the
> 2015 table. The current table's 5 GHz rows read:
>
>   5150-5250 MHz: 23 dBm e.i.r.p., WAS/RLAN, SANS 301 893
>   5250-5350 MHz: 23 dBm e.i.r.p., WAS/RLAN, SANS 301 893
>   5470-5725 MHz: 30 dBm e.i.r.p., WAS/RLAN, SANS 301 893
>   5725-5875 MHz: 25 mW e.i.r.p., non-specific SRD, SANS 300 440
>
> All three WAS/RLAN rows list ECC/DEC/(04)08 under "Additional
> Requirements". That decision restricts 5150-5350 MHz to indoor use and
> requires DFS and TPC on 5250-5350 MHz and 5470-5725 MHz, but not on
> 5150-5250 MHz.
>
> This reverses 99ebbaa ("wireless-regdb: Update ZA rules for 5490-5710
> MHz"), which dropped DFS and the TPC deduction from that range in 2015
> on the strength of the Radio Frequency Spectrum Regulations 2015, the
> instrument current at the time. ICASA has since restated both
> requirements, and rejected an industry objection to TPC in the reasons
> document accompanying Notice 737:
>
>   "TPC and DFS are not new requirements as they have always been
>   requirements within the prescribed performance standard SANS 301 893"
>
> Changes:
>
> - Add DFS to 5470-5725 MHz. The entry currently permits 1 W across
>   5490-5710 MHz with no radar detection, in a band where ICASA
>   requires it.

Ack.

> - Add NO-OUTDOOR to 5150-5250 and 5250-5350 MHz, per the Notice 737
>   reasons document section 6.6(c): "based on numerous interference
>   complaints caused by the unauthorized outdoor deployment, the
>   Authority maintained the position allowing only indoor deployment in
>   those bands".

Ack.

> - Raise 5150-5250 MHz from 20 to 23 dBm. Same document: "the Authority
>   updated the power limit to 23 dBm in accordance with the prescribed
>   performance standard SANS 301 893".

Ack.

> - Lower 5470-5725 MHz from 30 to 27 dBm and keep 5250-5350 MHz at
>   20 dBm, taking the figure that applies without TPC. The three
>   resulting values match DE, FR, IE and NL, which carry 200 mW, 100 mW
>   and 500 mW for these bands under the same ECC decision.

Ack.

> - Align the band edges with the gazetted limits: 5170 to 5150, 5330 to
>   5350, 5490 to 5470, 5710 to 5725. This yields no additional channel
>   at any width; channel 144 still does not fit, needing 5730 MHz where
>   ZA authorises 5725 MHz.

Can you also do the same for the 2.4 GHz band?

> - Add the 5725-5875 MHz non-specific SRD row at 25 mW, as in DE, FR,
>   IE and NL.

Ack.

> For a device this makes channels 149 to 173 available at 14 dBm, adds
> one 80 MHz channel at centre 155, gains 3 dB on channels 36 to 48, and
> costs 3 dB plus radar gating on channels 100 to 140. No channel is
> lost, and the 160 MHz picture is unchanged.
>
> The 2.4 and 6 GHz rows are untouched.
>
> Reference:
>   Notice 1822 of 2023, Government Gazette 48643, 18 May 2023
>   https://www.gov.za/sites/default/files/gcis_document/202305/48643gon182=
2.pdf
>
> Signed-off-by: Louis Kotze <loukot@gmail.com>
> ---
>  db.txt | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 72f7900..2489d07 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -2190,9 +2190,10 @@ country YT: DFS-ETSI
>  # Source: https://www.gov.za/sites/default/files/gcis_document/202305/48=
643gon1822.pdf
>  country ZA: DFS-ETSI
>         (2402 - 2482 @ 40), (20)

The reference gives 2400 - 2483.5.


Thanks
ChenYu

> -       (5170 - 5250 @ 80), (20), AUTO-BW
> -       (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> -       (5490 - 5710 @ 160), (30)
> +       (5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
> +       (5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
> +       (5470 - 5725 @ 160), (27), DFS
> +       (5725 - 5875 @ 80), (25 mW)
>         (5925 - 6425 @ 320), (23), NO-OUTDOOR
>
>  country ZW: DFS-ETSI
> --
> 2.55.0
>

