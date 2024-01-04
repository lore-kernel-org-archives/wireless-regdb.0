Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6264C47074
	for <wireless-regdb@archiver.kernel.org>; Thu,  4 Jan 2024 09:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gPkikR0+Cp9CaLqdSLUmre0cKqV7mereubM4P+BkCyc=; b=SNdwGjBfOdEa5m+thwOPJ19Q9R
	4Wxko51iitaWvDpImvhffR+oWIhYLyTal3pHxC7kKX7V3ugyk/QkstHFK8NjcrSftFAC6aS4C7UNK
	/sof9CfQJhIjW2gAVAjf3ZPGQNPbIQAKIAfTz9R2yL55R/FLS5uwJaX1hfQSK2EvkYfVabvzsv2pd
	4pTdJjjLOceogdHingsgAOJKO2EvLCaHXeN88kLKnJdfQoGLvAcBJjRKJ2ydJ7TdJww8CCIBVd6V3
	SWa/GLDY1E0UAiM5l9br2U5OwdQMkkAeeM9xiya1RNbp4fKaPqnZHeBNY6SoLVeQEEyO536hsTble
	adZxx+Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLJhw-00DJQg-0u;
	Thu, 04 Jan 2024 09:08:08 +0000
Received: from mail-io1-xd29.google.com ([2607:f8b0:4864:20::d29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLJht-00DJOX-0Y
	for wireless-regdb@lists.infradead.org;
	Thu, 04 Jan 2024 09:08:07 +0000
Received: by mail-io1-xd29.google.com with SMTP id ca18e2360f4ac-7baa8da5692so11231239f.0
        for <wireless-regdb@lists.infradead.org>; Thu, 04 Jan 2024 01:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704359282; x=1704964082; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gPkikR0+Cp9CaLqdSLUmre0cKqV7mereubM4P+BkCyc=;
        b=Z9su/wGuca+f2BDYxKxcQjhCEH93vrLy6uvJoS/j8xInq0deWDFcioFX9fZbWna+95
         KnqYww2McDE/l50PQF8iGHD+YbF7FCn0X8Nk+jGe2brvmoY2Ej30jNYcbcB6XTSk9nwa
         oXPTRv6DCz/D0d5ssdSUT8HivsE00Sn9RezrV5UOVupoH+sNhsrC4Tz+zx9MBY2hz2eA
         jKIIja3nDFAUSEJSsmAMjSAKIt7+wOfyxo9mpZS/+4uVm5b39eQAXdpjAx+Z4Rs3p+5d
         L5+3eJFnFOjRBP8yh1nmcEi3n2NiUT17okH3cu+58mMuhiCg+JD32PRvE0CCBp0uV1sS
         +Y0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704359282; x=1704964082;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gPkikR0+Cp9CaLqdSLUmre0cKqV7mereubM4P+BkCyc=;
        b=X/4pKFEz2RKZJk/rvgJDe+LtnNtEGdQ06kIpAOdhQ1jYqAIxgBfeB78lZmDf9n9+nU
         0vx07L8F137OeKyL7LIk5dTWs8jMfNJZ4jGD665sQrP7IbLK/LoueklGLDdCKwcHkaKw
         +WG0R5FgmSiveFKxGA+IrLS2Gx4OOe1tTG1snL2Dg0navhIjvTZm1f2d70jYMYwLLrnl
         81H5yx3CyoebuQ0ZEsu5EnbuQBizgeVXzrMy0HH/ftIt8KOYgeYKVXpKKvGeZwd2Kg87
         aBrGMv321YCxwYaM9Hg6vxk769FxQfvzzFjHzLAE0VbwRX1hBZBQgUyiPztLRMSg3dIR
         WsHQ==
X-Gm-Message-State: AOJu0YynFM4kbL+yoSAuXWIUABqjiFL+PFYMoxBKhUXKtYFRp15nKro2
	8VaSulj8Jx0DUYQxhVg2G6IhJlNjymcNy03YVwM=
X-Google-Smtp-Source: AGHT+IGuhm70ejPN/hiQgCDZR4YWOHYKn7MwRnNDZQgvpU4BVs/DsfrRaYduse0xQEVgMXCzh3W8g3dGP7/Lmwv8ngU=
X-Received: by 2002:a5d:824e:0:b0:7b7:fe2f:dddd with SMTP id
 n14-20020a5d824e000000b007b7fe2fddddmr347340ioo.22.1704359282587; Thu, 04 Jan
 2024 01:08:02 -0800 (PST)
MIME-Version: 1.0
References: <CAGb2v66xVLqr+tUSD_6uzguGXtj04WfbpT0z9M28r8z-g62Z=A@mail.gmail.com>
In-Reply-To: <CAGb2v66xVLqr+tUSD_6uzguGXtj04WfbpT0z9M28r8z-g62Z=A@mail.gmail.com>
From: b.K.il.h.u+tigbuh@gmail.com
Date: Thu, 4 Jan 2024 10:07:51 +0100
Message-ID: <CAPuHQ=GSuKW5=T0GXXCq7Pf9jw=zcEnms-fEJey68QUWH1ishQ@mail.gmail.com>
Subject: Re: WiF Transmit Power Control (TPC) Regulatory Requirements?
To: wens@kernel.org
Cc: Seth Forshee <sforshee@kernel.org>, Kalle Valo <kvalo@codeaurora.org>, 
	Johannes Berg <johannes@sipsolutions.net>, 
	wireless-regdb <wireless-regdb@lists.infradead.org>, 
	linux-wireless <linux-wireless@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_010805_216253_3E10AD8B 
X-CRM114-Status: GOOD (  13.62  )
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

You can find a wording in most such regulations that if TPC is not
supported, the maximal TX power must be reduced by 3 dBmW. Hence in
all such cases, the entries in db.txt contain 3 less than the maximum.

If, on the other hand, you know of a country that specifies that
devices lacking TPC may not use the band at all, all such band entries
must be omitted (commented out along with a URL).

On Thu, Jan 4, 2024 at 6:59=E2=80=AFAM Chen-Yu Tsai <wens@kernel.org> wrote=
:
>
> Hi folks,
>
> I wanted to clarify the current state of things.
>
> As far as I know the kernel doesn't have facilities to support TPC or
> transmit power control, nor does the wireless-regdb database. And so
> in the database we would either omit rules that require TPC, or include
> alternative rules (as specified by local regulations) not requiring TPC.
> Am I right?
>
> This came up recently with regulatory changes for Singapore and Armenia.
>
> For Singapore [1], the 5.250 =E2=80=93 5.350 GHz range has provisions tha=
t allow
> usage without TPC at a lower power, but the 5.470 =E2=80=93 5.725 GHz doe=
s not.
>
> For Armenia [2], the updated text (translated by Google Translate) as I
> read it requires TPC for all 5 GHz channels.
>
>
> Thanks
> ChenYu
>
> [1] https://www.imda.gov.sg/-/media/imda/files/regulation-licensing-and-c=
onsultations/ict-standards/telecommunication-standards/radio-comms/imdatssr=
d.pdf
> [2] https://www.arlis.am/DocumentView.aspx?DocID=3D181829
>

