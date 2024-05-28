Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26EC2C25B78
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 May 2024 13:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nmDNfhhfTxn9aHyeQ1YSxujOgbgVUhFyTVGTZhynHQk=; b=1A7P0FFGlrW2kU
	0dmSZmvoZjMeGYD6gsWB8KYj61MUmHTtkst/b9wZWEQM6g3kz9+IJzjsJ7KNdJll3mb2Nq3sLOvhi
	MnMD5lwYXMu1wbHG73HrjFffnW7Y+nrxl06EHu3hJ8ZzDvKrFX503dk7nacqRF96F2KB7TK2iyoEL
	5eEu2JeiSXjnzqBE3tyrYiFGzmx8vQLLrXx+16vLopVnuxrGqs2i+NysNhKqqPDl8JQDmsUtkMtAz
	kegQf+e5DEmxB1aJjMmPLwXiq8gDYv8MqDBc/VB8E6Nxij5yq57/101dLjP0Jvv657KBzJAKeqG50
	Xq6Hk5un2ij4jI2HKPYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBxIX-00000000tpr-4B8o;
	Tue, 28 May 2024 13:55:30 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBxIV-00000000toS-0zwW
	for wireless-regdb@lists.infradead.org;
	Tue, 28 May 2024 13:55:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 640306209A
	for <wireless-regdb@lists.infradead.org>; Tue, 28 May 2024 13:55:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B2EBC3277B
	for <wireless-regdb@lists.infradead.org>; Tue, 28 May 2024 13:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716904523;
	bh=J1mW5ycXKOE6GEGuTYzYdR2QfsgfqB1HyPbDjPgL1b0=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=a+qJ7OLGeq9M8TB0BrrLzqKbeWdlX8G6SPY+hVtd7iTSzPFCQ9LAx34LwYrpYbwNh
	 oHBY8r2xAqNfH7IPRjlMzVbpZNmlI/XFiQtqRlpuKTTl40CfXohc+Tfrk4rwQr75iz
	 JNrj1XQ6tGci0fN70qgQcM6T3HBdDlqTrfgj6u9IW8RV9e/aoyUOwNIpTqV7pPJcmx
	 qgCfQFKIMaNnOz4orIoq98j0s284oiPtUT0sGOxYRpq+xxnXyVuwSvy0zmfvYtmcue
	 eVbTcHN7p1XK9yoTJqN+KpAeyaFvigUq+EEX5zA1FknNgpSmk0dxnArF4GmBvZJr5p
	 kWc7nJrRZ217w==
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2e95abc7259so9348131fa.3
        for <wireless-regdb@lists.infradead.org>; Tue, 28 May 2024 06:55:23 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUBXIIQxERTJClccOP8nKnA/tCmFO6VbIM2xPvn5Iw/Gfp9C6ksmaRq2FxVTfWjkV4TE5sOy1B1w2VeH4n8lSSYxr309X4kESugKeLFo8UMg9IZ
X-Gm-Message-State: AOJu0YwO3KQ5+KH6DwogajKyVUcCfOpLfo129UvMezRK4RsnISwZwEkG
	KKw+u72JG2O+ZdT51yYNA72thcQUs3oBhtZPXzCfsv6E7WAfyX0e09JU0fHh+0hRLLFGBf7LfBF
	w9ekzROIjM21+M9shD82jcRyyM5s=
X-Google-Smtp-Source: AGHT+IEjHFv8zQHfB9GSG+wWe2e2/eN+jUfyeLzeHKoAPa1YTJbaz7btyqhL8Sd5iBvjCBX0kKj6Vhj7AjwwNJ4Ayrs=
X-Received: by 2002:a2e:a289:0:b0:2e4:7996:f9f0 with SMTP id
 38308e7fff4ca-2e95b0c0f7dmr70366331fa.17.1716904521470; Tue, 28 May 2024
 06:55:21 -0700 (PDT)
MIME-Version: 1.0
References: <20240522062835.69628-1-pkshih@realtek.com> <20240522062946.69832-1-pkshih@realtek.com>
In-Reply-To: <20240522062946.69832-1-pkshih@realtek.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 28 May 2024 21:55:09 +0800
X-Gmail-Original-Message-ID: <CAGb2v65zyPyeE+=hJSPEVLmsSOHimMK2vWVxS5kQ6FzRrWTMYw@mail.gmail.com>
Message-ID: <CAGb2v65zyPyeE+=hJSPEVLmsSOHimMK2vWVxS5kQ6FzRrWTMYw@mail.gmail.com>
Subject: Re: [PATCH 4/4] wireless-regdb: Update regulatory info for Thailand
 (TH) on 6GHz
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_065527_378687_4697E7DA 
X-CRM114-Status: GOOD (  12.71  )
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

On Wed, May 22, 2024 at 2:30=E2=80=AFPM Ping-Ke Shih <pkshih@realtek.com> w=
rote:
>
> The Broadcasting Commission Television business and the National
> Telecommunications Commission announced Technical standards for
> telecommunications equipment and equipment for radiocommunication equipme=
nt
> that uses the frequency 5.925 - 6.425 GHz [2], which section 2.1 describe=
s
> e.i.r.p. (Equivalent Isotropically Radiated Power) is 250mW and 25mW for
> indoor and indoor/outdoor respectively.
>
> [1] https://ratchakitcha.soc.go.th/documents/140D100S0000000004000.pdf
> [2] https://ratchakitcha.soc.go.th/documents/140D100S0000000004200.pdf
> [3] https://ratchakitcha.soc.go.th/documents/140D100S0000000004300.pdf
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
>  db.txt | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/db.txt b/db.txt
> index 022ecb3719b6..c7008e23b7ca 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1702,12 +1702,17 @@ country TG: DFS-ETSI
>         (5250 - 5330 @ 40), (20), DFS
>         (5490 - 5710 @ 40), (27), DFS
>
> +# Source:
> +# https://ratchakitcha.soc.go.th/documents/140D100S0000000004000.pdf
> +# https://ratchakitcha.soc.go.th/documents/140D100S0000000004200.pdf
> +# https://ratchakitcha.soc.go.th/documents/140D100S0000000004300.pdf
>  country TH: DFS-FCC
>         (2402 - 2482 @ 40), (20)
>         (5170 - 5250 @ 80), (17), AUTO-BW
>         (5250 - 5330 @ 80), (24), DFS, AUTO-BW
>         (5490 - 5730 @ 160), (24), DFS
>         (5735 - 5835 @ 80), (30)
> +       (5925 - 6425 @ 320), (25 mW)

Other entries with different power limits for indoor and outdoor usage
seem to favor higher power for indoor-only usage. Any reason to go the
other way?


ChenYu

>
>  country TN: DFS-ETSI
>         (2402 - 2482 @ 40), (20)
> --
> 2.25.1
>

