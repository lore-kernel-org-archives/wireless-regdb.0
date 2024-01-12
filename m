Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F5E2C4706C
	for <wireless-regdb@archiver.kernel.org>; Fri, 12 Jan 2024 03:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9FOFxR54lgBeM04ZGkxl/LrAvfVOvdbCNPQOHuzl9z8=; b=YUZ0bJ7gtJGcjB
	pQL+aXejBS+ROsrI2O1fiAPlNspfU4v9dcEPKNXGrORagZZ1J3KgI54eA5KxmnEwRffyyLxyYzj5k
	wLCCzTL+hpXiJi5TKQ3ugdsTNRIReQ9BE80XC1ZQH6k9OIMvqQYwjq2VMhvRzOE/zxDG83w2FhIiN
	jR70lN9ysOX78kByk8qsO4KitEyFFjniqTBs0gnwnJkZ9Z2bTWX5SP7JyKdvgTNnoa+MYhxZxIwS2
	ilRueoZXTzQEKCDT7AFcR0qekZq4z0KhZPqEB+jmxmeCw6wcb+WO4aQ8sGAZu8z15YnjRhnlcJHId
	tGjctwkcRS9vd9+5F44w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rO8Sk-001mrA-32;
	Fri, 12 Jan 2024 03:44:06 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rO8Sh-001mpv-1o
	for wireless-regdb@lists.infradead.org;
	Fri, 12 Jan 2024 03:44:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BCD3561CE6
	for <wireless-regdb@lists.infradead.org>; Fri, 12 Jan 2024 03:44:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68F15C433F1
	for <wireless-regdb@lists.infradead.org>; Fri, 12 Jan 2024 03:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705031042;
	bh=t3yAn8l4w+vQ9K3EeylhP2ucFV6JMzdlWrJ8F/EmlS0=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=martmq3kLgYWUQ9V6r6Ox6C4QPRTxoiL3d06sMu29G1jJRCD3bfvRHzr7CvLJUD1N
	 uffjvnmUYCp0XKFhABrlzqMtE432HlOpJgPxib0LjgC0J3Qppslr6aMmt+XYmOYF5N
	 7MfxNurWVmCl0YwdJH65UuT0nkChv2a4PGdqZLZq51Ba5T/YurTPlh682s7LBlo6EW
	 rgGIg8RAqsyT/gJ2MA4HhquoCvuJN65zqVNDL/trzT3Vosqy5Y0ATWyRdBEdMpmBCr
	 eC/lID0DEe6ue14WckW7vt1XtWgg+QhIyn7VQuvRUCHl8lekNeHBnMbt4Li4e4Rx3m
	 WHNY0ox2gyhxw==
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3bbc755167fso5460079b6e.0
        for <wireless-regdb@lists.infradead.org>; Thu, 11 Jan 2024 19:44:02 -0800 (PST)
X-Gm-Message-State: AOJu0YwNtBH8cj3dS0vkQSUPRmAGZaGDBFrehCz21aBeHh6xczhc4+d2
	0tZDjiWQ8ThbpTWcG5+kZcnO3zr716rvIYYXqQQ=
X-Google-Smtp-Source: AGHT+IFO+KwCoCrLivVqOMe96YBLJJD0w26a0WYJrMK2FDgbNbgKsn5SWar2VgBGKLcDGUEXhApTNVFee8PBtcXqx1U=
X-Received: by 2002:a05:6358:59a7:b0:175:7a1d:e17c with SMTP id
 c39-20020a05635859a700b001757a1de17cmr1348228rwf.61.1705031041681; Thu, 11
 Jan 2024 19:44:01 -0800 (PST)
MIME-Version: 1.0
References: <20240112033321.23052-2-me@ndoo.sg>
In-Reply-To: <20240112033321.23052-2-me@ndoo.sg>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 12 Jan 2024 11:43:50 +0800
X-Gmail-Original-Message-ID: <CAGb2v647wp1fUEkY22ma+ni+kLxeWSezamsGEPUEfedUGJBOAQ@mail.gmail.com>
Message-ID: <CAGb2v647wp1fUEkY22ma+ni+kLxeWSezamsGEPUEfedUGJBOAQ@mail.gmail.com>
Subject: Re: [PATCH v2] wireless-regdb: Update regulatory rules for Singapore (SG)
To: Andrew Yong <me@ndoo.sg>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_194403_640978_22BBB9F0 
X-CRM114-Status: UNSURE (   6.49  )
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

Hi,

On Fri, Jan 12, 2024 at 11:35=E2=80=AFAM Andrew Yong <me@ndoo.sg> wrote:
>
> Changes since v1:
>   - Update comment about raising Tx power upon TPC implementation to spec=
ify mW values
>   - Extend (5470 - 5725 @ 160) band to adjacent 5730 MHz to enable Ch 144=
 similar to US & TW regdomain, instead of using AUTO-BW

I think we're missing the actual patch? Can you resend?

ChenYu

