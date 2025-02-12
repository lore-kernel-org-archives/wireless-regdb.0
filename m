Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65EFDC0219E
	for <wireless-regdb@archiver.kernel.org>; Wed, 12 Feb 2025 09:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l1i2fO0eLZTsype5YWgJ4YqWhb1ZsVk+/lhkQRpeLpg=; b=lJ1dJZpgUyWf7n
	/Ja6MIqnRMPvXAnlDjJC6QObXbUjWNVr7ky5+L/o6jNWC2WppDYuwQgk4brmH+wec92etzpcZrANb
	6oaAHThNz971+TResZMKBwOAwZnPz3ksDCvWFvgkHIljeiicq8nt/2FAbHJZ+SS8x/bIkXkXOrcoI
	bLJIyS6W10/aXnbohTByw39SVbjJaL8YWSln8n5cceo1HiVLlXQYzSWaIAx7RrIwhrjXIegQ34gqK
	Jighahrlf4itO1uz5POqGvpFq2cwelsktUdyARSgpNNOiAzthxZYeo2HreHf+UBpfjXtansnHUGR4
	ach6R7DnBJw5oILe4UDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ti8fT-00000006iF0-3Zcu;
	Wed, 12 Feb 2025 09:04:27 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ti8Xr-00000006h3H-2ZG7
	for wireless-regdb@lists.infradead.org;
	Wed, 12 Feb 2025 08:56:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 709A15C4D71
	for <wireless-regdb@lists.infradead.org>; Wed, 12 Feb 2025 08:55:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABBB3C4CEE2
	for <wireless-regdb@lists.infradead.org>; Wed, 12 Feb 2025 08:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739350594;
	bh=9iY0bTPEiF6cgKBOM/MVgOB4IJr80XFYsNHuBio+2Y4=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=F/m2G+WdqLfqEQQ6StrAfP77Dw2q85o7IEQrG46gme/yFirCnty0XTr/okfr72e4W
	 z6GyAuoFQFeWM4bjU7lNWHkY5XZvcdY22hP5YhTNFWWmj7EWPy8N+y5Jk6hOcnSUqq
	 /AKW3fSRiR1ewC0tJrhdHCnPFJlJQVFFNT7c7muz+K8H+NKbK+eEGl7FFekHl0mSX5
	 JiuI01PqtqgDjtEwVaN8X/Mb40CnMF5M6CYVmCexcN/BXoDJd85m56V8a0MUdcIrQP
	 DKx6udUrTnSfo902X4mRjM3f9F1otRcfX+GszCKukxEzxWxV4/t3T3jeZ9eXh4jIvw
	 8Xt4+cSvZx5CA==
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-307c13298eeso6082051fa.0
        for <wireless-regdb@lists.infradead.org>; Wed, 12 Feb 2025 00:56:34 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVxQHPfJfwzvkI+WeeEpBQ/I1V3I9p/0XY2uFE8sDxr915BPo/B6UVrLhxmZ0C2UQcWSRjNs8O0gvaJZdnXgg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxBqu+rtFgTKf7o4UiVdOCjHqNFCnEZgIKoxRYdjcH+iHtqbP0H
	ESTIHDN+53jTX+AlhY4rACD7IZj9/FRWyfBSMr2qCJUs4SPZad9lt+TGYsg7JZh5Qvif5B6Rjid
	Lvjz6i9k8HjTNwgZOTQbFEpcr8Os=
X-Google-Smtp-Source: AGHT+IEPaeahhI9AP0YU7LtJNx1HreZhGiSsK7NEuLN3kYoKO5diqb9wNh5cPHYYg986jwNFMJmgi505lY4XRpsuti8=
X-Received: by 2002:a05:651c:2101:b0:302:251a:bcfe with SMTP id
 38308e7fff4ca-30904592604mr6901811fa.6.1739350593019; Wed, 12 Feb 2025
 00:56:33 -0800 (PST)
MIME-Version: 1.0
References: <20250129112554.27296-2-jakob.riepler@paranoidlabs.org>
In-Reply-To: <20250129112554.27296-2-jakob.riepler@paranoidlabs.org>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 12 Feb 2025 16:56:20 +0800
X-Gmail-Original-Message-ID: <CAGb2v67SbKbci+1MQH=ebVcf2oFUg6n0NxZB9jjcwMxsS2sJqg@mail.gmail.com>
X-Gm-Features: AWEUYZnat1IPN8e4uzhrgq_hXC3ByJc5btgg0RyctcTJDpVG4xtEfKmwQ2UBeHc
Message-ID: <CAGb2v67SbKbci+1MQH=ebVcf2oFUg6n0NxZB9jjcwMxsS2sJqg@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory rules for Austria (AT)
To: Jakob Riepler <jakob.riepler@paranoidlabs.org>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_005635_764559_5088C51E 
X-CRM114-Status: GOOD (  18.31  )
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

On Wed, Jan 29, 2025 at 10:06=E2=80=AFPM Jakob Riepler
<jakob.riepler@paranoidlabs.org> wrote:
>
> According to the Austrian "Frequenznutzungsverordnung" Attachement 2
> page 404
> (https://www.ris.bka.gv.at/Dokumente/Bundesnormen/NOR40251378/II_61_2023_=
Anlage_2.pdf),
> Austria extended the usable range according to the EU SRD Band 75a (Imple=
menting
> decision 2019/1345, current consolidated version:
> https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=3DCELEX%3A02006D0771%=
2801%29-20220210&qid=3D1738145465756)
>
> This probably applies to most other countries that are part of CEPT
> and/or EU but I'm not good enough with international law to be sure
> about others.
> It might be worth checking and updating this for many more countries.

Thank you for the information. Based on previous review, I believe each
country still publishes their own rules, even though they are based on
the EU's harmonized rules. Given that most countries publish them under
their official language, I think we would have to rely on local users
to provide updates, instead of me digging through websites in foreign
languages.

ChenYu

> This also updates two outdated links (the RTR one was a 404, the CEPT
> one redirects with a warning that this link wil stop working).
> Specifically the CEPT one might need updating for all other countries as
> well (also the link now seems to refer to a newer version of the document
> than the originally referenced one. v2.2.1 is from 2021 and was updated
> to include the 66-71GHz range as well).
>
> Signed-off-by: Jakob Riepler <jakob.riepler@paranoidlabs.org>
> ---
>  db.txt | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index e282e3b..8a5c0bd 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -114,8 +114,8 @@ country AS: DFS-FCC
>  #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/T=
XT/?uri=3DCELEX:02005D0513-20070213
>  #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/T=
XT/?uri=3DCELEX:02008D0432-20080611
>  #  EU decision 2021/1067/EC: https://eur-lex.europa.eu/legal-content/EN/=
TXT/PDF/?uri=3DCELEX:32021D1067&from=3DEN
> -# Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/downloa=
d/25c41779-cd6e/Rec7003e.pdf
> -# AT: https://www.rtr.at/en/tk/Spektrum5GHz/1997_bmvit-info-052010en.pdf
> +# Harmonized CEPT countries (February 2021): https://docdb.cept.org/down=
load/25c41779-cd6e/Rec7003e.pdf
> +# AT: https://www.rtr.at/TKP/was_wir_tun/telekommunikation/spectrum/band=
s/1997_bmvit-info-052010en.pdf
>  # AT: acceptance https://www.ris.bka.gv.at/Dokumente/BgblAuth/BGBLA_2014=
_II_63/BGBLA_2014_II_63.pdfsig
>  country AT: DFS-ETSI
>         (2400 - 2483.5 @ 40), (100 mW)
> @@ -126,8 +126,8 @@ country AT: DFS-ETSI
>         (5725 - 5875 @ 80), (25 mW)
>         # 6 GHz band
>         (5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=3DETSI
> -       # 60 GHz band channels 1-4 (ETSI EN 302 567)
> -       (57000 - 66000 @ 2160), (40)
> +       # 60 GHz band channels 1-6 (ETSI EN 302 567)
> +       (57000 - 71000 @ 2160), (40)
>
>  # Source:
>  # 'Item' in the comments below refers to each numbered rule found at:
> --
> 2.47.1
>
>

