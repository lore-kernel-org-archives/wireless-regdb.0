Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1691C25B7E
	for <wireless-regdb@archiver.kernel.org>; Tue,  4 Jun 2024 09:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQOFQwErK6bd1pxBv0sCxGlzjDijLdCtwjKkBK6YplI=; b=ezQbEYzxapRXRy
	JXxtEdUWgrjW5+nROrzC4yPwTUqm9vawAbL8IOgmOgL6UcxS43aTic4nmF/qxcfJEsugnJhnE7KgT
	TAHw87iMMYns2bsyNejnR8TSq+YQJ7t0Jns4osTs+ALvcIzjFwjHEvS+V7xtdpOzEuJ6ioGyo+zoK
	URFz1QeTG0aS15FKDmuOJyO0VrdFy25fMQP1px0T3aMvjy82zAoqtWobdKGnwAsdZhS2kFgFDtubq
	/mmUJnUnfQmjSY5P7npDuzefVbYXP28bJNwI4O47ejX6m73fKDoy900Zn9j0VEJOA8GHoCn/kFb54
	F6j9OZ5zncDrNs8zXuFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEQk4-00000001umK-0cHn;
	Tue, 04 Jun 2024 09:46:08 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEQk0-00000001ulg-0Ss0
	for wireless-regdb@lists.infradead.org;
	Tue, 04 Jun 2024 09:46:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id CC409CE0E93
	for <wireless-regdb@lists.infradead.org>; Tue,  4 Jun 2024 09:46:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AC55C4AF07
	for <wireless-regdb@lists.infradead.org>; Tue,  4 Jun 2024 09:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717494361;
	bh=fwqiyaGfvmo9qr9IAehcs5O5KSPzFLkU8YehLnmbkn8=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=qq0zReQuESiNX5TTRX8oOD0XWq06lrm2rurAU9xKuthoI9D4syjQTGbj29oBLP8uz
	 si8EAQOiO7tHf/PcWNKQxYNrbrmv6mTAX/X4WR2GJVBtFEXXXVyG+Dqc1Q4dwWA3B9
	 Gh8w2KDP5HhwY5Rv3/26RTtoDNcylwYEWnaF0bcSn0UAYjL1bb2FfCBOhc+nMnq9tQ
	 LOj+yyXHHSzjZlltG/Be35nnNX2FHC2+PXxBi4y3+VIkv7T9rnbCH75fFtBO3MosE9
	 7LBkB3lUTiIn+ZQTZ+LZLSoUXa9LD8veh8FRNU6LbZjKoZuzC0/Wkw57v/CoCWGxXZ
	 rPuWOoPwgmNbQ==
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2eaa89464a3so26367651fa.3
        for <wireless-regdb@lists.infradead.org>; Tue, 04 Jun 2024 02:46:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUotKiH2ffq0thvtprzcm0cFhYz3DN+8UUmrqbwr/RR4pFG51JT2SfxNSSflWpWVABFC9ncgU8uGbM36nNVZsQdlwGv/TzPpPmV9U6Zf5GJlGDN
X-Gm-Message-State: AOJu0YwV4xzrZix8UfxMPgPdCwYu22DAdAxKnzYlrkuVticzy2ox0gD7
	6Nzuf77JdhyddNm3DhevQX3byU2LpJYes/ffooVqpSs7HRfphrypFiv90pvQ/DbUg99NiMn1nOY
	SkUXcscXJp8niEIPQP1znhRh4S+I=
X-Google-Smtp-Source: AGHT+IFsVot5ojznU5wD4PY9+fUNtrMnvRTGZMr2ykCru/wKGysdcJGMpd4UMnvjEFbfPMGQvF/UIv2AbTpdLvdSRGc=
X-Received: by 2002:a2e:7a0d:0:b0:2ea:8188:5bdf with SMTP id
 38308e7fff4ca-2ea951acb89mr72037691fa.36.1717494359476; Tue, 04 Jun 2024
 02:45:59 -0700 (PDT)
MIME-Version: 1.0
References: <20240603060558.98791-1-pkshih@realtek.com>
In-Reply-To: <20240603060558.98791-1-pkshih@realtek.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 4 Jun 2024 17:45:46 +0800
X-Gmail-Original-Message-ID: <CAGb2v64YQ4nxHV0Dk8UGTYZt88pen__bf6Y-uRi5APZTE=sFVg@mail.gmail.com>
Message-ID: <CAGb2v64YQ4nxHV0Dk8UGTYZt88pen__bf6Y-uRi5APZTE=sFVg@mail.gmail.com>
Subject: Re: [PATCH 1/4] wireless-regdb: Update regulatory info for Malaysia
 (MY) on 6GHz
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_024604_729133_45B57494 
X-CRM114-Status: GOOD (  15.97  )
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

Hi,

On Mon, Jun 3, 2024 at 2:06=E2=80=AFPM Ping-Ke Shih <pkshih@realtek.com> wr=
ote:
>
> Malaysia Communications and Multimedia Commission announced CLASS
> ASSIGNMENT NO. 1 OF 2022, which page 11 describes frequency bands
> 5925-6425 MHz are used with conditions of 25 mW EIRP for indoor and outdo=
or
> use and 200 mW EIRP for indoor use only.
>
> [1] https://www.mcmc.gov.my/skmmgovmy/media/General/CA-No-1-of-2022_-sign=
ed_19012022.pdf
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
>  db.txt | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/db.txt b/db.txt
> index f27dd5214630..adfcce15e3a7 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1294,12 +1294,15 @@ country MX: DFS-FCC
>         (5490 - 5730 @ 160), (24), DFS
>         (5735 - 5835 @ 80), (30)
>
> +# Source:
> +# https://www.mcmc.gov.my/skmmgovmy/media/General/CA-No-1-of-2022_-signe=
d_19012022.pdf

I see some differences compared to the existing rules below.

>  country MY: DFS-FCC
>         (2402 - 2482 @ 40), (20)

Regulations say 2400 - 2500 MHz at 500mW.

>         (5170 - 5250 @ 80), (24), AUTO-BW

Regulations say 5150 - 5250 at 1W.

>         (5250 - 5330 @ 80), (24), DFS, AUTO-BW

Regulations say 5250 - 5350 at 1W with DFS and TPC required.
Since Linux doesn't have TPC support [1], this rule should be removed.

>         (5490 - 5650 @ 160), (24), DFS

Regulations say 5470 - 5650 at 1W with DFS and TPC required.
Since Linux doesn't have TPC support [1], this rule should be removed.

>         (5735 - 5835 @ 80), (24)

Regulations say 5735 - 5875 at 1W.

> +       (5925 - 6425 @ 320), (200 mW), NO-OUTDOOR

This part looks correct.

Could you update your patch to include these changes?
Or send a separate patch following this one to update the existing rules?


Thanks
ChenYu


[1] https://lore.kernel.org/wireless-regdb/a5123274d5a8d80d554ffb786e25bef7=
2d45f69b.camel@sipsolutions.net/


>  country NG: DFS-ETSI
>         (2402 - 2482 @ 40), (20)
> --
> 2.25.1
>

