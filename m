Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037BD606A31E
	for <wireless-regdb@archiver.kernel.org>; Tue, 24 Nov 2026 06:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=mC8sdVDt;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=oGAYry3v
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=joTLPSe1FtOBg5/kidr98NS73DbLAuvGrAAITCxqqZo=; b=mC8sdVDtsNCQZYvCvvJMDcn6YU
	WvRVBHA4aB+sqnXBdO248PhbXlPTDvHUo4qjsPhYNLN+dvV9xqT0+X0dUn04FYoLAg2ziAV0y61Bg
	avfj9fNiPDUSwyIXenvdz1pD3XijJDWq8+rNl4uomWwopxkENZIsesOnNOkPGQrL974GjucWAXNU+
	F06eipfK8RHxb4+4e3YDsOLJOCh9H8U++x1n3+pkdopaiU1wo2ia1FAJ+wMBtSmAnbPImNYAvizS1
	tWO1yLBGEyXK9LJ5waJiZ0WmO/KdMjtVf4gsBDTu0rroLVFg+qEQXsBvOFH5pLIywFf6dzaPeexeL
	C8n75OFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkHb-00000005fdT-2CX9;
	Tue, 24 Nov 2026 06:45:39 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkHa-00000005fdN-0PIq
	for wireless-regdb@lists.infradead.org;
	Tue, 24 Nov 2026 06:45:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 81CB461D4C
	for <wireless-regdb@lists.infradead.org>; Tue, 24 Nov 2026 06:45:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38B481F000D1
	for <wireless-regdb@lists.infradead.org>; Tue, 24 Nov 2026 06:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795502737;
	bh=joTLPSe1FtOBg5/kidr98NS73DbLAuvGrAAITCxqqZo=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=oGAYry3vgkcRJfirO5sg4BridMiDJYjI/EsjUNyWS8xiadjcFGEXdKLbxqDXXmQ8r
	 Dr7k7zJM2tDl3SnmyiU2rLgu8OSUqCkLH9HLANQzH+OPbdhMns8W97H2Lg3Fs/y4eN
	 XYkYJXMXqimQpTF0onEa3spqBgLAgorlVKezuba4aqpWo+fZFb2c4EJ2ekI/pIIklR
	 g/qXL5j2UZUEqiYI8DW5MwsHe6PP42SwezgEkDq1tZfNGaflBGSdWQDgYSjPe1wZRk
	 NOO14FASQurT5AnNTEmCM9hh9ZtI/gGwfnUes5Hoq5W+BFB5/NAXR9CHyIiBqCYn6t
	 7xavPbSQWKcFA==
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-3acd239776cso35021251fa.0
        for <wireless-regdb@lists.infradead.org>; Mon, 23 Nov 2026 22:45:37 -0800 (PST)
X-Forwarded-Encrypted: i=1; AL+hErF5iSB5PrZmEPsjMFZ4EcMobZrszVCsnBBMFyxPo4CIgtWZSTTQjz8KjGJT2CKRd5de1OOxeWeFdALWe1IvfA==@lists.infradead.org
X-Gm-Message-State: APuU4Z8u4hBkYCtzY8t9WNZcEgoonmk96Xv8toG61N+MVwhgEx2VmebD
	4cb2HGayleAAvQxgrrLMKicSehqProID6KAwSDim91k0owMo3kHUDW1pcSFMBnLlUzbLPjkJAS1
	Pq+dlSytWLv8zvqG9U3II24TqddXbW2M=
X-Received: by 2002:a05:651c:1585:b0:3ac:ff0a:9d85 with SMTP id
 38308e7fff4ca-3ae7f9b2233mr38998981fa.7.1795502735660; Mon, 23 Nov 2026
 22:45:35 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <2D65518A-EBD5-4E6C-B4D2-7819D488B374@rfareas.com>
In-Reply-To: <2D65518A-EBD5-4E6C-B4D2-7819D488B374@rfareas.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 24 Nov 2026 14:45:23 +0800
X-Gmail-Original-Message-ID: <CAGb2v64HFxk90gUKbtf-MbZX1dhYrpH5RT_JCWRzpUxOwpnxnQ@mail.gmail.com>
X-Gm-Features: Aa3M54pBrNYSHw4RKERlK31f1WdWnZmEZPk3AhNIzuNV86bKE809JXT37QmJ9U4
Message-ID: <CAGb2v64HFxk90gUKbtf-MbZX1dhYrpH5RT_JCWRzpUxOwpnxnQ@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update 60 GHz rule for Ukraine (UA)
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

On Tue, Nov 24, 2026 at 4:15=E2=80=AFAM RFAREAS Support <support@rfareas.co=
m> wrote:
>
> From: Valery Belousov <support@rfareas.com>
>
> The UA entry allows 40 dBm in 57-66 GHz. The current list of radio
> equipment used under general authorisation in Ukraine, NKEK Resolution
> No. 361 of 3 July 2024, allows MGWS (WAS/RLAN) equipment in 57-66 GHz
> under item 78 with a maximum mean e.i.r.p. density of 13 dBm in any 1 MHz=
,
> a maximum e.i.r.p. of 20 dBm and indoor use only (ETSI EN 302 567).
> The amendments to the list adopted since then (Resolution No. 32 of
> 28 January 2026, current consolidated version of 18 March 2026) do not
> change this item.
>
> Change 57-66 GHz from 40 dBm to 20 dBm (NO-OUTDOOR is kept) and add
> the source.
>
> The source cited for the 2.4 and 5 GHz rules (z0201-15) was repealed by
> Resolution No. 361 on 16 August 2024. Those rules are not changed here.
>
> Signed-off-by: Valery Belousov <support@rfareas.com>
> ---
> Found while cross-checking wireless-regdb against the national acts for t=
he
> RFAREAS Wi-Fi regulatory map (https://rfareas.com/blog/tools/wifimap/).
>
>  db.txt | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/db.txt b/db.txt
> index f5b7cc1..07c3ef9 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -2097,6 +2097,10 @@ country TZ: DFS-ETSI
>  # 2.4 GHz band channels can be used outdoors when some requirements are =
met.
>  # 5 GHz band channels must be used only indoors in some cases. They are =
neither
>  # permitted nor denied outdoors in others.
> +# 60 GHz: NKEK Resolution No. 361 of 3 July 2024, list of radio equipmen=
t
> +# used under general authorisation, item 78 (MGWS, 57-66 GHz): 20 dBm
> +# e.i.r.p., 13 dBm/MHz, indoor use only.
> +#  https://zakon.rada.gov.ua/laws/show/z1175-24

I couldn't open this one, but my LLM agent says it matches.

It also noticed that the 2.4 GHz indoor-only restriction was removed.
Could you check? If that is true, please send a follow-up patch if you
can.


Thanks
ChenYu

>  # Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
>  #  https://docdb.cept.org/implementation/16737
>  #  https://docdb.cept.org/download/4685
> @@ -2108,7 +2112,7 @@ country UA: DFS-ETSI
>         (5725 - 5850 @ 80), (100 mW), NO-OUTDOOR
>         (5945 - 6425 @ 320), (23), NO-OUTDOOR
>         # 60 GHz band channels 1-4, ref: Etsi En 302 567
> -       (57000 - 66000 @ 2160), (40), NO-OUTDOOR
> +       (57000 - 66000 @ 2160), (20), NO-OUTDOOR
>
>  country UG: DFS-FCC
>         (2402 - 2482 @ 40), (20)
> --
> 2.43.0
>
> --
> RFAREAS Support

