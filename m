Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 255D0C531DC
	for <wireless-regdb@archiver.kernel.org>; Wed, 14 Aug 2024 04:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ASawuLe5EyRxXS19GAY6UAMtVRl7zGIcfSS1p8XpWxU=; b=QvSyvheh5CBPaH
	N6HStxFZnvDayh/HFvtUnuPeROTl1EmSig1fbJ9yVyBhgNWE7sBCNJUXjX1LZQtQwVq3eCLGZO9hQ
	Fx7rLQGj9HbGUbJN941rdXpgkiLingi551dFJ50DSCRY0vikLkxrYWL1HBmEArqNYopym+1tLP7ik
	Lv0ESpmugnvjMR2IgIHNX0QP4KAgwZ6U0F7M5EBw8BJF5EoYsiDMDSG28gPzj5NOvCjkoepLVDpEg
	9NIgZmnzQT5sbqa6kY4MrbubQfL5/i6M0593ne5SDemN6AR6TKwwqDzNJLm/e7cTKN9Zlg/0j37Cm
	731bRKqqkb5yUZ2hqkiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se5JB-00000005fIc-18hq;
	Wed, 14 Aug 2024 04:08:25 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se5J7-00000005fIB-2R5v
	for wireless-regdb@lists.infradead.org;
	Wed, 14 Aug 2024 04:08:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id B04C3CE1884
	for <wireless-regdb@lists.infradead.org>; Wed, 14 Aug 2024 04:08:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2C2AC4AF0D
	for <wireless-regdb@lists.infradead.org>; Wed, 14 Aug 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723608496;
	bh=ASawuLe5EyRxXS19GAY6UAMtVRl7zGIcfSS1p8XpWxU=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=YHNpVuk85RmKw2BFj4HC/SM9Dd89J6qsvYw3P1nZ6s2t4a4YpyqCJHzIzItGAJ/Uy
	 hIJJbmVbDxdkzibdFnqXtvJlQIxsN/H1aI9BoUhGJshGysUaiQepr34ieOMLYWCeuR
	 uj13Cw1JCbHLCvaE6xG4ir/qLhhTpbgyJwx0wUr0Tkrn5w9IsY51Yhi47I3Y0oMaHG
	 Y1crRH93eMbdaqfKpqGP1gnB0RQY3IirUEnadRrd2sgrrsg+0/rtIwRJQo4YD02T1f
	 K8u+d4dL3QMTY5K1pawbjZ+QyVkN3SOLSEzxjxRltvzoKCnCFbqO0MMr3xLJ3+AGhO
	 P9H1g/4jKtfEA==
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ef2c56da6cso67122081fa.1
        for <wireless-regdb@lists.infradead.org>; Tue, 13 Aug 2024 21:08:16 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWqMOm9V44G4r8vDfYLmxBYUMggF3cQYFKBsvQCcnCpi7KkWwz61vigHfL9jqzePaVo1hEiHx6YNWu/irpuMeCVsKnNUp/1q1KxPDpS11XGMMdB
X-Gm-Message-State: AOJu0YxumMRfnM4QbixtyuqOrpVFImXkpfBYGiOnEcWtgaH9jpSfeFG9
	yCSJs+RX1YjaSRgu+In1UlePiOk9cHJY+xdAoYSZpNIpkH5OXUr86xMOSOyd25Fb9IFo4o0wweP
	WoIaw8aZ2zEeqxdCDRdOdCU/9lrM=
X-Google-Smtp-Source: AGHT+IEhP2rtAqsPPVcn6Uw3cSyEYB5Pc9Dyjg2H6IZy66zP2tObUWdLBW3tSzce8eJEr5+ggfhZHbJ+zxcdF1Zbh9E=
X-Received: by 2002:a2e:4a12:0:b0:2ef:18a2:9deb with SMTP id
 38308e7fff4ca-2f3aa1eba24mr6068461fa.16.1723608495008; Tue, 13 Aug 2024
 21:08:15 -0700 (PDT)
MIME-Version: 1.0
References: <cfbfa8f1-3367-4bc9-b201-2faac3aa7581@quicinc.com>
In-Reply-To: <cfbfa8f1-3367-4bc9-b201-2faac3aa7581@quicinc.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 14 Aug 2024 12:08:00 +0800
X-Gmail-Original-Message-ID: <CAGb2v658Pdgxtwy6wXFjYVAm9mD6NLUm9fZb9k4AQCVS==ZZBw@mail.gmail.com>
Message-ID: <CAGb2v658Pdgxtwy6wXFjYVAm9mD6NLUm9fZb9k4AQCVS==ZZBw@mail.gmail.com>
Subject: Re: Should the wireless-regdb wiki be updated?
To: Jeff Johnson <quic_jjohnson@quicinc.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_210821_824470_194530A0 
X-CRM114-Status: GOOD (  13.60  )
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

On Wed, Aug 14, 2024 at 2:44=E2=80=AFAM Jeff Johnson <quic_jjohnson@quicinc=
.com> wrote:
>
> In response to regdb e-mails showing up on linux-wireless but not
> wireless-regdb I went looking at the Wiki to see the current guidance:
>
> https://wireless.wiki.kernel.org/en/developers/regulatory/wireless-regdb
>
> I was surprise to see the following:
>
> Sending updates to the regulatory database
> Note: wireless-regdb is currently unmaintained, and patches or requests f=
or
> changes are likely to get no response.
>
> Elsewhere in the Wiki there are some outdated references to Seth, as well=
 as a
> reference to "signed with his RSA private key" without any indication who
> "his" is referring to.
>
> This seems like old information that should be updated!

Thanks for the report. Updating the wiki wasn't a priority when I took over
maintainership. I've updated the wiki just now.

ChenYu

> /jeff

