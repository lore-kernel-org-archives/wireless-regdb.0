Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D944AC5DF8C
	for <wireless-regdb@archiver.kernel.org>; Mon, 24 Aug 2026 04:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bamvOZ5tUCgdaqL7D0Y/4JjSmYGsOedivVLNrTZcQ6U=; b=mA24AO0J/CAdpe
	nFs5efeF1fBZo7wuOjjyIhenSDEy+E+MItXFf4pcjI5HcitQf/tFYVlnAR6ialEIMdicsTTyOZz36
	T4ny9UZsAlW5arKUstS6uxqz09e91twGf0s7VyBeJqoo3Ds4NMim3PgNAqTqWkVP03uWzytcMxzN3
	0bKcGcZDfSJX7PhvTTmliCNcrx4rARvjm2YNgAyhvFlr8knGqCY8ZFix9oD9ZU1a+BKskyzl7f9gl
	nissMi+0WT9KeroKbb9wMz+crnyo+ctCFjmwHSMouEOhgqMPwtCJqH279Z3TuDuxsWOSqfuZjcO1P
	YSFc+kJekIFxv7sCseFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyMTT-0000000Fumh-0I35;
	Mon, 24 Aug 2026 04:39:55 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyMTS-0000000FumX-15GO
	for wireless-regdb@lists.infradead.org;
	Mon, 24 Aug 2026 04:39:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4EABC600AD
	for <wireless-regdb@lists.infradead.org>; Mon, 24 Aug 2026 04:39:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 064451F000E9
	for <wireless-regdb@lists.infradead.org>; Mon, 24 Aug 2026 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787546393;
	bh=bamvOZ5tUCgdaqL7D0Y/4JjSmYGsOedivVLNrTZcQ6U=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=G9TpU+IK2J5ouDaTwB5Qa7BPgw9uKp10IUHnobQ5bD2NgR9dhDvp+P6L3PtjpyQ3k
	 4ozB1mtBei7uPrdOuy+vBPo4Rfe3wPLyWs1fkrCvbpONhKVNoDfuFTuQxksBgGblub
	 A99k8RMQsppIgemXcJkfKqvccv96Ky9w0VoeNHPmiC6XQIRTdukeq2+clcw+ZjFq8W
	 ce2Yi2zzZ2r2zXgjT1eUjP/Imx8nPNVzxcEyYfOIwmnqOmlAfdCWcSOMhdh4xFFcA4
	 f6HzAC/kslCr7/CtJ+WP2gB2rVcawEm5D9ovXQceOTyyteUBHfNa37PtpGmuEbNFCo
	 ucRdkE+8IcZyg==
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-3a14f6613fdso34132801fa.0
        for <wireless-regdb@lists.infradead.org>; Sun, 23 Aug 2026 21:39:52 -0700 (PDT)
X-Gm-Message-State: AFuF++krtXDm6qLn86BOsN1jv2R3kW+YUmNKEk/qQrdLbIS/4DksR8rA
	LF7nuVwdlmQTvEaCybyAhbTHi/pSK/r6cxA/DAeAAc0YqQMoj+3qNPUcyhK3LolMZyYknf44//d
	3o1PP8lTed4OrRuWFLnmJynIw49mWtB0=
X-Received: by 2002:a2e:bea6:0:b0:394:3b62:b6aa with SMTP id
 38308e7fff4ca-3a1aec678fbmr51224111fa.12.1787546391501; Sun, 23 Aug 2026
 21:39:51 -0700 (PDT)
MIME-Version: 1.0
References: <CACeKqZC+RCVtvGMaWmNYLnyA0OKsKM3YmaMxNk_KZqr3Ekji3Q@mail.gmail.com>
In-Reply-To: <CACeKqZC+RCVtvGMaWmNYLnyA0OKsKM3YmaMxNk_KZqr3Ekji3Q@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 24 Aug 2026 12:39:39 +0800
X-Gmail-Original-Message-ID: <CAGb2v64zk4y4PBE6q6vendj_Rfnh8tZfk_sqoJJWghZEj5gOow@mail.gmail.com>
X-Gm-Features: AcwNN1XH3otKghPwxmWqDEXTHV3SQNRzM0wewEl9BEaMb8A9id6-g_EuCy3q6gc
Message-ID: <CAGb2v64zk4y4PBE6q6vendj_Rfnh8tZfk_sqoJJWghZEj5gOow@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory rules for Bangladesh
 (BD) for 6GHz
To: Tahsinul Mohsin 2524687642 <tahsinul.mohsin.252@northsouth.edu>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
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

Hi,

On Mon, Aug 24, 2026 at 4:19=E2=80=AFAM Tahsinul Mohsin 2524687642
<tahsinul.mohsin.252@northsouth.edu> wrote:
>
> Dear concern,
>
> The Bangladesh Telecommunication Regulatory Commission (BTRC) has officia=
lly approved the 5925=E2=80=936425 MHz frequency band for shared use in Wi-=
Fi, IoT, and WLAN devices.
>
> Here is the official BTRC circular (published
> September 15, 2024):
>
> https://btrc.gov.bd/pages/notices/6922ee00dbfbab28ce0c438d
>
>
> Could we please get the db.txt file updated for country BD to allow the 5=
925-6425 MHz range?

A reference with the band and power limits, as well as any other
restrictions like DFS or TPC (andif TPC is required, what is the limit
if TPC is not implemented) needs to be provided. We cannot put random
numbers into the database without justification.

The BRTC circular only says that the band is allowed. It does not provide
power limits.


Thanks
ChenYu

> Thank you.
>
>
> Regards
>
>
> Tahsinul Mohsin
> Undergraduate student
> Department of Electronic and Computer Engineering,
> North South University
> Plot - 15, Block B,
> Bashundhara Residential Area, Dhaka 1229
> Bangladesh
>

