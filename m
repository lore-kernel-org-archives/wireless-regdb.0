Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5ADCCF6497
	for <wireless-regdb@archiver.kernel.org>; Mon, 30 Sep 2024 08:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8I/lGPCSbuIyJIsmteHQqKPwzwgdEUPdJgNlOfuPdWI=; b=Gl6idPEUuLGxsgKNf5zykLMzId
	D+NgEdAtOTXIXmUZErN2LlSz+UeuF4rcZ0JR4qJc66cIKZsiwrs+UzxmdWxS3jrZPeowi5DijupPl
	FsN3jtWEfJIIsYG4gOlWpj3KbZ1zrbkTX1VZ8uJaogNIjI8SU14uMkBSQb/r4dtgzR/463NoEGUS0
	8lsObX91ENkcK6E5mMe8tknS88EmWVYc2doHWk+1lHn8m3hj5Lrsj27GsLD3bryxoPRSEL7R7jGmy
	zHofg+24+637w7xWhprrhPyTqHdKnNzD7dVN5unyaST8ncGjkVoukq2pRxJ0JrDX5MT1VDEHg4bIA
	nhp8GfAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svC44-0000000GO5h-12pX;
	Mon, 30 Sep 2024 08:47:32 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svC1u-0000000GNe8-3eO5
	for wireless-regdb@lists.infradead.org;
	Mon, 30 Sep 2024 08:45:20 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a8d4979b843so595290966b.3
        for <wireless-regdb@lists.infradead.org>; Mon, 30 Sep 2024 01:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727685916; x=1728290716; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8I/lGPCSbuIyJIsmteHQqKPwzwgdEUPdJgNlOfuPdWI=;
        b=eyqVX7JQVGokEFeIQ9BWCrRImO8ensxhTgISdqHRrL3UQMP3EjFxySUo3l2mkUWuJo
         DkeEiwK2J8xi2oJYgmcwWcSsZBw6s8KQiLqjfjUYTBNHnlvHYN6s1TEPclu1XG35DOPK
         /ul99jT9eMDCKg2wo2QHyJjVyHcCfgsizoAnd9D0D+pkBK4qXrRTNX24qOB5pvWzEXxJ
         Y+V161HNBmvp3DFKCLUdANNmiGYmwBi7U3o5pZ92hs0BjKE+175F2qZvRyIXh4J8JOeK
         dVM8ON97SidVXXDov6Ch0nOrrO/f87N9IHn/YSgY41QwKe3iKxYujHreJULIN9uUcEY3
         jeXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727685916; x=1728290716;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8I/lGPCSbuIyJIsmteHQqKPwzwgdEUPdJgNlOfuPdWI=;
        b=IE4WKdMk3RZL4hMFY8kOFa2/Lm+OXOf5JWwc2GLS8zadwqOpYNH6WdNf7eaPhE28gW
         ghwP2UcG5ZhclIVVQi7KLGQcggvX4SRRdBQcC9Y83WI6Kf+PYhj14SL7sCwbVdZN7QXH
         h/kZYXwIVISF1R0tpY+zg6AkmoS4drb9zVGTvhGeqBfcu02oNORF+gUCWB5OudGkRex/
         rGcoaSPvGw8/Y6oDO+d+6LW8gjb3EC5jyd0skXbL3VgMyFEuh/LB+DeTnbzwSyRSFybX
         bHDUXXNf+Eva1QcioBEkYs4E2JRd/+szd9BYjXJJLLaNLITCu4u9MfrkP4R91FqmbZyI
         oKVg==
X-Forwarded-Encrypted: i=1; AJvYcCXQb7ZIuIqzxU5pZZPk6l31TCioCBDMO5bikHNZGk1UOJOXRmGCTpX6pOoT3qHOJ+ud88lKEP9yjOL4J8HY6A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3oeXxQvH8CnAFo3TfiHPaQ+VOVRbAPJ4xIOvPqynu8wruYG93
	TaLAB1QbhyNqUITMpkOvyQcwse5blqRiXyUlyHfC+DRBeg6azehk051pu7GeDLhz3r3XGQt+RpG
	ddpfpTb0oLCtBOcmqncFS1FKJH9I=
X-Google-Smtp-Source: AGHT+IFZzSCLd7/MCF7USN75uNQ0wZI+FbjfyoXU1amJOsTDB4gms/++Ii6xkR/4OklFeDYm+1PxFQKgA00Aae7uSAM=
X-Received: by 2002:a17:907:3205:b0:a8a:7062:23ef with SMTP id
 a640c23a62f3a-a93c496565bmr1194138466b.32.1727685916256; Mon, 30 Sep 2024
 01:45:16 -0700 (PDT)
MIME-Version: 1.0
References: <20240920011901.5038-1-pkshih@gmail.com> <CAGb2v65J1FV-POEh+QciWUxE-OZyRuh+Wfad9TuimJrrDHcjkQ@mail.gmail.com>
In-Reply-To: <CAGb2v65J1FV-POEh+QciWUxE-OZyRuh+Wfad9TuimJrrDHcjkQ@mail.gmail.com>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Mon, 30 Sep 2024 16:45:05 +0800
Message-ID: <CAHrRpukWTimT_dRtdQwpX-RYAonWic1aE_3KMtEZ3bvr1+iW3w@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Tanzania (TZ)
 for 2024
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_014518_950956_020F96DA 
X-CRM114-Status: UNSURE (   9.77  )
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

Chen-Yu Tsai <wens@kernel.org> wrote:
>
> On Fri, Sep 20, 2024 at 9:19=E2=80=AFAM Ping-Ke Shih <pkshih@gmail.com> w=
rote:
> >
> > From: Ping-Ke Shih <pkshih@realtek.com>
> >
> > United Republic of Tanzania, Tanzania Communications Regulatory Authori=
ty
> > released Minimum Technical Specifications for Short Range Devices (SRDs=
)
> > on 2024 [1].
> >
> >  * 2400-2483.5 MHz
> >    - 100 mW e.i.r.p.
> >  * 5150-5350 MHz
> >    - 200 mW mean e.i.r.p.
> >      * The maximum mean e.i.r.p. density shall be limited to 10 mW/MHz
> >        in any 1 MHz band.
> >    - EN 301 893
>
> This also restricts 5250-5350 to 100 mW due to lack of TPC.

I think you meant the description below in Table A.1 pp. 88

2) Not required for devices that operate at a maximum mean e.i.r.p. of
20 dBm when operating in 5 250 MHz to 5 350 MHz or 27 dBm when
operating in 5 470 MHz to 5 725 MHz.

I was not aware of this. Thanks for the info.

Ping-Ke

