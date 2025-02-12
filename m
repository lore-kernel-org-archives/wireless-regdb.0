Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60603C0219E
	for <wireless-regdb@archiver.kernel.org>; Wed, 12 Feb 2025 08:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rzH16hl4+/ddP/m9dz/4ZmTDFIo5ZSFaICNkwZlMGU4=; b=2v+ZVodwIgJifc
	ImpuAQS1NGZBTFRvn1L01Fo+RWPTaRiSoYyZXhovOyKztfFHs69R5D3v6ofiUX21MbJ7eFfNiii+s
	CHleSNeJ9S/r/R8FV2InGzayx6MklVHpNkl4Rx4QzgdZhCP1dtcjVVLIwzG42PUORocZ0rSS445T0
	QFai+V04Sz6cbeJNwmwT1FFy2JHGsrOhekJaG3AEyXM9VEQhzr8WK+eqQJ4HxItrGWOa/pRFHfoRC
	Et8sfHByOtDbJZfh/vRWrHXK6sv5wJ7QBE4r5Uxhams9Ura1GayvJIYdAcoBuXVUN7uTWiKKdYl/T
	HyKnLjsWapaTOO0d4IHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ti8NW-00000006fcV-2Wgl;
	Wed, 12 Feb 2025 08:45:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ti8NU-00000006fc9-19Pg
	for wireless-regdb@lists.infradead.org;
	Wed, 12 Feb 2025 08:45:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1A8675C5D1E
	for <wireless-regdb@lists.infradead.org>; Wed, 12 Feb 2025 08:45:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE79BC4CEE7
	for <wireless-regdb@lists.infradead.org>; Wed, 12 Feb 2025 08:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739349949;
	bh=xC6HxHdkEPHFr59/fdDLv9M7CWv7vAjy/mGMAbUZ0aI=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=khFfbe7eQMwfAyLHpVmgm0Uft1zCNQGnl9kbLadu46/iBlkFERBYZ7PjREkLaFK5Y
	 NrM58TcjPBrJlIWlQeJh1uyTrNkAmzzG0LaALLl3BFVr9SY154acufkzXOMshq+qFm
	 D/9GWnR9Lr40OHFSLF/jyuXB+uNQER5zXOar3/trgS4TvK9ch0VC5Kz5oPoId234j1
	 aqA7zlWE9aGECFQSI8KoCh/i+BRhuL8IIkpzazkgtZS7E02gEVi4694Epl9zWv07ia
	 XVJWTg9dAp7L32Vr1BF4fUqYoUZMX2Lt58lOIH35zwyKxUf6JcLqz0afVA9hvMJZ1Z
	 qPr0D1GpXsyow==
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-30737db1aa9so66148991fa.1
        for <wireless-regdb@lists.infradead.org>; Wed, 12 Feb 2025 00:45:49 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWjPR1k11kSXaJHw7VJ3Rm3jShBZTnpEgEHcOmBL0QzdT4EsOg5aLisB5JhE9SslYSe444OE7UFOwZjxnsx0g==@lists.infradead.org
X-Gm-Message-State: AOJu0YyirR03A79Dj4GGdoO6a3cMWV5+JHEFN+yzMsKqO+gtIXb3yeyi
	iMNCRGtGRldfKR8GbCEQBhjXsmTWONGiIG6loHmA2IBK7qoSN1YcFRRdW2mzwiiesn0P/Mxts8o
	EWDgb8KNH2bk2SlcJQ6mn8t41qlQ=
X-Google-Smtp-Source: AGHT+IH4WY0W9KzU5hyyDWjv55uObNQV1spnbfNAHGpzPF3Xm65Zd7KHcxkQZnT2bMW+UXWBkZb2shCtsO255KVlwfo=
X-Received: by 2002:a2e:be86:0:b0:306:124c:69d5 with SMTP id
 38308e7fff4ca-309037615d5mr9181071fa.34.1739349948207; Wed, 12 Feb 2025
 00:45:48 -0800 (PST)
MIME-Version: 1.0
References: <2968514.e9J7NaK4W3@nakatomi>
In-Reply-To: <2968514.e9J7NaK4W3@nakatomi>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 12 Feb 2025 16:45:35 +0800
X-Gmail-Original-Message-ID: <CAGb2v67XQNwJErQF5DSCPQ02csf0nUxQDbu93Djvd0GuK7Pitw@mail.gmail.com>
X-Gm-Features: AWEUYZnuSgde1dSGNt_Q1_PiOiu61VtQVb7pOMaywxHuWhUdNP-5hRKiiO_B7MY
Message-ID: <CAGb2v67XQNwJErQF5DSCPQ02csf0nUxQDbu93Djvd0GuK7Pitw@mail.gmail.com>
Subject: Re: wireless-regdb: Update regulatory rules for Estonia (EE) on 5GHz
To: Veronika Baranova <desu@rainwalker.ee>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_004552_422236_FE962B48 
X-CRM114-Status: GOOD (  15.31  )
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

On Tue, Dec 24, 2024 at 11:38=E2=80=AFPM Veronika Baranova <desu@rainwalker=
.ee> wrote:
>
> Hello,
>
> The current values in the database seems to be out of date for the range =
5470
> - 5725, the max power should be 1W instead of 500mW. And 200 mW in 5250 -=
 5350
> MHz. Also, V-band is permitted up to 71GHz.

Sorry for the late reply, and thank you for providing this information.

Your email isn't in a valid patch format. Could you perhaps use git to
format it as a patch and have the message above and links below be
part of the commit message? It should also have your Signed-off-by.

Alternatively, if you don't feel like doing it, I will create a patch
based on your email and diff. I would still need your Signed-off-by,
which you can give by simply replying here.

> diff --git a/db.txt b/db.txt
> index e282e3b..2ada200 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -618,15 +618,15 @@ country EC: DFS-FCC
>  # EE: https://www.itu.int/ITU-D/study_groups/SGP_1998-2002/JGRES09/pdf/
> estonia.pdf
>  country EE: DFS-ETSI
>         (2400 - 2483.5 @ 40), (100 mW)
> -       (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=3DETSI
> -       (5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=
=3DETSI
> -       (5470 - 5725 @ 160), (500 mW), DFS, wmmrule=3DETSI
> +       (5150 - 5250 @ 160), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=3DETS=
I
> +       (5250 - 5350 @ 160), (200 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=
=3DETSI

This is actually invalid. The maximum channel width cannot exceed the
band's width. Previously our database tool allowed it but the kernel
did not, causing the kernel to fail to load the database. The tool
was recently "fixed" to disallow this as well. So this needs to be 80 MHz.

> +       (5470 - 5725 @ 160), (1000 mW), DFS, wmmrule=3DETSI

The links you provided mention that the 5250-5350 and 5470-5725 bands
require TPC. Unfortunately neither the kernel nor this database supports
this. We have worked around this by lowering the power limits of these
bands by 3 dBm, as specified by EN 301 893.


Thanks
ChenYu

>         # short range devices (ETSI EN 300 440-1)
>         (5725 - 5875 @ 80), (25 mW)
>         # 6 GHz band
>         (5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=3DETSI
>         # 60 GHz band channels 1-4 (ETSI EN 302 567)
> -       (57000 - 66000 @ 2160), (40)
> +       (57000 - 71000 @ 2160), (40)
>
>
> Related links from Estonian Consumer Protection and Technical Regulatory
> Authority:
> https://www.ttja.ee/uudised/ttja-ja-keskkonnaagentuur-teevad-koostood-et-=
peatada-wi-fi-haireid-riiklikes-ilmaradarites [20.02.2023, in Estonian]
> https://www.ttja.ee/eraklient/side-ja-meediateenused/raadioside/wifi-sead=
mete-kasutus [in Estonian]
> https://www.riigiteataja.ee/aktilisa/1170/5202/4018/MKM_m15_Lisa6.pdf [in
> Estonian]
> https://www.ttja.ee/ru/chastnoe-lico/svyaz-i-media-uslugi/radiosvyaz/
> radiooborudovanie [in Russian]
>
>
>

