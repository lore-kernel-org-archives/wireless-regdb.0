Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FE31C3ABD8
	for <wireless-regdb@archiver.kernel.org>; Fri, 16 May 2025 08:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rgY2k+/bfc7S80mxCtN8QCzORKg3p22Pu3DOnpmU7Fc=; b=PABpJv9fPvD7ij
	+yv5uLTFt7OEf9wQrXEyTOxY0wNrIT0mi6NCRG2mnYRu+fwDVxapix0n1OKTPLUeq7CaSIf0xtX1w
	6wK+SOLPzXorI0bp2kCpu2p0zMZRablDtknAjYEHcciPx7AJSQZ33AGK+QxBqGBOMm8J13OCt8ema
	QdJZZjv8O3r34E51kZitwZQmv06+tf66H7q03ozl0sIzfK9//LJqDUWevQpDpPrOYWidmD8Yk9uKQ
	PKJzz2SLm9s7YYnEOpGDtlkt+xjHw24Tpg2MFGGzGXrI8j8NJAFhkybQNFxcfzIkmDuT3TWJ7Gz5m
	aYwK4D4y1lYpKuzNHQYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFqCI-00000002lSU-3KGg;
	Fri, 16 May 2025 08:13:38 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFq5Y-00000002kLg-2xq9
	for wireless-regdb@lists.infradead.org;
	Fri, 16 May 2025 08:06:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2347E443C7
	for <wireless-regdb@lists.infradead.org>; Fri, 16 May 2025 08:06:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00011C4CEE4
	for <wireless-regdb@lists.infradead.org>; Fri, 16 May 2025 08:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747382800;
	bh=y2FmrTpq5qO+ynB2zbZ/yHGzPUXDuBcfOytFW88D3ts=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=gZd7yk37uC2dPqqgtYd9HGUWYxgvFO+Sq2NS9fGt/OEvvKueiEP5gaj5rn0Kdz5K5
	 9QjyzT+94Ixe0RKeptZMzmDTD2MWkpB81j72X3gzl9PUdtBgv8F3360dVlZ40sdzvG
	 CSEgJst829Hk/gq2s3ZEp5F7lBWf/Lc+SCTMMHdDnTBarVsaEl6RgDh5eA1Z62+hLA
	 F0Ohzpo/A92oBR7M73Xflbizs+tC40YlF23iLDjLxkwi/PHCmqYfxnRg9Y2l6xZ307
	 WghJ1iBSlnae2a2VNk5MASgeh5A+a5GqTz1FWbvBK0wHLfAl0uHMHaRO5QIFgpp5iG
	 MTfa1s6bDhTMg==
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-326ca53a7e8so15286261fa.3
        for <wireless-regdb@lists.infradead.org>; Fri, 16 May 2025 01:06:39 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWIQMJxP78rVVqd72Ghdmc7WyMxtVFirVL8lR6IZpqzMVH7ekwVm7akhuE7AWcN+qdOVnaRgdmUSgLSzMQaLg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxApvO/W43tFDD+xwTCIPjR4Lj7WX8+LSCELov6OM4kkHwkOLFM
	Z6PNVIccNnrYf25LVmI7IsKIST8574OlccBGkus8w9je/QAfOWIdeRpDRPQguSiHW4T/pLMIE/j
	qodS0aAvjg0b0DHo1E0L2XpTjqZHOJ5I=
X-Google-Smtp-Source: AGHT+IEYT5K6NfsjBzUNGkk4Dl1sgXXb0zXwKytE47oZnbluhUjF99fwYCaOoVF1F61tfs93AsdL2P6Bnlxd6e4Q7Ok=
X-Received: by 2002:a2e:a9a5:0:b0:30d:b3f3:bcc6 with SMTP id
 38308e7fff4ca-328096dd6aemr5628841fa.21.1747382798138; Fri, 16 May 2025
 01:06:38 -0700 (PDT)
MIME-Version: 1.0
References: <2199341745004929@mail-sendbernar-production-main-32.klg.yp-c.yandex.net>
In-Reply-To: <2199341745004929@mail-sendbernar-production-main-32.klg.yp-c.yandex.net>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 16 May 2025 16:06:25 +0800
X-Gmail-Original-Message-ID: <CAGb2v64+zxuEr609OPZ+kDHiTU=KuC1fjg23BD+sa5vs+hzUgA@mail.gmail.com>
X-Gm-Features: AX0GCFsARbd5o9HZF8YIR6AnokxEa-j_NfdqxKR-BgAiBas48peWh4LKM8PYc2M
Message-ID: <CAGb2v64+zxuEr609OPZ+kDHiTU=KuC1fjg23BD+sa5vs+hzUgA@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Vietnam (VN)
 for 2025
To: Duy Hoang <duy@etylix.me>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_010640_783864_0CD3158B 
X-CRM114-Status: GOOD (  16.05  )
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

Sorry for taking so long to get to this.

On Sat, Apr 19, 2025 at 3:35=E2=80=AFAM Duy Hoang <duy@etylix.me> wrote:
>
> According to [1] and [2]:
> - Update frequency range to match with Circular
> - Update units from dBm to mW to match values listed in Circular
> - Add AUTO-BW flags to allow the use of 160 MHz based on other rules
> - Update to allow use of 6 GHz band
>
> Detail:
> * 2400 - 2483.5 MHz
>   - 200 mW (23 dBm)
> * 5150 - 5250 MHz
>   - 200 mW (23 dBm)
>   - Indoor only
> * 5250 - 5350 MHz
>   - 200 mW (23 dBm)

If my translator app is working correctly, this is 200 mW if TPC is
implemented, and 100 mW if not. Since Linux currently doesn't have TPC,
it should be 100 mW.

>   - DFS
> * 5470 - 5725 MHz
>   - 1000 mW (30 dBm)

Same here. 500 mW instead.

>   - DFS
> * 5725 - 5850 MHz
>   - 1000 mW (30 dBm)
> * 5925 - 6425 MHz
>   - LPI
>     * 200 mW (23 dBm)
>     * Indoor only
>   - VLP
>     * 25 mW (14 dBm)
>     * Indoor and outdoor
>
> [1] https://datafiles.chinhphu.vn/cpp/files/vbpq/2021/10/08-btttt.signed.=
pdf

This document also lists 60 GHz usage, would you consider adding it as well=
?


Thanks
ChenYu

> [2] https://mic.gov.vn/van-ban-phap-luat/25099.htm
>
> Signed-off-by: Hoang Pham Anh Duy <duy@etylix.me>
> ---
>  db.txt | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index e331d4f..eb882de 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -2001,12 +2001,16 @@ country VI: DFS-FCC
>         (5490 - 5730 @ 160), (24), DFS
>         (5735 - 5835 @ 80), (30)
>
> +# Source:
> +# https://datafiles.chinhphu.vn/cpp/files/vbpq/2021/10/08-btttt.signed.p=
df
> +# https://mic.gov.vn/van-ban-phap-luat/25099.htm
>  country VN: DFS-FCC
> -       (2402 - 2482 @ 40), (20)
> -       (5170 - 5250 @ 80), (17)
> -       (5250 - 5330 @ 80), (24), DFS
> -       (5490 - 5730 @ 80), (24), DFS
> -       (5735 - 5835 @ 80), (30)
> +       (2400 - 2483.5 @ 40), (200 mW)
> +       (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
> +       (5250 - 5350 @ 80), (200 mW), DFS, AUTO-BW
> +       (5470 - 5725 @ 80), (1000 mW), DFS, AUTO-BW
> +       (5725 - 5850 @ 80), (1000 mW), AUTO-BW
> +       (5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
>
>  # Source:
>  # http://www.trr.vu/attachments/category/130/GURL_for_Short-range_Radioc=
ommunication_Devices2.pdf
> --
> 2.46.0.windows.1
>

