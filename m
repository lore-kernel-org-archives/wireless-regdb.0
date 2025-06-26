Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2822C7115B
	for <wireless-regdb@archiver.kernel.org>; Thu, 26 Jun 2025 08:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tJ4ZK/ks3pN0PzYL54yJxnBT7M1yno5v8VLLf6xT3Zk=; b=ut9G3etxnNAdAu
	3QKfJpqAEPN1wwQMmARfLVDYRmEHSZw4fecOY33hFPLeAAdGbE6Vc29bzUS6vX1BDHEZ8OiP3dL4S
	UPkc3BG+3bIrOYtlSEiD9kdtm39+AbAdDqffmIe/NOwo3m409ces3KFcwRU6E3zyeJgT8mtj0OHK2
	XhzkHYkZE1jNtouD7O+Kp2+MSd7tAZ8G41/7dV0W7ABDcgD2rFMCZXo9Cae95zaUbKdoYC5c6Svzn
	Z+FXC51qY22Yndgz0n9QFS37cn/kLiopmyNpX8LChWOrCk9MZAuHnae9Sn4y1Wl+bjxr5Tvya3Cl6
	UEDkLIb2+bbYOzN06SHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUiFt-0000000B1af-1flv;
	Thu, 26 Jun 2025 08:46:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUhj4-0000000Auyb-021o
	for wireless-regdb@lists.infradead.org;
	Thu, 26 Jun 2025 08:12:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 19B275C648F
	for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 08:10:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39776C4CEEB
	for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 08:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750925573;
	bh=uuC7OKC7WbXE8NI5ndYMrEWI5VDF8oKgrFaUtqIxPNY=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=Drouf1u+iM4/oPmPsABgGIVN1pS1Z9g7yHzP33apWU9gZs59RZQounHtB+Od2XlJ2
	 TGyiCXEFEhIV6MZrof2D7pJbgbBxF7/bOyw4T+51fNkMXVVrR6gcyuMJeNEvwAVA6z
	 wo9V7kMR0AGz0QvYcjw2cs+225Rg5/2tm+eqSllxu6L9tcrGkqR7wPnNZ2MpNlGOrp
	 iephBcZWW5DN9gunLaZAd+lhi8+DtXg+vH+CFbnfhFe2Rkk8/xyWIxLW7zJfIJ+/Re
	 LRIs2Ci/FUetZOiJckuT4ziGjf5mu1XMsLe7LzpC4j83gBh6OuucEumBaEO/8jI8vE
	 Ozj8+UmfL40EA==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-32addf54a01so7093201fa.3
        for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 01:12:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUbQWeawENzC9AxaTpey/A5+ikAqifCAbZjbxdHrzKAVB5Wgla78v9y14GUzF58PIX7y1nZ8GoNrRXWI2Ppxw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzinpV6BqToXgm7zXET+KE0oJ4TmgLlCkFO5UFEYPFgfV1PXUoh
	IShBFpqi18Z4Li1Q39dIbEBEDp9C6j2f0RkUbF8MrVn4N2nX0278Km2OhLyClqIczwYrGiWV3KI
	hT3q4ka8zVO7MTN3zYpIQ8XTfj7skQow=
X-Google-Smtp-Source: AGHT+IFKqCJasa3guH/8QHvFBgvK5sFT6r4++A7PfL2nfiyG1gXbdhQzxNdr72k7QKq8ebeNQ7V9wDjZhx8b9FP+peU=
X-Received: by 2002:a2e:808f:0:b0:32a:de85:4613 with SMTP id
 38308e7fff4ca-32ccfa6f679mr8105611fa.23.1750925571628; Thu, 26 Jun 2025
 01:12:51 -0700 (PDT)
MIME-Version: 1.0
References: <20250602121434.3011282-1-marcoshalano@gmail.com>
In-Reply-To: <20250602121434.3011282-1-marcoshalano@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 26 Jun 2025 16:12:39 +0800
X-Gmail-Original-Message-ID: <CAGb2v645_kB3mNb79ytFb9y2xw6zp1oFvof5NX-FF7eDPNCBFQ@mail.gmail.com>
X-Gm-Features: Ac12FXzunCqzK9LfzGH2E5bvbX6mYXEOLaBgYjRiRPJQkjrMHhDj-O0J2VndEeg
Message-ID: <CAGb2v645_kB3mNb79ytFb9y2xw6zp1oFvof5NX-FF7eDPNCBFQ@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory rules for Brazil (BR)
 on 6GHz
To: Marcos Alano <marcoshalano@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_011254_126645_6314659B 
X-CRM114-Status: GOOD (  14.08  )
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

On Mon, Jun 2, 2025 at 8:15=E2=80=AFPM Marcos Alano <marcoshalano@gmail.com=
> wrote:
>
> Change rules for 6GHz on Brazil removing `NO-IR` and adding
> `AUTO-BW` so the 6GHz band can be used.

AUTO-BW is not needed since there are no adjacent bands that can be
combined.

> Add the relevant normatives in comments.
>
> Signed-off-by: Marcos Alano <marcoshalano@gmail.com>
> ---
>  db.txt | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index e331d4f..3b0adbb 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -321,8 +321,8 @@ country BO: DFS-JP
>
>  # Source:
>  # https://www.gov.br/anatel/pt-br/regulado/radiofrequencia/radiacao-rest=
rita
> -# https://informacoes.anatel.gov.br/legislacao/resolucoes/2017/936-resol=
ucao-680
> -# https://informacoes.anatel.gov.br/legislacao/atos-de-certificacao-de-p=
rodutos/2017/1139-ato-14448
> +# https://informacoes.anatel.gov.br/legislacao/resolucoes/2025/2001-reso=
lucao-772
> +# https://informacoes.anatel.gov.br/legislacao/atos-de-requisitos-tecnic=
os-de-gestao-do-espectro/2024/1920-ato-915
>  country BR: DFS-FCC
>         (2400 - 2483.5 @ 40), (30)
>         # The next three ranges have been reduced by 3dB, could be increa=
sed
> @@ -331,7 +331,7 @@ country BR: DFS-FCC
>         (5250 - 5350 @ 80), (27), NO-OUTDOOR, DFS, AUTO-BW
>         (5470 - 5725 @ 160), (27), DFS, AUTO-BW
>         (5725 - 5850 @ 80), (30), AUTO-BW
> -       (5925 - 7125 @ 320), (12), NO-OUTDOOR, NO-IR
> +       (5925 - 7125 @ 320), (30), NO-OUTDOOR, AUTO-BW
>         # EIRP=3D40dBm (43dBm peak)
>         (57000 - 71000 @ 2160), (40)
>
> --
> 2.49.0
>
>

