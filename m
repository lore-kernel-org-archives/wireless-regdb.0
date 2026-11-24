Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F69606A31E
	for <wireless-regdb@archiver.kernel.org>; Tue, 24 Nov 2026 07:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=KK7vHhP9;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=X4pR9lku
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=b699KqE2zVew9qhlPz2Hyn0a0UGTQQU2xRWOHVEcD7A=; b=KK7vHhP9y4LbqyLQijdp/86/cl
	oid4nFE4KSL/R+8s1QtgeFEFUFWqtuOfjCmSvyjvKkNezlLE8Xc/1rYmPCLMbIhdcyyuiBkSYikVA
	m14HyvVaG7+1wHRe7we1vNwxycGmM/30PxgdLo/7+RuN1KxfHkUYUWV9NkWp++nY5TGmVfceSWjdn
	YiAHbH/t0jpR2sclpfnUhdKvA9YNsHuO5h4+BVaGXTtu2iq4xrAntcRAFk3JHsU/1gLmpUNnuihAW
	wPqX8SJjvuYGYMA7ubhtEm01ujaQ1pi5qP5Kwgnu3o4sveOr3V467VTyztmeSzxVn6l7/QBuyYo3M
	XgSwv+Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVl0m-00000005mDG-0bmk;
	Tue, 24 Nov 2026 07:32:20 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVl0j-00000005mD9-0yub
	for wireless-regdb@lists.infradead.org;
	Tue, 24 Nov 2026 07:32:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id ED1C341501
	for <wireless-regdb@lists.infradead.org>; Tue, 24 Nov 2026 07:32:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B85E91F000C0
	for <wireless-regdb@lists.infradead.org>; Tue, 24 Nov 2026 07:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795505536;
	bh=b699KqE2zVew9qhlPz2Hyn0a0UGTQQU2xRWOHVEcD7A=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=X4pR9lkuO8pfEOHbvnz209El+IpdrA7L9zN2AaMOllx6L5UZS4A1BwUYKbDD4WSOD
	 Ep3Uq2X1mDKXgDOwpY4RN1PmyakvV3PgDI4O+3bGrwx4pT+NeyR+3B7hqckFmXwwAR
	 1AaYL/E1h77rXm0J5rp0FITXkYg1OpjSRY6zmCzGaaqJZh6yly9N05hl2lc7XaXNqv
	 AwY7YDyjcBzd8TLEpxyizTy+6Hm9gDiXfLoJX79GDe0PVZ76PItikuR4xFdQIn/tEe
	 /OKhFrXRP9DqZDJCmVdQb/U9NRig/iqWiq35XSOkNLhzqP8/J1r6HLTcVJmKDLLkZo
	 nO/ZQG4huIqqQ==
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-3ae25c9f857so44239411fa.1
        for <wireless-regdb@lists.infradead.org>; Mon, 23 Nov 2026 23:32:16 -0800 (PST)
X-Gm-Message-State: APuU4Z9CyNAb4OGPFzRl1WJojqWKCy3f3YMB19P5nP25+PwtX9pggv+A
	SaXkRC09oau2QeEpyDdevA/8JrJJEV/zINJUFw7j4tlMvtixHBggIsrvygZdxhMt1KOVkCM5NxA
	kOABNc0Qafpp7u8Vw0IDC8YoABdf2rIA=
X-Received: by 2002:a05:651c:211e:b0:3a6:636b:63c5 with SMTP id
 38308e7fff4ca-3ae7fa38eafmr39413391fa.16.1795505535126; Mon, 23 Nov 2026
 23:32:15 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <cd0a8084-9ce9-4715-8a39-d97e0f7c754e@ekze.org> <ab5f2d69-a311-451b-aded-31583f9591a1@ekze.org>
In-Reply-To: <ab5f2d69-a311-451b-aded-31583f9591a1@ekze.org>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 24 Nov 2026 15:32:02 +0800
X-Gmail-Original-Message-ID: <CAGb2v65rdWdXGRz-9i818RBWitax7vpoLEHq+q3nck6QbhE12A@mail.gmail.com>
X-Gm-Features: Aa3M54qimwUHxY9IHP5Gktn-XTEKJSjCOa9BbHP5mP_Gr_jwn9UUlSuFJkisoS8
Message-ID: <CAGb2v65rdWdXGRz-9i818RBWitax7vpoLEHq+q3nck6QbhE12A@mail.gmail.com>
Subject: Re: wireless-regdb: Missing 5470-5725 MHz WAS/RLAN band for Georgia (GE)?
To: ekze <nya@ekze.org>
Cc: wireless-regdb@lists.infradead.org
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
X-Spam-Status: No, score=-10.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Sat, Jun 6, 2026 at 11:23=E2=80=AFPM ekze <nya@ekze.org> wrote:
>
>
> Hello,
>
> Sorry, I forgot to CC the wireless-regdb list on my previous message.
>
> I noticed that the current wireless-regdb entry for Georgia (GE) does not
> include the 5470-5725 MHz WAS/RLAN band.
>
> According to the Georgian Communications Commission frequency plan, Georg=
ia
> allows WAS/RLAN operation in 5470-5725 MHz with 1 W averaged EIRP, subjec=
t
> to mitigation requirements based on EN 301 893, including DFS/TPC
> requirements. The document also notes that if TPC is not used, the EIRP
> limits should be reduced by 3 dB.
>
> Official source:
>
> Georgian Communications Commission, National Frequency Plan / Frequency
> Allocation Table:
> https://comcom.ge/uploads/other/14/14075.pdf
>
> Relevant entries in the document:
>
> - 5150-5350 MHz: WAS/RLAN, 200 mW averaged EIRP, indoor only
> - 5470-5725 MHz: WAS/RLAN, 1 W averaged EIRP
> - 5945-6425 MHz: RLAN, 200 mW averaged EIRP
>
> The notes for 5250-5350 MHz and 5470-5725 MHz reference EN 301 893
> mitigation requirements and TPC, with a 3 dB EIRP reduction if TPC is not
> used.
>
> Would the following update for GE be appropriate?
>
> diff --git a/db.txt b/db.txt
> --- a/db.txt
> +++ b/db.txt
> @@
>   country GE: DFS-ETSI
>          (2402 - 2482 @ 40), (20)
>          (5170 - 5250 @ 80), (18), AUTO-BW
>          (5250 - 5330 @ 80), (18), DFS, AUTO-BW
> +       (5470 - 5725 @ 160), (27), DFS
>          (5945 - 6425 @ 320), (23), NO-OUTDOOR
>          (57000 - 66000 @ 2160), (40)
>
> I used 27 dBm here because the official document lists 1 W EIRP with TPC,
> and says that the limit should be reduced by 3 dB if TPC is not used.
> Please let me know if a different representation would be preferred.

Sorry for the late reply. The rules for Georgia are now updated in the
repo and will be part of the next release.


ChenYu

