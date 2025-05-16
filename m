Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F6B0C3ABD8
	for <wireless-regdb@archiver.kernel.org>; Fri, 16 May 2025 08:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vqk4oEVinCOlFI/uJi49DuXA/NTBNXt8lD6a8yPWOgI=; b=p4E0PKDAfWyCBH1rIGpsnAbG+c
	cnwAKwgV16xrZ6T3GDCSYpvZ6awmnTctn55ZwAT0t47ImgWFPgJjUFLLfHM3IxQnVDkD+uTG5BhL3
	73xNMe/ABow8txFRvus4mL7Nkch5t2y4F1+k7RKCgYZQuM0FPygpTekb1JmVs57SBFEx9LIBFTY7Q
	aEMQju7OVxG73+TjfJ292GrbQHJsFlj0ChvCNzIMmtyHvWiT5I782lYSm+JI4tgvD2OmSIzXk2NVJ
	/48epnQZUo55yikvwiD4Ri4vriD+Myh9UK0sYqTK8h3G1C0VWv4kCxqgjK32SAxRGwWzc9Ovj9n0I
	/dJyTzVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFqOu-00000002r5A-3DAS;
	Fri, 16 May 2025 08:26:40 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:242:246e::2] helo=sipsolutions.net)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFqOs-00000002r0w-1Bp4
	for wireless-regdb@lists.infradead.org;
	Fri, 16 May 2025 08:26:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=Vqk4oEVinCOlFI/uJi49DuXA/NTBNXt8lD6a8yPWOgI=;
	t=1747383996; x=1748593596; b=gqB8t9VHSldtTG7as+BUd5LYPf78zsBVHBNK4RSUU2I48VW
	9pleZ135zNHaS9JULZi4EBdWPsRySQEJs0hgQHw+tCaxHJA/he2pKGM7kIYJ3Ot37xwWg9ExLqD5U
	R1JlubkmGfzJ23UE18dimu/XGCct2LwTHDa6XHABE3zioDcJH7FxwJSS9hshDXQ1OGg4qd5T6Shpg
	dxM7NeuIxhcsGYrstdUPmmIcMB9uOjuAuvb+n+5e850u5OncqXoigek+1g21IZqRNmo0ENsXnVLpu
	ezSOkPnZGNWmrkSvYG+UZ++2pNip38zSrQZu352fPiQmeV7WdkieLBMsmtSaHmXA==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.98.1)
	(envelope-from <johannes@sipsolutions.net>)
	id 1uFqOm-0000000E5Zb-2UWt;
	Fri, 16 May 2025 10:26:32 +0200
Message-ID: <e709c160b9a8eae55c5678fd222f1239657dfa29.camel@sipsolutions.net>
Subject: Re: wireless-regdb: Wrong ETSI tranmit power without TPC
From: Johannes Berg <johannes@sipsolutions.net>
To: wens@kernel.org, Alexander Wilhelm <alexander.wilhelm@westermo.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Date: Fri, 16 May 2025 10:26:30 +0200
In-Reply-To: <CAGb2v676sXN_eC9s6_2a6k2ACzf3n5jBgY_id22ruoz+Zb-Jaw@mail.gmail.com>
References: <aBoK6p1+F5ve1rC6@FUE-ALEWI-WINX>
	 <CAGb2v676sXN_eC9s6_2a6k2ACzf3n5jBgY_id22ruoz+Zb-Jaw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_012638_340317_FA1A23B8 
X-CRM114-Status: GOOD (  11.73  )
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
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

On Fri, 2025-05-16 at 16:15 +0800, Chen-Yu Tsai wrote:
> The conversions don't always produce round numbers, and since we can't le=
t
> the system exceed the _actual_ limit, the values can only be rounded down=
.
> For example, 500 mW converts to roughly 26.9897 dBm. We can't use 27 dBm,
> since if the system outputs at 26.999 dBm, it would be in violation of
> the rules.

While technically true, I'd think it's probably hard to even measure
that accurately, 27 dBm is 501.187 mW?

> Or, if we understand 3 dBm reduction to be halving the power,

That's fairly precise, a factor of 0.501.

> we could
> fix up any rules that "have their base limit in mW and were converted to
> dBm to apply the reduction" be rewritten in mW with the numbers halved.
> That would require someone to go through the entries though. But if
> the rules are already written in mW, and what you observe is the kernel
> rounding down the numbers, then perhaps the kernel may need to support
> both units.

I don't think _drivers_ (or firmware) would support both units, so
that'd just shift the rounding issue elsewhere?

Though I think in some places we use "mBm" instead of dBm? But then we
also just convert to dBm in many places so that'd likely not make it any
better.

johannes

