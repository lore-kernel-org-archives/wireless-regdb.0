Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9362ECAC5B0
	for <wireless-regdb@archiver.kernel.org>; Sat,  4 Oct 2025 14:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GuIMQtkMJWAIXWd25fEwJmqhedXUQqtiU4WqfVmMVIs=; b=Hz2stecPSITGbJ
	aXxpcC1tLBDlvTbHaWVzV0A/yZLckfX8frzq+/9bCayKS/Jq5wADP1b8h9uX9B1G9DdkEXita/l9+
	TJwgSIf/8Kop3zvC3C/khOIaOoTgHkIBUOGH9qysR42rGb/HhOf6beeiLSRHkqyl085IZOV+Yzppu
	NgZOn3jnP8wIe3ZZBMoaZrfzxdeTKkwqpzYs/paymkKFLUUuQvEOaK5e/nf0d8R8M/rMg8U89WzmO
	1yJdity9q0tpkjhEdIefM3Sbfu8lDW0LvW5X0xfl0ZMr1AJT+K/1Ph1Vv0Fg4k8Cuw9+rZHuZ3pEv
	PCqeHObVlEt09Ni7xK2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v53PK-0000000DnJQ-0mvK;
	Sat, 04 Oct 2025 14:38:46 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v53PI-0000000DnJI-1aPW
	for wireless-regdb@lists.infradead.org;
	Sat, 04 Oct 2025 14:38:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 775CA61FE0
	for <wireless-regdb@lists.infradead.org>; Sat,  4 Oct 2025 14:38:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1EE1C4CEFB
	for <wireless-regdb@lists.infradead.org>; Sat,  4 Oct 2025 14:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759588722;
	bh=GuIMQtkMJWAIXWd25fEwJmqhedXUQqtiU4WqfVmMVIs=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=thLWlADKXkQcpHvUXtbY87KKLZj5BDf2WXa+xp1CXa3Fts2PFrYGw+XW3fVRWqBPR
	 QyU0O8p9hth5WPbtUOI+SDMzaw9UkgBTiu4xWGouexlQkqq48L1YwTnppJP/uv9ddg
	 XC4esV2iGls0/1EwnFBbSxg/VRVovM1zqFvJUEp74QaSKToth6vqvmttfutwxR0DvS
	 GwNfjyzn9D3zzlnc0VnCmZz/e4LJoFaP748ULD2GokfPfrZrwGwpRkTMOYSC55Rw/m
	 qmRsvXEMXf0mWrBzX1xOwT/PLc2kg0d8p9ZnU+ltT1dgVnA922slpUNpyW7yKR4zfX
	 PUaDosFn6plow==
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-367444a3e2aso40765391fa.2
        for <wireless-regdb@lists.infradead.org>; Sat, 04 Oct 2025 07:38:42 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUkkw9zAFResPoidNX6gZpkf5Wy3RZ6oaE4+Vbj8HuIEcAE985WrL9dOl5KrqfDHzojPehZCVQMCNbR9/bFAg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzG16pW/rNjxyzQ6tQt2HgELO/jzara9MWY4tFpA2pBbTluc/Zl
	uS1fM1jtLrgflJf4gABqCNQH/5Q4Kbgiyp37WQkX+vA07QDoe7/SvUXwK2lf/g4eY5qLmL1f3zh
	B97WAXbGlAc+n8OovvB16htoXwJ7/Y94=
X-Google-Smtp-Source: AGHT+IHgIjk7zN2vZ27+UEf4thIbFmw2A9A4VdaFlr5OCqbEDfD6iGxoenPRj4CA99PcdjYzi0bIGigAZbR+elccgsI=
X-Received: by 2002:a05:651c:b13:b0:35f:d228:2a5f with SMTP id
 38308e7fff4ca-374c36a70f2mr17978501fa.2.1759588721051; Sat, 04 Oct 2025
 07:38:41 -0700 (PDT)
MIME-Version: 1.0
References: <d2e09391-d2fd-4456-ae45-103239dbac74@gmai.com>
In-Reply-To: <d2e09391-d2fd-4456-ae45-103239dbac74@gmai.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Sat, 4 Oct 2025 23:38:31 +0900
X-Gmail-Original-Message-ID: <CAGb2v66VXhx0ymHGOdS33W2QxUMxew1xW--+hrs+jy48u6MfoA@mail.gmail.com>
X-Gm-Features: AS18NWBtBSkT5dKeYfcvN3r4hDVY4pv_ZkfiRtbdYkCS6CUVddXMLYLJKP4bvWY
Message-ID: <CAGb2v66VXhx0ymHGOdS33W2QxUMxew1xW--+hrs+jy48u6MfoA@mail.gmail.com>
Subject: Re: wireless-regdb: Update regulatory rules for Ukraine (UA) on 6GHz
To: Dmitry Geurkov <d.geurkov@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
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

On Sat, Oct 4, 2025 at 10:36=E2=80=AFPM Dmitry Geurkov <d.geurkov@gmail.com=
> wrote:
>
> Hi,
>
> 6GHz wireless band was recently allowed by Ukraine government for WiFi
> 6e standard indoor use.
>
> Could you please add the appropriate setting to wireless-regdb
>
> I'm not familiar with wireless-regdb format nor an expert on wireless
> technology to create PR myself
>
> You can find all needed information here
>
> https://eba.com.ua/en/v-ukrayini-dozvoleno-vykorystannya-novitnoyi-radiot=
ehnologiyi-wi-fi-6e/
> <https://eba.com.ua/en/v-ukrayini-dozvoleno-vykorystannya-novitnoyi-radio=
tehnologiyi-wi-fi-6e/>
>
>
> https://mrt-cert.com/en/gjxw/4323.html
> <https://mrt-cert.com/en/gjxw/4323.html>
>
>
> Best regards from Ukraine

Thank you for the notice.

Would it be possible to provide a link to an official document or web page
that describes the change? Something from a government ministry or office.
We prefer those as reference over second hand sources.


Thanks
ChenYu

