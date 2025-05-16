Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18F47C3ABD8
	for <wireless-regdb@archiver.kernel.org>; Fri, 16 May 2025 08:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/aoI8cYNka3AWq5N+MAe6yEi68YuEJ02voLtq3OBqIA=; b=c5CpVTJ86waP2P
	8uIajMZHBAwiXheMvnxXgQoiMzeekIyev4g6pmv1ZnaAO1qUeEOhlzlZbTlcvlbqTxyQqAWniDptX
	kOO9V6o3OLV5/pCwYg0EVMc3rGPg32KRV3+zl/aulH+LYURu4pvgZx8ayX4BSKOVRYDZihB+OEW4a
	sWlpaiUckqObluN/A7mfhW/ixZcmXccelkmhhQdnC24A01r60VWwPgEHSBCoViXfV00veTHtgM0vd
	dqnTcD24Mse4gjG6cO1lCiFyQfDc6OO6Mrp0BFmbRXH32X5HOu3sASXnAHF4NSV4K3tngSMz/5G/0
	VAKdWWS0lUobVPfFmkfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFqFJ-00000002mka-3L6N;
	Fri, 16 May 2025 08:16:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFqEV-00000002mPo-0OAh
	for wireless-regdb@lists.infradead.org;
	Fri, 16 May 2025 08:15:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 439F75C4A4F
	for <wireless-regdb@lists.infradead.org>; Fri, 16 May 2025 08:13:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42BB4C4CEEF
	for <wireless-regdb@lists.infradead.org>; Fri, 16 May 2025 08:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747383354;
	bh=sbofOfQ8qYoR6VnvhpGlReJGNeE++W4mzbqm6wxsDoo=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=VY6EHgDdaRNFBn+q3R9xGUZEHvhxD21280YJPL+//FoQWz8p7v5dWN2XdsYyLoGCY
	 ipVuadhNfmdfAe4KHumc1av90X0Lju6+cnkQ9scS+VqGBHmN6V4fVNMmQagqJcX+1D
	 mHoPSVuD0bTu/LGkffTqGVHnHce2s0U9sO5uWtr9zx8KbyhmHI5+pm9ZBYaGB7BRBc
	 jGt8EfMUQ8sd7t19xeHxxgR5rFXd8qhYQfXRbp5Mf1JwQVxh6cmJuj9s8Ng4zlFIPJ
	 tSG68Em9wEI47OuhjlI2duA2Gz1/fyY8QYqiv+F5pQzJnFRF+6x0UHwBFt5n7fAkHG
	 nloB6ahuEzttQ==
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5499614d3d2so2083381e87.3
        for <wireless-regdb@lists.infradead.org>; Fri, 16 May 2025 01:15:54 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWojEHwElzfwrL2GTsgUX05EaCDv2rQnAC1uk97W4WTWBVEiNPcOFn126/vy/A9aFbwtjkx/OIwRwQ9R18CYw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+U2PjMzo8iQFcyPjeHyyNA0IGC1A6/fxoIw59z4WFCfPSJ7K6
	5oK2k9N3K/vkVXBWNigI1e9MzhT0zZ9Z2FgyTGBJ7FF5HW2Q6OBoyQIUNcuc8bd1SPGY0Q9y9RU
	v5Q+WNbYT0sKEs3GkC9z+r90Em+gFWHo=
X-Google-Smtp-Source: AGHT+IHvoE8TOTQ64vdjGwNqqK1uzPtuktATwgcYMidtFPO15Yh9BoKOYwe2lTpOlV8zU11DST5EQsTW1o2Boi28HRw=
X-Received: by 2002:a05:651c:31c1:b0:30c:111d:d7b8 with SMTP id
 38308e7fff4ca-328076fca1cmr6434061fa.10.1747383352619; Fri, 16 May 2025
 01:15:52 -0700 (PDT)
MIME-Version: 1.0
References: <aBoK6p1+F5ve1rC6@FUE-ALEWI-WINX>
In-Reply-To: <aBoK6p1+F5ve1rC6@FUE-ALEWI-WINX>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 16 May 2025 16:15:40 +0800
X-Gmail-Original-Message-ID: <CAGb2v676sXN_eC9s6_2a6k2ACzf3n5jBgY_id22ruoz+Zb-Jaw@mail.gmail.com>
X-Gm-Features: AX0GCFsRs10QpUGqpJqwT4TPV9Q9e-KLoXLHjEASJXFTgAjmKW5xYikSy036M6s
Message-ID: <CAGb2v676sXN_eC9s6_2a6k2ACzf3n5jBgY_id22ruoz+Zb-Jaw@mail.gmail.com>
Subject: Re: wireless-regdb: Wrong ETSI tranmit power without TPC
To: Alexander Wilhelm <alexander.wilhelm@westermo.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, 
	Johannes Berg <johannes@sipsolutions.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_011555_215952_B2A6BC87 
X-CRM114-Status: GOOD (  15.92  )
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

On Thu, May 8, 2025 at 1:25=E2=80=AFAM Alexander Wilhelm
<alexander.wilhelm@westermo.com> wrote:
>
> Hello devs,
>
> please correct me if I'm wrong. Since TPC is not used, the EU Rules dicta=
tes to
> decrease the transmit power by 3 dBm on some sub-bands. For the most of t=
he EU
> countries the mW instead of dBm is used. Therefore they are halved (e.g f=
or
> Germany (DE) in commit 81d251dda3985e1088bd89f5d9f565e63ba5a30f). The pro=
blem is
> that the values are then converted to dBm and rounded down and result in =
a wrong
> supported value. Take a look at example (Germany again):
>
> country DE: DFS-ETSI
>     (2400 - 2483.5 @ 40), (100 mW)
>     (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=3DETSI
>     (5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=3DETS=
I
>     (5470 - 5725 @ 160), (500 mW), DFS, wmmrule=3DETSI
>     # short range devices (ETSI EN 300 440-1)
>     (5725 - 5875 @ 80), (25 mW)
>     # WiFi 6E
>     (5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=3DETSI
>     # 60 GHz band channels 1-4 (ETSI EN 302 567)
>     (57000 - 66000 @ 2160), (40)
>
> For the frequencies 5250 - 5350 the power of 100 mW results it 20 dBm. Co=
rrect.
> The frequencies 5470 - 5725 have a power of 500 mW. It results in 26 dBm.=
 But I
> believe 27 dBm are allowed. For the frequncies 5725 - 5875 the value of 2=
5 mW is
> also dictated. I'm not sure if I should expect 14 dBm, but I get 13 dBm.

Are you reading the converted numbers from the system, not the database
text file?

> Is there inconsistencies between dBm/mW conversions? Please give me a fee=
dback.

The conversions don't always produce round numbers, and since we can't let
the system exceed the _actual_ limit, the values can only be rounded down.
For example, 500 mW converts to roughly 26.9897 dBm. We can't use 27 dBm,
since if the system outputs at 26.999 dBm, it would be in violation of
the rules.

Or, if we understand 3 dBm reduction to be halving the power, we could
fix up any rules that "have their base limit in mW and were converted to
dBm to apply the reduction" be rewritten in mW with the numbers halved.
That would require someone to go through the entries though. But if
the rules are already written in mW, and what you observe is the kernel
rounding down the numbers, then perhaps the kernel may need to support
both units.


Thanks
ChenYu

