Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EABC8C021B8
	for <wireless-regdb@archiver.kernel.org>; Wed, 26 Feb 2025 09:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQHHdmcmwPG6E32n8pu0pgqhQhVcKU42ifc7tHbMbw0=; b=wMW6a2+44Qq2fB
	JLDSJAqJNaq2Dx7gWN8entJEmz25xdNDcvaDbZwlQQykCsgceuJPc+k23vGy5pkUO5sxIGG2XQ6rJ
	nz8xnsPrtMxq7tNAk1gfV8ZI0ysU19cG7LWbM1tAGzpDrxP6pgFsdWU9gihd1lvh7WlvEDpPItzkj
	CDfeiu5XkzGuLV8eg594OV3j71/ZmPbR6u9WOhMBGBBxydso/FIOURz/FKlwQITzaG10JBdoq63Xi
	TtsWrOY76KDjBq+g9IdmHH3zCHT9iZtWRn3FTmSdObU4gWXAKIKjhK7mWhFAUe970bzHRv5UI3leT
	e76Bs8txY3s8nNtUkpvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnDd6-000000033uE-3qfN;
	Wed, 26 Feb 2025 09:23:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnDFR-00000002zCU-08KW
	for wireless-regdb@lists.infradead.org;
	Wed, 26 Feb 2025 08:58:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 359295C3E06
	for <wireless-regdb@lists.infradead.org>; Wed, 26 Feb 2025 08:57:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF1A0C4CEE7
	for <wireless-regdb@lists.infradead.org>; Wed, 26 Feb 2025 08:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740560311;
	bh=r+d2GDeEhk5nWbfN0eIqGCaqhybLzeYgFAkmXjneBe8=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=qB0nVSxA1tmQwga2VQOqFxRsMUekM3hkFMfaQrvHGYM9/x0LqnraFJWriHjkPp0l2
	 cNC8tViPwlNoIhnBHp0k6+kaw5bcRDEGLn64wf0WSqPiqDcICd0/7jls/3ChRTcRGm
	 xTTvEUrlF54Wi2u4/rrg3gYi4zybhSCWiP932CtP6O6gqIdfCBW5Ze6bqviSGHumEQ
	 RVIGtI1TQwq45M7/IGtJhFTy+SMUm6GSDiVCppUX0oEKJL1dOd9qwt3cSuImGltJAU
	 0mh3P8cCT8pTodA6+6fxuFsqYBgPTLFEySqsqOT2Pl+Le7+qVByn/YityVPRrPjheC
	 Z9SY5H6fi4a/w==
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-30761be8fcfso60372421fa.0
        for <wireless-regdb@lists.infradead.org>; Wed, 26 Feb 2025 00:58:31 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVFB7ZZfD1z3T/LeXoKzZDP4p6KRO5uQfC55R0quKzay9Gl1TKjfTWu0/m5ZJTTmu5w5SKHRE4mdLYp8Gqf3Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YwlQ94nN+W9SujeoY7WY3ZZeL5ObgKiG4IHairNLbHmSEEkyFDO
	5+VYZGbu/p5zvgvV4ggYjzJxGZK9Mk3kbQz4mGj+aLghCXk26UuvcBvtWusMLVblwuTzxFLsHst
	qmdNGFDela+ydHXU5xhmleQFiscI=
X-Google-Smtp-Source: AGHT+IF+5iYiZmdfk3MQsoUCofo2kaSekZRjfw2qLdrcNSedt79i1Hy8VAPwzBKEG496hBcpldV30BYSDaISadXxJn4=
X-Received: by 2002:a05:6512:114d:b0:546:2ea9:6662 with SMTP id
 2adb3069b0e04-54851109c6emr4425914e87.51.1740560310105; Wed, 26 Feb 2025
 00:58:30 -0800 (PST)
MIME-Version: 1.0
References: <000201db8822$98f28da0$cad7a8e0$@gmail.com>
In-Reply-To: <000201db8822$98f28da0$cad7a8e0$@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 26 Feb 2025 16:58:18 +0800
X-Gmail-Original-Message-ID: <CAGb2v65490c1m3W_1RkxJ-E7Q=3V_K8xqS2jmd6awcOdzWHXzQ@mail.gmail.com>
X-Gm-Features: AQ5f1JooJqS3tNZUNR5r1a1dhMiVLAirpBoNgek75sBI8ivoUWypoas7gORZiNc
Message-ID: <CAGb2v65490c1m3W_1RkxJ-E7Q=3V_K8xqS2jmd6awcOdzWHXzQ@mail.gmail.com>
Subject: Re: wireless-regdb: Allow 6ghz in the US
To: rmandrad@gmail.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, 
	Dennis Bland <dennis@dbperformance.com>, Ping-Ke Shih <pkshih@realtek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_005833_205899_705E0B60 
X-CRM114-Status: GOOD (  12.94  )
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

CC-ing Dennis, the original submitter, and also Ping-Ke, who has done
a lot of 6 GHz updates, for more information.

On Wed, Feb 26, 2025 at 4:03=E2=80=AFPM <rmandrad@gmail.com> wrote:
>
> Allow 6ghz in the US
>
> https://www.federalregister.gov/documents/2020/05/26/2020-11236/unlicense=
d-u
> se-of-the-6-ghz-band allows the use of 6ghz in the US namely section
> 59 https://www.federalregister.gov/d/2020-11236/p-66 with absolute radiat=
ed
> power of 30 dBm for the 320 megahertz channel

Please don't wrap URLs.

Please see the original submission [1], which explains why the power limit
is so low. Basically, neither the database nor the kernel supports
specifying power spectral density limits, so we can only take the
narrowest bandwidth to calculate the applicable power limit.

[1] https://lore.kernel.org/wireless-regdb/CAPRryQp6j4UKvLZCkMAuQdaxepMBETQ=
UJ1eNULJSh3ZWXC0f5Q@mail.gmail.com/

> based on this remove NO-IR flag and allow 30 dBm max power

The original submission mentioned NO-IR requirements, though I did not
find such wording. Dennis, do you have any ideas?

> Signed-off-by: Rudy Andram <rmandrad@gmail.com>
>
> diff --git a/db.txt b/db.txt
> index 803f1bc..bc2b4fe 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1953,7 +1953,8 @@ country US: DFS-FCC
>         (5850 - 5895 @ 40), (27), NO-OUTDOOR, AUTO-BW, NO-IR
>         # 6g band
>         #
> https://www.federalregister.gov/documents/2020/05/26/2020-11236/unlicense=
d-u
> se-of-the-6ghz-band
> -       (5925 - 7125 @ 320), (12), NO-OUTDOOR, NO-IR
> +       (5925 - 6425 @ 320), (30), NO-OUTDOOR
> +       (6525 - 6875 @ 320), (30), NO-OUTDOOR

The database entry targets LPI usage instead of standard usage, which
requires the presence of AFC, which is also a requirement that the
database is unable to represent. And under LPI usage, the full 6GHz
band (U-NII-5, 6, 7) is available.


Thanks
ChenYu

>         # 60g band
>         # reference: section IV-D
> https://docs.fcc.gov/public/attachments/FCC-16-89A1.pdf
>         # channels 1-6 EIRP=3D40dBm(43dBm peak)
>
>
>

