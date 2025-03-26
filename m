Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42A89C28B30
	for <wireless-regdb@archiver.kernel.org>; Wed, 26 Mar 2025 03:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J629AtJYyLuDWVt0Y3fluXRtdWxbFc5RD7FNsgaYoyY=; b=eiumtk7qW55jQG
	1NHWVSHbO+2UfFuxwsIQgUSoOQdPhD78lpB0SK4G3+oOMc34F0UYNKJzPCvucejDLk1qhRXU7k/Oy
	rmP0o/n3dEA1dseuTEcRGO1AW67loZxTKcGPwfPzZgU/H9lq/dGdw3hApGRUOBll0/HltFNU6/WaG
	RlfziMge21P7AKVg6xAf8HUnfoFKZf/beuE8DHeiQYv8Y+1L8f+klT4lMaLr5isai700DTUTDPD+P
	IYCBSfBp1n95859dq3YJAtpkvRywU6h/wxVsd/1NHuRKmtUpZ5KUJKwuSHf1KtOj98lBF7ztp2RwQ
	mHsuwdFSEgXZHFM3s/cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txHlN-00000007V8I-3otW;
	Wed, 26 Mar 2025 03:49:09 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txHlL-00000007V7p-2JtC
	for wireless-regdb@lists.infradead.org;
	Wed, 26 Mar 2025 03:49:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C8057A40CD8
	for <wireless-regdb@lists.infradead.org>; Wed, 26 Mar 2025 03:43:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 766B2C4CEE2
	for <wireless-regdb@lists.infradead.org>; Wed, 26 Mar 2025 03:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742960946;
	bh=J629AtJYyLuDWVt0Y3fluXRtdWxbFc5RD7FNsgaYoyY=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=BBiarn0duFv2ziy6tPxbLeqK6ApbYHhcebrS1wBjVMapnJXWzvVVccqxU9QTEZvd8
	 Zt1wpA7LyO+QKK7eZBlnT3CYXHWJMHvpX7Nikf6kr6T+7LUr63qyOEoKNtK4DJgvoH
	 5oKzyztE1W3m9PdW73LdJRSQKKCFuDJbiO2qf6j2m/XAp/huUnt3zYA/ImzmHXa9VQ
	 qjy+aycPq1njmYRuIfK5GFheoojNukMeWvu3v333oJTWDWIe3KrI2AKpBk8d4aKwVs
	 EFtqBbhuEBan64/qrLaqF0qQTVhVfqD1KBhXtsdVoRqVcaXsnNjDGq6l4qQAuWkomN
	 hI3+oXho06qxQ==
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5499614d3d2so7349871e87.3
        for <wireless-regdb@lists.infradead.org>; Tue, 25 Mar 2025 20:49:06 -0700 (PDT)
X-Gm-Message-State: AOJu0Yx4JRpzuMmJfcKVbYUYuYodVOWWQ+3FHMZfYuJcnm2ITbDszGuf
	Y/XqVwzhswLLI/CkzTkLND0wFDAapXcXPn3NH2OFGTtwD7SV8T2b7clU87X7PULzADB2Ynq8sYC
	ezqmsZ7Hz4Qxnnhf9q8lFdOlHoW4=
X-Google-Smtp-Source: AGHT+IHEBowDmKKJ4uPZw2eR4+uo6y25i9TqtFvNeDHYqtAU6sFOhDXY8D3VKJGMgiquCUuG/rbqSgghA894ug4vGY8=
X-Received: by 2002:a05:6512:2303:b0:54a:cc75:6a9d with SMTP id
 2adb3069b0e04-54ad64fbb77mr7042218e87.42.1742960944854; Tue, 25 Mar 2025
 20:49:04 -0700 (PDT)
MIME-Version: 1.0
References: <c6eb2f23-f15a-4a4f-9934-f8d524bc2cd1@aegrel.ee>
 <CAGb2v647q2-K_jQXFHxgjYiG=xxvVajtmAPu7XcOBTCdG3fALQ@mail.gmail.com> <2c7d8d57-51de-46d5-8958-2a7a8ca3135d@aegrel.ee>
In-Reply-To: <2c7d8d57-51de-46d5-8958-2a7a8ca3135d@aegrel.ee>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 26 Mar 2025 11:48:52 +0800
X-Gmail-Original-Message-ID: <CAGb2v64q+CmQZk0fXSODiZrq7JkKDm4C8Hq2QFPBcLEgyNsG2w@mail.gmail.com>
X-Gm-Features: AQ5f1Jp6MLRqPAnoHAa1_VNU2oyVyrtvZArUKRrqVONBYEazyr57hNjr9D8jEC0
Message-ID: <CAGb2v64q+CmQZk0fXSODiZrq7JkKDm4C8Hq2QFPBcLEgyNsG2w@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Estonia (EE)
 for 2024
To: =?UTF-8?B?VGFhdmkgRW9tw6Rl?= <taaviw@aegrel.ee>
Cc: wireless-regdb <wireless-regdb@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250325_204907_721165_A9603549 
X-CRM114-Status: GOOD (  18.36  )
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

On Wed, Mar 26, 2025 at 1:06=E2=80=AFAM Taavi Eom=C3=A4e <taaviw@aegrel.ee>=
 wrote:
>
> Hi,
>
> On 3/25/25 06:50, Chen-Yu Tsai wrote:
> > I do wonder if it's reasonable to apply
> > non-specific SRD rules to WLAN (it probably is OK), and whether it
> > is actually useful or not given the drastically different power
> > limits.
>
> If I understood you correctly, if someone is located in an environment
> where DFS channels are vacant, it should be possible to practically use
> that section at a lower power limit defined by SRD rules.
>
> The very least it should allow people (including myself) to just run
> tests with wider channels.

I understand that this is a valid use case, and I will accept the change.
I just wonder if the very low limit of 25 mW would be useful in actual
settings such as in a building with concrete walls. The transmit power
limit is not immediately visible to users; non-technical users might
select this channel and not realize the very low limit and experience
bad performance.

> > I'll update the wording when applying.
>
> Thanks, much appreciated.
>
> I also just noticed that there's some linkrot with
> "https://www.ttja.ee/et/ettevottele-organisatsioonile/sideteenused/raadio=
seadmed/wifi-seade",
> the working link would be
> "https://ttja.ee/eraklient/side-ja-meediateenused/raadioside/wifi-seadmet=
e-kasutus".
>
> Should I submit a new patch to update that or could you incorporate this
> minor touch-up as well?

I guess you could send a new patch for the record.


Thanks
ChenYu

