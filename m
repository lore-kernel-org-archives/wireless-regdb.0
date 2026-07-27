Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B87DC53219
	for <wireless-regdb@archiver.kernel.org>; Mon, 27 Jul 2026 09:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aSM3coz7Hqdif9SeUG9jj1H8quTPJupRJWlHMkkacXM=; b=Fry3wDe6RQxqvS
	6lrcjG/1FJ6FnnSTFfJXk6NyaWVA45n8sD7PP8bWFzzrUEv2keyEb957zEMdrAJ6eb6N/mU+gH6b+
	A2Hupn+dtYbVFzG/AUUqO5sV6nWnK+V2bgeccJAPHCNLILTm89PXbbHcHKaPXXRo4draI7UjphR+M
	xSUykS3TN0vGKCAiksYNu3NCSR3dUc0nC37jEfB5vU+ZcTGeVDWRxi6Byx1lT7LqUeW8KB4bkbKtb
	dc7+W8nVV14R9ZNiooMU1i1tyPJHisSwtkSKbTEkLeghvKZZ1Qit9Slt3JWwKT7mnDE6gEi/vF7CI
	uZvnDY4H+uzSgzDmgXKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woHEt-00000002HiF-3v4o;
	Mon, 27 Jul 2026 09:03:11 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woHEs-00000002Hhx-1QRY
	for wireless-regdb@lists.infradead.org;
	Mon, 27 Jul 2026 09:03:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1DA3040C4E
	for <wireless-regdb@lists.infradead.org>; Mon, 27 Jul 2026 09:03:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0238E1F00A3A
	for <wireless-regdb@lists.infradead.org>; Mon, 27 Jul 2026 09:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785142990;
	bh=aSM3coz7Hqdif9SeUG9jj1H8quTPJupRJWlHMkkacXM=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=U6vJdc/q9jxs6PoyaoCy/4uYQjCrJNP84B79gRoP5y3x4wtQUBgL9JFrQni3tmctq
	 0tVax6meFyv/LMiZjLXdZ1HmfyOKF7RiXW5/+FgoGPo0srFcRLp3sJ0lUc/uGXcGMK
	 RfXNbCE9tK9Oa00NtG8797pdQHFkPgZJ0QVkUGsTLMPuyl49pamCWYHME6uTQjL9uy
	 +9RSpcVFAtbMQ+/lp2IkSo8/O/8z4T6CtmA9eP/DUDBV5CAV1P+Y0SKgi/2XBe8yzV
	 RZPZP/i0KzV4uTSi4xD7Majo41arDpODf8Op8eLSTyD+rBW0D2WX1gvrQR+SfJ9cnr
	 5shRw9uqUxSmw==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-39c9a3acd40so15733231fa.3
        for <wireless-regdb@lists.infradead.org>; Mon, 27 Jul 2026 02:03:09 -0700 (PDT)
X-Gm-Message-State: AOJu0YzbD4I71B5ct/fR6OQErF8+UmCwm+NTnwtINQ9ZXHW+8Pa8sx1I
	WxGw64sGVqoVVvtylwCFln8FDSa+937PU90d7C5AuvpQNDrKPtksKitePEnLflT1SwX3I490ixX
	0C+x487RREY4yA3r10+9+QpdLgB9p8Nk=
X-Received: by 2002:a05:651c:983:b0:39b:1447:b6b1 with SMTP id
 38308e7fff4ca-39f288d711cmr14673861fa.36.1785142988378; Mon, 27 Jul 2026
 02:03:08 -0700 (PDT)
MIME-Version: 1.0
References: <20260727085953.356259-1-loukot@gmail.com>
In-Reply-To: <20260727085953.356259-1-loukot@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 27 Jul 2026 17:02:55 +0800
X-Gmail-Original-Message-ID: <CAGb2v67EwajzN+YRgV57CEsU2350=eGht-Ri4zTGupwXOiAr5w@mail.gmail.com>
X-Gm-Features: AUfX_mxg_4vKuvG6-dyT9i90Yqkoay_LSKmEUY0fYr_S9EUERFd6RkPpQIku9xs
Message-ID: <CAGb2v67EwajzN+YRgV57CEsU2350=eGht-Ri4zTGupwXOiAr5w@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Remove DFS flag from 60 GHz band for Togo (TG)
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
> Commit aad0c26 ("wireless-regdb: Update regulatory info for Togo (TG)
> for 2022") added a DFS flag to every band in the Togo entry, including
> the 57-66 GHz band.
>
> The source regulation, ARCEP Decision N=C2=B0 226/ARCEP/DG/22 of 30 Decem=
ber
> 2022, Annexe 2 section 9 ("Dispositifs de transmission de donn=C3=A9es =
=C3=A0
> large bande"), states for the 57-66 GHz row:
>
>   57 - 66 GHz | PIRE de 40 dBm et densit=C3=A9 de 13 dBm/MHz | Des
>   techniques d'acc=C3=A8s au spectre et d'att=C3=A9nuation des interf=C3=
=A9rences
>   doivent =C3=AAtre utilis=C3=A9es. | Les installations ext=C3=A9rieures =
fixes sont
>   exclues.
>
> Unlike the 5150-5350 MHz and 5470-5850 MHz rows, which explicitly
> require "des techniques de s=C3=A9lection automatique de fr=C3=A9quences =
(DFS)",
> the 57-66 GHz row requires only generic spectrum access and
> interference mitigation techniques. DFS is not mentioned. There is no
> radar service to protect in this band, and ETSI EN 302 567 does not
> specify DFS for it.
>
> The same commit also set DFS on the 2400-2483.5 MHz and 5925-6425 MHz
> rows. Those are left as they are: the decision does print "(DFS)" in
> both, so dropping the flag there would go further than the source
> allows, even though DFS is a 5 GHz radar-avoidance mechanism and reads
> oddly in those bands. The 60 GHz row is the only one with no basis in
> the text.
>
> Drop the DFS flag accordingly, and normalise the missing space in the
> bandwidth field on the same line.
>
> Reference:
>   https://arcep.tg/wp-content/uploads/2022/12/Decision-226-22-Determinant=
-les-categories-et-conditions-techniques-dexploitation-des-appareils-de-fai=
ble-puissance-et-de-faible-portee.pdf
>   (Annexe 2, section 9, page 21)
>
> Signed-off-by: Louis Kotze <loukot@gmail.com>

Makes sense to me. Will give it a few days before merging.

Reviewed-by: Chen-Yu Tsai <wens@kernel.org>

> ---
>  db.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/db.txt b/db.txt
> index 72f7900..c6217fa 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1962,7 +1962,7 @@ country TG: DFS-ETSI
>         (5150 - 5350 @ 80), (20), DFS
>         (5470 - 5850 @ 160), (27), DFS
>         (5925 - 6425 @ 320), (23), DFS, NO-OUTDOOR
> -       (57000 - 66000 @2160), (40), DFS
> +       (57000 - 66000 @ 2160), (40)
>
>  # Source:
>  # https://ratchakitcha.soc.go.th/documents/140D100S0000000004000.pdf
> --
> 2.55.0
>

