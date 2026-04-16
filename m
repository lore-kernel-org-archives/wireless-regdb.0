Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1D06F8D74B
	for <wireless-regdb@archiver.kernel.org>; Thu, 16 Apr 2026 14:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hhiCF+xGL6vW4cUZ+xSQjx9PRNux5qz3SWSnSwv8pGQ=; b=v2PCz9OQoaWXn4
	Xj0opcYMKVvLhy3dvKnOGXKYtwNFNqrbqHkycEon0jX00IuIso1aWLP9SsQ1Xb5/72/jxltgRW0qI
	HPzvCwQHuMcyUmcnXHb23Haak0jWP3fEZESvYzhW8W9+OLXsiVyFMcm3mLY9EuvRe7c0p8ldXVDAU
	j9zQH7knUjSkhEv/RN4azfyRDJfmEQPdYr3qd3ssMqCLbC6sUu8aOnBvmKZcCKd4D5HO5pTJ9ydbY
	88WJLNEq2ZgcrNDbJxNSROUjvYja6nE3qJQkUuaW31B5yy0cNMjzwoAPxRscylsU5Dem4QRcI/p2i
	si+dPqBQKj6d03HKYy/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDNhF-00000002YyO-1fZm;
	Thu, 16 Apr 2026 14:27:57 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDNhB-00000002Yxy-44t2
	for wireless-regdb@lists.infradead.org;
	Thu, 16 Apr 2026 14:27:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E225743468
	for <wireless-regdb@lists.infradead.org>; Thu, 16 Apr 2026 14:27:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C36C1C2BCB6
	for <wireless-regdb@lists.infradead.org>; Thu, 16 Apr 2026 14:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776349672;
	bh=cymYbpVvOZDnuiaYtkKf9NaNbQ/BsRf5lWVB357X7U8=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=Zm8E+rEmWECXrHA+JzercWgdRxF9r0M3ISdZbZ/PPrerSLCuKzM903CiHhls4B86Y
	 cylVTvF5+MlbENeJ+ndBGBoDvNWYWrt3mtHdKFMXBEdXk1eWnu1u6i021z80dLb6+J
	 mi7+CR+ao3qw07zulNfwCOtHaAy0FAW1Khh6RqRDvB42O8IWQxqjWGq1oAFCV25/KN
	 uPp1seXh6OYy9BQG7xf5v/vm1XYpZr9GP9ScF7FaDhHxtdcTrA3uR7KGgpe8HVGoFz
	 uwzsiBT+0D6niVNQaI04sohRXeHETvtmQex+x6turhtGqEqfFI1CvHcwWpAQ7qqmCm
	 wSTBBENmJ6qOg==
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5a40b2d26a1so1528965e87.0
        for <wireless-regdb@lists.infradead.org>; Thu, 16 Apr 2026 07:27:52 -0700 (PDT)
X-Gm-Message-State: AOJu0YwC92UN6CMFC7Zw23aSBQNbbqT0DS72vFyi+UBgAP4ZgaaFoXle
	idlI90WgBaKuAtHAbZCFbQmvF6242ObjjVfFlgXK6GOJuT59hP+83Zd/qw4urAKZw26M0aUFGag
	yDQxdg9uUYr7WU3hj3Jq62dG+9wyOLM8=
X-Received: by 2002:a05:6512:32c7:b0:5a4:d44:99f0 with SMTP id
 2adb3069b0e04-5a40d449ae7mr1403054e87.6.1776349671096; Thu, 16 Apr 2026
 07:27:51 -0700 (PDT)
MIME-Version: 1.0
References: <20260411222155.299441-4-loukot@gmail.com> <CAGb2v64q6L43iZYusUuJ5h1yvZKzpAKYbOa8d1OL+9puJ6Mxvg@mail.gmail.com>
 <20260417060000.ru-analysis@gmail.com>
In-Reply-To: <20260417060000.ru-analysis@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 16 Apr 2026 22:27:38 +0800
X-Gmail-Original-Message-ID: <CAGb2v64R7SCed2FXgL-6w0Qm65Wsvjp-rCr-YHtxQjHWQq2G+Q@mail.gmail.com>
X-Gm-Features: AQROBzDaOI3ReGbTZR9e5c5ecks7LXgKpAq-S-NniFlth01tOH_hLyKcNPDdjZ0
Message-ID: <CAGb2v64R7SCed2FXgL-6w0Qm65Wsvjp-rCr-YHtxQjHWQq2G+Q@mail.gmail.com>
Subject: Re: [PATCH 3/5] wireless-regdb: Fix 6 GHz LPI power for Russia (RU)
To: Louis Kotze <loukot@gmail.com>
Cc: wireless-regdb@lists.infradead.org, Valeriy Kosikhin <vkosikhin@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_072754_078349_4E03E052 
X-CRM114-Status: GOOD (  24.73  )
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

On Thu, Apr 16, 2026 at 10:18=E2=80=AFPM Louis Kotze <loukot@gmail.com> wro=
te:
>
> On Mon, 13 Apr 2026 at 07:03, Chen-Yu Tsai <wens@kernel.org> wrote:
> > This page doesn't actually contain any useful information.
>
> You are right =E2=80=94 the eleoscompliance.com reference was a secondary
> source and not useful. I have since obtained the primary SCRF
> documents (shared by Valeriy Kosikhin) and verified them directly.
>
> > I did find https://www.gccorp.com.tw/en/?p=3D2173 using the document
> > name you gave, but that also mentions that "automatic power control
> > system" is required. I assume that is TPC, which Linux basically
> > doesn't have. So we still have a problem here. If the rules were
> > based on FCC or EU regulations, then we sort of adopt a 3 dBm
> > reduction in the limit.
>
> The TPC concern is resolved. SCRF Decision 23-68-03 (September 27,
> 2023) replaced the phrase "With the use of an automatic power
> control system" with "With the use of LBT mode" across all entries
> in Annex 2 of SCRF 07-20-03-001. This is a literal text
> substitution (clause 3.1 of 23-68-03). There is no TPC requirement
> in the current SCRF allocation, so the -3 dBm reduction does not
> apply here.
>
> LBT as required by ETSI is satisfied by standard 802.11 CCA (Clear
> Channel Assessment) =E2=80=94 the mandatory listen-before-transmit mechan=
ism
> in the 802.11 MAC layer. ETSI EN 301 893 clause 4.8 establishes
> this for 5 GHz RLAN, and EN 303 687 for 6 GHz. Linux mac80211
> implements CCA in the standard transmit path.
>
> (The SCRF text actually says "LBT2 mode" =E2=80=94 Valeriy traced this to=
 a
> clerical error where a footnote marker "2" was merged into the term
> during a copy-paste between SCRF decisions 21-60 and 23-68-03. There
> is no "LBT2" in any technical standard. He has reported the error to
> the SCRF.)
>
> Verified SCRF allocation values (from primary PDFs):
>
>   2400-2483.5 MHz: 100 mW EIRP, no restriction
>   5150-5350 MHz:   200 mW EIRP, indoor, LBT
>   5650-5850 MHz:   200 mW EIRP, indoor, LBT
>   5925-6425 MHz:   200 mW EIRP (LPI), indoor, LBT
>   57-66 GHz:       40 dBm EIRP, indoor
>
> The current db.txt has 100 mW for all three 5/6 GHz bands. The SCRF
> allocation shows 200 mW. For 5650-5850 and 5925-6425, all applicable
> Russian regulations agree on 200 mW =E2=80=94 these entries do not reflec=
t
> the current regulatory limits.
>
> For 5150-5350, there is a complication: the SCRF allocation says
> 200 mW, but the equipment certification rules (per-standard Orders)
> cap power at 100 mW for 802.11n (Order 124) and 802.11ax (Order
> 321). Only 802.11ac (Order 129) allows 200 mW with TPC.
>
> This raises a question I would appreciate your guidance on:
>
> When a country has separate spectrum allocation (200 mW) and
> per-standard equipment certification rules (100 mW for most
> standards), should the regdb encode the spectrum allocation ceiling
> or the most restrictive equipment limit? The ETSI model puts both
> values in the same standard (EN 301 893: 23 dBm with TPC, 20 dBm
> without), but Russia has them in different bodies of law.

The most restrictive one. Basically we cannot give the user device any
chance of violating the limits (or any other restrictions).

> Full source URLs are in Valeriy's reply in this thread. My v1 was
> incomplete =E2=80=94 it only addressed 5925-6425 and used an inadequate
> reference. Valeriy is preparing a comprehensive update with lawyer
> review. We are coordinating on the scope of a v2.

Cool. A full document (such as Valeriy's reply) in the commit log is
probably too long. Please try to make it more concise. You can also
provide a link to the other reply on lore.kernel.org to provide more
context.


ChenYu

