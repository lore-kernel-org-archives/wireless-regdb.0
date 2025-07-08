Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2395C8303C
	for <wireless-regdb@archiver.kernel.org>; Tue,  8 Jul 2025 08:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HI6uy3/VA9ODWgnMqFTSxnicfikmsNzPdv5EuvAouoU=; b=YT39XQDl7bTybyGGfDQf6AyBm9
	bcgeBK+HDhrasKyDWm1mGq3cDVmJOdjlGZ+ABk6gRWcqUsWNLn+AVbAiFOXjdjL/+2oYTY7hkNf3d
	7rJQChEj2K8x1qqU38Czj+te5FQfrnjiq7AKvOcMVkn5Av8vxaJYDxhhCaB7qM9U90a4duimc1z74
	GT1B0QIPE+oWnwqqGHLEF7D70Mw7ojKZUuj2ciW8+tyHyyPJecKg7Uc2CMpjIv87PLK4IadIkTuFO
	VUwKxhnK2HDVL/Kyx/7wpVob7vk+h9DQSmlVdJdPBclWXSFPC3n4lrIuoogOHqvxbfetJ8pEXZFrU
	DAXzhEQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ3Vu-00000004igR-07Rt;
	Tue, 08 Jul 2025 08:17:18 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ3Vr-00000004ifZ-0f3e
	for wireless-regdb@lists.infradead.org;
	Tue, 08 Jul 2025 08:17:16 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-6077dea37easo6686312a12.3
        for <wireless-regdb@lists.infradead.org>; Tue, 08 Jul 2025 01:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751962633; x=1752567433; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HI6uy3/VA9ODWgnMqFTSxnicfikmsNzPdv5EuvAouoU=;
        b=WY6adH35ULejLsvj9J0LYi5Bpw/XYuWidRDiaYq5muUsqN/C08xoeSTR+O9HlFFCZr
         6jc0x+WgkQee6k1MWqrp7dO9rRcN+Ieb1/e3PBjw2+SfSeI6QWA0yIFFbXmFa+L5rSAC
         hG95MXJ7iHoK/aTOTyVxbXr8TjabKDyGsHKV78AduM0NNUCKrec7TpMMmhs4nGUGVf6j
         LR7t96/RTIgqabN5AR3+y941Bzk5Yl2JcTbQZZV+2pLBCEomC6XV8Pr2jaxLIJQGLCgJ
         B1LwmyyLg9/lNWLQ3CyDsQMRDAzjA1/wIrPxwo/XM/HY3tX9SDJ1gAV/ySSX08j/0saV
         OehQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751962633; x=1752567433;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HI6uy3/VA9ODWgnMqFTSxnicfikmsNzPdv5EuvAouoU=;
        b=fsZRZBzUQkPQxsUOjf9ZNJr7OyLXR8ZMK4iZ2QWZcBhQVTBqNl6/zz6uD+W3MwOrNP
         6neRKmKg0mw3f7D8Ssq5O8fijXofE/InkAJZYQbm/aqppXrRreBWJjTHptPDyjrVPpWE
         qQiTItZxod4HcaPom28ek6XA6mk8Aejnmnur85muUCqW9CJuF0+Et7smQfU6/uWkI0GO
         8F6VXrbJIJF4T6c1HEzGJU0L2wQGhapkwO2L8ezANTgSJlzLHMA8zqrGufpH3r+moi1F
         Sm/qhu0PvSbE9oEGTCZ72kUipmn4n2HzDX6K8rTE6E0bxkxOdMLS1ys73O0nHllJj4k8
         7RrA==
X-Forwarded-Encrypted: i=1; AJvYcCUL/u4V5Sq7Mvkzsbmy5Fn+s8HEfZJ8Fs9S5sc/5Us/FBkqnIeUs5WjVvWj+7q+LmeK9ZnWG7UFSsMnpYP81w==@lists.infradead.org
X-Gm-Message-State: AOJu0YzIH9bJpqvBgfYq1B6Plx/05stIUST3FVVyk/iFid/kA/B5UFIB
	SRbbw3dd12GdmRcU59LG95X17WhVCpykv7MoEbca3iH3B19NW3UnvmpVvr4bOSnfAqddEznycRk
	iyalNJWbww27MTpwAiq8vkCPfLNBILyw=
X-Gm-Gg: ASbGnctrh1yGeimYbBmIA7wYPcVGkz56q27Xr2WrXrm5elzovIGrFYiVSTOnEYlLXBf
	OaRW9ZAmvwWy0WpNWiL13/MKiw1jYWDU0T9PKosXYWr0x8I5zBNqTGux+r8G0+03Y216SSwKD7/
	hKDYBNhZqHhz174Jk+majf+DYgagc132OpcY7QhLyXpR0=
X-Google-Smtp-Source: AGHT+IEmWCLMD3Tas03el2MROEquJ/ls6tdQP9T7z9a0b5GgjOI02bv1CITiE/ML+H5CRU9PQbtqjE+hJArr3fhhtpA=
X-Received: by 2002:a17:906:6a16:b0:ae3:c780:b883 with SMTP id
 a640c23a62f3a-ae3fe82d4d8mr1633925566b.54.1751962632684; Tue, 08 Jul 2025
 01:17:12 -0700 (PDT)
MIME-Version: 1.0
References: <20250708015005.6470-1-pkshih@gmail.com> <CAGb2v67YNZG_-MtJT_pncaqeQULj3FGLj7jpSUSOGTXe2ipGag@mail.gmail.com>
In-Reply-To: <CAGb2v67YNZG_-MtJT_pncaqeQULj3FGLj7jpSUSOGTXe2ipGag@mail.gmail.com>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Tue, 8 Jul 2025 16:17:30 +0800
X-Gm-Features: Ac12FXw5cCDxyXC22kgmT8lPlGYC45ldlFXO_SGEEYiTvFw45_ycYDRtycdSzl4
Message-ID: <CAHrRpu=rcXQzBO-NdDYBxj02WpMAHyP8ZdQhU=ScO=bOQXk9Tw@mail.gmail.com>
Subject: Re: [PATCH v3] wireless-regdb: Update regulatory info for CEPT
 countries for 6GHz listed by WiFi Alliance
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_011715_195999_43C48174 
X-CRM114-Status: GOOD (  11.88  )
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
> On Tue, Jul 8, 2025 at 9:50=E2=80=AFAM Ping-Ke Shih <pkshih@gmail.com> wr=
ote:
> >
> > From: Ping-Ke Shih <pkshih@realtek.com>
> >
> > The regulations enabling 6GHz WiFi [1] of WiFi Alliance lists CEPT
> > countries including
> >  - Albania (AL)
> >  - Andorra (AD)
> >  - Austria (AT)
> >  - Belgium (BE)
> >  - Georgia (GE)
> >  - Iceland (IS)
> >  - Liechtenstein (LI)
> >  - Macedonia, The Former Yugoslav Republic of (MK)
> >  - Moldova, Republic of (MD)
> >  - Monaco (MC)
> >  - Montenegro (ME)
> >  - Norway (NO)
> >  - Switzerland (CH)
> >  - T=C3=BCrky (TR)
> >  - Ukraine (UA)
> > Add 6 GHz frequency entry if not being added yet.
> >
> > The following are skipped as they do not have corresponding entries in
> > the database yet. Adding an entry just for 6 GHz would cause 2.4 GHz an=
d
> > 5 GHz bands from the world domain to stop working.
> >  - Faroe Islands (FO)
> >  - Gibraltar (GI)
> >  - Isle of Man (IM)
> >  - San Marino (SM)
> >  - Holy See (Vatican City State) (VA)
>
> I also went through the whole list, and it seems "Bosnia and Herzegovina"=
 (BA)
> is missing a 6 GHz entry. Could you send a followup patch to add it?
>

Sure. I will go through whole CEPT countries for 6 GHz entries.

