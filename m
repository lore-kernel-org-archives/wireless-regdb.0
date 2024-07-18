Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04712C3DA60
	for <wireless-regdb@archiver.kernel.org>; Thu, 18 Jul 2024 04:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VMSlL6CxrI528gHhmTXRAJNirXFHa9HxzS9XIDjiQ48=; b=FhW9nZ308Scem2
	1VhbY3gzjk3Q1CcuU78+1vwrJrDwXpDnTsUbpgpfW+1CDspTXeY8F01RM3125lLivVGSPt7K893yh
	hHhj0rtF0xaak8YOy5zc++GOVBf1XbA/9Xiq27hQiBBG4NWH+yTM5jE4FSh6M46aTdGYfkoT78qoI
	O+hk26DW29wdD3eV5S9MV9Dloa+LjZwZ24ICYJWYJ+CGF9qq0g0fkU2ddpgFGBww5E0spjoP9OsKU
	C6v5rXWihpGZj+8NOcOd/lZhW7B9+NkT1q4UCyCylEIJbHhywKYw6qCF5/TYN2gCkaIM3w9NTHc7p
	Jw/4yz32uzk1iPvgw8Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUIy0-0000000Fkxq-04Qt;
	Thu, 18 Jul 2024 04:42:08 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUIxw-0000000Fkx8-2QNi
	for wireless-regdb@lists.infradead.org;
	Thu, 18 Jul 2024 04:42:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 9C3D3CE191B
	for <wireless-regdb@lists.infradead.org>; Thu, 18 Jul 2024 04:42:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B140C4AF0C
	for <wireless-regdb@lists.infradead.org>; Thu, 18 Jul 2024 04:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721277721;
	bh=4rCkh4Y5tFWEKxjdy2NSfbu6yS8Qfl9dSLmQRD51zCM=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=JESp2OyC3LD2Xjl4Bs82IyJjqSqT0OBDcQVM9JZbtgMiDHU15poYEusbuunCdibej
	 Q001JTrw28miMZe2IA6YMB4SxjP008N57WdvcYarAHHmn//fHNM2NtN/C8RMXiysmJ
	 vfZTUaXR4acw4loMmXBmkgwXvaxsRq/i5Ed2xMnz3VEhFouU7mikd6Bwu+iH6MDbDf
	 rUWRT8DDtsfalRKwcxG4Is4w2IMm1kUcURC7VESjzwfEMvchIl0iBl+ZbB12AICxE4
	 R4ulJPmFCRjHDcrmJGPfYDr7+AV+1rqoAXx4NkMI5NebWDE/KJUfLpSmYwdqtDxmqB
	 A2QAr5naKFEZw==
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2ebed33cb65so4028351fa.2
        for <wireless-regdb@lists.infradead.org>; Wed, 17 Jul 2024 21:42:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUH7ErRGZlYrRtLzfXUPWi/4D2AaPArvUd2wO/WlfXTL2cfaPodX5jAjF7mhKJ37582ZfoKOuJtOvoclK8d/goqjSF7cwCm75l5z1avXwdVN2ac
X-Gm-Message-State: AOJu0YzNG8gh5iPTXJL6DeAd5RbK3p7UUs2rvXQhuZWISTkF/tf12R4P
	SWOx7gP/ha5NRxqtnssN5RHR6L0jRDq+lywcZ0EkQA5GWq4m42/f2NnAU0473kc3yHXPMqP/dtr
	AS/89VV3sgV3J1Hw7YrCJI4lZrfM=
X-Google-Smtp-Source: AGHT+IGnu+6eqtqrXqcfw3BIcpmlRagcob58rqe6uZr+Jqmpq7ct9P7VbWUf3lX2MeHg7XWG8rk6Zc7KqzpmVSkClEg=
X-Received: by 2002:a2e:888a:0:b0:2ec:18e5:e686 with SMTP id
 38308e7fff4ca-2ef05d4384emr8194621fa.33.1721277719979; Wed, 17 Jul 2024
 21:41:59 -0700 (PDT)
MIME-Version: 1.0
References: <20240705060613.28909-1-pkshih@gmail.com> <20240705060613.28909-2-pkshih@gmail.com>
In-Reply-To: <20240705060613.28909-2-pkshih@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 18 Jul 2024 12:41:47 +0800
X-Gmail-Original-Message-ID: <CAGb2v67QC3_L740rctZeJTagF888_5jhQinPNVkfEy_pEgvKNg@mail.gmail.com>
Message-ID: <CAGb2v67QC3_L740rctZeJTagF888_5jhQinPNVkfEy_pEgvKNg@mail.gmail.com>
Subject: Re: [PATCH 2/5] wireless-regdb: Update regulatory info for Peru (PE)
 on 6GHz
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_214204_819378_6F9D1555 
X-CRM114-Status: GOOD (  12.15  )
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
> Ministerial Resolution -2021-MTC/01 decided
>
> For the band 5925-7125 MHz, low power indoor case of use.
>  - access point
>    maximum EIRP: 30 dBm
>    Limited power spectral density: 5 dBm / MHz
>  - user devices
>    maximum EIRP: 24 dBm
>    Limited power spectral density: -1 dBm / MHz

Please explicitly mention that the PSD limits the rule to 12 dBm.

Otherwise this looks good.

ChenYu

> [1] https://cdn.www.gob.pe/uploads/document/file/1861732/Resoluci%C3%B3n%=
20Ministerial%20nro%20373-2021-MTC/01.pdf
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
>  db.txt | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/db.txt b/db.txt
> index 266ba2d48731..2e862b322f13 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1443,12 +1443,15 @@ country PA: DFS-FCC
>         (5725 - 5850 @ 80), (36)
>         (57000 - 64000 @ 2160), (43)
>
> +# Source:
> +# https://cdn.www.gob.pe/uploads/document/file/1861732/Resoluci%C3%B3n%2=
0Ministerial%20nro%20373-2021-MTC/01.pdf
>  country PE: DFS-FCC
>         (2402 - 2482 @ 40), (20)
>         (5170 - 5250 @ 80), (17), AUTO-BW
>         (5250 - 5330 @ 80), (24), DFS, AUTO-BW
>         (5490 - 5730 @ 160), (24), DFS
>         (5735 - 5835 @ 80), (30)
> +       (5925 - 7125 @ 320), (12), NO-OUTDOOR
>
>  country PF: DFS-ETSI
>         (2402 - 2482 @ 40), (20)
> --
> 2.25.1
>

