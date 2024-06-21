Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6197DC27C4F
	for <wireless-regdb@archiver.kernel.org>; Fri, 21 Jun 2024 07:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m47XZyMuX7Z0xRqR0otcprDVbjz+bqwYw1ZFLiCa39g=; b=ZehFNoOr9pDNOS
	WZU350geMMc1KqrL9jXiVzkpRIcm1qlSb3lowIC8ABb1/T5vbng7TPnFnhGvFRf3JY7iSj7eqtS2g
	KeObP8vbpkZWvH6cEOuSPdPdooqfhQqwgJL6mb27tjdK4VtGNLVWJvEQxdQEGzJ1lUgx9TXmkGdTM
	apYL0h6oln55RPkCsKeI5OdMJ821Z+fOx975fwdS0pmKll1w8lUiQhTSgzd9530jUvw5Gs9oIOJ6b
	7P+aNLEvj9R0aT42S0srtzNMw+45EZZdX/HtZCY78QSwHO6dYgRQ0Fd/GaFGeM27QBjEYuJRBB+yw
	vvgO66Zkaj5jNLLWe3RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKYIE-000000084fO-2qOy;
	Fri, 21 Jun 2024 07:02:42 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKYIB-000000084er-2pln
	for wireless-regdb@lists.infradead.org;
	Fri, 21 Jun 2024 07:02:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 007B6CE2893
	for <wireless-regdb@lists.infradead.org>; Fri, 21 Jun 2024 07:02:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCDB5C4AF09
	for <wireless-regdb@lists.infradead.org>; Fri, 21 Jun 2024 07:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718953355;
	bh=cjFoquWs0UAC1TkIyDENxGPXx6eXdKMts+RAwAKA4xE=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=CAsaszaj5YV+w9/IgSzmW8a7cAvR5Z3/AljC3KbC2tw83bjKGZ6VE+cZq/ba8a9RV
	 PJ1Rqr8nQb4EKj9T0rBC6szKKThBfc7UHMRBo1rklhcd/PBunQs/Z5fCCvrvJ3PTmQ
	 OI+m+376idtSLIAc01Ne9VNJAr2B935sp9cdmQAu5fk2lNi4i0VgRn0S68MRyM3LmK
	 OHsPb1ZW08DTCSlUVNrfi/gDQMmF3D0/6n8Nc714xqpraizrPcH0pqEwIZdFA9w5Kh
	 PET6CCvPDMeCBPIKHo5Itzp4oLTJIgDSoE6EtA7QlJpSqhJZLz6dpXZ1xRJSLGpLUK
	 GmqFxbcoTQjWw==
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2ebe0a81dc8so19293721fa.2
        for <wireless-regdb@lists.infradead.org>; Fri, 21 Jun 2024 00:02:35 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXeSJbPYJU92/ghlgoibR0faAxSFf2OSc9tkElHtHVImOvHsgGhR7gvIfReQqkMpXyp3AOAAHFaz4Mmzyj0Mo980HuXxN2hPtMJjETJqTqYv1rw
X-Gm-Message-State: AOJu0YytxNaXgave3hJqAaUVHX6l0K/ACqjUOhP1SU4PGcE/MwxtcsuE
	jbU/ZRQnTH8Q5QPWNC8jJUzCOVGBy9YqE98M3Q/zmGCb1obAj3jpCGOYaHTx9EPi5qktlKlMPaA
	6fnkKy3aT9vxjYab1z8CMlGC/7oo=
X-Google-Smtp-Source: AGHT+IFijSbgDFV7HHH2CHmlkvJWQ66KSmEaZMxvggnZgVgJuWdh8jhckSYvxXVry7wlhqTZ4XrAPlFO4U4X8X8se38=
X-Received: by 2002:a2e:a26c:0:b0:2ec:3daa:f0b4 with SMTP id
 38308e7fff4ca-2ec3daaf51bmr51477631fa.12.1718953354046; Fri, 21 Jun 2024
 00:02:34 -0700 (PDT)
MIME-Version: 1.0
References: <20240621052205.28925-1-pkshih@realtek.com> <20240621052205.28925-4-pkshih@realtek.com>
In-Reply-To: <20240621052205.28925-4-pkshih@realtek.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 21 Jun 2024 15:02:21 +0800
X-Gmail-Original-Message-ID: <CAGb2v65D3Ywj6RXbPZSo=Owc6=HAuGjOYmTX9E=ndXLqTy3R5Q@mail.gmail.com>
Message-ID: <CAGb2v65D3Ywj6RXbPZSo=Owc6=HAuGjOYmTX9E=ndXLqTy3R5Q@mail.gmail.com>
Subject: Re: [PATCH 4/6] wireless-regdb: Update regulatory info for Kenya (KE)
 for 2022
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_000240_096229_7EDC9AD2 
X-CRM114-Status: GOOD (  16.09  )
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
> Communications of Authority of Kenya issued GUIDELINES ON THE USE OF
> RADIOFREQUENCY SPECTRUM BY SHORT RANGE DEVICES on JUNE 2022 [1].
> The section 5.8. covers frequency bands and technical parameters for
> non-specific short range applications and wireless access systems.
>
>  - 2400-2483.5 MHz: 2W e.i.r.p.
>  - 5150-5350 MHz: 200mW; max e.i.r.p. density of 10mW/MHz
>  - 5470-5725 MHz: 250mW; Max mean e.i.r.p. of 1W &
>                   Max mean e.i.r.p. density of 50mW /MHz
>  - 5725-5875 MHz: 23 dBm/MHz; Mean e.i.r.p. of 2W in any 10 MHz band
>  - 5925-6425 MHz:
>    * LPI: 23 dBm (200 mW)
>           Mean e.i.r.p. density for in-band emissions 10 dBm/MHz
>           Indoor only
>    * VLP: 14 dBm (25 mW)
>           Mean e.i.r.p. density for in-band emissions 1 dBm/MHz
>           Indoor and outdoor use
>
> [1] https://www.ca.go.ke/sites/default/files/2023-06/Guidelines-on-the-Us=
e-of-Radiofrequency-Spectrum-by-Short-Range-Devices-2022.pdf
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
>  db.txt | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index a742498c1116..5603933e3563 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -982,11 +982,14 @@ country JP: DFS-JP
>         # ref: http://www.arib.or.jp/english/html/overview/doc/1-STD-T74v=
1_1.pdf
>         (57000 - 66000 @ 2160), (10 mW)
>
> +# Source:
> +# https://www.ca.go.ke/sites/default/files/2023-06/Guidelines-on-the-Use=
-of-Radiofrequency-Spectrum-by-Short-Range-Devices-2022.pdf
>  country KE: DFS-JP
> -       (2402 - 2482 @ 40), (20)
> -       (5170 - 5250 @ 80), (23)
> -       (5490 - 5570 @ 80), (30), DFS
> -       (5735 - 5775 @ 40), (23)
> +       (2400 - 2483.5 @ 40), (33)
> +       (5150 - 5350 @ 80), (23), DFS
> +       (5490 - 5570 @ 80), (24), DFS

This does not align with the range given in the reference.

> +       (5735 - 5775 @ 40), (23), DFS

This does not align with the range given in the reference.

Also, for the 5 GHz and 5.8 GHz ranges, TPC is required. If we reference
ETSI EN 301 893, TPC requires being able to reduce TX power by up to 6 dB.

Not sure if it makes sense to just lower the power limit by 6 dB to
conform though. If not then these bands are not usable.

> +       (5925 - 6425 @ 320), (23), NO-OUTDOOR

Please use values and units as given in the reference.


Thanks
ChenYu

>
>  country KH: DFS-ETSI
>         (2402 - 2482 @ 40), (20)
> --
> 2.25.1
>

