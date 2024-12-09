Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8281EE77173
	for <wireless-regdb@archiver.kernel.org>; Mon,  9 Dec 2024 05:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LvxE9KWeFX/OQsOjGIozVp+veKIzqMmU1Jx+cc8a3is=; b=ZHcGTlSwx6bUZFhJ4pM9VDFZGV
	rU3FvR1mvUtSPG/yVR3xQsmMrKE6NxAHve/y9LzYuRZHvIiAuilgMYLS/xqNfsZ81TmEIXDN6K08/
	nFxBxagfMwKjMdHd+z5QOWTCDTjkA3sOImT/Ibw9Kf3+7ArKoMo36j+ocMRXCXh71+FGev7/ye7JQ
	aI/gE+inJNRLd+8adNazd2saWVnRY4Mi+1KKPJob92SIRy2WoLOwaP+tXuNkbH6mGUMl6ie9acKJc
	OOq32gmo/zlhvObNTCBG/8f4rvdkGT751wcGHQcX0ZV50jw6XwNRhsa1P32i3UKjok5L2EpTN4PHf
	Beqlm7mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKWYa-00000006WZh-3XfT;
	Mon, 09 Dec 2024 05:43:44 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKWYY-00000006WYC-1Ri6
	for wireless-regdb@lists.infradead.org;
	Mon, 09 Dec 2024 05:43:43 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-aa69077b93fso21958266b.0
        for <wireless-regdb@lists.infradead.org>; Sun, 08 Dec 2024 21:43:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733723020; x=1734327820; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LvxE9KWeFX/OQsOjGIozVp+veKIzqMmU1Jx+cc8a3is=;
        b=idk2SqgBbZ2tKyEngm6fFqaKqPpsvPKB0MtjYP1y3KWXHGO6tQRh1IdnwwPsMEYg/Z
         0Ube+DMV/ip8InnRZPuk//om5rhwkjBkwdTCoVlEQ5X97QAuI8foIffeqwbeiy5+BXOT
         A8nXXIvAJVY4OFs9ZOH5DXUGuifQ0NVI+wepCSjZ4/uY/lUlTYqIOIPrN/hJbW2CinAa
         RzmvhUQlaFWG2sWcNHMprFlhOzUW0DwKGk5AXfd7OBPo47euBDyfuQJhT03sbSRRfHPv
         MWLQBZ5Y8cobdo6i2cRJI0kjj2AssdVuwma02U+us2dRLIAEzrxwCRXqaR3k0I9ZvK/b
         KuJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733723020; x=1734327820;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LvxE9KWeFX/OQsOjGIozVp+veKIzqMmU1Jx+cc8a3is=;
        b=SAW1ocjgiFSBz73c2r+cYQ6xhVX7fQnt5fm5FAvJsX4pTkXi/Uk1fwgb4mlCse2GsY
         4nBhRWWNilzDoGVGywI6A+mgOzjlTtN2aBDkdg611MsI/bb5GWsrv0m2ynBZDzctk18A
         QH/DHluIIWR6JhD8sGqOwsXCOQttn69rKhMs0qov+FLj5XJ8LlPnlD5eINvzDkNy+qAE
         zpM0oagY4K7la2ZF6j/6GFpjWfywZ1VROYyyuXt2H9QmAml2tsMS6Y0WCC77d75dNfsb
         QQElKzZRLd2ZVyj6qE5X0C2crRHXm8wH5+4xSu6DovK/xq574xeGIUIZGXSAzXIjJXuN
         UqMg==
X-Forwarded-Encrypted: i=1; AJvYcCWRfzqHS8v+l0z48GiSss5hWmnXQ0zYJFxh6wq7uCmaeV1oq2gM4WgaCMeG3bJMzr8X/Z6n6uLTjzd5SXj6dg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy53vp+AuA4SM8ETpOwRWrpsr98HFrhcYNYS5fcOLh8QVI0ENn/
	aClPwQ8vDqaJ3k8MexNHkL5Kk/oJhD0Peytxm6/DSgYKM2w0LNTlyc5eR2dfweghcMH5FzX48Kc
	KHNwmnl9toCwIwU6IzHT072syV8I=
X-Gm-Gg: ASbGnctlt0tWJIBlgt5d1958VlaZ/eJeFXnWdiVDRxCnt4s+ZqDefM95ahtXr1Pq9NP
	8jLRAYbjWqiuBtSg+VGuBWvBD6Y6i424=
X-Google-Smtp-Source: AGHT+IGGePJo+9N4Of4PeXOzooY+Gs9piE89hotQoUrmoId59x6OpJsYaqkpE1HlgA0Tb6qsnt0CfpTgn3festfQL9Y=
X-Received: by 2002:a17:906:3090:b0:aa6:800a:1292 with SMTP id
 a640c23a62f3a-aa6800a1c31mr295375066b.25.1733723019879; Sun, 08 Dec 2024
 21:43:39 -0800 (PST)
MIME-Version: 1.0
References: <20241021071506.24320-1-pkshih@gmail.com> <CAGb2v64FojDNF+9fhdE5LhMJRYr0Tk9s+uPkVYD=pYsdHLggrA@mail.gmail.com>
In-Reply-To: <CAGb2v64FojDNF+9fhdE5LhMJRYr0Tk9s+uPkVYD=pYsdHLggrA@mail.gmail.com>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Mon, 9 Dec 2024 13:43:28 +0800
Message-ID: <CAHrRpu=q-AQyp15iqDyB=6hcPL289BgpQnDRNNDoOEz6FrAFzg@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Oman (OM)
To: wens@kernel.org
Cc: Johannes Berg <johannes@sipsolutions.net>, linux-wireless@vger.kernel.org, 
	wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_214342_381051_A860C1D1 
X-CRM114-Status: UNSURE (   4.66  )
X-CRM114-Notice: Please train this message.
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

Chen-Yu Tsai <wens@kernel.org> wrote=EF=BC=9A

> > +       (5490 - 5725 @ 160), (27), DFS
>              ^
>            typo? It says 5470 above.
>
> I can fix it when applying.
>

Sorry for the typo.
Please fix it. Thanks.

