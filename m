Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A58FC25B75
	for <wireless-regdb@archiver.kernel.org>; Mon,  3 Jun 2024 06:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r+ScYlwDpVsm4Opul/nINoPjqHOfc5m6DtAEqUh7eNY=; b=tegUZBG4eExqak
	O8rD6KNzJR5mS82W3NZxyp0Ap1p8NEu8+ZRZPeDkmeVlHN9EEW0q5SKgx1io8AZV8QZV/9yZj62i7
	v7ZhQ7bpMyh+FAL103MaFj10xc+OPaQAH1xl08fdhGjFajfutjZOs71Dw03f6l8L5DpunksmWQH0n
	WXifVIE3wuSk1y6LB2efdKWPM3xWR10zoUz3+yPvvb4Tp1vjguKfEa0Lv6fwSw01Knxa/xe6BY9Nn
	CE++MA62kNrr73J3166i/+iwWXnuqSdmaCIU0x0/tOdacih6WKnjaD2hUGhjLexNItTWt+0DfIrPE
	JfjKIYecuQFI/o4XAxmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE1Jo-0000000FmDu-0Aql;
	Mon, 03 Jun 2024 06:37:20 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE1Jj-0000000FmDG-3xVT
	for wireless-regdb@lists.infradead.org;
	Mon, 03 Jun 2024 06:37:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 1D656CE0A2A
	for <wireless-regdb@lists.infradead.org>; Mon,  3 Jun 2024 06:37:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E273C4AF07
	for <wireless-regdb@lists.infradead.org>; Mon,  3 Jun 2024 06:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717396633;
	bh=r+ScYlwDpVsm4Opul/nINoPjqHOfc5m6DtAEqUh7eNY=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=JSHZBU/4s5ofoo+MvNOqg25gYfuklZtREN5RNG2o+N2QfYA3Idyr7xrESSWGs6rux
	 RWhjCuwlwJ36YN5pMxK9JkAzU8/OqDMVvWiZbQG/bOp8JorIfXeUq0PmccHgXe9AbB
	 Io+FyNCQoCW4pBMon9r0FaiyDPFvcCisrJE1sEnHbBuhL2jKyINpyJwByURrxlkjso
	 5sYkYNkhqOVn8ptuanu0AEXOarRD1NxQaG5O6DgfMAakVWH6Gs40jAGZJ3BuOJ3bqL
	 cMHCcDn9jnpSlUeEhALy6ABzITmqN7iCMQ27hqXypiFzXHhZelCjN/2snnB1EXWJWT
	 zyn0/0b6Bsplg==
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2e95a1eff78so52785591fa.0
        for <wireless-regdb@lists.infradead.org>; Sun, 02 Jun 2024 23:37:13 -0700 (PDT)
X-Gm-Message-State: AOJu0YwGCVeTfnzWdONfR7HetzrZfgAyCQSQ1CqzGBRwcS6zgXPkHP+y
	B/ywzMOlHgpyd5pyq3O8Xp7JQlIRqdpCcj6JMXmOFIfPXhw6JB15jHHOFCv7h0LnlGbSNINupPu
	6Y+M1/U5XNKcVWj9BAIzLgx7FM7U=
X-Google-Smtp-Source: AGHT+IGQktrXSWjXahA6IMRVEaRDRIzaUgn7zNH0yLGjsW1RvBo2Y6UxQG6+MyhUmfxmziIrRVT1cPbGmsCuPGCMs4A=
X-Received: by 2002:a2e:9256:0:b0:2e4:a21a:bf7d with SMTP id
 38308e7fff4ca-2ea9513c80cmr66794561fa.21.1717396631687; Sun, 02 Jun 2024
 23:37:11 -0700 (PDT)
MIME-Version: 1.0
References: <CALfTr+pXU_=ORh2w3GE+YiU9igh61uWZS-zdG1GyKFb5Qs6fTg@mail.gmail.com>
In-Reply-To: <CALfTr+pXU_=ORh2w3GE+YiU9igh61uWZS-zdG1GyKFb5Qs6fTg@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 3 Jun 2024 14:36:59 +0800
X-Gmail-Original-Message-ID: <CAGb2v67-9Gyxwpy8w9X=Gz7wXuVO0DncwXoRPV6_zrpF7MdEsg@mail.gmail.com>
Message-ID: <CAGb2v67-9Gyxwpy8w9X=Gz7wXuVO0DncwXoRPV6_zrpF7MdEsg@mail.gmail.com>
Subject: Re: S1G and 6GHz channels in Estonia (and EU)
To: =?UTF-8?B?VGFhdmkgRW9tw6Rl?= <taavieomae@gmail.com>
Cc: wireless-regdb@lists.infradead.org, 
	linux-wireless <linux-wireless@vger.kernel.org>, Kalle Valo <kvalo@codeaurora.org>, 
	Johannes Berg <johannes@sipsolutions.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240602_233716_431313_CCD14EF3 
X-CRM114-Status: GOOD (  18.87  )
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

(Adding linux-wireless ML, Kalle and Johannes)

On Mon, Jun 3, 2024 at 1:13=E2=80=AFAM Taavi Eom=C3=A4e <taavieomae@gmail.c=
om> wrote:
>
> Hi!
>
> I have a few questions about the current regdb values for Estonia/EE and =
EU:
>
> 1) There are no allowed S1G/HaLow/802.11ah EE (or EU) bands:
>
> Based on resources online and Estonian law
> (https://www.riigiteataja.ee/akt/117052024018?leiaKehtiv - Extra 6)
> these two additions should be correct:
>
> + (863 - 868 @ 1), (25 mW)
> + (915.8 - 919.4 @ 1), (25 mW)
>
> (Note: I don't see a way to define duty-cycle limitations, but that
> should be okay?)

I'm not sure if there are plans to support S1G in Linux. If not then
the information would go unused and untested. If it is supported, then
patches are more than welcome.

> 2) There's seems to be a missing 160MHz channel (50):
>
> This combines the restrictions of the two existing defined bands it
> overlaps with (https://ttja.ee/eraklient/side-ja-meediateenused/raadiosid=
e/wifi-seadmete-kasutus):
>
> + (5150 - 5350 @ 160), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=3DETSI

The AUTO-BW flag lets the kernel know that it can combine neighboring
rules for wider bandwidth at the lowest power limit within the rules.

Thus merging the rules is not needed. Indeed we would prefer rules not
be merged, as the database should convey information closest to the
regulations.

> 3) The 6GHz band should also have an outdoor limit and probably also
> allow 320MHz channels (at least in EE):
>
> - (5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=3DETSI
> + (5945 - 6425 @ 320), (25 mW), wmmrule=3DETSI
> + (5945 - 6425 @ 320), (200 mW), NO-OUTDOOR, wmmrule=3DETSI

The kernel currently can't deal with duplicate rules for the same
channel. Thus we have to make a decision on whether to have a rule
with higher power but indoor use only, or the opposite.

Within our database, we have the former for some jurisdictions
and the latter for others. It really depends on the submitter.

> Would a patch for these be accepted? Should I update all EU countries
> (considering it seems harmonized within the EU)?

I would expect patches to be per country referencing local regulations,
not just the EU one. IIUC the EU sets one harmonized regulation but then
it's up to each member country to implement / incorporate them?

Whether you would like to update other EU countries is up to you.


Thanks
ChenYu

