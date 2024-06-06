Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54FBDC25B75
	for <wireless-regdb@archiver.kernel.org>; Thu,  6 Jun 2024 14:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tlHA9nA1YUElWsksdZ3/HoUzGjfnfL355S0JvxHrYXc=; b=jui6hFkb1I8r1F
	/tNabbEnx0heKkHgiTI7b6r10yDpEbBm/q3Sy9KylT5UbI3ZJn9Qt1QwkQCTSvkSozmm9v9FWjplg
	T4hikw25/MB2nBSy9zQhwOmwoCWuaLeuCckZ/mQEmF91+L7x8qX6JMLTn28K6QYTq8b7RJ4LgTQNS
	AOioloV/hEikhl2z9hNJfBAXNM/CBcTY6RnWKqM0ab8wHvfFjkyO6J0kNqvZrosNqZVGu20alHlOo
	Zo+5Mvz/Yrip2Ir+3R3xQS06O+1yKJlggKvlxuqMiBTi99vHOq/lSV/5ToetnlSY8zNUP+2jO8mAW
	ujEE07AhuiBzlXQlAWuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFET2-0000000A9KP-41IU;
	Thu, 06 Jun 2024 14:51:55 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFESz-0000000A9Il-3WL9
	for wireless-regdb@lists.infradead.org;
	Thu, 06 Jun 2024 14:51:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D1CE061D5E
	for <wireless-regdb@lists.infradead.org>; Thu,  6 Jun 2024 14:51:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8730AC32782
	for <wireless-regdb@lists.infradead.org>; Thu,  6 Jun 2024 14:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717685508;
	bh=4yUuVIpNSByOKrQaxBK79bz+fXs14mIZpU2VxC6YR1A=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=KNznBASd741KbU5KtyhTgrfu+ucYIPfmdjZBGNOuKDPoZ+CuCMU0W2HexU557cVxt
	 twcaVzCrfgWHX2+JS6gv3ku+SrFoipqQW1Gy29rVRP0NFDskRDBFt4x0WXC2K1PPIn
	 FcgzzMA+A0C7iSAihanL9TSNDHAcysoDYoorm9VyVHLMC8Iql3HIbs0q4ZvPjO1i/A
	 MTHJpKaj5rT3WrT3I/HCL7egSSaJ16JCZnwgUoy4XM4LtbifN+lMwrdb/K/guZzvVT
	 cCrPpA0a6o0T/9xS4dPYDXuT6WAgo/2iHSLrCkPfLNdIasQT/O37lH6fU6yRu8gWds
	 QssZ9UqSkiAUQ==
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2e72b8931caso10722631fa.0
        for <wireless-regdb@lists.infradead.org>; Thu, 06 Jun 2024 07:51:48 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVcOtv2rcCNE9KbD74pYL2dBIDVyfi5N3dxcSxxTfhptkwQuXE9A958uN7qBt7ze8hpQGNQjxyardVuTrddVbnueJo3qMjVY/oJfRhB8nJi4Nhv
X-Gm-Message-State: AOJu0Yx6LzauPaCxHOAMaJuOyNiyRPdRiIPrGftSHlvo1CxsgvlQGAa/
	buCvy6/i5MnYXe5nk2nqSWAyzqcj2eCRTZGdLof13ZLkT2j28MiQIZYW3sC/U+HOjqcOU5IQR+h
	qX9osaglNrayjlcSQMqKKKd9I7BU=
X-Google-Smtp-Source: AGHT+IG1XLP0JHa7pVv+1OHvxPTO2xmsAuXJDBNstDo0vp9x6gO8+oTUsg8bZtp82tUtI8ovSGU/o2hsH/1u96ksxLc=
X-Received: by 2002:a05:651c:19a6:b0:2e9:714a:ef43 with SMTP id
 38308e7fff4ca-2eac798e609mr38883471fa.8.1717685506946; Thu, 06 Jun 2024
 07:51:46 -0700 (PDT)
MIME-Version: 1.0
References: <20240603060558.98791-1-pkshih@realtek.com> <171768539053.810063.5040807853852576172.b4-ty@kernel.org>
In-Reply-To: <171768539053.810063.5040807853852576172.b4-ty@kernel.org>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 6 Jun 2024 22:51:34 +0800
X-Gmail-Original-Message-ID: <CAGb2v65xfJJ7nDy3f8UXM5PpCVNYAf0+xsv=PuK0BWymGN2+sA@mail.gmail.com>
Message-ID: <CAGb2v65xfJJ7nDy3f8UXM5PpCVNYAf0+xsv=PuK0BWymGN2+sA@mail.gmail.com>
Subject: Re: [PATCH 1/4] wireless-regdb: Update regulatory info for Malaysia
 (MY) on 6GHz
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_075150_350246_6CBB4A55 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
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

On Thu, Jun 6, 2024 at 10:50=E2=80=AFPM Chen-Yu Tsai <wens@kernel.org> wrot=
e:
>
> On Mon, 03 Jun 2024 14:05:55 +0800, Ping-Ke Shih wrote:
> > Malaysia Communications and Multimedia Commission announced CLASS
> > ASSIGNMENT NO. 1 OF 2022, which page 11 describes frequency bands
> > 5925-6425 MHz are used with conditions of 25 mW EIRP for indoor and out=
door
> > use and 200 mW EIRP for indoor use only.
> >
> > [1] https://www.mcmc.gov.my/skmmgovmy/media/General/CA-No-1-of-2022_-si=
gned_19012022.pdf
> >
> > [...]
>
> Applied to master in wens/wireless-regdb.git, thanks!
>
> [1/4] wireless-regdb: Update regulatory info for Malaysia (MY) on 6GHz
>       https://git.kernel.org/wens/wireless-regdb/c/ddbf3192cbc0
> [2/4] wireless-regdb: Update regulatory info for Morocco (MA) on 6GHz
>       https://git.kernel.org/wens/wireless-regdb/c/472f62de66a7
> [3/4] wireless-regdb: Update regulatory info for Chile (CL) on 6GHz
>       https://git.kernel.org/wens/wireless-regdb/c/2b2e1f829e84
> [4/4] wireless-regdb: Update regulatory info for Mexico (MX) on 6GHz
>       https://git.kernel.org/wens/wireless-regdb/c/30b964dd5d3f

Ugh. Wrong revision merged. *cringe*

Please ignore this.

