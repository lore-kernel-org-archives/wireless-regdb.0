Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3740FC25B78
	for <wireless-regdb@archiver.kernel.org>; Tue,  4 Jun 2024 10:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5EXEQ7b3iEw4QZ8Fu9AUAAGy0qTUAko5ax15z5zhM0Y=; b=PIkgWO1+dLWRti
	9cXaleGpoSZqIH6n06NAPnXyGweEwYw8DSZTwzL0zZNjQFC+4MxG1Sr9eGoqh4LjLtGJM2A8DGxsp
	b/U4ABMOdR65MpxHUk1HuJBbhHpnhKYAF6IbJfAyQPQlDHeajuEisHWqQkcNldDnnKKu5gnl2CUh5
	x4d1BGd5B37thwDLWsNqD29dwVqBshjbADZmx2/XvUGl8pZfmiVs24kudcOJI383Mewo1WzgRQQ8F
	Ky83iI89Sr2Ys7BSZ/1kydf21yS22dYhV66IFh4hOt4IvJF1r/+aBpwEnUI4SaaOuKEHLOn/oe7M5
	8aBoQCnosY/mexvnKENA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sER78-00000001xFD-105v;
	Tue, 04 Jun 2024 10:09:58 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sER74-00000001xEo-3ASw
	for wireless-regdb@lists.infradead.org;
	Tue, 04 Jun 2024 10:09:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A2D8860F25
	for <wireless-regdb@lists.infradead.org>; Tue,  4 Jun 2024 10:09:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57387C32782
	for <wireless-regdb@lists.infradead.org>; Tue,  4 Jun 2024 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717495793;
	bh=0AGulmW0IOyFEIGDLnVd9WKnbGj9S56eEMRuFE4tgbY=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=oMNUgPJFx4bfFOQOH4OLwgyN64n8AMGeLxNg7YgEfHIFQhWi5ggYNwjF+cHxq2jXw
	 JKOCZ77M8wxg/tZB2WZPNzXwqD3Q+fVCrHg98JfXl/b+O9VLkl1G8dJXd8ddgOOgo+
	 Zut8JjzNZh2HQu6TDX4bl4qpGR6DX/5YfxahHXu0DRx398TmIitDVkrNncOPBh/HUe
	 dc3ONF6uHVtOmqQzQ+M+fBEt2oBGFn7F+GzDMhk29a4RPcXc9R87pRmxXgUJKQoljp
	 3JX6Dppc5Adbu3BdOFyoY8IQNmiYuDxjikG6hueD1F2GqCIzSOiSSENs90SfI0vOib
	 7PytC4qkQFEOA==
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2eabd22d404so7779441fa.2
        for <wireless-regdb@lists.infradead.org>; Tue, 04 Jun 2024 03:09:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWWXdl7rGz0HKNJ/xlO2/I28vK5oENRW+HItEeVbQJY268fb9gO0l2w6dBwiEXAffT5GpVyWqf4y/gTvb4No8n+Wj0AKzxqIlaAGg8ULC6+vsNw
X-Gm-Message-State: AOJu0YyDXkS/ffcYlnzqscRqGYBMcunLrd3e3vdYYPP2LbByfGpmTTPx
	9roz+ovzX+NpkMngdSE0e7ekDViuE7yTedomDKN1x5Q4K7TznVGWuf+RpJIeMeXBwIsZfJVokVn
	nW468owCiIoO6T+Jt/H5xvFzt2II=
X-Google-Smtp-Source: AGHT+IEi5jXAGaQ4eBOsKfb6zLxYleuEoYCm0ppaJnq9Ilf2pRy9wrm5Ho7uExo0E17dcwwdRDnKL5S02schagHQ5aI=
X-Received: by 2002:a2e:9290:0:b0:2e9:d4fa:1cc with SMTP id
 38308e7fff4ca-2ea951e1b97mr80242811fa.39.1717495791673; Tue, 04 Jun 2024
 03:09:51 -0700 (PDT)
MIME-Version: 1.0
References: <20240603060558.98791-1-pkshih@realtek.com> <20240603060939.99093-1-pkshih@realtek.com>
In-Reply-To: <20240603060939.99093-1-pkshih@realtek.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 4 Jun 2024 18:09:39 +0800
X-Gmail-Original-Message-ID: <CAGb2v64w0hZXsx4V12sSTqv7AUno8NYR+1KXYW41Po68-wZxfQ@mail.gmail.com>
Message-ID: <CAGb2v64w0hZXsx4V12sSTqv7AUno8NYR+1KXYW41Po68-wZxfQ@mail.gmail.com>
Subject: Re: [PATCH 3/4] wireless-regdb: Update regulatory info for Chile (CL)
 on 6GHz
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_030955_031077_A32D4809 
X-CRM114-Status: GOOD (  14.95  )
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

On Mon, Jun 3, 2024 at 2:09=E2=80=AFPM Ping-Ke Shih <pkshih@realtek.com> wr=
ote:
>
> MINISTRY OF TRANSPORT AND TELECOMMUNICATIONS; UNDERSECRETARY OF
> TELECOMMUNICATIONS announced RESOLUTION 1985 EXEMPT FIXED TECHNICAL
> STANDARD FOR REDUCED RANGE EQUIPMENT. Section j.1) describes access
> equipment, also referred to as AP, must be for exclusive indoor use with
> condition of Maximum EIRP of 30 dBm. User terminal devices that are
> associated with low-power AP equipment must operate at the following powe=
r
> levels of Maximum EIRP of 24 dBm. Devices that use internal batteries may
> operate outdoors, with a maximum average EIRP power of 17 dBm.
>
> [1] https://www.bcn.cl/leychile/navegar?idNorma=3D1109333&idParte=3D98415=
04&idVersion=3D&r_c=3D6
>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
>  db.txt | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/db.txt b/db.txt
> index 59d7549ce604..1999086d4694 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -395,11 +395,14 @@ country CI: DFS-FCC
>         (5490 - 5730 @ 160), (24), DFS
>         (5735 - 5835 @ 80), (30)
>
> +# Source:
> +# https://www.bcn.cl/leychile/navegar?idNorma=3D1109333&idParte=3D984150=
4&idVersion=3D&r_c=3D6
>  country CL: DFS-JP
>         (2402 - 2482 @ 40), (20)
>         (5170 - 5250 @ 80), (20), AUTO-BW
>         (5250 - 5330 @ 80), (20), DFS, AUTO-BW
>         (5735 - 5835 @ 80), (20)
> +       (5925 - 6425 @ 320), (30), NO-OUTDOOR

We consider Linux devices to be client or user terminal devices, so this
needs to be reduced to 24 dBm. However, this is further limited by the
spectral density clause, which states a limit of -1 dBm / MHz. Given
the smallest channel is 20 MHz, this gives a new limit of 12 dBm.

This is basically the same as the one for the US.


Thanks
ChenYu

>
>  # Source:
>  # https://wap.miit.gov.cn/cms_files/filemanager/1226211233/attach/20219/=
d125301b13454551b698ff5afa49ca28.pdf
> --
> 2.25.1
>

