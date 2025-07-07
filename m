Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A60BFC8303C
	for <wireless-regdb@archiver.kernel.org>; Mon,  7 Jul 2025 04:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hh9Fmj65WwGho/6PnecLIqg/0/nl3cmxuMsBMv8BP7U=; b=HCNr7xACk8n3x/8+8JsR/pbGu+
	I95wJ3f/ZgZ9U7TTh9rnRBwhAHLnG96bjIKLUfhZkB/3YhIzWzjnyrF8QAXWAh4D8cYqlAoMadfzL
	OeGdQyaiKAvUrwk2oOnCvh3HVn0LsC8ktsFl0jcBYCiTKBLNldl4AvAxyP0xyiTeJx/oykPM4YBgi
	ebsI15Jktek23URlfyQ7Jy94skWAUp29T4B2DNe1KHW9eUFlyX98lAQaj40tjT09alBVHyM00LKwS
	DhTfZxIlvjBZFaNp6mhIemtaDwaCI/X/QkWVoHLfb+3r9ptOpYD8bx/AphMjesyBZj45WkyqNdGc/
	0Zx+wQEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYdFs-00000001Mcs-1wGN;
	Mon, 07 Jul 2025 04:15:00 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYdFq-00000001McX-3ruj
	for wireless-regdb@lists.infradead.org;
	Mon, 07 Jul 2025 04:15:00 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-ae35f36da9dso505214366b.0
        for <wireless-regdb@lists.infradead.org>; Sun, 06 Jul 2025 21:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751861697; x=1752466497; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hh9Fmj65WwGho/6PnecLIqg/0/nl3cmxuMsBMv8BP7U=;
        b=kUtRpsMJ8eS+gsdLtAW5G0sgMCY/kfdV6sg8gzvcFVVXA+Dl/Rx7mB6JHvElH5Hysi
         1lJdwSJij19/kptKSVxqKpIbX/od/Jw4m4ghExv/HiGym7sEPDNF0kzqXtv/W7TZRuHG
         g8sIK08F7pFoYIEv1HZAIb16OlqObUkKgYU0WmBE05wj+Cw315DjrJIcVsKlC3XS57yY
         N5GCw4KNqI21IJAt8ofl6dv1L1qCODzTsQcB5EpSubE5HEvRREvBBRh0s8k2HSCO7OtS
         7XyuGU0AARsdoWOVrKQGc7ExVPhVXoodBvCXmK0bcgtakMWGsJ1d8ySlFDswVZtW/ep6
         0oLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751861697; x=1752466497;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hh9Fmj65WwGho/6PnecLIqg/0/nl3cmxuMsBMv8BP7U=;
        b=de4ta/cl2+NYgO00l1KEC30ZicGP/OiyaGRlDvRLZ/d/0pyC6sMhqA3RdY3v9tvbW7
         EwOdbu00tBv/hA8CGAJFJshI+rcB7k1ubPxrHpMIk8CBBaypmxOOr5xzmqBK/Nyw6uGd
         Lhqt3+tuRT0QMKHSjYbyH52s+9tGVgof1VreLkKIA63McIx1C4tvWqDR96MriB7+rXK/
         W/YRJRpoEFDQ3Q4ZTl+7UC9KzaU3ab9kxn24P5A8Cfgkbbcla7YMmNBKBmsC0mP7W+ZS
         pOXm/VATCeAHAI0W5RP1Jx7D68l6338JDzTfoZhHTOqY9KI7z4ivunj2bgZRySKpuHZg
         evqQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAnrpgOORNfvkbMLvxsSkJInf/MAUm/gqHhdOO56F6r32iTkgEVabzB0sRSSojaDSV9gT8vHsiQGAqS8QtIA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy61hQFtcQWUf7c29wKnEjDCAzMBD8YBBddINUPc8ZyGv0FpSGi
	1GqfIO+NaFSyHMOCXuvJZPU9MqF0WvUJkt950FhZSOSWiCjJeF0QIW3Nz9/G0uw8uB/KUd0RPUB
	o7lygrwCGX3nvCB2IOrXBmvMnaEGVoic=
X-Gm-Gg: ASbGnct7zNzEBcxdDFEU+WorbhZyMkUJQFi75mhNGho6/16xde5gWIcRLNdWSH00tsq
	5lB2rGMxzSAofPzWkh2S6/bP0ckGs+qUec4ThHLU2A4/wYjA6jrmdNt7htGt1o10rjEPoQ19F4X
	AKLPTfSXyrb9E7zO3iwcEJvenaOskAuTZx0ae6OdUDMxpaAQ==
X-Google-Smtp-Source: AGHT+IHDoIPIF+HBXfu4Tik80b+/hGnYplWBqy2mCM5k1GuKUTBjlwmJ2kkxwlrlwIMgMRVBLxgItVEcxstj6/Vl5Jc=
X-Received: by 2002:a17:906:3c43:b0:ae3:6651:58ba with SMTP id
 a640c23a62f3a-ae3fbda2f7cmr920390066b.35.1751861697081; Sun, 06 Jul 2025
 21:14:57 -0700 (PDT)
MIME-Version: 1.0
References: <20250707024615.38507-1-pkshih@gmail.com> <CAGb2v64uB7-4yNCxQiU0bXEk0Px=vF+Oh5+fYevzdPUhcsXLWg@mail.gmail.com>
In-Reply-To: <CAGb2v64uB7-4yNCxQiU0bXEk0Px=vF+Oh5+fYevzdPUhcsXLWg@mail.gmail.com>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Mon, 7 Jul 2025 12:14:38 +0800
X-Gm-Features: Ac12FXykxWNRiqghUFX_9brMpcIs7WuI6PLq64NFrIP6eMt-wNB9e2tszJ5vmUk
Message-ID: <CAHrRpum2QD9GnHiWz3Exf140g-Y9p86Q7HD_Awg-wiWON3LEjQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] wireless-regdb: Update regulatory info for CEPT
 countries for 6GHz listed by WiFi Alliance
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250706_211458_959012_5951FF3C 
X-CRM114-Status: GOOD (  15.40  )
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
>
> On Mon, Jul 7, 2025 at 10:46=E2=80=AFAM Ping-Ke Shih <pkshih@gmail.com> w=
rote:
> >
> > From: Ping-Ke Shih <pkshih@realtek.com>
> >
> > The regulations enabling 6GHz WiFi [1] of WiFi Alliance lists CEPT
> > countries including
> >  - Albania (AL)
> >  - Andorra (AD)
> >  - Austria (AT)
> >  - Belarus (BY)
> >  - Belgium (BE)
> >  - Georgia (GE)
> >  - Iceland (IS)
> >  - Liechtenstein (LI)
> >  - Macedonia, The Former Yugoslav Republic of (MK)
> >  - Moldova, Republic of (MD)
> >  - Monaco (MC)
> >  - Montenegro (ME)
> >  - Norway (NO)
> >  - Russian Federation (RU)
> >  - Switzerland (CH)
> >  - T=C3=BCrky (TR)
> >  - Ukraine (UA)
>
> This is slightly confusing because the CEPT document lists 46 countries.

As the (force/preferred) date mentioned in ECC/DEC/(20)01, I think
CEPT countries should
implement  6 GHz regulation, but to be conservative, I only add
countries listed in
Wi-Fi Alliance.

>
> > Add 6 GHz frequency entry if not being added yet.
>
> Please add the links to [2][3] to all of them. And could you also add
> the link to the other countries that already have a 6 GHz entry? Just
> so we know that they are harmonized.

Did you want me filling all CEPT countries with 6 GHz entry or only
listed countries in this commit message?
I'd prefer latter one. Please let me know your thinking. Thank you.

>
> > But being pending to add rules to below entires because countries are n=
ot
>                                           ^ entries
> > existing yet:
>
> As in, no entry in the database exists?
>
> Probably rewrite this as:
>
> The following are skipped as they do not have corresponding entries in
> the database yet. Adding an entry just for 6 GHz would cause 2.4 GHz and
> 5 GHz bands from the world domain to stop working.

Thanks for the advice.

