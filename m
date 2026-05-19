Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBA48CD4851
	for <wireless-regdb@archiver.kernel.org>; Tue, 19 May 2026 09:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tZw93ICj25PnnYmvR4YeRspHxfndEVNyr3lMAYxh/k=; b=Dr0RkArnTsRD9k
	zfxRf8P5+R4u1sxYfD8uQ65BZ3NqizK8hb18k0WE7ap6pFu2aM8M2MPdvmzYhFQIJls4pwqauHgs4
	e+Ydef7HbtwxiEV19luvHh1MHOcg+iRy9RxYZiDuO4l6FcAXpz9w1SG42akpHXKncWVci6WRIcyZN
	qncQl7h7EeYzuG9SQqqk0CXzbCsKcE9p4WpXZ2phyhGvwSBfW5aLv3OiIOcLfT6FDRI+hqIr1dqZC
	GyOGrx244n5ePneEI1zf4qH6g5LE0Vd4VazsbYFSj/N8E1Uo5G+OobqblWDxbLRSo76n4Ky49KaGQ
	XAIqgsuhe2L4kZ6tXlaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPGIy-00000000ndo-1mNU;
	Tue, 19 May 2026 09:00:00 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPGIu-00000000ncW-1EFP
	for wireless-regdb@lists.infradead.org;
	Tue, 19 May 2026 08:59:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0C10B44324
	for <wireless-regdb@lists.infradead.org>; Tue, 19 May 2026 08:59:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3289C2BCFA
	for <wireless-regdb@lists.infradead.org>; Tue, 19 May 2026 08:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779181195;
	bh=5tZw93ICj25PnnYmvR4YeRspHxfndEVNyr3lMAYxh/k=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=AMm8iQRDn1b3QQ/hPLNQ/UGIGvCF0ErlJ4dzN3aD+lQ+H3aYvv8VYt9COVVqG/G98
	 vJApltRLq4ojf0eTH0EIcXKeuThuF1XiLTcw2/iD4ApcWBzHJYP2F9ycZCpAQT/Cag
	 JY/mh7rmRlzGgU1n+ufTPaUdNImn+Wych5F+wG2onLLL83S7RwSS2vqn9unHuRzMMB
	 aoWefXET+Wg6bK6eVgaOWUpzDM3vTSny9TS468TpdLtNl0OFjsRUKSeI9yp1z4SzBL
	 ijAsssXQIfu4i8wMW+LxTTbQN4a8N4Xld/b73tSPhF0SBvSMocfyJIhBGYCEOT4PB8
	 BFkr6iMziFYNA==
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-38eab6cf7d8so26492181fa.1
        for <wireless-regdb@lists.infradead.org>; Tue, 19 May 2026 01:59:55 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ/S/9NKHxqJUx+D5exTwKGX2frju4Vj3zq2P7WLx6YYV/ox6d8+gJHPg7UgTuBdHkj9i8n9wiuFssfIG9HLIA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1GDUGvSPDJtBM9RNXPgYkScIsMLhIHzDpshNf8hGyqNil6oBt
	4ZDybobzSQDd1pZz66fzAWRsrhGmBLtG6YZXBgeGFxB7MRQTnekU588jBuqgGeSIWy4DJ2hAzjU
	E8pRdbkAM0Bge5S47yJVrfbQtF3yswUA=
X-Received: by 2002:a05:651c:440d:20b0:394:2c5d:8514 with SMTP id
 38308e7fff4ca-39561cc2043mr42013771fa.12.1779181194283; Tue, 19 May 2026
 01:59:54 -0700 (PDT)
MIME-Version: 1.0
References: <1886262646.6291779.1777997531793.ref@mail.yahoo.com>
 <1886262646.6291779.1777997531793@mail.yahoo.com> <dc91809a60874f87a5e9d67f0c4696e5@badraproject.com>
 <CAGb2v66mCBP8KiMF3nRTix_zYDhsb_o4KNj-7-enB0+ULvh0_A@mail.gmail.com> <21a4cc48403b338311ea0ff76d757893b1f765cd.camel@sipsolutions.net>
In-Reply-To: <21a4cc48403b338311ea0ff76d757893b1f765cd.camel@sipsolutions.net>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 19 May 2026 16:59:39 +0800
X-Gmail-Original-Message-ID: <CAGb2v6624U99E6AG1Yi5JrEpP4P9V8TmorJ4=GNK-R4Mxo9upA@mail.gmail.com>
X-Gm-Features: AVHnY4L_q8NPWKnpISJpvljFh593OtSjwPgq2P5kIDA2-ifC0GTqRV7V5dhNao0
Message-ID: <CAGb2v6624U99E6AG1Yi5JrEpP4P9V8TmorJ4=GNK-R4Mxo9upA@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: add regulatory rules for Iraq (IQ)
To: Johannes Berg <johannes@sipsolutions.net>
Cc: Mohammed.Al-Obaidi@badraproject.com, wireless-regdb@lists.infradead.org, 
	linux-wireless@vger.kernel.org, mnewiraq2000@gmail.com, mnew_iraq@yahoo.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_015956_367403_AAF3EEB6 
X-CRM114-Status: GOOD (  23.47  )
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

On Tue, May 19, 2026 at 4:55=E2=80=AFPM Johannes Berg <johannes@sipsolution=
s.net> wrote:
>
> Hi,
>
> > As for 10 MHz, I don't think it is supported, so we don't really consid=
er
> > that case. I could be wrong though.
> >
> > Johannes, could you shed some light on 10 MHz channel width support?
>
> It's ... complicated?
>
> We support a _very_ limited set of 5/10 MHz operation, but I think most
> of it is fairly much unreachable from userspace. I asked about removing
> it entirely a few years ago, and some people were opposed, but said
> people also haven't actually helped take care of it or anything ... I
> was just tempted again a little while back to remove it due to the rates
> issues.
>
> Ever since my commit 5add321c329b ("wifi: cfg80211: remove scan_width
> support") I believe it has been unreachable on the *client* side, but
> given that we still have some support in _nl80211_parse_chandef() and
> chandef functions, I expect that it would be possible to still configure
> an AP or monitor interface with 5/10 MHz, though only with drivers that
> have WIPHY_FLAG_SUPPORTS_5_10_MHZ, i.e. ath5k, ath9k and hwsim. I
> wouldn't mind removing it all though.
>
>
> Is this a concern from a regulatory POV right now, due to say power
> density by channel width? This feels somewhat familiar even with higher
> channel widths - maybe it's time to add such an attribute to the regdb?

There are some regulations that say X dBm for 10 MHz or X*2 dBm for 20 MHz.
I've mostly been ignoring 10 MHz since that doesn't seem to be a thing
in modern WiFi. This is slightly different from the newer PSD rules we
are seeing with 6 GHz, since it only gives two points instead of an
actual density value.


ChenYu

