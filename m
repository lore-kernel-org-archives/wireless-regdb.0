Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41A13C4706F
	for <wireless-regdb@archiver.kernel.org>; Thu,  4 Jan 2024 05:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hlQErY/LfTDpjZ1rUHb5dP0eaPdYFN45VDGUv9NcCv0=; b=iwrJBzuDftF9L/
	MMejSp5PmedCKflRugkU4+KfrZ3JXlZ9uE78Q87NSDWjJ/or7qjiCaPjJeq5d1NMFCM/y8nU6Z+F3
	zIsVnLLEyTVaEimq2fSep3aDtuHCKo+mC0MTBguBGHfU8ieeiAwQAhfLOYLMhmHkRlyWzPqecoHzk
	5QsrvTtc/Ml2Ueq1UZqWSgBfv6kr7M4jTy5CmI9OEM+vLszan0gIwesdfTvITQ0jN08JJEtld6x1S
	13bSez9q4m/acjII8hD3fTlicyJ3aQuiKh8wnYHc5wFHPrMK8tmNwuLYak/a1j5hRw27cj0HF7U+o
	/mMPqPu1sQ2idh18g5iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLGkl-00Cw9Q-1E;
	Thu, 04 Jan 2024 05:58:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLGki-00Cw8g-1h
	for wireless-regdb@lists.infradead.org;
	Thu, 04 Jan 2024 05:58:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7508961547
	for <wireless-regdb@lists.infradead.org>; Thu,  4 Jan 2024 05:58:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23076C433CC
	for <wireless-regdb@lists.infradead.org>; Thu,  4 Jan 2024 05:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704347927;
	bh=hlQErY/LfTDpjZ1rUHb5dP0eaPdYFN45VDGUv9NcCv0=;
	h=Reply-To:From:Date:Subject:To:Cc:From;
	b=nIMbWGnU7WAfrTe9hFN6fevn6p3PcvWK6qKRE/+lDY6ZF5A3SCI3hjQTYsNgcU4DV
	 A37+1z58TkYVmOKIJNMouJInDOzRGkaz6TG7F9NU59OH1VnMqrB8GXuTqQ7Fe9ltuN
	 rsi5EL1y0uEnMY/IbXprom9ul0mXuP6OQEOCplpb6RKUYo6beWF26Cz8/3HdJyJvVh
	 XRcn0iVkSmOnV9+MlmOljvHJ/yGaj9wJ6zlSeaoU7AZKRW/EmV4SBc3EGgu7BHrmlM
	 QlST8P3D0rifcQgkshcx8z/0xuqT0QdCinpQ/qX7PVS5BAAYozSpK1ZtXFcI+UKTTY
	 i8V7XCn7ZTZ5w==
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-5ce9555d42eso137341a12.2
        for <wireless-regdb@lists.infradead.org>; Wed, 03 Jan 2024 21:58:47 -0800 (PST)
X-Gm-Message-State: AOJu0YzPPJQsD1Tfuyyf+zKzEkPA+K6rh4wqdFVe6jXoJlSdsoM8S7S+
	D6XziP+7WgpF8LJlLYIM0OqIm1Ge7dcTQh7tAvs=
X-Google-Smtp-Source: AGHT+IFWvtkrJvY2JOQLCUBR8zfgKjydkC0Z8Da7jVJa4ax3WJiILtwdGcJ4nODELv8tSY4dfcTWYaJIk1P++jXLCLU=
X-Received: by 2002:a05:6a20:6a1e:b0:196:163d:364e with SMTP id
 p30-20020a056a206a1e00b00196163d364emr80715pzk.55.1704347926672; Wed, 03 Jan
 2024 21:58:46 -0800 (PST)
MIME-Version: 1.0
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 4 Jan 2024 13:58:35 +0800
X-Gmail-Original-Message-ID: <CAGb2v66xVLqr+tUSD_6uzguGXtj04WfbpT0z9M28r8z-g62Z=A@mail.gmail.com>
Message-ID: <CAGb2v66xVLqr+tUSD_6uzguGXtj04WfbpT0z9M28r8z-g62Z=A@mail.gmail.com>
Subject: WiF Transmit Power Control (TPC) Regulatory Requirements?
To: Seth Forshee <sforshee@kernel.org>, Kalle Valo <kvalo@codeaurora.org>, 
	Johannes Berg <johannes@sipsolutions.net>
Cc: wireless-regdb <wireless-regdb@lists.infradead.org>, 
	linux-wireless <linux-wireless@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_215848_625736_2A4805FD 
X-CRM114-Status: UNSURE (   6.79  )
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
Reply-To: wens@kernel.org
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

Hi folks,

I wanted to clarify the current state of things.

As far as I know the kernel doesn't have facilities to support TPC or
transmit power control, nor does the wireless-regdb database. And so
in the database we would either omit rules that require TPC, or include
alternative rules (as specified by local regulations) not requiring TPC.
Am I right?

This came up recently with regulatory changes for Singapore and Armenia.

For Singapore [1], the 5.250 =E2=80=93 5.350 GHz range has provisions that =
allow
usage without TPC at a lower power, but the 5.470 =E2=80=93 5.725 GHz does =
not.

For Armenia [2], the updated text (translated by Google Translate) as I
read it requires TPC for all 5 GHz channels.


Thanks
ChenYu

[1] https://www.imda.gov.sg/-/media/imda/files/regulation-licensing-and-con=
sultations/ict-standards/telecommunication-standards/radio-comms/imdatssrd.=
pdf
[2] https://www.arlis.am/DocumentView.aspx?DocID=3D181829

