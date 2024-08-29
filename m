Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2E9ACA0ECA
	for <wireless-regdb@archiver.kernel.org>; Thu, 29 Aug 2024 23:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d79uYKQjvreMudMPE9MXxTWiQG4Sa8H/TvBOq5rh4xM=; b=NfU0s4TizXI0JE
	G4EzDLVxdQyCiAhlwG7omGY4cc78p0tS6ih9G8Lvjag5X631TjI51ST3Dteeg5zKYuwuo/aYBtQE5
	qgtV+8JhLeDu11rFqpELCM+0AHBqxBpHxv/yDeKuNh721VyPiCeQ0EKe4uHnDaVKGFetCklqsFeC0
	rXByhy5FwsajBCtyTnb0fFep/MmqGsLpRTT+EFpXH8suU5SAxrfheCOVAfOLqJ8qgWQJxVMvlEGk1
	q3sxN/mUkpFq8hY7Sfz/q/ciknKmYXOljGkOqYzFXjiHWbGRHMmlRMWp+CFFzE+Cbmu75IA1+s01z
	VShGh2t9VS60XHvttoww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjoUs-0000000405J-1yjo;
	Thu, 29 Aug 2024 23:24:10 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjoUo-0000000404o-3mZZ
	for wireless-regdb@lists.infradead.org;
	Thu, 29 Aug 2024 23:24:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id CB6ADCE1CD4
	for <wireless-regdb@lists.infradead.org>; Thu, 29 Aug 2024 23:24:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0108C4CEC1
	for <wireless-regdb@lists.infradead.org>; Thu, 29 Aug 2024 23:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724973843;
	bh=70/i6xXaX7zIxGBlnQGm09WdEQpWrIFuRhYm9gGAbYI=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=LU6bxqmvOron9gHidDVntL5KS7wMP7sF5gYYyTynvKmubxw7rfAI7PXjTNu8Ksj/6
	 Iunnwt26AYLPRmxtyMfu3U/SHKMC8bqt9q2izPhd/spqvpyPgZ7TPPzWrGTcgJfeRP
	 3UmrNO5bJuEFazSXrEb+H4BJwgLNVi2oAR1h7RJEVdudB6YmB8D5cKfLZ7+CETDt7I
	 qWHd5iBCAqRfJYg6dcQ/s8bXRzJG3ksBUSScIPiI1ZiGcW14y0ZTBrgfQN7J2TJaZ8
	 cWHaK7R44q57lq3zm0pzI5WosOKvTeK6S3u3z40ZW4MTgKCRRvES0uNm9YbTUxck1y
	 IeLlHTxYKYTSQ==
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2f409c87b07so14512131fa.0
        for <wireless-regdb@lists.infradead.org>; Thu, 29 Aug 2024 16:24:03 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVX+VT7mBPib/i6PbKbphM/T6h/Yw92rU3XBw8IhCvcZO3iCA0Zrx8+e7GqNx2n8l8YmJJ6hvKcLD4jSncqSQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwCFIi3CItZyxlYQYW1C3g93FXEioBJ8arQwVcGQ6gTevhCcgdW
	YvK4UgnZi1ky+s6tbf2mEJVCt0R45Qp/pJLFu1WshtFut2fVoebNzBFRZFa5e1hdN+wtUe4mU/I
	alaHK+31FNvuSbV0aTjxa/qSLhVQ=
X-Google-Smtp-Source: AGHT+IHPIaMgDBTqCLGJCPr0CU/LVNAQ/DalYXOgE5VL4oYKTzknViNSFSOgx8rZgNmEklILCQRvjHiZ2iv2yWWR37c=
X-Received: by 2002:a2e:4612:0:b0:2ef:2061:8bf5 with SMTP id
 38308e7fff4ca-2f610552732mr31125121fa.40.1724973841960; Thu, 29 Aug 2024
 16:24:01 -0700 (PDT)
MIME-Version: 1.0
References: <20240828084706.12257-1-pkshih@gmail.com>
In-Reply-To: <20240828084706.12257-1-pkshih@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 30 Aug 2024 08:23:49 +0900
X-Gmail-Original-Message-ID: <CAGb2v67ajRNxCQ-tHJoksA1PrneU+AsJxRNHoN3+eWmS1NudPQ@mail.gmail.com>
Message-ID: <CAGb2v67ajRNxCQ-tHJoksA1PrneU+AsJxRNHoN3+eWmS1NudPQ@mail.gmail.com>
Subject: Re: [PATCH 1/4] wireless-regdb: Update regulatory info for Serbia
 (SR) for 2024
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_162407_311594_9742C49E 
X-CRM114-Status: GOOD (  13.99  )
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

On Wed, Aug 28, 2024 at 5:52=E2=80=AFPM Ping-Ke Shih <pkshih@gmail.com> wro=
te:
>
> From: Ping-Ke Shih <pkshih@realtek.com>
>
> Serbia government released radio frequency range on February 5, 2024 [1].
> Based on Article 100, paragraph 5 of the Law on Electronic Communications
> and Article 17, paragraph 1 and Article 42, paragraph 1 of the Law on
> Government.
>
>  * 2400 - 2483.5 MHz
>    - 20 dBm
>    - EN 302 328
>  * 5150 - 5350 MHz
>    - 23 dBM (Without TPC)
>    - 5250 - 5350 MHz, DFS
>    - EN 301 893
>  * 5470 - 5725 MHz
>    - 27 dBm (Without TPC)
>    - 5470 - 5725 MHz, DFS
>    - EN 301 893
>  * 5925 - 6425 MHz
>    - 23 dBm, LPI
>    - EN 303 687

Please list out each section / line within [1] that each rule above
refers to. Otherwise it is impossible to verify.

ChenYu

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

