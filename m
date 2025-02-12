Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27434C02198
	for <wireless-regdb@archiver.kernel.org>; Wed, 12 Feb 2025 08:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qbV4EZs0blHFbUhU+vdbn7aaPSXsVj5tSSz2jM1WhBU=; b=yALOqB3mveU+oM
	3pfHrTbZb0K8XtQhJSzrIhSrTeKVQQJ5x7REt3xHb7xZTnb8lVa/e3M9amIdBgnL+m5lGeYdVv5zk
	HRwK5bbXScqBPsPxR69xgAid25E3qdPvH54OE5FepVmYqW0oasdmJQtd+XK9CfQ7yG2yLcNuuT9Zs
	pv/2QNpHKN327vGGSdX9vad09J6sckqwwLEFtyAXqid7Grjl/+IvjlmsGELP12uTkDnEQ0sbJgh+b
	kzVSKXIrEqgHZMIMT77h54EP5Cz5JrmwuZeczSwQbUjM7WqCpNkZvvpvAlWM5BameBZrA55hq9vaQ
	1BKN0L3Itia3SdPrQtQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ti8A5-00000006dX0-30H8;
	Wed, 12 Feb 2025 08:32:01 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ti86l-00000006clO-0TC1
	for wireless-regdb@lists.infradead.org;
	Wed, 12 Feb 2025 08:28:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 65754A40A39
	for <wireless-regdb@lists.infradead.org>; Wed, 12 Feb 2025 08:26:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76CB3C4CEE2
	for <wireless-regdb@lists.infradead.org>; Wed, 12 Feb 2025 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739348913;
	bh=du2ZDFxOedwumpbXAyf8Sl3rhnF49lZYu/yjJloD6Nc=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=Jf5N4oWnAA999TfLN+35KTEltBCNSRFS5AitvKjt82xXIMGEZgRXkLqfl+WoNnteu
	 iDc1jwE9Z+PvoIZeGRYbWpnNpJ5f3iem86gfZPXSqHMl+37Pu9dGMu7fWQRGl+dq1O
	 Id7AHea2AfwODmAEoWGv5tPZKhGVLVCx3wEGWR0CsBrBrq7xOSgWgMOmu2vJD7vHsD
	 pgA2GpUXXGH2aTBbE7cf0PjPBvEIo+M047FKuUkMx7PBYwMASsKAd5vspq+RCzs9NE
	 0i6Afq4BFDl6kB/OYOle8cuGtA8zkWQH5VFhhSNkZtl/G/u1QGiiP9O43sfL2DgpzY
	 uoU1hOcDREvDg==
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5450681b606so3844023e87.0
        for <wireless-regdb@lists.infradead.org>; Wed, 12 Feb 2025 00:28:33 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXoMnvOxgisZDfBO3SXN1oR9ZI/UlrxM8+hTw0tfq9cG6Gkqvai+bE1qgw8YwIUd6R8Ni3LyFIDdvkoFnT1Uw==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywa3jlrfX1DmLQKYrHuqt+VVQTtYWAOOleLMhjOTYxpN+pnVvcU
	+E5E/Lagryfwxg1wTrUiMsGEQqH5yHH1okMVi2vF8AE7AVcbaQVMzuiKr1ADki4Hh25pjY0JT9a
	DcORdQRS88wBTsQ5v/aW/HCHp7e4=
X-Google-Smtp-Source: AGHT+IGFnrrPdBHO44+WsFKu0eAfeRRvAyPKO/jrBqpD/aV+EkOMQUklikciR1AXPT5iFQudplZn32CVm6q9Xw5lC7A=
X-Received: by 2002:a05:6512:3b23:b0:545:aaf:13fd with SMTP id
 2adb3069b0e04-54518166e24mr576754e87.51.1739348911789; Wed, 12 Feb 2025
 00:28:31 -0800 (PST)
MIME-Version: 1.0
References: <20241210030037.6380-1-pkshih@gmail.com>
In-Reply-To: <20241210030037.6380-1-pkshih@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 12 Feb 2025 16:28:18 +0800
X-Gmail-Original-Message-ID: <CAGb2v65PTLYoHeTFa80EB51_WfzJ+LBAhn=+Kn9hsxdtuR-dnQ@mail.gmail.com>
X-Gm-Features: AWEUYZkXbu7T2cJfoMw6Z-fewxG8wK35p2KNEy6lHBsdTLLoXZ-gZ6RBDfOVYDQ
Message-ID: <CAGb2v65PTLYoHeTFa80EB51_WfzJ+LBAhn=+Kn9hsxdtuR-dnQ@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Cayman Islands
 (KY) for 2024
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_002835_281212_7421171D 
X-CRM114-Status: GOOD (  17.29  )
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

On Tue, Dec 10, 2024 at 11:00=E2=80=AFAM Ping-Ke Shih <pkshih@gmail.com> wr=
ote:
>
> From: Ping-Ke Shih <pkshih@realtek.com>
>
> Utility Regulation and Competition Office, Cayman Islands, released
> Operating Parameters for Wireless Data Transmission (including WiFi)
> Services On 18th November 2024 [1].
>
> Both FCC and EU reference are permitted. Adopt FCC reference.
>
> * 2400 - 2483.5 MHz
>   - Part 15.247
>     * 1 Watt
>       For systems using digital modulation in the 902 - 928 MHz,
>       2400-2483.5 MHz, and 5725 - 5850 MHz bands: 1 Watt.
>
> * 5150 - 5350 MHz
>   - Part 15.407
>     * 250 mW
>       For client devices in the 5.15-5.25 GHz band, the maximum conducted
>       output power over the frequency band of operation shall not exceed
>       250 mW provided the maximum antenna gain does not exceed 6 dBi.
>       In addition, the maximum power spectral density shall not exceed
>       11 dBm in any 1 megahertz band.
>
>       For the 5.25-5.35 GHz and 5.47-5.725 GHz bands, the maximum conduct=
ed
>       output power over the frequency bands of operation shall not exceed
>       the lesser of 250 mW or 11 dBm + 10 log B, where B is the 26 dB
>       emission bandwidth in megahertz. In addition, the maximum power
>       spectral density shall not exceed 11 dBm in any 1 megahertz band.
>     * DFS: 5.25-5.35 GHz
>
> * 5470 - 5725 MHz
>   - Part 15.407
>     * 250 mW
>       For the 5.25-5.35 GHz and 5.47-5.725 GHz bands, the maximum conduct=
ed
>       output power over the frequency bands of operation shall not exceed
>       the lesser of 250 mW or 11 dBm + 10 log B, where B is the 26 dB
>       emission bandwidth in megahertz. In addition, the maximum power
>       spectral density shall not exceed 11 dBm in any 1 megahertz band.
>     * DFS: 5.47-5.725 GHz
>
> * 5725 - 5875
>   - Part 15.407
>     * 1 W
>       For the band 5.725-5.85 GHz, the maximum conducted output power ove=
r
>       the frequency band of operation shall not exceed 1 W.
>
> * 5925 - 6425 MHz
>   - Part 15.407 (but no description; reference [2])
>     * -1 / MHz (12 dBm is adopted)
>       Accordingly, the Commission concludes that the appropriate maximum
>       power spectral density for low power indoor client devices in this
>       band is 6 dB below the limit for access points (or -1 dBm/MHz based
>       on the adopted PSD limit).
>     * NO-OUTDOOR
>
> * 57 - 71 GHz
>   - Part 15.255 (but no power value; reference [3])
>     * 40 dBm
>       The average power of any emission shall not exceed 40 dBm and the
>       peak power of any emission shall not exceed 43 dBm.
>
> [1] https://www.ofreg.ky/viewPDF/documents/2024-11-19-16-28-50-OfReg-WiFi=
-Permitted-Parameters-V2.pdf
> [2] https://www.federalregister.gov/documents/2020/05/26/2020-11236/unlic=
ensed-use-of-the-6-ghz-band
> [3] https://docs.fcc.gov/public/attachments/FCC-16-89A1.pdf
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
>  db.txt | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 24195fcac004..37597f9add41 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1066,12 +1066,15 @@ country KW: DFS-ETSI
>         (5470 - 5825 @ 160), (24), DFS
>         (5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
>
> +# Source: https://www.ofreg.ky/viewPDF/documents/2024-11-19-16-28-50-OfR=
eg-WiFi-Permitted-Parameters-V2.pdf
>  country KY: DFS-FCC
> -       (2402 - 2482 @ 40), (20)
> -       (5170 - 5250 @ 80), (24), AUTO-BW
> -       (5250 - 5330 @ 80), (24), DFS, AUTO-BW
> -       (5490 - 5730 @ 160), (24), DFS
> -       (5735 - 5835 @ 80), (30)
> +       (2400 - 2483.5 @ 40), (1000 mW)
> +       (5150 - 5250 @ 80), (250 mW), AUTO-BW
> +       (5250 - 5350 @ 80), (250 mW), DFS, AUTO-BW
> +       (5470 - 5725 @ 160), (250 mW), DFS, AUTO-BW

Sorry for the late reply.

Can you follow the TW example and extend this band by 5MHz and also
drop the AUTO-BW?

> +       (5725 - 5875 @ 80), (1000 mW), AUTO-BW

AUTO-BW for this band doesn't make sense. While the frequency ranges do
align up, the channel assignments don't, so there's no way one can combine
this and the previous band for a 160 MHz channel.


Thanks
ChenYu

> +       (5925 - 6425 @ 320), (12), NO-OUTDOOR
> +       (57000 - 71000 @ 2160), (40)
>
>  # Source:
>  # http://adilet.zan.kz/rus/docs/V1500010730
> --
> 2.25.1
>

