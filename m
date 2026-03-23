Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 943F5D58CD1
	for <wireless-regdb@archiver.kernel.org>; Mon, 23 Mar 2026 05:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u17ucUDWyHoz12eiqNuGcSe43UvJhvtRW9UHDTt8vC8=; b=FJxh0MQyUmoTL5
	a9scvklBbRR9TD1nOc6WuUX+ggFTLr614U53eRz2Ccxs6Xld5GDrO9TbvQQg4zEAHicXTpparUCOR
	5b0/FV+Yv6d5LR7vWf1Hh6GTAk6tPF9UJ5wm7K3zVCgjP94ChkdgQt5H9CGLF/ZUmnEYUplKaUZ8A
	JE2BOlXX1fcsFz2dbViVhlxYKheNWBmoClhHTYtoIOF0F5NHoRbPrYMTKPPlwbBHgbYz7q0oM1Xsr
	m2bQIv+TFrBU9C92lwt/8cN8yO3f1zyNJUR0BX5zvL/R9blt5JIYwfPh6EQqkwEMsrewQwjphKzRP
	vpwUYtCZWr7Mh5e2kwHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4XVd-0000000G2rf-2l0k;
	Mon, 23 Mar 2026 05:07:25 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4XVa-0000000G2rF-2FNY
	for wireless-regdb@lists.infradead.org;
	Mon, 23 Mar 2026 05:07:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CB2DC43D1D
	for <wireless-regdb@lists.infradead.org>; Mon, 23 Mar 2026 05:07:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC15AC4CEF7
	for <wireless-regdb@lists.infradead.org>; Mon, 23 Mar 2026 05:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774242438;
	bh=sLcVd4BfxLbz51Qpm3+Zxr/F9Yo3nuTokM6mB+pQSQo=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=JlxGCfCIDj7636DN2MbKZpxZhyJkhh0IwUmFgBkfucTfAXSlNf9aHt/0EYOgjfv1M
	 YG5zvmKWd/Rq7f7+E/NfHU+Gjel6RegcEie6ljBNK0FeAdXchjOjnBGCyK9FSD1aTI
	 5mbZ4JaiXyreoKi6p+np13zbzC0ZzJ11rvwZUVRtfRsu0ypsDwtE0e15nhg87HNEcM
	 B9uQ1hoHaWQzZiOGL5KUp0AF6F8ZNjrNaAaSBdBr6wtzJ9fmdoJJZFQcTVnQsbCH+1
	 U5P6fE7RB0uIUygJn/zBre3lrYzIDxp9VQJzjb/5zvFHl2LadtcCFEk/8bYoy6XDIF
	 ijhh7XgamcO7g==
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-38be66a9fc0so24240961fa.1
        for <wireless-regdb@lists.infradead.org>; Sun, 22 Mar 2026 22:07:18 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUYP6QhK5IvoymhruyqTPUeLhe5YFRVXTYJ3qnNlpYJ1R/5P1/jyn6UF15da3quH9DoTqD1Vn8eAaZrW0dy5Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YwWRXtfcDz/2na8nN9XMPlrWKynKro7kwS2wD+mBsZSZk4ZWZym
	k0i3wW61pm7nvAew/x1yNFcNaiqkwI0PI0Q/xUJ5Z3zxt6ddYLD4OU4cH591BZ1yIEx9Bielshv
	bdR9CLB1FMFvkJIhJrLxfFGNRSo3ezgs=
X-Received: by 2002:a2e:3514:0:b0:38a:55b7:dfa8 with SMTP id
 38308e7fff4ca-38bf962906bmr24897971fa.13.1774242436867; Sun, 22 Mar 2026
 22:07:16 -0700 (PDT)
MIME-Version: 1.0
References: <C9C14F68-BFFF-4BF6-A8AA-60E5EB445F4E@fitzsimons.org>
In-Reply-To: <C9C14F68-BFFF-4BF6-A8AA-60E5EB445F4E@fitzsimons.org>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 23 Mar 2026 13:07:03 +0800
X-Gmail-Original-Message-ID: <CAGb2v662bq4Edw_wW07fc=dNkv8OErReOMycMZwhwQucgj-jtA@mail.gmail.com>
X-Gm-Features: AQROBzD_wEg_4B9BhQMFl0knBEArpYxmf5LvwMWuAnqAm8Usmu9ngi9umE1JeBA
Message-ID: <CAGb2v662bq4Edw_wW07fc=dNkv8OErReOMycMZwhwQucgj-jtA@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update Australia (AU) 6 GHz band to 6585 MHz
To: bruce@fitzsimons.org
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_220722_603237_0B67AD12 
X-CRM114-Status: GOOD (  16.14  )
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

On Sun, Dec 7, 2025 at 5:06=E2=80=AFPM <bruce@fitzsimons.org> wrote:
>
>
> Extend the 6 GHz band allocation for Australia from 5925-6425 MHz
> to 5925-6585 MHz, adding 160 MHz of additional spectrum.
>
> This change reflects the Australian Radiofrequency Spectrum Plan
> Variation 2025 (No. 1), which took effect on 1 October 2025.
>
> References:
> - ACMA Outcomes Paper: Future use of the upper 6 GHz band (December 2024)
>   https://www.acma.gov.au/sites/default/files/2024-12/Outcomes%20paper%20=
-%20Future%20use%20of%20the%20upper%206%20GHz%20band_0.pdf
>
> Signed-off-by: Bruce Fitzsimons <bruce@fitzsimons.org>

Sorry for getting to this just now. I somehow accidentally archived it.

Thanks for the patch. I believe it was already covered by a previous
change updating all the rules for AU.

> ---
> db.txt | 3 ++-
> 1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/db.txt b/db.txt
> index fdc2c13..7eac515 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -159,7 +159,8 @@ country AU: DFS-ETSI
> (5850 - 5875 @ 20), (25 mW), AUTO-BW
>
> # Item 63AA (25 mW if outdoors)
> - (5925 - 6425 @ 160), (250 mW), NO-OUTDOOR
> + # Extended to 6585 MHz as of 1 October 2025
> + (5925 - 6585 @ 160), (250 mW), NO-OUTDOOR
>
> # Item 65
> (57000 - 71000 @ 2160), (20000 mW), NO-OUTDOOR
> --
> 2.43.0

