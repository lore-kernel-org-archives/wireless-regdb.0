Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C01DC25B76
	for <wireless-regdb@archiver.kernel.org>; Wed,  5 Jun 2024 04:11:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMexCqYUJQ2pY6v/FqAumO/NshEjdkdlRujM+mwUbV4=; b=Qi+Hxb9u+AWuVm
	zjm56L2upPKqrA2h+I4q7za+LWzLEHev+9tWC9BIa6BsKVyfiksppFjBjWOPHEepw621knZkaELvE
	YKRNN373VOckMSae3gAzIAEf8DUeY59wdhwF0u/zbtJxtXE4EiL03s0fJFS8XOLH8S4J/bQca0/eE
	MoGgpyMSbd7F1gKT+GGbyyNNDFTXYf1oftbMqVvAQRVr4SqNE79Mr98AtqNueGceynYowbUrbmaxa
	F4wrvTex03XE8h2sqHgTJOvZM7XwAHbv+DWOaLdGIKbDBKGQF7gUDMajt77J76rQ9JZN3vjjDNqcJ
	EyNjvAc1+BAOG+oy5VeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEhzw-00000004aKE-0tWt;
	Wed, 05 Jun 2024 04:11:40 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEhzt-00000004aJp-0jF0
	for wireless-regdb@lists.infradead.org;
	Wed, 05 Jun 2024 04:11:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 19713615E2
	for <wireless-regdb@lists.infradead.org>; Wed,  5 Jun 2024 04:11:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2C0AC32782
	for <wireless-regdb@lists.infradead.org>; Wed,  5 Jun 2024 04:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717560695;
	bh=etF19prCyPnFhMAS/6DWy44pO56niXLPQhsefaibP0s=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=nlyiLByqMD3ygcEpUaHUNOZBO0AM7BK9po9eE/SwyvWm9w5+Ib3Bs6B6U0vR78njr
	 Nt2krToDOC//r1Nwd/pdiXI2kPS4yLLPKG90Miw4kRKyV3FzwgnyW5Z/YnjJ+YxIhj
	 VttUfLZiPdU2QoIkmJN6jZDNXj/uEnLsT+AlOTfxAFpYyIxptErXOLe6waFiSUPUyr
	 2q/Bl/Jqp7HjzTK7/iCWUl0QpJuulFRGsjzd8QADJb+vM6IqpOENjnVb1DGvP6b9Wy
	 GRwmLiZSs2noS9v3uQ8WbJVk++7crdISWy6oeFM5k8eYkYZO6UdeZSiW0aqRBHlfwM
	 dy9gQBYJWo3Yw==
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2eaae2a6dc1so53669261fa.0
        for <wireless-regdb@lists.infradead.org>; Tue, 04 Jun 2024 21:11:35 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVn3r0XwpmiKKwKss8RSlonAgJBHm96H0bxSs/yd+nv6kqst61ywBjf+wPQS8REChxl+XMw3xKBtjkp4VEiynqL/46EJDQDp6As3SJh9oVfD9FA
X-Gm-Message-State: AOJu0YxwMtnsB+e8e03oVuyTcZJ7EFGsBQu3mG9kFwcTxyA0F9XJLnuW
	57OtnbWpVQt8CTLOyvF5+cfhngSriuf6IUzsc3pTCluLs4rRASzykwcG5LXHhT9lBNyRQij8BZ3
	55qawj/ePNqSpcbFeMK5pZA2BfJA=
X-Google-Smtp-Source: AGHT+IEfdJZokykQeRkAQZq9+7/S2636sl+IO6YQ6A77tKEPLEmfhKE9mpxxTNZTe7RuXGJ6wpeVDsoiCa60dGJlncs=
X-Received: by 2002:a2e:99ce:0:b0:2ea:91c1:f3d5 with SMTP id
 38308e7fff4ca-2eac7990e3bmr6670621fa.15.1717560694178; Tue, 04 Jun 2024
 21:11:34 -0700 (PDT)
MIME-Version: 1.0
References: <20240603060558.98791-1-pkshih@realtek.com> <20240603060948.99147-1-pkshih@realtek.com>
 <CAGb2v65j604KUiVDiXSAbpJQQetGagFj53E8zuk6JqwaDdBk3w@mail.gmail.com> <a97fcc8d9dfd4f9784dace38d0c01351@realtek.com>
In-Reply-To: <a97fcc8d9dfd4f9784dace38d0c01351@realtek.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 5 Jun 2024 12:11:21 +0800
X-Gmail-Original-Message-ID: <CAGb2v67Crwo-qiS0hFrUdrjD4NK42_-s6_RhmusfpDd0SDZj2A@mail.gmail.com>
Message-ID: <CAGb2v67Crwo-qiS0hFrUdrjD4NK42_-s6_RhmusfpDd0SDZj2A@mail.gmail.com>
Subject: Re: [PATCH 4/4] wireless-regdb: Update regulatory info for Mexico
 (MX) on 6GHz
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, 
	"wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_211137_322652_BD05414C 
X-CRM114-Status: GOOD (  20.18  )
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

On Wed, Jun 5, 2024 at 10:53=E2=80=AFAM Ping-Ke Shih <pkshih@realtek.com> w=
rote:
>
> Chen-Yu Tsai <wens@kernel.org> wrote:
> > On Mon, Jun 3, 2024 at 2:10=E2=80=AFPM Ping-Ke Shih <pkshih@realtek.com=
> wrote:
> > >
> > > The Plenary Session of the Federal Telecommunications Institute (IFT)
> > > determined, in its IV ordinary session of 2023, to classify the
> > > 5925 - 6425 MHz frequency segment as free spectrum and issued the
> > > technical operating conditions that allow coexistence with the existi=
ng
> > > services in the country [2].
> > >
> > > Within the operating conditions of this band as free spectrum, its us=
e was
> > > determined for low power indoor and very low power indoor and outdoor
> > > systems.
> > >
> > > According to WBA Response to the Mexico IFT 6 GHz Consultation [3]. T=
he
> > > Low Power Indoor is
> > >         33 dBm Max Tx Power (EIRP) & 8dBm/MHz PSD (EIRP) for Access P=
oints
> > > and
> > >         27 dBm Max Tx Power (EIRP) & 2dBm/MHz PSD (EIRP) for Clients
> > >
> > > The Very Low Power is 4 dBm Max Tx Power (EIRP)
> > >
> > > [1]
> > https://www.ift.org.mx/comunicacion-y-medios/comunicados-ift/es/el-plen=
o-del-ift-clasifica-la-banda-de
> > -5925-6425-mhz-como-espectro-libre-comunicado-132023-16-de
> >
> > Not sure what this reference is for?
>
> This is entry page of [2]. I will remove it or add description about it.
>
> >
> > > [2]
> > https://www.ift.org.mx/sites/default/files/comunicacion-y-medios/comuni=
cados-ift/comunicado13ift_1.pdf
> > > [3]
> > https://www.ift.org.mx/sites/default/files/industria/temasrelevantes/co=
nsultaspublicas/documentos/2021
> > 0119-cpi6ghz2020-162.pdf
> >
> > [2] does not say what limits were adopted, nor that the WBA's
> > recommendations [3] were adopted in its entirety. Without such
> > wording, [3] is just a recommendation, not the final rule. This
> > needs some more information.
>
> I will try to search for the adopted power limits. If I can't get that sh=
ortly,
> I will only submit 3 patches by v2.
>
> A question about TX power value. Is a special value existing to indicate =
the
> value is uncertain?

No such value exists. If the value is uncertain, then we simply can't
add it to the database.


ChenYu

