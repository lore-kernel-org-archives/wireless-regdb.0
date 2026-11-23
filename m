Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4A7F606A31A
	for <wireless-regdb@archiver.kernel.org>; Mon, 23 Nov 2026 08:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=oLGJkvNx;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=B6XJpRpJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=10mVHKBcg/+Uaagqs4hy6NfKuaxlv+YYpd7i/JHosR4=; b=oLGJkvNxJUfU7wqmUIAnpheYHO
	mp/JqPhJZJkfTW4CsOGwR6x8ABqwv0mq0nPftCcgHDZ0fSQ5a5KvSb1Ow7HxyD36vN1kKqs9Ugqdj
	31PtoBH5mzmaNzrPtATB6Z1IUKV3Wu6syAVxHbhSC810OVaaB+/Eo+2FPdS1Q8xtfE8ktVeO9D+2o
	tLsBbXkiITI0TouxBhx9zHf2dzthXEv3BMjCuriQYPjLfDrgNsS7l4TSJ0ccfeOW48znTQxrNZdgf
	lBN8+keWgFgjJ3BUkjJjYb7/JROp54TO7chQhdfBSD1VMrpaz5GUJz+4gUqGB0075pDlMNFZ3+BGm
	DsVI6oyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVPU6-00000002ZtH-1U2m;
	Mon, 23 Nov 2026 08:33:11 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVPU0-00000002Zri-0sLS
	for wireless-regdb@lists.infradead.org;
	Mon, 23 Nov 2026 08:33:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DE4764474F
	for <wireless-regdb@lists.infradead.org>; Mon, 23 Nov 2026 08:33:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3B101F000D8
	for <wireless-regdb@lists.infradead.org>; Mon, 23 Nov 2026 08:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795422783;
	bh=10mVHKBcg/+Uaagqs4hy6NfKuaxlv+YYpd7i/JHosR4=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=B6XJpRpJoybHwEeOLzF8DQMchMN9vQrEGPNQObXqA+IoaNx1dSY8N83hqONpBOVE9
	 ned1CadoJXIUXngvQafhSMCyWUHb+LW6yDw3GNjAu4mul3r12CAI/mbghpVB3aGx1E
	 zCCHziRiVb4jzoiUvCa3aeOfq2vnbKgsO+6v9Eafi+DJ68Yu4Dv4NNI5hTOzzAucKK
	 XuYRJ9oeFU257CzPZxRGqvJn3AZQ+znOTvvWz84de1UpFfymtZMuXPi/Ng1BLheNeY
	 PGUymdPdervh6O1qNxLXNG0XHelzdj2dLI9+ROVqb/MoOCp5QRZgVvm6HrmVtb0qKJ
	 6aK1V0S0PSKeA==
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5c102ad8420so1492330e87.1
        for <wireless-regdb@lists.infradead.org>; Mon, 23 Nov 2026 00:33:03 -0800 (PST)
X-Forwarded-Encrypted: i=1; AL+hErHg75Ax+phuazkjUfgOci0/rBsCW6sqQIEi9gJL5s1LIBvi1jhMprU5JcFt3rLcskF0Ycl4a0Dg7/2ZFCU0ZA==@lists.infradead.org
X-Gm-Message-State: APuU4Z+vcNb37S7MWLTujak3E4Tsw7dShHwUWaQrRctKYkfq6YZXK3as
	LzamG2IKW9fltPaj4+oYmetzZNmGYT9mcQUX8ug6Picu0SDx/Z3Ig5ixXgII/qKmLY0bW1T8U8K
	oSapy2/k2I/T+pHBBBJ1rebeTTIU3q/g=
X-Received: by 2002:ac2:4bd2:0:b0:5c0:a67:e7d1 with SMTP id
 2adb3069b0e04-5c1bc7bda01mr3040959e87.12.1795422782139; Mon, 23 Nov 2026
 00:33:02 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <7C3E3534-43A6-4D85-BAA7-9BC337438EEB@rfareas.com>
In-Reply-To: <7C3E3534-43A6-4D85-BAA7-9BC337438EEB@rfareas.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 23 Nov 2026 16:32:48 +0800
X-Gmail-Original-Message-ID: <CAGb2v656LkoRqbzSLP9=JvWHjW1tpjwMUy=_zmKHCLAx4xDsgQ@mail.gmail.com>
X-Gm-Features: Aa3M54p_mbWN-4hEeJdayzUjU65l1M7XxkGc4ondbhtJ3C1dEwToX82b_cD-hC8
Message-ID: <CAGb2v656LkoRqbzSLP9=JvWHjW1tpjwMUy=_zmKHCLAx4xDsgQ@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Kazakhstan (KZ)
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

On Mon, Nov 23, 2026 at 2:13=E2=80=AFAM RFAREAS Support <support@rfareas.co=
m> wrote:
>
> From: Valery Belousov <support@rfareas.com>
>
> The KZ entry cites the 2015 versions of the Rules for the assignment
> of frequency bands (Order No. 34 of 21 January 2015). Item 24 "WAS/RLAN"
> of Annex 1 to these Rules, the list of radio equipment that may be
> operated without a permit, was replaced by Order No. 564/NK of the
> Ministry of Digital Development, Innovation and Aerospace Industry of
> 19 September 2024 (registered with the Ministry of Justice under
> No. 35100 on 23 September 2024, in force ten days after its first
> official publication). The consolidated text of the Rules on the
> official legal portal adilet.zan.kz contains the same item.
>
> Limits as stated in item 24 (all e.i.r.p.):
>   2400-2483.5 MHz: 100 mW, 10 mW/MHz for wideband modulations
>   5150-5350 MHz:   200 mW, 10 mW/MHz, indoor use only
>   5470-5725 MHz:   100 mW, 10 mW/MHz, indoor use only
>   5725-5850 MHz:   100 mW, 10 mW/MHz, indoor use only
>   5925-6425 MHz:   200 mW, 10 mW/MHz, indoor use only
>   57-66 GHz:       40 dBm, 13 dBm/MHz mean, indoor use only
>
> Changes:
>  * 5250-5350 MHz: raise the limit from 20 dBm (100 mW) to 200 mW;
>    the item gives 200 mW for the whole 5150-5350 MHz range.
>  * 57-66 GHz: add NO-OUTDOOR ("only for use inside a building").
>  * Update the source links to the current consolidated Rules and the
>    amending order, using https.
>
> The other rules already match the item. The item does not mention
> DFS; the existing DFS flags are kept. The power spectral density
> limits cannot be expressed in db.txt.
>
> Signed-off-by: Valery Belousov <support@rfareas.com>
> ---
> Found while cross-checking wireless-regdb against the national acts for t=
he
> RFAREAS Wi-Fi regulatory map (https://rfareas.com/blog/tools/wifimap/).
>
>  db.txt | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 43dc0b3..3eb02d2 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1194,16 +1194,21 @@ country KY: DFS-FCC
>         (57000 - 71000 @ 2160), (40)
>
>  # Source:
> -# http://adilet.zan.kz/rus/docs/V1500010730
> -# http://adilet.zan.kz/rus/docs/V1500010375
> +# Rules for the assignment of frequency bands ... (Order No. 34 of
> +# 21 January 2015), Annex 1 (radio equipment that needs no permit),
> +# item 24 "WAS/RLAN", as amended by Order No. 564/NK of 19 September 202=
4:
> +# https://adilet.zan.kz/rus/docs/V1500010730
> +# https://adilet.zan.kz/rus/docs/V2400035100
> +# Table of frequency band allocations (Order No. 22 of 20 January 2015):
> +# https://adilet.zan.kz/rus/docs/V1500010375
>  country KZ: DFS-ETSI
>         (2400 - 2483.5 @ 40), (100 mW)
>         (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> -       (5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
> +       (5250 - 5350 @ 80), (200 mW), NO-OUTDOOR, DFS, AUTO-BW
>         (5470 - 5725 @ 160), (100 mW), NO-OUTDOOR, DFS
>         (5725 - 5850 @ 80), (100 mW), NO-OUTDOOR

Not related to this patch, but this boundary setting makes the wifi
channel straddling 5725 MHz unusable. Could you send a follow-up
patch to move the boundary? See the US rules for an example.


Thanks
ChenYu

>         (5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
> -       (57000 - 66000 @ 2160), (40)
> +       (57000 - 66000 @ 2160), (40), NO-OUTDOOR
>
>  country LB: DFS-FCC
>         (2402 - 2482 @ 40), (20)
> --
> 2.43.0
>

