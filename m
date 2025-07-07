Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D30B7C83030
	for <wireless-regdb@archiver.kernel.org>; Mon,  7 Jul 2025 04:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s9eh5bX02SqmnDUG0v+iQdsxDWHld6KYbv4zGtnAkLc=; b=JOm7YvSklLTfBpnhjPl748v/uM
	1sW5naT1R7IfwpfGFK2G3d/O4qGnIdxbx3StiTkPMs8SptNd5nla7bxItaPgXLHsqViK9ehSXdGSa
	BwMe7alfOdlDEuO2JFe3EDPrykBRNVCH6+Go8I4FfdPu6As3xO9+0Zjre2i/gHbXc3BHjCUt5MWOg
	7DtbUjRexKCrDIKKKj1/B/CQJUaou8BOtWyge5BErX6xSTf5CXZw/UpJZaSBRHktKvCPVpsqg+F0H
	Hav4o35MbVSpzLEgYA6eamHsumZyajindTQ2OExIrt6iwjhzEHJMH9q/t+325fdqrFiUeYg8CyCCf
	SLuI2qtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYdmo-00000001OaC-26xn;
	Mon, 07 Jul 2025 04:49:02 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYdmm-00000001OYY-2cQo
	for wireless-regdb@lists.infradead.org;
	Mon, 07 Jul 2025 04:49:01 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-ade5b8aab41so554511666b.0
        for <wireless-regdb@lists.infradead.org>; Sun, 06 Jul 2025 21:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751863739; x=1752468539; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=s9eh5bX02SqmnDUG0v+iQdsxDWHld6KYbv4zGtnAkLc=;
        b=kf6Vnu98EM/DIvsTnbimItV9ZPTF3y8l81Ge3idqETlGhwX5K/a2yrHF4Q/8rTJhw0
         345hBncfMdce+9gK/hM+FFKtPLYF4TprppHk7BSa1ZYGm67ceITwUvximYLo5MMmg1Ih
         yiLaunhe8zv2FtdTTt/9mUzYhqzx82g86AXI1jjgkmhsGmygNp4XVaJaDs/aFq5hBf1E
         dC/JCBL3HY2G8VMtSyw2NVvAtZ/amsWPcyFqc8X/Xp/qnYfv7xnKioyE+xEd4w9J4aXj
         qkg+Hnee0bsAc3YJwJelvXsMT/x4UgmcfNAO9Y4Adlibnp7/silfdRmLeQB+T0RC3//9
         aV4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751863739; x=1752468539;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s9eh5bX02SqmnDUG0v+iQdsxDWHld6KYbv4zGtnAkLc=;
        b=T0vH6z6yyETLNaYGjUU2nGqmXufeVgeo9r5l/vNRp0u4bz0OMwdkj7EEQz918HTzT6
         MAvsD5+YbjhZhtCJV1LyZ3wFauJo3UMuZqaMCmgZIxSwBvopGQI9sqHSpPDgMxwJdCSr
         22/a1lFoIkXTS+DI22GAhN5DNv5aEPGq39ru/N/jErI/WLP9TkOi1SQl+MmCPjGFO+Xo
         ohBpI6B/2TJ7V8nuUv4JehWtXdG0xH9Mpbcd4h4VfazSa7kb/yFGLA0q9MDaeqKRIKVp
         aWsg6+IGNLktT5hul8tTCt86y0jBZaPtfeiC16IvU/r63tlEwwddHBMKSWV8TkYJGJGw
         4xxw==
X-Forwarded-Encrypted: i=1; AJvYcCU3eLEak3Up2t0FEJoshopZxG7wIZVEr4xTgRie1HzeCf0hNdrF69jha4PbyVaxzhf5zQQe6DRROmEXh4e1cg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxn/5iuyLdmKEF8f02of+uuJ4X1YR93tzCKcgzfQTw9wokHN5i/
	yHla/XQ7DJ9um2c/ChGpJ+qTq7gwGLFhSWE3Tfu3a6MOAHIsr1ooiLygm7Y3Ln3dyxH8KvDaLRV
	+Gv9A4R3HWj7EpvTLLUaXk+Ak4oBRDl8=
X-Gm-Gg: ASbGnctPbMzbyDsRwWUIe2LS+osGLCkufn0CCVgLO+VllgHpZ0PEm3mzQowRGk2PTuc
	sbPy8WC04D6+wbZ/2AIb+LvtYjYVvGGSglTmFYkBf50/cmrKNbQ64dxe7wtBJnvP36G25PBnrAA
	uj4QLtjY4PBqVxoQ7RTb30zSNOmJqAPbTagLPVlg4Tcdp4lg==
X-Google-Smtp-Source: AGHT+IFHMSMk9DCNGgxatFS40Qp2NCPKKf5rvgN7Cebzd0ZQh3MQvcrYYWGQlODn0fQQHJdD9dMOB1GEzxLuIRCK6BY=
X-Received: by 2002:a17:907:9444:b0:ae3:b371:e7d4 with SMTP id
 a640c23a62f3a-ae3fe596317mr1106723766b.12.1751863738655; Sun, 06 Jul 2025
 21:48:58 -0700 (PDT)
MIME-Version: 1.0
References: <20250707024615.38507-1-pkshih@gmail.com> <CAGb2v64uB7-4yNCxQiU0bXEk0Px=vF+Oh5+fYevzdPUhcsXLWg@mail.gmail.com>
 <CAHrRpum2QD9GnHiWz3Exf140g-Y9p86Q7HD_Awg-wiWON3LEjQ@mail.gmail.com> <CAGb2v65HLghihGpHebiYcqaaLoetY__0j5wSOdgXpQVDHaUi2w@mail.gmail.com>
In-Reply-To: <CAGb2v65HLghihGpHebiYcqaaLoetY__0j5wSOdgXpQVDHaUi2w@mail.gmail.com>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Mon, 7 Jul 2025 12:48:40 +0800
X-Gm-Features: Ac12FXyMKFGdL34tJPYf023jI_CaJU95LntkTLMP97JgPBwFU0mv0v15cNGYnTY
Message-ID: <CAHrRpuknCcfOoRQYURbL_HwH_yQiSgU+EWrM83EPbu5krRCeXQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] wireless-regdb: Update regulatory info for CEPT
 countries for 6GHz listed by WiFi Alliance
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250706_214900_665125_DFA885A3 
X-CRM114-Status: GOOD (  14.82  )
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

> > > > Add 6 GHz frequency entry if not being added yet.
> > >
> > > Please add the links to [2][3] to all of them. And could you also add
> > > the link to the other countries that already have a 6 GHz entry? Just
> > > so we know that they are harmonized.
> >
> > Did you want me filling all CEPT countries with 6 GHz entry or only
> > listed countries in this commit message?
> > I'd prefer latter one. Please let me know your thinking. Thank you.
>
> Only listed ones then. However, if you do notice any of the other CEPT
> countries already have 6 GHz enabled, please add it as well.

I will do it.

Usually our RF team tell me they get certificated from lab (e.g. SGS)
for certain
countries, which should have defined regulation rules, but they don't share a
internet public link as references, so I can't make a patch right away
until I find
an official reference.

