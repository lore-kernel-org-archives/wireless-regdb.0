Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84153C3DA60
	for <wireless-regdb@archiver.kernel.org>; Thu, 18 Jul 2024 04:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wy/Tp+S4SzCfSB3MBLoDS34Db3iGIMN6BJKOaiWBu10=; b=4pY1TssG4hnnRi
	XVZIZL8+HsYXzwe6J5J5Sil+e59i0LSE1b6RhdLmto7GXIAKCoiAiRA1wt5OpDs2ZOaBNNrVw+mpc
	TnhjV9QmpYgLjIEOPczGsrdZrDklFBi1R87eQwuxX/WpZj8cEZsZayPAhlwuJFZuRoT6EVxWTPNVP
	hEXYbixGYXEB8JcgFbGdOWobxECwMRcwaZIHpfzY9IbN/KIascPZBhSSaD8LSxKZJU201BryyXPVh
	JpFvtTLVPukdilRdoggi1/yZCZD1Urfi04edvlmcK/iTfq8ZpF9BtPKg7ztiSElK9+q1foSyiAwm/
	oUYW495huueoj+QiTdSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUJ06-0000000Fl9X-0Yyr;
	Thu, 18 Jul 2024 04:44:18 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUIzs-0000000Fl88-1WaS
	for wireless-regdb@lists.infradead.org;
	Thu, 18 Jul 2024 04:44:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4B165CE1911
	for <wireless-regdb@lists.infradead.org>; Thu, 18 Jul 2024 04:44:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86093C4AF0A
	for <wireless-regdb@lists.infradead.org>; Thu, 18 Jul 2024 04:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721277841;
	bh=ZRDC4dHcF/WcX8gCYsuspFUop2dQtRDN/rE9HjjCRSU=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=Mz70H359F7LVtlyY8SeAvdc8Ybv7HBH6O8ge0qYVI1r5OecjQ+OdjMwd5uDQJNuEU
	 eM+LHOFp0GmQWzTbm/L9JTEMgd518QSQXMSyy+kRLjEuaEgbI5/urjmaq/XTZlpcJ9
	 ipLnbuNLrgPgptOVV06jlUf36rn4l+ggAd+OtSnSa7nSLuLWcwKkeRLxhbskVjedU1
	 3HYUAIH1jhlXfRfGt6AyL/qNclrhFpDGjLtpBXP+HCft4ZyrZl0AyKN8lJdkoGcuZW
	 1hPyXvzHwh7Ks7i/h6yK/Eibb5wfWllzo4ZlUyMljuM37weq3ghx9KNePM4V9KeJB9
	 rLFGmkvEw8Hvg==
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2ee9b1b422fso4388331fa.0
        for <wireless-regdb@lists.infradead.org>; Wed, 17 Jul 2024 21:44:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVtT31eTbqnvp6YPxUhe7SQQwm7POSzHJjRvcuCdOcm9FQTjcaYT9AV4xms+kQw/LrmDrHtVy1GidPGzOopRCPqRiOmlvJU+lcxZ27EMOeY/Jny
X-Gm-Message-State: AOJu0Ywc1Of9ps/PRPU1NluHdy4jokF3xUGYcNF6dWtNEhZSvI9Lx30E
	rmFu3RXCvvTp8swrTgmeN85B+LeQ8LHDrpxWcxOxjpVftgtaG2bC+E4svlcGvS+4PIpMk0LEM2Y
	zUW85GHU5Y0q1ighBEvBg/NpUoTM=
X-Google-Smtp-Source: AGHT+IFvQlfoJbyn8/5uIxJdMdaYOBwoIliZ2UEO1YIkhUi565xheTeo35Xejr4Vn0ydaiHQnIgf/baFvGmOBkd/Ark=
X-Received: by 2002:a2e:9ed9:0:b0:2ee:daf3:5d30 with SMTP id
 38308e7fff4ca-2ef0649b2b2mr3327151fa.0.1721277839845; Wed, 17 Jul 2024
 21:43:59 -0700 (PDT)
MIME-Version: 1.0
References: <20240705060613.28909-1-pkshih@gmail.com> <20240705060613.28909-4-pkshih@gmail.com>
In-Reply-To: <20240705060613.28909-4-pkshih@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 18 Jul 2024 12:43:47 +0800
X-Gmail-Original-Message-ID: <CAGb2v66Xga1j_VELV1XXzOVxr_i6YdmFCSDRYmxOtq9rj3GfBQ@mail.gmail.com>
Message-ID: <CAGb2v66Xga1j_VELV1XXzOVxr_i6YdmFCSDRYmxOtq9rj3GfBQ@mail.gmail.com>
Subject: Re: [PATCH 4/5] wireless-regdb: Update regulatory info for El
 Salvador (SV) on 6GHz
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_214404_796866_92783C1E 
X-CRM114-Status: GOOD (  14.17  )
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

On Fri, Jul 5, 2024 at 2:06=E2=80=AFPM Ping-Ke Shih <pkshih@gmail.com> wrot=
e:
>
> From: Ping-Ke Shih <pkshih@realtek.com>
>
> The General Superintendency of Electricity and Telecommunications Makes
> Knowledge to the General issued resolution No. T-0408-2023.
>
> Free use within the entire band for WLAN (WiFi) application, from
> 5925 MHz to 7125 MHz, must have following technical and operation
> conditions:
>  - access point
>    * P.I.R.E 30 dBm
>    * spectral density of P.I.R.E. 5 dBm/Mhz
>  - client
>    * P.I.R.E 24 dBm
>    * spectral density of P.I.R.E. -1 dBm/Mhz
>  - Indoor use only permitted

Please explicitly mention that the PSD limits the rule to 12 dBm.

ChenYu

> [1] https://www.siget.gob.sv/actualizacion-de-cuadro-nacional-de-atribuci=
on-de-frecuencias-t-0408-2023/
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
>  db.txt | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/db.txt b/db.txt
> index d6b14c055afb..2a4f1ed524c1 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1736,11 +1736,14 @@ country SR: DFS-ETSI
>         (5250 - 5330 @ 80), (20), DFS, AUTO-BW
>         (5490 - 5710 @ 160), (27), DFS
>
> +# Source:
> +# https://www.siget.gob.sv/actualizacion-de-cuadro-nacional-de-atribucio=
n-de-frecuencias-t-0408-2023/
>  country SV: DFS-FCC
>         (2402 - 2482 @ 40), (20)
>         (5170 - 5250 @ 20), (17)
>         (5250 - 5330 @ 20), (23), DFS
>         (5735 - 5835 @ 20), (30)
> +       (5925 - 7125 @ 320), (12), NO-OUTDOOR
>
>  country SY:
>         (2402 - 2482 @ 40), (20)
> --
> 2.25.1
>

