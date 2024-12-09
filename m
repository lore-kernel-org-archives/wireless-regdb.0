Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CE67E7717D
	for <wireless-regdb@archiver.kernel.org>; Mon,  9 Dec 2024 04:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=806jIJIlshumilhZrHJZRNNV3Lw4kv1cxhV2n+OBVOg=; b=opLAa4b/Z7tKtY
	8V2eNjVBfa5Kwe2astwjQ1mNLlyRjVpt2vqr6gLeMEL64okxe40sYmGY6wvsbYjGEvII7XW1DPwox
	C/D1l0N0mqmr2aWMuDQfcwFmADOToupojnCglYR4hTtAF4i4ZxenybtoncILD2yGQ3xLTlOvOQdk+
	HEA+J6fq7RWkY8G/ud1o4CEI8cM/yPtehukNm/Nf5Sq6cEpGBz/YNPJ0t8eM0YDGpwfB2eiEDj3Ir
	YNX5cPXbJN1NpscJSu52wNmXDwkL1qt9zV+rGUsCK+OZOWJgyZefCfYFLAdfbMy64ifi1k0f3DRq5
	fj65Ken/CexL/anSg9TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKVLf-00000006P6H-1QmB;
	Mon, 09 Dec 2024 04:26:19 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKVLG-00000006P4H-2zOe
	for wireless-regdb@lists.infradead.org;
	Mon, 09 Dec 2024 04:25:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id D0DF4A40E2B
	for <wireless-regdb@lists.infradead.org>; Mon,  9 Dec 2024 04:24:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 274D7C4CEDD
	for <wireless-regdb@lists.infradead.org>; Mon,  9 Dec 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733718353;
	bh=a18/zr79HLAx1u5NzZIqONZGjEbLZ5sSxTYmHPBdcfc=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=TDVG8F4FqKrrg5K783w7xGjwPMcEzVxAck4sdCQxsYsL5ogPGJ/OuIjVXgA0ym9ry
	 ygLntVcw+0jhkTNNF9jBNueD1RVEmkJ+hHcjgzbseGJuRGaPEHnjRGYOqxh1cyizi/
	 2/qxcv6otkDvyOSHPjxZXsNCqt/d74Qj3jwGOvq/V0V4AyVZQztQrv0h0MoxRtiRn1
	 iGRP9Fv2yubhpS7OrMepDyB01HuWcWBFD0Nag0y0wpLSwUeRB6zWhAdBPUvg5P1Zsx
	 fSvyH2aI2RwA7h1OlJ5F0wPBS9+dB56TW7Cjz0geeDbkAVHP5kkvdT3TlAJ2pCHvY1
	 vPV3J4DUd+n9Q==
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ffd6af012eso44258241fa.2
        for <wireless-regdb@lists.infradead.org>; Sun, 08 Dec 2024 20:25:53 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUcW3e4d+kk/zMjw69iKPF2tx6ND8wVYmHvTb9j2hx23jzQLy3ySFTM2mjl1Uf++J2YhpuYDqsX4ZV8jm60Nw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyB0XkppiN32uIlpwJvK+k2s62XqHcfBemCH58xoDC1bELY08T8
	BiHC/1gqsElJPvij8nRcumTKJiBFRJoPeGSAd7wb8U15LShDJgQ/k5HRkDi4YI/8Cv5qAfBXtsf
	EWxX39vp3YERR4NW8l3VCslOTYuI=
X-Google-Smtp-Source: AGHT+IHdpR2l0npUPKmdgIdV6DrHnNxRjk8qhI9t4NhcTZazwelWM1wvRaUH1avO7WQdBxZucD2IYUYEql6TUCcneSA=
X-Received: by 2002:a05:651c:1a0c:b0:2ff:d3c6:9cf4 with SMTP id
 38308e7fff4ca-3002f7957fbmr29487591fa.1.1733718351466; Sun, 08 Dec 2024
 20:25:51 -0800 (PST)
MIME-Version: 1.0
References: <20241021071506.24320-1-pkshih@gmail.com>
In-Reply-To: <20241021071506.24320-1-pkshih@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 9 Dec 2024 12:25:38 +0800
X-Gmail-Original-Message-ID: <CAGb2v64FojDNF+9fhdE5LhMJRYr0Tk9s+uPkVYD=pYsdHLggrA@mail.gmail.com>
Message-ID: <CAGb2v64FojDNF+9fhdE5LhMJRYr0Tk9s+uPkVYD=pYsdHLggrA@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Oman (OM)
To: Ping-Ke Shih <pkshih@gmail.com>, Johannes Berg <johannes@sipsolutions.net>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_202555_054658_3A291046 
X-CRM114-Status: GOOD (  16.89  )
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

On Mon, Oct 21, 2024 at 3:15=E2=80=AFPM Ping-Ke Shih <pkshih@gmail.com> wro=
te:
>
> From: Ping-Ke Shih <pkshih@realtek.com>
>
> Sultanate of Oman, Telecommunications Regulatory Authority released
> Technical Specifications for Wideband and Broadband Data Transmission
> Systems [1].
>
> * 2400-2483.5 MHz
>   - 100 mW max. mean EIRP
>   - indoor use only
> * 5150-5250 MHz
>   - 200 mW max. mean EIRP
> * 5250-5350 MHz
>   - 200 mW max. mean EIRP
>   - TPC: if TPC is not used, then the maximum permitted mean EIRP and the
>          corresponding mean EIRP density limits shall be reduced by 3 dB.
>          (20 dBm is adopted)
>   - DFS
> * 5470-5725 MHz
>   - 1 W max. mean EIRP
>   - TPC: if TPC is not used, then the maximum permitted mean EIRP and the
>          corresponding mean EIRP density limits shall be reduced by 3 dB.
>          (27 dBm is adopted)
>   - DFS
> * 5725-5850 MHz
>   - 2 W max. mean EIRP
>   - TPC: FWA systems operating in frequency band 5725-5850 MHz shall
>          employ TPC with a range of at least 5 dB.
>          (28 dBm Is adopted)
>   - Outdoor use only
>     (Since NO-INDOOR flag is not supported by current format, don't add
>      this entry.)

That's one requirement I haven't seen before.

Johannes, should the kernel have a "NO-INDOOR" flag? Or maybe fixed
wireless access devices are special enough that they are locked down
and we don't care?

>   - DFS
> * 5925-6425 MHz
>   - 200 mW max. mean EIRP
>   - Indoor use only
> * 57-66 GHz
>   - 40 dBm max. mean EIRP
>   - Indoor use only
>
> [1] https://tra.gov.om/DownloadFile.jsp?type=3DDocumentList&code=3D474
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
>  db.txt | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index a9a9ba48f42d..32b533e800f5 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1463,10 +1463,12 @@ country NZ: DFS-ETSI
>         (57000 - 71000 @ 2160), (40)
>
>  country OM: DFS-ETSI
> -       (2402 - 2482 @ 40), (20)
> -       (5170 - 5250 @ 80), (20), AUTO-BW
> -       (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> -       (5490 - 5710 @ 160), (27), DFS
> +       (2400 - 2483.5 @ 40), (100 mW), NO-OUTDOOR
> +       (5170 - 5250 @ 80), (200 mW), AUTO-BW
> +       (5250 - 5350 @ 80), (20), DFS, AUTO-BW
> +       (5490 - 5725 @ 160), (27), DFS
             ^
           typo? It says 5470 above.

I can fix it when applying.

ChenYu

> +       (5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
> +       (57000 - 66000 @ 2160), (40), NO-OUTDOOR
>
>  # Source:
>  # http://www.asep.gob.pa/images/telecomunicaciones/Anexos/PNAF-dic2015.p=
df
> --
> 2.25.1
>

