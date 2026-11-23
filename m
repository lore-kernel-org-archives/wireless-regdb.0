Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B31606A31E
	for <wireless-regdb@archiver.kernel.org>; Mon, 23 Nov 2026 09:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=D7XNm7pW;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=C8pSt/+3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=HwOXkLb5QykPXQC5MbpC4OgTE05cElAsD+vrDCINNyo=; b=D7XNm7pW6HxVwb/lT9BlHWfGDC
	E1pPvwl+e8uag9KM6odrPciDDLbOvecJP88LpanlBkGhahDLYZjd+uQT3wZrImlQoNa29DpCtdBFd
	/TTetjlzOFQhGCZUD9yy0GeRIwjlsdYwGaKwVhv3t+6T/eGAbtq7bmFjWVgZFiX7RBrfNfnTReBVr
	Jyg6+2dt4Yg/8KG5iePPtHTeedhkEQb/St/rP01zqtTiqFkfLdulsYoFSbKuHQtkYaz7RqjujWypE
	cZx/u3yHCeT/NgclG+agSrc+AWoNmqr+BKiQBedF0X1me4HMTvUc3hP3VX+N90avupkpHt20DBxnT
	m1YjdDaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQCy-00000002gH5-2IxT;
	Mon, 23 Nov 2026 09:19:32 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQBz-00000002g15-3Q0t
	for wireless-regdb@lists.infradead.org;
	Mon, 23 Nov 2026 09:18:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4FA1461332
	for <wireless-regdb@lists.infradead.org>; Mon, 23 Nov 2026 09:18:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7E551F000EC
	for <wireless-regdb@lists.infradead.org>; Mon, 23 Nov 2026 09:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795425509;
	bh=HwOXkLb5QykPXQC5MbpC4OgTE05cElAsD+vrDCINNyo=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=C8pSt/+3fIe09YyE7VhKqceLTSl5/6mta8+iS3gcEv8Qv/EArRkRMof1G5KhcKwjj
	 vfO2bCkI0w8tX7fa66YjBnoADGYM5bbLErTUljIrqjNjbwFKj7tZxnmIGAszMzopp9
	 gAmws+uPoqDjJZW0fTtrbwe9U15XsRxDs7YwsHEmeTTYV7XQdYNUKu0SwmRrcnD/W0
	 VV0wxkL/bY5M5LuD9Ehvc1zk05xqV1OIv1AFtztHMONJ3gt6pf5aPmfV1UYETLxwz8
	 1KHciLB5rXTfuQtvh2y6QliPZOfOyqbKoOYXwSdZKw83SFew4Dw2jQ45Tj5o28H9Ac
	 t9DC2E9dQ6m5Q==
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-3adf9b1f5aeso36828811fa.0
        for <wireless-regdb@lists.infradead.org>; Mon, 23 Nov 2026 01:18:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AL+hErEhnXxjwhAKWHGH8Zrw2/EVnb6COr++fuxZ5abe72LPy7cF/En+qFZeFqvAJ5mz1amPldKLzaE25fIRu14i/w==@lists.infradead.org
X-Gm-Message-State: APuU4Z9POgdNqj9+/wnLcfAESEVq66xqDnfwy81YItQV+GZwCBUNltCw
	uqvqcwUzbducj/KqGIclSQyD6AtYe/IeDs1otFcMuUnLmt3CYh3ZcZJO0ulVIhFpdOiUZKJgfjk
	k2k9ZRiJEO2eVHsqhUyAkIIsKZwEODjQ=
X-Received: by 2002:a05:651c:a186:b0:3ac:dc93:c80a with SMTP id
 38308e7fff4ca-3ae7f7cbe04mr25345591fa.0.1795425508169; Mon, 23 Nov 2026
 01:18:28 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <d390d8a7db9bf2ec0a920dc8e95aa551@purelymail.com>
In-Reply-To: <d390d8a7db9bf2ec0a920dc8e95aa551@purelymail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 23 Nov 2026 17:18:15 +0800
X-Gmail-Original-Message-ID: <CAGb2v65SU9V8pkvxgOmsEfwTUDKMyDqypEUiZgkF5SKdGREh6w@mail.gmail.com>
X-Gm-Features: Aa3M54quQJIjGBxYIVuc528_lKM4eXMBVWA2nludE7CUjW_ksQEqw3HPC-O5XU0
Message-ID: <CAGb2v65SU9V8pkvxgOmsEfwTUDKMyDqypEUiZgkF5SKdGREh6w@mail.gmail.com>
Subject: Re: [RFC PATCH v2] wireless-regdb: Update regulatory rules for Chile (CL)
To: plabin@plabin.cl
Cc: linux-wireless@vger.kernel.org, pkshih@realtek.com, 
	wireless-regdb <wireless-regdb@lists.infradead.org>
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

On Tue, Oct 20, 2026 at 11:45=E2=80=AFAM <plabin@plabin.cl> wrote:
>
> Update the regulatory rules for Chile (CL) based on SUBTEL
> (Undersecretary
> of Telecommunications) Resoluci=C3=B3n Exenta N=C2=B0 1.247 published on =
July 10,
> 2026, which establishes the consolidated and refundido text of
> Resoluci=C3=B3n
> Exenta N=C2=B0 1.985 (Norma T=C3=A9cnica de Equipos de Alcance Reducido).
>
> Source:
> https://www.bcn.cl/leychile/navegar?idNorma=3D1225920
>
> Key changes:
> - Change DFS region from DFS-JP to DFS-FCC: SUBTEL regulations align
>    with ITU Region 2 / FCC standards rather than Japanese MIC rules.
> - 2.4 GHz band: Align boundaries to 2400-2483.5 MHz (Article 1, j.1)
>    and update EIRP power limit from 20 dBm to 30 dBm (1 W).
> - 5150-5250 MHz: Align lower boundary to 5150 MHz, update EIRP power
>    limit to 30 dBm (1 W), and add NO-OUTDOOR as Article 1, literal j
>    strictly restricts operation in this band to indoor enclosures.
> - 5250-5350 MHz: Align upper boundary from 5330 to 5350 MHz and update
>    EIRP power limit to 30 dBm (1 W) with DFS (Article 1, j.1).
> - 5470-5725 MHz: Add missing band authorized by Article 1, j.1 with
>    DFS up to 1 W EIRP. Extend upper boundary to 5730 MHz to cover
>    Channel 144, similar to US, TW, and CA entries.
> - 5725-5850 MHz: Align boundaries from 5735-5835 to 5725-5850 MHz and
>    update EIRP limit to 30 dBm (1 W) (Article 1, j.1).
> - 57-66 GHz band: Add 60 GHz WiGig band at 40 dBm EIRP as authorized
>    for short-range devices.
>
> Signed-off-by: Patricio Labin Correa <plabin@plabin.cl>
> ---
> v1 -> v2:
> - Update source reference to direct link for Resoluci=C3=B3n Exenta N=C2=
=B0 1.247
>    (idNorma=3D1225920) which contains the refundido/consolidated text.
>
> Hi Chen-Yu, Ping-Ke, and linux-wireless reviewers,
>
> This is my first time submitting a patch, and I apologize for the wrong
> sources on v1.
>
> I prepared this RFC to modernize the regulatory rules for
> Chile (CL), which have remained largely untouched since the initial
> import in
> 2008.
>
> In Chile, major ISPs (such as Movistar) deploy Wi-Fi routers
> broadcasting on
> Channel 100 (5500 MHz) by default. Because the 5.470-5.725 GHz band was
> missing
> from country CL, Linux machines cannot detect or connect to these 5 GHz
> networks.
>
> This update aligns Chile's entry with SUBTEL Resoluci=C3=B3n Exenta N=C2=
=B0 1.247
> of
> July 10, 2026 (the official refundido and consolidated text of the
> standard).
>
> Before finalizing, I would appreciate your guidance on:
> 1. DFS region: I changed DFS-JP to DFS-FCC since Chile follows ITU
> Region 2
>     and aligns with FCC standards. Does DFS-FCC look right here?

Honestly I have no idea. I'm not that familiar with WiFi specification
details. But I suppose it makes sense.

> 2. Power limits: SUBTEL Article 1, j.1 authorizes up to 1 W EIRP. I used
> (30) dBm;
>     would you prefer explicit mW units (e.g. 1000 mW)?

Please use the unit from the standards / rules. So 1000 mW here.

> 3. Channel 144: I used (5470 - 5730 @ 160) to accommodate Channel 144,
> matching
>     conventions in US, TW, and CA rules. Does this look good?

Yes. But please also copy the comment over. And the previous range
has to end at 5730 as well. The database can't have overlapping ranges.

> Thank you for your review and guidance!
>
>   db.txt | 15 +++++++++------
>   1 file changed, 9 insertions(+), 6 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 7aff3fb..90a78bb 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -455,13 +455,16 @@ country CI: DFS-FCC
>       (5735 - 5835 @ 80), (30)
>
>   # Source:
> -#
> https://www.bcn.cl/leychile/navegar?idNorma=3D1109333&idParte=3D9841504&i=
dVersion=3D&r_c=3D6
> -country CL: DFS-JP
> -    (2402 - 2482 @ 40), (20)
> -    (5170 - 5250 @ 80), (20), AUTO-BW
> -    (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> -    (5735 - 5835 @ 80), (20)
> +# https://www.bcn.cl/leychile/navegar?idNorma=3D1225920
> +# SUBTEL Resoluci=C3=B3n Exenta N=C2=B0 1.247 (10-JUL-2026, texto refund=
ido de
> Res. 1.985)
> +# Norma T=C3=A9cnica de Equipos de Alcance Reducido
> +country CL: DFS-FCC
> +    (2400 - 2483.5 @ 40), (30)
> +    (5150 - 5250 @ 80), (30), NO-OUTDOOR, AUTO-BW
> +    (5250 - 5350 @ 80), (30), DFS, AUTO-BW
> +    (5470 - 5730 @ 160), (30), DFS
> +    (5725 - 5850 @ 80), (30)

As mentioned above, please use the units and numbers from the rules directl=
y,
so 1000 mW for the rules above.

>       (5925 - 6425 @ 320), (12), NO-OUTDOOR
> +    (57000 - 66000 @ 2160), (40)

I don't see a reference for this change though. Could you also add the
article and item number? It seems to be j.5? But j.8 also covers the
extended range of 57-71 GHz. And that also allows up to 43 dBm.


Last, please also send your patches to wireless-regdb@lists.infradead.org.
Otherwise I won't see them.


Thanks
ChenYu


>
>   # Source:
>   #
> https://wap.miit.gov.cn/zwgk/zcwj/wjfb/tz/art/2021/art_e4ae71252eab42928d=
af0ea620976e4e.html

