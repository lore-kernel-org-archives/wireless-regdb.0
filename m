Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF96DC3DA7F
	for <wireless-regdb@archiver.kernel.org>; Mon, 12 Aug 2024 08:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s5jMo9MoASZgQylfsCywNpAm1BWdY/yuWpBkzyquKNM=; b=jFgPX8t7ktTNb/
	AVXhxt9FbjH1turiN0TGBni+idzhQjIvPbWuLH9keDYIb3/La5sadGlPbdsIM/WHTX6Xc7+l5Eik7
	KTlygpTwFF7JX39KR4uVKwydqllqG5T/KIQb4efX0PPJeh8QyBZXVJI9R52k8cF9w2cL/d3DOKfAk
	zehmvXMzgxEkNagDra+hABGycHe/48oMB3TdS1Flqd0m0KnWsG11o24Md01/56NlDihkkHnZr+ES7
	UXr5EGQfO/pfmCerG/jhpNHPDO7oYJDVPnelb6x+jVZA8Anp+kGUBiEo0FiMqvyM8EwhaNpJ12mE1
	M2BEy65H8lzSP+ftqeZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdQHr-0000000HFtT-1SOL;
	Mon, 12 Aug 2024 08:20:19 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdQHn-0000000HFt1-3moS
	for wireless-regdb@lists.infradead.org;
	Mon, 12 Aug 2024 08:20:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id B04C9CE0B9D
	for <wireless-regdb@lists.infradead.org>; Mon, 12 Aug 2024 08:20:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0F40C4AF0F
	for <wireless-regdb@lists.infradead.org>; Mon, 12 Aug 2024 08:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723450811;
	bh=s5jMo9MoASZgQylfsCywNpAm1BWdY/yuWpBkzyquKNM=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=U5apwCG1tAp7a2vSi2FxrXTsGJQCeXx6BjwI+nu7QirvRTQQkv/rCCdh9Tzn+/siM
	 WWY7aV3Gtn0P98yAgIN2iOPD0tf0Inc0zp0terarc3YMi5mGPaw2rZr+VBqRcpHP9Q
	 1VwfbL5PZty7BUgONtul8l90xBo1WxB9Tm4OzOM2xyEeIKJGg0E/tAHw1yjfbljsQT
	 taOODELlDwT8XecVh2Msb6j8q1BDzCsPJOInP42OPzXHqQV69eBlh3YQgw84rW8J5F
	 l9S9LOCVjJYdXg3Kwiyx11aE63czEsaHozmTCZuOAQFCK8rC0cpFrDh6cy1Pdp59ck
	 hG45F0ji8TxUA==
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2f0dfdc9e16so47936631fa.2
        for <wireless-regdb@lists.infradead.org>; Mon, 12 Aug 2024 01:20:11 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUpag+pN3Qa0dz7EZY3FikfNH44cbYrqX24UHPaOwzA4xE/g2Zr9XFuleNoNsYEXVMsETwVvqFYNrzVRY3Q+dCzfPCkrQhV6MFB4hZET+ChkW6G
X-Gm-Message-State: AOJu0Yyio+aaNs19VscZZhIkCaud4aom+bz2CFACca9NalfLWzRr2sLd
	xo8Eg5ZAtkvuIvmU6xsBiM8aDydQTWje4bDMQ5LOtb6oobtz1J5NEJRixES7YcUH3FyLl9SeKq8
	IzqQw6nOlLG3+r1/1QXBeXdaXzgM=
X-Google-Smtp-Source: AGHT+IH8e7Uv2FhQyAiEU2Q7gTHPagluPC525O45aq42hiX8RLm9Li4wgGi+PmVJCqbWLqDMtOUDYOjq0FO4EV8w38A=
X-Received: by 2002:a2e:9f4f:0:b0:2ef:392e:e45 with SMTP id
 38308e7fff4ca-2f1a6d32166mr55195271fa.33.1723450810197; Mon, 12 Aug 2024
 01:20:10 -0700 (PDT)
MIME-Version: 1.0
References: <45213523-32f6-4e82-958b-6271e8b7e366@gmail.com>
In-Reply-To: <45213523-32f6-4e82-958b-6271e8b7e366@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 12 Aug 2024 16:19:56 +0800
X-Gmail-Original-Message-ID: <CAGb2v64OsGpERdrojMgfbQspk_vwsm-X16Nj4ntvN+1azaEM9w@mail.gmail.com>
Message-ID: <CAGb2v64OsGpERdrojMgfbQspk_vwsm-X16Nj4ntvN+1azaEM9w@mail.gmail.com>
Subject: Re: wireless-regdb: Inaccurate regulatory rules for Brunei (BN)
To: Nathaniel Chin <thegamingorangutans@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_012016_361590_B99931A5 
X-CRM114-Status: GOOD (  17.71  )
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

On Tue, Aug 6, 2024 at 12:51=E2=80=AFPM Nathaniel Chin
<thegamingorangutans@gmail.com> wrote:
>
> Hi,
>
> I've noticed that the current values in the regdb for Brunei do not
> match with the Brunei Darussalam Radio Spectrum Plan (2014-2015 version)
> <https://www.aiti.gov.bn/media/voqau1jw/brunei-darussalam-radio-spectrum-=
plan-2014-2015.pdf>
> and the Telecommunications (Exemption from Sections 33,34(1)(b) and 35)
> Notification, 2018
> <https://www.agc.gov.bn/AGC%20Images/LAWS/Gazette_PDF/2018/S039.pdf>.
>
> Which both state that the authorised bands are: 2.4000 - 2.4835 GHz at a
> max of 200 mW; 5.150-5.350 GHz at a max of 1000 mW (2018 document); and
> 5.725 - 5.850 GHz at a max of 1000/4000 mW (with the latter requiring a
> license).

Thank you for reporting this. I currently cannot open the 2014-2015
document, nor the underlying website. It seems I am blocked.

Regardless, the values you report align with the 2018 document. One
oddity is that for 5.150-5.350 GHz, the 2018 document reports two
limits: 100 mW and 1000 mW. Do you know what that is about?

> Additionally the 2015 document refers to FCC and ETSI regulations and I
> don't see any mention of Japanese regulations?

This is from an old change that added DFS-JP and associated a bunch of
regions with it. There was no reference given.

Without access to the 2015 document I have no idea what the DFS requirement=
s
are. They could also be under some technical specification that describes
the test methods for compliance.


Thanks
ChenYu

> Best regards,
> Nathaniel Chin
>
> P.S I've had to resend this email because initially it was sent as HTML
> instead of plain text so if you've received two copies: sorry.
>

