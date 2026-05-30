Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E18C5CD6E49
	for <wireless-regdb@archiver.kernel.org>; Sat, 30 May 2026 15:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gROVG8FRtJTTDahQ9ls/6doABZN3o3r0v80py5sMo3s=; b=g6Nwnb5liSv9k4
	I5qpzpmxLLAr9Uno0lu36inDJUWkL66cxKkKSeOu+k6gFYy3q4Ud0IOpbQhNs1F9SRw8bIMy96eHI
	A87Kn27TyXLM566t85W9igngQ7c3LEh5BuHiyuE66829xBV9Q1UQDRiv+0B5xsFr8MhQfprYjXIzC
	aN8+5VMIppvIN5A6OQZb65Mn8jBjJStdgkazX0J4fQyMGqwnorPDmVyUR5u/kExC3vkKGbNeMBkrh
	EaQRMBJk9A5Wkhi3/9FHCjz2P2BlJOglOu7/xPM/hNggOqu0VZ8vHzw5+L5qRNcdSgCFS/YRYObOb
	8jcwauuGqVPq1g08LVxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTLz8-00000008tkO-2AXj;
	Sat, 30 May 2026 15:52:26 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTLz5-00000008tk2-2dhx
	for wireless-regdb@lists.infradead.org;
	Sat, 30 May 2026 15:52:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8365640455
	for <wireless-regdb@lists.infradead.org>; Sat, 30 May 2026 15:52:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6766B1F00893
	for <wireless-regdb@lists.infradead.org>; Sat, 30 May 2026 15:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780156342;
	bh=gROVG8FRtJTTDahQ9ls/6doABZN3o3r0v80py5sMo3s=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=OeeYGT58ybQ23FGUWa9n4+qOCYpOSI/rPYZazSWeoeoQRGD4SgSj1YS/TnM3WRvt3
	 56v5pn3FDaXjlxPxNPHaUCEhKOwPb3yj8cwtCsMAnyi0woz2kC+lqTSPzCsStqSusV
	 za2hGhOi3z/wIguJrU88yb36i5xW/tp4WXp28BFsRFMQytGApkbA7o49b28tw4GgH0
	 YJNuZkOEmib6e9nE++iu/XyHXnvCO96+F98ssh5k3/GsQfWa62dwW3UNDh7u+bLJe0
	 MKVV3IVPd+a/6xiFGKpKUj67CjA4BuSMJ/jFc62MUhAJr4vigGx9iokGdQHqvT2at1
	 9bzndJBIlrDWw==
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-3965eab14cfso10932351fa.0
        for <wireless-regdb@lists.infradead.org>; Sat, 30 May 2026 08:52:22 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8RhnaA/AdR/V8mc5OaLoOp5g/ijpi6L3OmhMIw2zLFcxs622gBDWjGuulA4XX/f8rXtRpcIs+zZUN1BEgs8w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/SJY8OEg9AwTGQhn5Ace69EAQtXCTct7jr6K7fVID9sI/r7Dc
	Iu3kIfqq3Mvg4f7VgYeSBiX0J3P1wj5wEF6Xfl6yBursVxfdOJZnCxBaZMjoITbcNe/ptB4HgSZ
	k/1AuGvTPkwXFZX+azT+Y5MBv2MILEwg=
X-Received: by 2002:a05:651c:40d7:b0:392:c9a:ac43 with SMTP id
 38308e7fff4ca-39664eaa9e1mr7899251fa.8.1780156340894; Sat, 30 May 2026
 08:52:20 -0700 (PDT)
MIME-Version: 1.0
References: <20260428093058.3672383-1-me@0upti.me> <177751439231.3356117.7542785326182742344.b4-ty@kernel.org>
 <d18d4ba0-9fc6-4585-8161-610ec42fdab4@0upti.me>
In-Reply-To: <d18d4ba0-9fc6-4585-8161-610ec42fdab4@0upti.me>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Sat, 30 May 2026 18:52:07 +0300
X-Gmail-Original-Message-ID: <CAGb2v66ec4fxBqOwNCZpVKNdY0eUPPftPQTK1v96VWpwYhi8bA@mail.gmail.com>
X-Gm-Features: AVHnY4K5oAcDsMiqVYjJNazV2A57V45lccR1WlI8LsYy48sire-gV85xHNZFLy4
Message-ID: <CAGb2v66ec4fxBqOwNCZpVKNdY0eUPPftPQTK1v96VWpwYhi8bA@mail.gmail.com>
Subject: Re: [PATCH v2] wireless-regdb: allow 320MHz channel width for Russia
To: Ilya K <me@0upti.me>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, 
	Louis Kotze <loukot@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260530_085223_689329_50263E5C 
X-CRM114-Status: UNSURE (   8.54  )
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

On Wed, May 27, 2026 at 7:48=E2=80=AFPM Ilya K <me@0upti.me> wrote:
>
> >
> > Applied to master in wens/wireless-regdb.git, thanks!
> >
> > [1/1] wireless-regdb: allow 320MHz channel width for Russia
> >       https://git.kernel.org/wens/wireless-regdb/c/62d72c287e99
> >
> Hi, can we get a signed tag with this included?

It's tagged and released today.


ChenYu

