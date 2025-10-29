Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FDE8CCF9E9
	for <wireless-regdb@archiver.kernel.org>; Wed, 29 Oct 2025 06:22:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C8Ipy7QlEvlrgDVPzt/zxQVQp5xsjJMeo1dVZ5JaANE=; b=m9+YhumOLtNkuC
	TV80vNkGOg57LwwfywI8cmgDeObfzBh/Qe8xLx4t/xZPUNeCqUzBr/kKdUBB0I5/xtz7ghxpGOVUW
	mO5XfsZzSGR3dwn3zrPUpAe5hNHvMB8iPf0MMxtNNDmT2Go9WFpqdn7nriOCAevfMg8WX7+paTaQ2
	JIN2NQxWHKjAmcPGk/O5hgcH76yGK9gopFcfdx+zl2rOzp1ziEm1wdOcyviChOj5ChOeuMifrYyeC
	IBgqZOtdu+3YPwBby5ZCdNNdyq1tA4f9CYd9VhQ2uHOLudiirZbK+5shogQ3n1IwsxT5O3nhiLuBI
	L8LwnywLbdb3t2PioSpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDzZT-0000000HSc9-1iPL;
	Wed, 29 Oct 2025 06:22:11 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDzZR-0000000HSax-2YTp
	for wireless-regdb@lists.infradead.org;
	Wed, 29 Oct 2025 06:22:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 82ACA4058A
	for <wireless-regdb@lists.infradead.org>; Wed, 29 Oct 2025 06:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63CDAC116B1
	for <wireless-regdb@lists.infradead.org>; Wed, 29 Oct 2025 06:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761718928;
	bh=WuDi709DAU2mN/xMZ5/FScYJ4OESH8QLsWWVBqG0faA=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=s7HiuQdZ1OIVcvifgPBecEM402sNjWRw3BqxYyrwmF/nVLgSmbxdtL6yAgb5QEm/a
	 J2jeIq7Jc+XWJTFiy2r8qp0eQNph4cgcRUrqwGRW7TKextfaG6R6bHfFDtnMOUlJXI
	 dj6ae09lea0sIDTKijQaflQq5qPnFlJzGDoIDgYA4nkwpIBEylIf2oW0v/+45XCDLl
	 zzSzCC3MGdD7OmXemWuI5UcHYnRt2supkIrPX5fiRCCSwDOYf78VInwEWhWB541PKZ
	 KksFTRfeRafa45lnRzD1tqE+RMAVoqn97oDONNl09Fd5gc6e/EslhfGO9cHJ9f+xm0
	 0sx6U1/XhCMiA==
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-3761e5287c9so80171811fa.2
        for <wireless-regdb@lists.infradead.org>; Tue, 28 Oct 2025 23:22:08 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVc9jYxAS68jHRTGmVGYDuZg68tpPhvc64KGEYD21AAuloZiGYuQjdMk37W+ywAxpjivwpnru9bf7UJxeI4yg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzi6yUBLcXh+gc/DX6GWDCazo45CbyKFkJ/5vrCm+kmHvogl1TR
	HV7JaA1dMbE9heJBzzbLm+OzW9Z/mS1k7Qd9e/ck2rwxtuTOdXpxLXjktra8nbe7lTtk9g/nSwv
	JlSAs8XayL7pQaA6+TTcY1Az3won2MOs=
X-Google-Smtp-Source: AGHT+IFHCCGvwM5ocGuIIQOSNFb+hpCGUi4ju3lirL7hSCfq/20s0IGYf4W9x5S75wdzG2BEohks3CAzwjNgZEsHgzg=
X-Received: by 2002:a05:651c:3617:b0:36d:54b3:9f81 with SMTP id
 38308e7fff4ca-37a05348c18mr6769971fa.41.1761718926730; Tue, 28 Oct 2025
 23:22:06 -0700 (PDT)
MIME-Version: 1.0
References: <20251029012429.68658-1-me@ndoo.sg>
In-Reply-To: <20251029012429.68658-1-me@ndoo.sg>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 29 Oct 2025 14:21:53 +0800
X-Gmail-Original-Message-ID: <CAGb2v64omSs0uVL00n7vGRF_-=qb8xLCjdnyWRq_Caukf2ntXA@mail.gmail.com>
X-Gm-Features: AWmQ_bknpj47qEd79LRPpA6POhAidQbwqDEshKGkhSzjkaVtJEwRyifGvfFXrn8
Message-ID: <CAGb2v64omSs0uVL00n7vGRF_-=qb8xLCjdnyWRq_Caukf2ntXA@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Malaysia (MY)
 for 2025
To: Andrew Yong <me@ndoo.sg>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_232209_689589_BEE46F77 
X-CRM114-Status: GOOD (  14.73  )
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

On Wed, Oct 29, 2025 at 9:24=E2=80=AFAM Andrew Yong <me@ndoo.sg> wrote:
>
> Malaysia Communications and Multimedia Commission announced CLASS ASSIGNM=
ENT NO. 2 OF 2025[1].
>
> With reference to class assignments on pages 9 and 10, and Power Spectral=
 Density (PSD) limits on page 20, update the following rules:
>
> 2400-2500 MHz: Align previous 2402-2482 MHz rule to class assignment
> 5150-5250 MHz:
>   1. Align previous 5170-5250 MHz rule to class assignment
>   2. Mark as NO-OUTDOOR
> 5250-5350 MHz:
>   1. Align previous 5250-5330 MHz rule to class assignment
>   2. Limit EIRP from 1 W to 200 mW due to PSD limit of 10 mW/MHz, calcula=
ted at 20 MHz channel width
>   3. Mark as NO-OUTDOOR
> 5470-5650 MHz:
>   1. Align previous 5490-5650 MHz rule to class assignment
>   2. Limit EIRP from 1 W to 200 mW due to PSD limit of 10 mW/MHz, calcula=
ted at 20 MHz channel width
> 5725-5875 MHz: Align previous 5735-5835 MHz rule to class assignment
> 5925-6425 MHz: Increase EIRP from 200 mW to 250 mW (remains within PSD li=
mit of 12.5 mW/MHz)
>
> [1] https://www.mcmc.gov.my/skmmgovmy/media/General/pdf2/Class-Assignment=
-No-2-of-2025.pdf
>
> Signed-off-by: Andrew Yong <me@ndoo.sg>

I applied it on top of your previous patch. Conflict resolution shrunk
the patch down to just the URL change.

ChenYu

> ---
>  db.txt | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)
>
> diff --git a/db.txt b/db.txt
> index 1d17271..dc72989 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1450,14 +1450,16 @@ country MX: DFS-FCC
>         (5925 - 6425 @ 320), (12), NO-OUTDOOR
>
>  # Source:
> -# https://www.mcmc.gov.my/skmmgovmy/media/General/CA-No-1-of-2022_-signe=
d_19012022.pdf
> +# https://www.mcmc.gov.my/skmmgovmy/media/General/pdf2/Class-Assignment-=
No-2-of-2025.pdf
>  country MY: DFS-FCC
> -       (2402 - 2482 @ 40), (500 mW)
> -       (5170 - 5250 @ 80), (1000 mW), AUTO-BW
> -       (5250 - 5330 @ 80), (1000 mW), DFS, AUTO-BW
> -       (5490 - 5650 @ 160), (1000 mW), DFS
> -       (5735 - 5835 @ 80), (1000 mW)
> -       (5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
> +       (2400 - 2500 @ 40), (500 mW)
> +       (5150 - 5250 @ 80), (1000 mW), AUTO-BW, NO-OUTDOOR
> +       # 5250 - 5350 MHz regulatory limit is 1000 mW, but 200 mW reaches=
 the PSD limit of 10 mW / MHz at 20 MHz channel width
> +       (5250 - 5350 @ 80), (200 mW), DFS, AUTO-BW, NO-OUTDOOR
> +       # 5470 - 5650 MHz regulatory limit is 1000 mW, but 200 mW reaches=
 the PSD limit of 10 mW / MHz at 20 MHz channel width
> +       (5470 - 5650 @ 160), (200 mW), DFS
> +       (5725 - 5875 @ 80), (1000 mW)
> +       (5925 - 6425 @ 320), (250 mW), NO-OUTDOOR
>
>  # Source:
>  # https://www.cran.na/yglilidy/2023/04/GG-8060-dated-3-April-2023.pdf
> --
> 2.50.1 (Apple Git-155)
>
>

