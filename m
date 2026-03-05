Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76952EDEC02
	for <wireless-regdb@archiver.kernel.org>; Thu,  5 Mar 2026 04:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PXtmg4OyPjWgl1cdQxMV4TrVkdIj7x91beib0PNGO+o=; b=gNB+C9F/lloVfp
	G0bLtNz+z0cgyIKYkdD0d6moT1+is2IIn8gVsDHgFlc0k81QoyYQQdTG6IpG7+Z/lWIISIdlwufFU
	nLwCIICFKjytICiW+miwITXz0ofloVSB+kyz4437UX/FhKYc0YldrBepmLLUHYIqKiqAwh08a9N2c
	kC7IMX/TxiynafvVxZoe1+24D4ES//UoxIaCmd9iumtdivPlqpsVCbk68RnU78lLmwuTKfS1+CW54
	JjDdHCJHTHN4NqkIHAwrL2KP1rb91UsLiowrTWSx6jpPAYEHp2IzbSuUYG951SzQOPN32xiq8vmwu
	kO8DZ0QuKdgb3TXlTegQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy0Ms-00000000uDe-0DYh;
	Thu, 05 Mar 2026 04:31:22 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy0Mq-00000000uDE-0cjm
	for wireless-regdb@lists.infradead.org;
	Thu, 05 Mar 2026 04:31:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D923843208
	for <wireless-regdb@lists.infradead.org>; Thu,  5 Mar 2026 04:31:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B85FFC2BC9E
	for <wireless-regdb@lists.infradead.org>; Thu,  5 Mar 2026 04:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772685079;
	bh=yNEpdJcmJufkTDu6X7Pw8XWppI3dgWWr9K0+Wv0zTRk=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=lh0nR9b7wgEjdaiYR7sIjF3I6GPGAgV+nq6Ee8HJfy0hqPAn+E3kdQnDRIxm6OlU7
	 BPV4aPQY0Zz8MjrEGH7n2akUQY0sNO1nbHqC1rxQc2/3Zuqf6ZNwSsmSXS6QPTF9g7
	 dmi4In2wrpvPdbBb9AD+8U5+apb1pWp88fvzi4CoUrAWgMsi/h9mR3r7+S63u4lUAS
	 /pNF2PTeADCo4PMlQ3Zw0AoptKaPRO18CNiFrY0kPwDgFxUz8Oj+ye52IJOizas9SB
	 hgJAHmUb+g2zHRmoNaH6CxF731L4jhy23WbwktTqiwA8oxGV+/ocMVOeNHBr/c4Liu
	 Wcmt92GS6CnrQ==
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-38a2544b52bso40442161fa.3
        for <wireless-regdb@lists.infradead.org>; Wed, 04 Mar 2026 20:31:19 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWRn+STopuwSFdyIvX77yfcxTPBJ4Ltitz6uOKwvAhvpoMwURxAf/VOzg2HP5OG9pTULhIpIVDnVrcx8q9n6Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YzHFwHzYopyYx7XiHO/f10sBsjfUPifaaZg52xfTxEQwHkkdm+v
	jTFQn2f1rtM1jG+Y93/U9Ihz+ZAAIELfXJA5mmA7keLTwR3t+u7Lj5Jk6GJGBu/LWkNyO5ZMw6g
	i3d8sw9blvp/gQdveyvUpTNnaHhErnuk=
X-Received: by 2002:a2e:6e09:0:b0:385:c21f:37f4 with SMTP id
 38308e7fff4ca-38a2c589ae6mr22495211fa.16.1772685078135; Wed, 04 Mar 2026
 20:31:18 -0800 (PST)
MIME-Version: 1.0
References: <CADqxL9qYq_+8dPgXj5i_HjkpTOZwiAawsa90tNbA4Q87ZhCrSA@mail.gmail.com>
 <CAGb2v6617V-jLnLrBYEZfSiv-2c8QsN2HMCmQbaXdm9NVwGGEA@mail.gmail.com> <19cbc39a90e.1cd9982953056.6486968654066866605@nic.gov.in>
In-Reply-To: <19cbc39a90e.1cd9982953056.6486968654066866605@nic.gov.in>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 5 Mar 2026 13:31:05 +0900
X-Gmail-Original-Message-ID: <CAGb2v6406826bWiKEQ0jf0TSPL9xtNx+i=_YCRJNnUjUftF0_w@mail.gmail.com>
X-Gm-Features: AaiRm50lnl5hk4qTMp7ARUwZ_DzyD4Qnd_nNciZJbW4lAGV4zvXGd5mJPPzYMio
Message-ID: <CAGb2v6406826bWiKEQ0jf0TSPL9xtNx+i=_YCRJNnUjUftF0_w@mail.gmail.com>
Subject: Re: wireless-regdb: Update IN regulatory domain for lower 6 GHz
 (5925-6425 MHz)
To: Gaurav Kansal <gaurav.kansal@nic.gov.in>
Cc: Degrader Snehil <degradersnehil@gmail.com>, 
	linux-wireless <linux-wireless@vger.kernel.org>, 
	wireless-regdb <wireless-regdb@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_203120_230549_185DCAC9 
X-CRM114-Status: GOOD (  25.94  )
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

On Thu, Mar 5, 2026 at 1:28=E2=80=AFPM Gaurav Kansal <gaurav.kansal@nic.gov=
.in> wrote:
>
> Hi ChenYu,
>
> Didn't the information is already merged as per my last patch submission?

It looks like I requested some changes, and you agreed to send an update,
but I never got it.

ChenYu

> Regards,
> Gaurav Kansal
>
>
>
>
> From: Chen-Yu Tsai <wens@kernel.org>
> To: "Degrader Snehil"<degradersnehil@gmail.com>
> Cc: <linux-wireless@vger.kernel.org>, "wireless-regdb"<wireless-regdb@lis=
ts.infradead.org>
> Date: Thu, 05 Mar 2026 09:08:56 +0530
> Subject: Re: wireless-regdb: Update IN regulatory domain for lower 6 GHz =
(5925-6425 MHz)
>
>  > Hi,
>  >
>  > On Thu, Mar 5, 2026 at 3:16=E2=80=AFAM Degrader Snehil <degradersnehil=
@gmail.com> wrote:
>  > >
>  > > Hi,
>  > >
>  > > I would like to request an update to the IN (India) regulatory domai=
n in wireless-regdb to add the newly permitted lower 6 GHz band (5925=E2=80=
=936425 MHz).
>  >
>  > Thank you for the information. Would you like to provide a patch?
>  > If not, I can write up a patch and tag you as the reporter.
>  >
>  > > The Government of India has officially opened this band for licence-=
exempt use via Gazette Notification G.S.R. 47(E), dated January 20, 2026, p=
ublished January 21, 2026, issued by the Ministry of Communications under t=
he Indian Telegraph Act, 1885 and the Indian Wireless Telegraphy Act, 1933.
>  > >
>  > > Gazette details:
>  > >   Title   : Use of Low Power and Very Low Power Wireless Access Syst=
em
>  > >             including Radio Local Area Network in Lower 6 GHz Band
>  > >             (Exemption from Licensing Requirement) Rules, 2026
>  > >   File No : 24-04/2025-UBB
>  > >   Gazette : No. 47, CG-DL-E-21012026-269488
>  > >   Signed  : Devendra Kumar Rai, Joint Secretary, Ministry of Communi=
cations
>  > >   URL : https://www.dot.gov.in/static/uploads/2026/02/88f0ac8c74eb6f=
6907934d17d0015ab5.pdf
>  > > The Gazette defines two device classes for 5925=E2=80=936425 MHz:
>  > >
>  > >   1. Low power indoor
>  > >      - Max EIRP         : 30 dBm
>  > >      - Max PSD          : 11 dBm/MHz
>  > >      - Max bandwidth    : 320 MHz
>  > >      - Restriction      : Indoor use only (Rule 5)
>  > >
>  > >   2. Very low power outdoor
>  > >      - Max EIRP         : 14 dBm
>  > >      - Max PSD          : 1 dBm/MHz
>  > >      - Max bandwidth    : 320 MHz
>  > >      - Restriction      : None
>  > >
>  > > Additional operational restrictions per Rule 5 of the Gazette:
>  > >   - Band is prohibited on oil platforms
>  > >   - Indoor use prohibited on land vehicles, boats and aircraft below=
 10,000 ft
>  > >   - Communication with and control of drones/UAS is prohibited
>  > >   - Contention-based protocol is mandatory for all devices (Rule 4)
>  > >
>  > > Out-of-band emission limit: -27 dBm/MHz outside 5925=E2=80=936425 MH=
z (Rule 6)
>  > >
>  > > Proposed addition to the existing country IN entry in db.txt:
>  > >
>  > >   country IN:
>  > >           (2402 - 2482 @ 40), (30)
>  > >           (5150 - 5250 @ 80), (30)
>  > >           (5250 - 5350 @ 80), (24), DFS
>  > >           (5470 - 5725 @ 160), (24), DFS
>  > >           (5725 - 5875 @ 80), (30)
>  > >           (5925 - 6425 @ 320), (30), NO-OUTDOOR   # low power indoor
>  > >           (5925 - 6425 @ 320), (14)               # very low power o=
utdoor
>  > >
>  > > Note: Since both device classes share the same frequency range but h=
ave different EIRP limits and indoor/outdoor restrictions, I have represent=
ed them as two separate lines. Please advise if a different encoding is mor=
e appropriate.
>  >
>  > Unfortunately we currently only support one rule per band. I'm incline=
d
>  > to add the VLP one so outdoor usage is allowed.
>  >
>  > > I have attached the official Gazette notification PDF as supporting =
evidence.
>  > >
>  > > Intel has also submitted a related update (Intel=C2=AE Wireless Wi-F=
i Drivers 24.20.2) for this band for India. I am not certain whether that p=
atch covers wireless-regdb (db.txt) or only their iwlwifi driver internals,=
 so I am submitting this request for wireless-regdb independently to ensure=
 the authoritative database is updated.
>  >
>  > AFAIK Intel manages regulatory requirements in their firmware, so it i=
s
>  > unrelated to the database we maintain.
>  >
>  > > Intel's Regulatory Domain Info was found in Release notes of their  =
Intel=C2=AE Wireless Wi-Fi Drivers 24.20.2 available at page 2 of https://d=
ownloadmirror.intel.com/914148/ReleaseNotes_WiFi_24.20.2.pdf.
>  > > Please let me know if any further information is needed.
>  >
>  > The information you provided is very detailed. Thanks!
>  >
>  >
>  > ChenYu
>  >
>  >
>
>

