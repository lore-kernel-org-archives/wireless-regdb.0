Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E70EAE93815
	for <wireless-regdb@archiver.kernel.org>; Mon, 13 Apr 2026 04:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sbMNAlva5GyeNaVHvKGMk4vkbfTLJLBFYsJGf2OwwT0=; b=2ZCuA7R3TCshqX
	CcraEscQAIvElJ4MJ+HbpDRJUIBT+s/QzZYjgMVRqymZffc6eoUmPWzYyNScfUxB8RxhCXTQHeZSl
	PbNRWTxBCJwKHHcSTJYc2qQ7OevW4qY+9XKXI1APKaKUngLbkWFPha6avkixty+37P/ZJU3bbo6wH
	twcKxrVZATv7x7ML7Bq14f2eBqtPuy755S6Xb6FfTwJOdYHsxTJRyp+AAO/BkWdqqP0+j1Jjvy2Kn
	4F6UohhkYb2pE8TdAGaH6LlADc3ktMOkFDvG4IE7dS3MyZZ8IEdrjfbXgDjA1orMVkOoFZ3BgtYJg
	rZnhUUIhMI3YZ87SFPUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wC99K-0000000Ez1O-0mSM;
	Mon, 13 Apr 2026 04:43:50 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wC99H-0000000Ez1G-3Np3
	for wireless-regdb@lists.infradead.org;
	Mon, 13 Apr 2026 04:43:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 790DC60142
	for <wireless-regdb@lists.infradead.org>; Mon, 13 Apr 2026 04:43:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30B05C116C6
	for <wireless-regdb@lists.infradead.org>; Mon, 13 Apr 2026 04:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776055426;
	bh=DMnFwbV8A+M37VYPRb0lcYkV0w7V5RykSaJxybeXUTk=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=r9D1Ycn0D/cT61rLRt2uTCmuyyQ1NB6bqj4ICjPzMDMUhi/uAS6VuMIOSoBZnxeej
	 j+XdtdbmVamAaaNaVmz0xVX/gxtswSjIh3NECOaBI7u2ItM9M4lv2T8PCGy08YOvYx
	 OJLS/cNHJb+8ZuX6GQqdUNnt0VCTIoqUHIJ2jLlpUwjsa7oG4wsasJrlEDoc/GLEic
	 lja8OO9+9pAKaib4Eu70T7atOVAo3+xCveS79PU6mU+7yF7r0zpTOVVMl0tTWN5+1G
	 xdLKcjrq36Jyd4HM0Eijof0KP+rQdka1FHDyLPxSIY47lh9S0GZ3NVyRkmKvn9BqUV
	 W0PxoY0Nxl0WA==
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-38e84ed22bdso250851fa.2
        for <wireless-regdb@lists.infradead.org>; Sun, 12 Apr 2026 21:43:46 -0700 (PDT)
X-Gm-Message-State: AOJu0YxqzSPrYDmQPJLAVv1jEmXujEqHQcr0OysvSehOZgQ7dPzOC/2e
	jeDFQd2o8vP75O7/A4hgzkACOJJ5K2OIaffgMC0XVA1p1VLyJHoZcjPtm+Xbfa5aLcahp35U8ba
	q4PqcAh0lQRgsMbn5a3uA7TxMBYKo25w=
X-Received: by 2002:a05:651c:3258:b0:38a:8b97:7ec1 with SMTP id
 38308e7fff4ca-38e4bf269d5mr35792151fa.23.1776055424540; Sun, 12 Apr 2026
 21:43:44 -0700 (PDT)
MIME-Version: 1.0
References: <20260411222155.299441-1-loukot@gmail.com> <20260411222155.299441-2-loukot@gmail.com>
In-Reply-To: <20260411222155.299441-2-loukot@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 13 Apr 2026 12:43:31 +0800
X-Gmail-Original-Message-ID: <CAGb2v6730-TMbCsxkUTxsiUpXUO0Z3MRXo_WdcpqEpMmwb5=AQ@mail.gmail.com>
X-Gm-Features: AQROBzBladnpMb8ReF67QWdT0ox2E2V17UPU6Ac19OY6ZYSwqk5q-_5kORG1JmI
Message-ID: <CAGb2v6730-TMbCsxkUTxsiUpXUO0Z3MRXo_WdcpqEpMmwb5=AQ@mail.gmail.com>
Subject: Re: [PATCH 1/5] wireless-regdb: Update 6 GHz rules for Hong Kong (HK)
To: Louis Kotze <loukot@gmail.com>
Cc: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

On Sun, Apr 12, 2026 at 6:22=E2=80=AFAM Louis Kotze <loukot@gmail.com> wrot=
e:
>
> OFCA published HKCA 1081 Issue 2 (August 29, 2025), updating the
> 6 GHz WLAN specification for Hong Kong:
>
>   - LPI (indoor): 24 dBm EIRP
>   - VLP (outdoor): 14 dBm EIRP
>   - Frequency: 5945-6425 MHz (5925-5945 reserved as guard band)
>
> The previous entry had VLP power only (14 dBm), no indoor flag, and
> used the wrong frequency start (5925 instead of 5945).

As you mentioned, 5926-5945 is reserved as a guard band, i.e. the
device cannot use it. So the rule is correct to start at 5945 MHz.

> Update to LPI with correct frequency range and NO-OUTDOOR flag.

There should be justification for picking LPI over VLP, since this
is a choice made on the submitter's end. Same applies to the other
patches.

There was one submission that picked VLP over LPI in favor of outdoor
usage.


Thanks
ChenYu

> Reference:
>   HKCA 1081 Issue 2 (August 2025)
>   https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1081.pdf
> Signed-off-by: Louis Kotze <loukot@gmail.com>
> ---
>  db.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/db.txt b/db.txt
> index 343b256..172029e 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -883,7 +883,7 @@ country HK: DFS-ETSI
>         (5250 - 5350 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
>         (5470 - 5730 @ 160), (27), DFS
>         (5730 - 5850 @ 80), (36)
> -       (5925 - 6425 @ 160), (14)
> +       (5945 - 6425 @ 160), (24), NO-OUTDOOR
>
>  # Source:
>  # https://www.conatel.gob.hn/doc/Regulacion/resoluciones/2023/NR05-23.pd=
f
> --
> 2.53.0
>

