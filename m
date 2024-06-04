Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECD48C25B78
	for <wireless-regdb@archiver.kernel.org>; Tue,  4 Jun 2024 10:34:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ccOAqJtEISESahxBaMgb1hQnzWR9wfgVtEmZ2zeLKE=; b=jRH0pfHWxzXsqa
	IeZunGHweElmnPBfZe1+Xo2oj8vOtP3AI5KCa9IIa+QSqq4VEEKi23IBiGPxI2eCfpsRfTUuOUSL8
	j11uzJrKZCWVdPNaheQy4wOkbLQSvBGodCXni4+iGO/m/t53l4FKgXvRcVNMZlbHLlLx7wCKZ3ATE
	LctjPKy0aoZhW/QJ2KUYBqsFH6aYhzaBxAZ4QTfQoX3kP5DAEWm+FoaFuVv2I7+vyNV9lH4PFwYLi
	RPMBUJ7Xf0A3+WQBZfpQkSpil4N/fLM5pCo2zYGny4lKIet4B01X/mR8KCSHrRuaElyesPJ+KZMZ2
	aDrS48V724ZH5Shr9WFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sERUj-00000001zpf-1aT1;
	Tue, 04 Jun 2024 10:34:21 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sERUg-00000001zoi-05oo
	for wireless-regdb@lists.infradead.org;
	Tue, 04 Jun 2024 10:34:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 35C206120E
	for <wireless-regdb@lists.infradead.org>; Tue,  4 Jun 2024 10:34:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAAB8C2BBFC
	for <wireless-regdb@lists.infradead.org>; Tue,  4 Jun 2024 10:34:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717497256;
	bh=9GgOpvGxYDUQvRk2dz2h8+S96DHn0UNYXByGGEqR0KM=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=RjajuyNITjn0nEH9szk+ytn0lOA4XhcBp8dTCsRyDe5rawBBMZjH8XSzTY9gQd1Ja
	 X2dMMSeGoTVaTAojEFEJVH3LjpGXUz9DLsH6L9tL8sSlWK34oiyCANufWULSXpQUCp
	 2uWbySXCL1ixgRqTMA1T3xm8dqCcIgL1FjXYqFw8ZmlU79mPvcU7oeCflSb1v0NcwV
	 DGrGy68XQH8rXp67wxr5OZPOlPq7rEeHwFt7I99qQTKl84xDWEhEupBClgsaBtRDWZ
	 QecZ+1mJ1yEpIs0Gjr/KLg6qN0WjsSHCKsfeZKfs/pC3bXF1S3YL9v67tEhGGc0vxD
	 AxhGWCl4Xms2Q==
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2eaac465915so9000981fa.1
        for <wireless-regdb@lists.infradead.org>; Tue, 04 Jun 2024 03:34:16 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUXDhA5AG7yKluz6RpKKGf/29wRlnxoYtZuy1gUkZyW7yBjj4ASeiYfjMro7QwP+SkPwPh90wLl4gBGzdOT+4CNJazuttAG2EmmXgU0XnEouHhS
X-Gm-Message-State: AOJu0Yy0qBSfjl7JI9m79b4iMRFw7A0cqEz33YV+MdPZ3HQ9/nKUg4A5
	ky1+7Vg89E3lQMPdbz5orxC1n/ca54PaU4wXyeddFsY6qRRotlBZhQMz0nBz6aC9DycgqgAsaIR
	+pT1ZRN7jCSrv5+sydRJN+UcOh4c=
X-Google-Smtp-Source: AGHT+IGkWdVPUwr4veTKgVpiXGzwfCP09G943Ef4PdcKMdFHLqf1mPyYFcBACPA9Mw09nr2dI0fAOKCwytrE5CRBJvY=
X-Received: by 2002:a05:651c:2117:b0:2e5:685a:cd24 with SMTP id
 38308e7fff4ca-2ea950fd7demr83020111fa.6.1717497255061; Tue, 04 Jun 2024
 03:34:15 -0700 (PDT)
MIME-Version: 1.0
References: <20240603060558.98791-1-pkshih@realtek.com> <20240603060948.99147-1-pkshih@realtek.com>
In-Reply-To: <20240603060948.99147-1-pkshih@realtek.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 4 Jun 2024 18:34:02 +0800
X-Gmail-Original-Message-ID: <CAGb2v65j604KUiVDiXSAbpJQQetGagFj53E8zuk6JqwaDdBk3w@mail.gmail.com>
Message-ID: <CAGb2v65j604KUiVDiXSAbpJQQetGagFj53E8zuk6JqwaDdBk3w@mail.gmail.com>
Subject: Re: [PATCH 4/4] wireless-regdb: Update regulatory info for Mexico
 (MX) on 6GHz
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_033418_227561_708ED62F 
X-CRM114-Status: GOOD (  16.17  )
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

On Mon, Jun 3, 2024 at 2:10=E2=80=AFPM Ping-Ke Shih <pkshih@realtek.com> wr=
ote:
>
> The Plenary Session of the Federal Telecommunications Institute (IFT)
> determined, in its IV ordinary session of 2023, to classify the
> 5925 - 6425 MHz frequency segment as free spectrum and issued the
> technical operating conditions that allow coexistence with the existing
> services in the country [2].
>
> Within the operating conditions of this band as free spectrum, its use wa=
s
> determined for low power indoor and very low power indoor and outdoor
> systems.
>
> According to WBA Response to the Mexico IFT 6 GHz Consultation [3]. The
> Low Power Indoor is
>         33 dBm Max Tx Power (EIRP) & 8dBm/MHz PSD (EIRP) for Access Point=
s
> and
>         27 dBm Max Tx Power (EIRP) & 2dBm/MHz PSD (EIRP) for Clients
>
> The Very Low Power is 4 dBm Max Tx Power (EIRP)
>
> [1] https://www.ift.org.mx/comunicacion-y-medios/comunicados-ift/es/el-pl=
eno-del-ift-clasifica-la-banda-de-5925-6425-mhz-como-espectro-libre-comunic=
ado-132023-16-de

Not sure what this reference is for?

> [2] https://www.ift.org.mx/sites/default/files/comunicacion-y-medios/comu=
nicados-ift/comunicado13ift_1.pdf
> [3] https://www.ift.org.mx/sites/default/files/industria/temasrelevantes/=
consultaspublicas/documentos/20210119-cpi6ghz2020-162.pdf

[2] does not say what limits were adopted, nor that the WBA's
recommendations [3] were adopted in its entirety. Without such
wording, [3] is just a recommendation, not the final rule. This
needs some more information.

>
> Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
> ---
>  db.txt | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/db.txt b/db.txt
> index 1999086d4694..970f47a87247 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1293,12 +1293,16 @@ country MW: DFS-ETSI
>         (5250 - 5330 @ 80), (20), DFS, AUTO-BW
>         (5490 - 5710 @ 160), (27), DFS
>
> +# Source:
> +# https://www.ift.org.mx/sites/default/files/comunicacion-y-medios/comun=
icados-ift/comunicado13ift_1.pdf
> +# https://www.ift.org.mx/sites/default/files/industria/temasrelevantes/c=
onsultaspublicas/documentos/20210119-cpi6ghz2020-162.pdf
>  country MX: DFS-FCC
>         (2402 - 2482 @ 40), (20)
>         (5170 - 5250 @ 80), (17), AUTO-BW
>         (5250 - 5330 @ 80), (24), DFS, AUTO-BW
>         (5490 - 5730 @ 160), (24), DFS
>         (5735 - 5835 @ 80), (30)
> +       (5925 - 6425 @ 320), (33), NO-OUTDOOR

We consider Linux systems as client devices, thus the lower limit would
apply.


Thanks
ChenYu

>
>  # Source:
>  # https://www.mcmc.gov.my/skmmgovmy/media/General/CA-No-1-of-2022_-signe=
d_19012022.pdf
> --
> 2.25.1
>

