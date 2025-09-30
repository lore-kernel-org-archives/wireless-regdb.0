Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B583DCAC5BE
	for <wireless-regdb@archiver.kernel.org>; Tue, 30 Sep 2025 07:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Led2UwPQnyytnl+DzRHCByDRtvZjSP7e5YjaRCfpAKg=; b=JX7R+oM/s4OllIRKUDj41OC7RG
	MXHZdeqn9hOS7cpI0pw1mUxygtNXBgHdHPUzAtA0OywRpzMF1rLSuTsHbd2+z2daTvqg4VSenNScj
	wtFmfv3z4numr6nVty/7W8hbmQIRcrFCYScsu2yidyYLXym0qRyJjbE9QePdUoO6gDiCfjrn+40Y8
	HxKP/IsGDz/sbuGtPZuz2fIV99oH5ol23IpKavX+nIvDpAIBWEC9RwfrGMXds2m643h3osi2WKTa9
	YZorVFtZL+LOQRMmmO5mQaBUpmnFej5eXwzXuyQYasoq+Eg5vwB8pMTZJuX4ZV5koB0ePj+4zDLEN
	X1eeu4Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Ujt-00000004UCL-0nY5;
	Tue, 30 Sep 2025 07:25:33 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Ujr-00000004UBE-1vB9
	for wireless-regdb@lists.infradead.org;
	Tue, 30 Sep 2025 07:25:32 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-b3b27b50090so495740566b.0
        for <wireless-regdb@lists.infradead.org>; Tue, 30 Sep 2025 00:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759217129; x=1759821929; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Led2UwPQnyytnl+DzRHCByDRtvZjSP7e5YjaRCfpAKg=;
        b=RKlpDKfh05+jPTztjC6FajF1tfDsJt8F0Y5Vp7bpi638INXMTIM7u5YQL3PzjXX8gc
         XHE9TmH2PqIdlximE24WY12Yt1ahPjdXkaNrTauQvZyy8ZfUYELNANnRxzFDd5VxxqqE
         pTBwlDH/RMTtNvIXyMe0/U/CQ4CCkWCHYyu+BdtWUnp1tRQTau2toHDV8nqM8c2q2x+R
         zXAniqaWAI9tfZd1bbPM/oZnCwe+jO11k3o4xfg+775GGdmV+dvzmWOTjEgw6iwvss7u
         obzqvop1vxriQ+ZF972VM4rdsx3OtSVyjjySjna50/TlG7TLywONMBi69oc08PcF/1b8
         fojg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759217129; x=1759821929;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Led2UwPQnyytnl+DzRHCByDRtvZjSP7e5YjaRCfpAKg=;
        b=bbgNf8xogo9sJph/sPckEhOwZ+j9IPqk5KU6Y4lE0wQIYuGQZRjDcsFAchy1yvYIi2
         t4+sUO012VoRe7BRvCltgInCkKHXI2rPlKVb0WSIQ84dJAfXAqfQyCrqH0BYKjT3kWwm
         7CH6xBu/ZKpTOL7eejrB+eTtKeQgDAhDlQkCUoYF5pE7n1eIV4VeUJfWyTSf1noCZBRw
         VOT7tlg3omKIZjuWQPxvt1IO4K8TJ6lvOIXRrN5cu8C9GPBrrNaKbTxn0t/wuOER/OYq
         KXLaesYprLNUdfO2BbeUf7juKcAMc0up1mxbkIafF4LqtdJG7bK3WU4Zol5bHDJ2oy4A
         RyvA==
X-Forwarded-Encrypted: i=1; AJvYcCUCY03zctio4q2qJt3SnVwojc6sbHQTaCTBzBNKAgQExZ2jNf3uspwqiD/gsAxufbhlodI3rT/2+DYnnZ2U6g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzv4eXrvaSFlgIleN38u1Kj/cowL8GGNbHa5yDnLwbk5/ki/8jF
	Xtj3UP2QV7TG6wvzFmMdJpLdaOuElRYiHz2b7iUhoET9NpWgrgcpwNGOL4kU4SFV505f3vS1two
	S8OvT6rNj1brdpptzOfArAFJO5xa/az4=
X-Gm-Gg: ASbGncspFxqUp3/vBwBOkwzcyXv1lY8bDLvvo6ucmsXD55LlUaD3y0LjVgAcB/Qy47A
	6McOIXDVLp3bxAAEjcJt+CzAAXdnXE+KDw8qdOrdJSzFUNpFvoIOdKcBet93JqCPcjuTZN7gxVF
	cE/Jbc31WTpbwVazX3TGkdLEuJ1fSneIj3TeDHiGQf/SpuEiIMcRu+PKy7fLMPh39wdQZKMYhIe
	k89YMGgg9ETJrLZddVBhJLNZUrm66k=
X-Google-Smtp-Source: AGHT+IF4t4oQO0H59K5Coad4/8MzQEtuxgT8xWOt07Q8r4oPn0OPKDtCHe6XhgsPz7Ze7htZiZMbsS28x5RpC/AfOIk=
X-Received: by 2002:a17:907:3c8c:b0:b09:c230:12dc with SMTP id
 a640c23a62f3a-b34b7209e46mr2050761566b.8.1759217128969; Tue, 30 Sep 2025
 00:25:28 -0700 (PDT)
MIME-Version: 1.0
References: <20250930042948.427154-1-wens@kernel.org>
In-Reply-To: <20250930042948.427154-1-wens@kernel.org>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Tue, 30 Sep 2025 15:25:17 +0800
X-Gm-Features: AS18NWDi9ciIzyF1qDllkNFnyo0p18giZ057pSnyex9niropTawTNyln0E9z9bI
Message-ID: <CAHrRpunr+hbWiO1jY=jGZOiqGWcXFGYBSJi17+r-AgOMwssaXg@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Permit lower 6 GHz band for Kazakhstan (KZ)
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Ping-Ke Shih <pkshih@realtek.com>, Pavel Starosek <starosekpd@gmail.com>, 
	wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_002531_530606_B195A459 
X-CRM114-Status: GOOD (  19.29  )
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
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

Chen-Yu Tsai <wens@kernel.org> wrote:
>
> By Order of the Minister of Digital Development No. 564/NK dated
> September 19, 2024 [1], an amendment was made to the assignment of
> frequency bands, opening up the lower part of the 6 GHz band (5,945 MHz
> to 6,425 MHz) was opened up to "SRD (wideband data transmission systems)
> WAS/RLAN Data transmission systems/radio local area networks".
>
> The power is limited to 200 mW e.i.r.p. with a spectral density of 10
> mW/MHz. Only indoor use is permitted.
>
> While at it, also change the power limits to use mW units to match the
> official documents.
>
> Initial information was provided by the Wi-Fi Alliance website, which
> has a map [2] showing all countries that have enabled 6 GHz WiFi, and
> links to official documents. This document was not sufficient as it did
> not include power limits or other restrictions.
>
> A subsequent search found a blog post [3] providing details and titles
> of the official documents in English. An AI agent was used to search
> for the original text of said order [1] after rummaging through
> government websites in Russian and Kazakh failed to find anything.
>
> [1] https://adilet.zan.kz/rus/docs/V2400035100
> [2] https://www.wi-fi.org/regulations-enabling-6-ghz-wi-fi
> [3] https://www.onewindow.pro/blog-posts/6-ghz-band-regulation-in-the-republic-of-kazakhstan
>
> Signed-off-by: Chen-Yu Tsai <wens@kernel.org>
> ---
> If you received this patch, please help review it. The changes are
> based on translations of the original text / tables, so a second set
> of eyes would be appreciated.
>
>  db.txt | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 6e1ad30..16bcb32 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1136,11 +1136,12 @@ country KY: DFS-FCC
>  # http://adilet.zan.kz/rus/docs/V1500010730
>  # http://adilet.zan.kz/rus/docs/V1500010375
>  country KZ: DFS-ETSI
> -       (2400 - 2483.5 @ 40), (20)
> -       (5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
> +       (2400 - 2483.5 @ 40), (100 mW)
> +       (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
>         (5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW

The power limit of 5150-5350 MHz is 200 mW, maximum spectral density
e.i.r.p. 10 mW/MHz.

So, 5250 - 5350 should be 23 dBm or 200 mW.

> -       (5470 - 5725 @ 160), (20), NO-OUTDOOR, DFS
> -       (5725 - 5850 @ 80), (20), NO-OUTDOOR
> +       (5470 - 5725 @ 160), (100 mW), NO-OUTDOOR, DFS
> +       (5725 - 5850 @ 80), (100 mW), NO-OUTDOOR
> +       (5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
>         (57000 - 66000 @ 2160), (40)
>
>  country LB: DFS-FCC
> --
> 2.47.3
>
>

