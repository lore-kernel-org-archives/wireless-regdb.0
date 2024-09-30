Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B531CF6491
	for <wireless-regdb@archiver.kernel.org>; Mon, 30 Sep 2024 07:28:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JkYxWt7C67QkKc+0bYLCHPCxSp5TTovAMPMxb2hNQ1c=; b=D9vv+WKyGMMNYX
	eegLJsX/Qwqqtqs41N9/OT/Aqms5P7aWDIJJaFZmTmNZ9lfk5zqRk7e1QZ269wIz4y6oBk4BMv+Tj
	Kiv9QHGFP33Y76uiF56cjQ5DLsoTZnlw+6fGj79aLFleYUCFcM/33PCBhRQJGuJbBNSJNU3snVNjW
	p+uwoORB/2u3sFIpbXy9kmpGIzfCTCSzTdLjGeLCk97UmJGsk/V3cujLWXhm0n9ktIqex64OVO3IZ
	4UAQXo069gZbA/9f10dctpb7WMsY7Wxu51I1phLhrbwbYrhad+4CQtyS8Zou3KXTKor5nksu5KLoi
	2tGHwrimQ7n0ZGbjgwvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svApH-0000000GAhT-1RrM;
	Mon, 30 Sep 2024 07:28:11 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svApC-0000000GAgj-2xHn
	for wireless-regdb@lists.infradead.org;
	Mon, 30 Sep 2024 07:28:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7B2F65C1194
	for <wireless-regdb@lists.infradead.org>; Mon, 30 Sep 2024 07:28:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40962C4CED1
	for <wireless-regdb@lists.infradead.org>; Mon, 30 Sep 2024 07:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727681285;
	bh=bp9KCKXii67v3/vDEihavE3KCdD3KTTpeEisYQUdC4I=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=poGF7n5ZU+bxkk3h8I0CaXL9I8GAH0m+QrE7TVk25D/Am/w/MhoUFDyN7Z7na0Imv
	 nG0vsvu3gvem2YFMctQ96+g+i/aB6IaXdAZAWMReamrr4ohPIl1ApNCuyaNvHBe2Bj
	 ihRzFRCkBNg6t4AcrR+Jl8m6qKaYnj/ieGSTu88yPOq3qvqw270pH620s1ECZPHwAE
	 Uw1aX7WfuNmz7DhAk+qoG5JAt08tg+YLLj2Zxab9K+ASGH34qNBWdVB5Vl5IQvOa+3
	 tLKVwNdSw2DaxD+Idv7NUgqw/t7AZPFaQwY/1ogfOl62cX9dcv05zhgJmCphDE+Dsk
	 tqNWJvN9B48OA==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2fac9eaeafcso8642531fa.3
        for <wireless-regdb@lists.infradead.org>; Mon, 30 Sep 2024 00:28:05 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVkzrTKnt3TOnJpkCyZNWJQEh+bCdvVYbmiRtVBC4kFgW2ctfN6TgvDhQ/Q2px6pKGSB9aKBt+8VcZXtfgLFQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywpx16wk4oer1SJLiTmdqj1cjN+rH0RJtHpbZ/LmPqH2x5U0qZh
	Ox3uacBAFVoUhEXY+O64fbajoPAvMwwiDd1PqxcGf/eAiPG9TyaewmRJpS7w+RI8MEMBZOb/vVZ
	lgJmrf3fAA0gquaT6F/5INn7o+aM=
X-Google-Smtp-Source: AGHT+IH//so7C5w0elx54PI9QPgLWCTlklPjTP19OEr8uRzdp3U2Bd/vMYHtvDy4QoLOLSDorTEEHtSPv++OYs4pqDU=
X-Received: by 2002:a2e:6111:0:b0:2f7:5890:b15a with SMTP id
 38308e7fff4ca-2f9d41afef6mr41251751fa.38.1727681283517; Mon, 30 Sep 2024
 00:28:03 -0700 (PDT)
MIME-Version: 1.0
References: <20240902082304.52326-1-pkshih@gmail.com>
In-Reply-To: <20240902082304.52326-1-pkshih@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 30 Sep 2024 15:27:50 +0800
X-Gmail-Original-Message-ID: <CAGb2v64R7FVjEWxXzSercJfnU8bASUAM1chkoMdY8-0WOKvJGg@mail.gmail.com>
Message-ID: <CAGb2v64R7FVjEWxXzSercJfnU8bASUAM1chkoMdY8-0WOKvJGg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] wireless-regdb: Update regulatory info for Serbia
 (SR) for 2024
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_002806_896472_07126D7A 
X-CRM114-Status: GOOD (  15.08  )
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

On Mon, Sep 2, 2024 at 4:23=E2=80=AFPM Ping-Ke Shih <pkshih@gmail.com> wrot=
e:
>
> From: Ping-Ke Shih <pkshih@realtek.com>
>
> Serbia government released radio frequency range on February 5, 2024 [1].
> Based on Article 100, paragraph 5 of the Law on Electronic Communications
> and Article 17, paragraph 1 and Article 42, paragraph 1 of the Law on
> Government.
>
>  * 2400 - 2483.5 MHz
>    - reference [1] page 114-115, section 2400 MHz - 2450 MHz, 8th row
>      * EN 302 328

          ^ Should be EN 300 328

I can fix this when applying.

Thanks

>        - 20 dBm
>  * 5150 - 5350 MHz
>    - reference [1] page 120-121, section 5150 MHz - 5250 MHz, 8th row
>      reference [1] page 121,     section 5250 MHz - 5255 MHz, 8th row
>      reference [1] page 121,     section 5255 MHz - 5350 MHz, 8th row
>      * EN 301 893
>        - 23 dBM (Without TPC)
>        - 5250 - 5350 MHz, DFS
>  * 5470 - 5725 MHz
>    - reference [1] page 122,     section 5470 MHz - 5570 MHz, 8th row
>      reference [1] page 122,     section 5570 MHz - 5650 MHz, 6th row
>      reference [1] page 123,     section 5650 MHz - 5725 MHz, 8th row
>      * EN 301 893
>        - 27 dBm (Without TPC)
>        - 5470 - 5725 MHz, DFS
>  * 5925 - 6425 MHz
>    - reference [1] page 124,     section 5925 MHz - 6700 MHz, 6th row
>      * EN 303 687
>        - 23 dBm, LPI
>
> [1] https://www.ratel.rs/uploads/documents/empire_plugin/Uredba%20o%20utv=
rdjivanju%20Plana%20namene%20radiofrekvencijskih%20opsega.pdf
> [2] EN 302 328 https://www.etsi.org/deliver/etsi_en/300300_300399/300328/=
02.02.02_60/en_300328v020202p.pdf
> [3] EN 302 066 https://www.etsi.org/deliver/etsi_en/302000_302099/302066/=
02.02.00_20/en_302066v020200a.pdf
> [4] EN 301 893 https://www.etsi.org/deliver/etsi_en/301800_301899/301893/=
02.01.01_60/en_301893v020101p.pdf
> [5] EN 303 687 https://www.etsi.org/deliver/etsi_en/303600_303699/303687/=
01.01.01_60/en_303687v010101p.pdf
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
> v2:
>   - update commit message: list page/section/row for reference
> ---
>  db.txt | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 9a55f6b8cc98..ad8dddc9c800 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1758,11 +1758,14 @@ country SN: DFS-FCC
>         (5490 - 5730 @ 160), (24), DFS
>         (5735 - 5835 @ 80), (30)
>
> +# Source:
> +# https://www.ratel.rs/uploads/documents/empire_plugin/Uredba%20o%20utvr=
djivanju%20Plana%20namene%20radiofrekvencijskih%20opsega.pdf
>  country SR: DFS-ETSI
> -       (2402 - 2482 @ 40), (20)
> -       (5170 - 5250 @ 80), (20), AUTO-BW
> -       (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> -       (5490 - 5710 @ 160), (27), DFS
> +       (2400 - 2483.5 @ 40), (20)
> +       (5150 - 5250 @ 80), (23), AUTO-BW
> +       (5250 - 5350 @ 80), (23), DFS, AUTO-BW
> +       (5470 - 5725 @ 160), (27), DFS
> +       (5925 - 6425 @ 320), (23), NO-OUTDOOR
>
>  # Source:
>  # https://www.siget.gob.sv/actualizacion-de-cuadro-nacional-de-atribucio=
n-de-frecuencias-t-0408-2023/
> --
> 2.25.1
>

