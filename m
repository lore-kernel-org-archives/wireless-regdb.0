Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93031EFCE5E
	for <wireless-regdb@archiver.kernel.org>; Thu,  5 Mar 2026 03:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rtWwSODzhM9bGdfnFWIF229UEtOOMEh0OJ4fMg470zI=; b=eNI5BUE7VGc6du
	NHLXQ6605wVP7+SbxEBBwHENekEqFo39xALOlLMNQFIvdcLiHFVqmLY6TGRLY91gqygkeTZBzeGMX
	CF7fD4nv1q2LbiapAiKvMdprTxyQlWihtRt2rigXdQEkV8n4ZTfKzy6r7V9lVV3MokpJOYM5gxx5q
	OfA+xuC5cVaiOvik5KDKEbpmwpEYjLcgg52lV3K3oeOnzwkKiGqBfVk/b69w132cZxfcRqegvFNjL
	XSbJynTaE6dvcZdXttPHmKAxLsVFq/m2tFc1bYaT1wjLtNhcC/2F2zb8gEEd48P8ltzME2h6qzAiS
	Kpzhn4QfCcn/Xoo1MREw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxzYQ-00000000rmU-0U5b;
	Thu, 05 Mar 2026 03:39:14 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxzYN-00000000rm9-0fU3
	for wireless-regdb@lists.infradead.org;
	Thu, 05 Mar 2026 03:39:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CBCF6403C9
	for <wireless-regdb@lists.infradead.org>; Thu,  5 Mar 2026 03:39:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A996DC116C6
	for <wireless-regdb@lists.infradead.org>; Thu,  5 Mar 2026 03:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772681950;
	bh=K9Y3P2l9TGZyZ1AWdrty/1zqX7Q+Q62uOy6h7VnEE/Y=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=XOSuunSrQToLKMzTk8oqlGVi4chWVVp796WmLHn7TxxcY613+GRcxx8WCusO6a8WT
	 f8Fq5w5jFDc/co1dVk5xGgaGtTNcxnYcdOtZzhKnQUoLA2dcfBmPOQaEP1Jl8udCYu
	 KuIavCSVvs3qPtEsKXKuOjmk7B/nrjQjv0+yKQSpOvo90/q+TWQ57/7Di865mfIKZY
	 R3FEuYtk/iCnV2Y+s8N6zDJO7k7tvyA+AqrOVL82aMqm5hKsRj5f2yhEdFAYySmYvA
	 Jh5F9pgAIznxL3+GmK0ZzFyR0kcMAVZk9vZGbsyU4/pF8OYWtuMm7bcDERYCdIXLoo
	 vV31xnNEGxWUA==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-389e139ee5eso129465931fa.0
        for <wireless-regdb@lists.infradead.org>; Wed, 04 Mar 2026 19:39:10 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXeGiRGOUxNC6IxXgoY9w3h4wlUjyTKNOjK02N/0gwIWa4rpPmlP070/36nnj7kVNXseM6uPzsf3VM6vCAjsg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzxQsamwRbR0p2dqh0HTA2aTqxDcRnu6OLGlwhMY0jP6ynA7Ucm
	hGCc2dwevezLelTOYHgd43fDW3vH0AGAMRliTlKyD6S0MQeXJtktaf2YZF68kjHjguRiJrx1ZiD
	b5MvKbjEuNhAJpDMXxCoAZ5D63Ma2mzs=
X-Received: by 2002:a05:651c:385:b0:385:f547:1842 with SMTP id
 38308e7fff4ca-38a2c7caea1mr23560181fa.30.1772681949020; Wed, 04 Mar 2026
 19:39:09 -0800 (PST)
MIME-Version: 1.0
References: <CADqxL9qYq_+8dPgXj5i_HjkpTOZwiAawsa90tNbA4Q87ZhCrSA@mail.gmail.com>
In-Reply-To: <CADqxL9qYq_+8dPgXj5i_HjkpTOZwiAawsa90tNbA4Q87ZhCrSA@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 5 Mar 2026 12:38:56 +0900
X-Gmail-Original-Message-ID: <CAGb2v6617V-jLnLrBYEZfSiv-2c8QsN2HMCmQbaXdm9NVwGGEA@mail.gmail.com>
X-Gm-Features: AaiRm53Z72uBQMmccTne6AOUMGnX_LhdT571coFKm9Dnmt3RXvf28VtWQ6Kelmg
Message-ID: <CAGb2v6617V-jLnLrBYEZfSiv-2c8QsN2HMCmQbaXdm9NVwGGEA@mail.gmail.com>
Subject: Re: wireless-regdb: Update IN regulatory domain for lower 6 GHz
 (5925-6425 MHz)
To: Degrader Snehil <degradersnehil@gmail.com>
Cc: linux-wireless@vger.kernel.org, 
	wireless-regdb <wireless-regdb@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_193911_246719_CEFD487D 
X-CRM114-Status: GOOD (  18.89  )
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

On Thu, Mar 5, 2026 at 3:16=E2=80=AFAM Degrader Snehil <degradersnehil@gmai=
l.com> wrote:
>
> Hi,
>
> I would like to request an update to the IN (India) regulatory domain in =
wireless-regdb to add the newly permitted lower 6 GHz band (5925=E2=80=9364=
25 MHz).

Thank you for the information. Would you like to provide a patch?
If not, I can write up a patch and tag you as the reporter.

> The Government of India has officially opened this band for licence-exemp=
t use via Gazette Notification G.S.R. 47(E), dated January 20, 2026, publis=
hed January 21, 2026, issued by the Ministry of Communications under the In=
dian Telegraph Act, 1885 and the Indian Wireless Telegraphy Act, 1933.
>
> Gazette details:
>   Title   : Use of Low Power and Very Low Power Wireless Access System
>             including Radio Local Area Network in Lower 6 GHz Band
>             (Exemption from Licensing Requirement) Rules, 2026
>   File No : 24-04/2025-UBB
>   Gazette : No. 47, CG-DL-E-21012026-269488
>   Signed  : Devendra Kumar Rai, Joint Secretary, Ministry of Communicatio=
ns
>   URL : https://www.dot.gov.in/static/uploads/2026/02/88f0ac8c74eb6f69079=
34d17d0015ab5.pdf
> The Gazette defines two device classes for 5925=E2=80=936425 MHz:
>
>   1. Low power indoor
>      - Max EIRP         : 30 dBm
>      - Max PSD          : 11 dBm/MHz
>      - Max bandwidth    : 320 MHz
>      - Restriction      : Indoor use only (Rule 5)
>
>   2. Very low power outdoor
>      - Max EIRP         : 14 dBm
>      - Max PSD          : 1 dBm/MHz
>      - Max bandwidth    : 320 MHz
>      - Restriction      : None
>
> Additional operational restrictions per Rule 5 of the Gazette:
>   - Band is prohibited on oil platforms
>   - Indoor use prohibited on land vehicles, boats and aircraft below 10,0=
00 ft
>   - Communication with and control of drones/UAS is prohibited
>   - Contention-based protocol is mandatory for all devices (Rule 4)
>
> Out-of-band emission limit: -27 dBm/MHz outside 5925=E2=80=936425 MHz (Ru=
le 6)
>
> Proposed addition to the existing country IN entry in db.txt:
>
>   country IN:
>           (2402 - 2482 @ 40), (30)
>           (5150 - 5250 @ 80), (30)
>           (5250 - 5350 @ 80), (24), DFS
>           (5470 - 5725 @ 160), (24), DFS
>           (5725 - 5875 @ 80), (30)
>           (5925 - 6425 @ 320), (30), NO-OUTDOOR   # low power indoor
>           (5925 - 6425 @ 320), (14)               # very low power outdoo=
r
>
> Note: Since both device classes share the same frequency range but have d=
ifferent EIRP limits and indoor/outdoor restrictions, I have represented th=
em as two separate lines. Please advise if a different encoding is more app=
ropriate.

Unfortunately we currently only support one rule per band. I'm inclined
to add the VLP one so outdoor usage is allowed.

> I have attached the official Gazette notification PDF as supporting evide=
nce.
>
> Intel has also submitted a related update (Intel=C2=AE Wireless Wi-Fi Dri=
vers 24.20.2) for this band for India. I am not certain whether that patch =
covers wireless-regdb (db.txt) or only their iwlwifi driver internals, so I=
 am submitting this request for wireless-regdb independently to ensure the =
authoritative database is updated.

AFAIK Intel manages regulatory requirements in their firmware, so it is
unrelated to the database we maintain.

> Intel's Regulatory Domain Info was found in Release notes of their  Intel=
=C2=AE Wireless Wi-Fi Drivers 24.20.2 available at page 2 of https://downlo=
admirror.intel.com/914148/ReleaseNotes_WiFi_24.20.2.pdf.
> Please let me know if any further information is needed.

The information you provided is very detailed. Thanks!


ChenYu

