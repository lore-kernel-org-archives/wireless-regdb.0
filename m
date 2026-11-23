Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64626606A31E
	for <wireless-regdb@archiver.kernel.org>; Mon, 23 Nov 2026 10:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=oLoLJ5gk;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=WUbP+2Jy
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=6Gj0XCFh8VHVjmg8Aa1L87ToNBEQ6zjjIOAqZjyYcDQ=; b=oLoLJ5gkGxjT21OLEnM1HuiFcF
	jm/6zUEUd0EPBlPNBEr3kfxzflFs3rAkEV/ggcUMpVcdZAZsg19WD/38WxO5IyoCWDe94nTOnpwMV
	WJfmueqJQKPxnhK3spmbC6Hb5h4y496tOxcPhLSGz/h53JNmxOz6jE24yQnDX92tkJIJJqLUcIciR
	PNT0OHPmNOoyqTSux5rx0O16owfPk1G52z5DTcqz5w00dHMAHrvsdTowm3HE1r65e6eVchn/gmoMt
	FNE9A7DWGMUQsNIE3YqP67wvI/M+APPhD4GK08WNbNpGYQ5i8JR1kpkcrfxdgpwHUIQzFCRQplx/J
	bWe4XjPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVRSp-00000002zkO-3JKI;
	Mon, 23 Nov 2026 10:39:59 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVRSo-00000002zjY-09kk
	for wireless-regdb@lists.infradead.org;
	Mon, 23 Nov 2026 10:39:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7BE53613FB
	for <wireless-regdb@lists.infradead.org>; Mon, 23 Nov 2026 10:39:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06EA61F000D4
	for <wireless-regdb@lists.infradead.org>; Mon, 23 Nov 2026 10:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795430397;
	bh=6Gj0XCFh8VHVjmg8Aa1L87ToNBEQ6zjjIOAqZjyYcDQ=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=WUbP+2JypP6O3pqoB3C48/ThFZDbcumjTKzk7UcQpjc9aom9Jfu60vxCy7k6pX2FC
	 ckIuWpLgQtSPiUCdHcjJHYd9pGmdbnP5qe43Z4EhBhRW/irt10Fs87cwGtdq5sGqhR
	 OJjjgSa9NaJ4Y6UZxEnNTVyZPOwctNF7O5x9pDm3DvjnXTncFJ2o0swh3h5QUqPdcB
	 K40mw7uXBebgXbyktAYf/DznvU0hBaCcPV2B+ttkUCViBsXRPfzG0HC2cpPFPfT5CC
	 nbiThpgPuJctGSri/RK3zcj2H3vPT/H9bQ/5tDwy4tIVssKp56VClwIwDK1E30YFPh
	 Vk+egT9SVJLeg==
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5c158c4c15fso3869473e87.1
        for <wireless-regdb@lists.infradead.org>; Mon, 23 Nov 2026 02:39:56 -0800 (PST)
X-Gm-Message-State: APuU4Z9TZe4lIhJl80AWfdpGimEupLoT6DCep0NGxq/V1NRHcRuNhdiv
	BQNKARytlxvoZV7zFmmd0YqUjyP5sO3bmcyEgH/lRl00ewwxVxmKu1taelWstBWNbK09bMHrYgT
	zdbtbaUwoMbB17RwinmrvewuVTA+/kLs=
X-Received: by 2002:a05:6512:114a:b0:5c1:4f6f:5656 with SMTP id
 2adb3069b0e04-5c1b7cc1abdmr3306555e87.44.1795430395471; Mon, 23 Nov 2026
 02:39:55 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <8BB6488B-D0B9-4ECB-9740-E892DDA3F4C1@rfareas.com> <179543030763.976281.10810918160433779862.b4-ty@b4>
In-Reply-To: <179543030763.976281.10810918160433779862.b4-ty@b4>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 23 Nov 2026 18:39:41 +0800
X-Gmail-Original-Message-ID: <CAGb2v65HE56ckquBS39ouzg=q+nRKoVg2rVes7AOYQ29vmrEHw@mail.gmail.com>
X-Gm-Features: Aa3M54rSzoYJUfqn32b-xaM1ODFo8Nn-Nn2mvK5uMX6we8c9_ajhgUxk6WM-tDc
Message-ID: <CAGb2v65HE56ckquBS39ouzg=q+nRKoVg2rVes7AOYQ29vmrEHw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] wireless-regdb: Allow channel 144 for Kazakhstan (KZ)
To: linux-wireless@vger.kernel.org, RFAREAS Support <support@rfareas.com>
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
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Mon, Nov 23, 2026 at 6:38=E2=80=AFPM Chen-Yu Tsai <wens@kernel.org> wrot=
e:
>
> On Mon, 23 Nov 2026 13:22:29 +0300, RFAREAS Support wrote:
> > Channel 144 (5710-5730 MHz) straddles the 5725 MHz boundary between
> > the 5470-5725 MHz and 5725-5850 MHz rules, so it cannot be used.
> >
> > Both ranges have the same limits in item 24 of Annex 1 to the Rules
> > (100 mW e.i.r.p., indoor use only); 5725-5850 MHz has no DFS flag and
> > is the less restrictive one. Extend the lower range to 5730 MHz and
> > start the upper one there, as done for the US. 5725-5730 MHz then
> > requires DFS, which is more restrictive than before.
> >
> > [...]
>
> Applied to master in wens/wireless-regdb.git, thanks!
>
> [2/2] wireless-regdb: Allow channel 144 for Kazakhstan (KZ)
>       https://git.kernel.org/wens/wireless-regdb/c/c0b2d4b1b27a

Email threading was broken on this series, which is why you only see [2/2]
here.

> Best regards,
> --
> Chen-Yu Tsai <wens@kernel.org>
>
>

