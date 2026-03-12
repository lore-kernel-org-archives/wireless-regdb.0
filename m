Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A59BDFED2CC
	for <wireless-regdb@archiver.kernel.org>; Thu, 12 Mar 2026 06:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zelUP7sD3gSYEUwnWJF+EP8GGI9pxR67pDWrA9DDtVA=; b=HNEps4034jzCOM
	EBxALBQdpCgqbNAjZpBsGPIM+MhV2WwGnx/HC3u0f3NqGoCW97GnIf3Y6H9hZ+yG8THjhxTC8KszC
	Tyc9cq0erfF+Fd4A/uCFs6uQ3pbdi6dx4M+jY02S0/oBQuLt5aRAntKHOuS4Ien6Pe4LSbrt0wbRh
	ayA2K9uydM3cUcDmycj3XcS0xeSD9ttvpyzEMgft7w4ZiXzdudozKoEpvvQISZPj7mc91UQFfEU4+
	Pg0VnzydLlgPKfSbTqD3BA0Wjm/lsROdrnkkFknSjFwcoUYfjk/ARKuyNgzhCWyGBZpi9CWlZWIGd
	veotZsP6lwJPBETrsaHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0ZYx-0000000DSuF-2L3d;
	Thu, 12 Mar 2026 06:30:27 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0ZYo-0000000DSqK-3Q3n
	for wireless-regdb@lists.infradead.org;
	Thu, 12 Mar 2026 06:30:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 801B544564
	for <wireless-regdb@lists.infradead.org>; Thu, 12 Mar 2026 06:30:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63B88C116C6
	for <wireless-regdb@lists.infradead.org>; Thu, 12 Mar 2026 06:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773297018;
	bh=Gke2pLzQAgmdS7PYe/SUyBC8YFMlx/zEgfsW7rM/rIM=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=goM+nwed851e+KZUKUT51HHknPL8cro6TWQNe3hOJr52iZS1BbNXjOgAfUWik41aM
	 DfTcWu9KFjAYRmtF+ZIW8BJ/qlwJiAJfNLVutsgI3viKZSagTvnHByuRYslayBucl6
	 ONUMo6R95mO732t2m+wDzCaaLkWSm5wJvIB/hgrPNJ/lXKFlmqppgXOV6mBWET69SQ
	 f2HZvaA5/AQlZC3/5ROhLW2ldmXTg5wXWRYxMMK1czvXoRatP1pmyUpzWwP/D5yW26
	 owE9VJbc65SSZ8UQc8wdX0k1iDm3qVtHbsOc0bi/7jdUNrKrQxum+QNU1WpZ+kwmZl
	 jAbAZuqJNnSMg==
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-38a3066b68bso6296801fa.3
        for <wireless-regdb@lists.infradead.org>; Wed, 11 Mar 2026 23:30:18 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXlV8fcNlyCxPRMLTRPiITp2MYG6oqsq5jkmfhO0JJvwP/qM3Y6gFNzxRh6YPBSxNryU2XmdQhqbO9pyTF0/Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YzGksMwFXgkQqnLS5iHuZnRzHckhE8Ez0sYBDAihic4R0sNoFmE
	2Po+dupNTBEZODNtlIXZ3/TnCfluFd4oQT/KQLm6xQPw3J0oHCKrquA3txIhxT249dJR/lcU+Ai
	SXuwQJ6Z/fD9Lf9AXuMLnzsGaeUvV0hE=
X-Received: by 2002:a2e:a104:0:b0:386:fc3d:e42e with SMTP id
 38308e7fff4ca-38a67e89b29mr16094491fa.41.1773297016643; Wed, 11 Mar 2026
 23:30:16 -0700 (PDT)
MIME-Version: 1.0
References: <20260311085141.1634383-1-wens@kernel.org> <CAHrRpunHZhCfBwueaXQS46SA5JzAbbW5DVL2MF+m2tKvKyMZAQ@mail.gmail.com>
In-Reply-To: <CAHrRpunHZhCfBwueaXQS46SA5JzAbbW5DVL2MF+m2tKvKyMZAQ@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 12 Mar 2026 14:30:04 +0800
X-Gmail-Original-Message-ID: <CAGb2v67+CMC=6Hvn50RRzHxa1Syi+gj4WOpE3LJhNyrxxe5Hrw@mail.gmail.com>
X-Gm-Features: AaiRm5370bYNn4wAy9VxsmXrELY1dZ-bGs99v7aLi-FwcBnGOr3XDgIw5HqyiAg
Message-ID: <CAGb2v67+CMC=6Hvn50RRzHxa1Syi+gj4WOpE3LJhNyrxxe5Hrw@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory rules for India (IN) on 6GHz
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: druth@google.com, Ping-Ke Shih <pkshih@realtek.com>, 
	wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, 
	Johannes Berg <johannes@sipsolutions.net>, Gaurav Kansal <gaurav.kansal@nic.gov.in>, 
	Degrader Snehil <degradersnehil@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_233018_908973_EA4580F7 
X-CRM114-Status: GOOD (  20.08  )
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

On Thu, Mar 12, 2026 at 2:17=E2=80=AFPM Ping-Ke Shih <pkshih@gmail.com> wro=
te:
>
> Chen-Yu Tsai <wens@kernel.org> wrote:
> >
> > The Government of India has officially opened this band for licence-exe=
mpt
> > use via Gazette Notification G.S.R. 47(E), dated January 20, 2026,
> > published January 21, 2026, issued by the Ministry of Communications
> > under the Indian Telegraph Act, 1885 and the Indian Wireless Telegraphy
> > Act, 1933.
> >
> > Gazette details:
> >   Title   : Use of Low Power and Very Low Power Wireless Access System
> >             including Radio Local Area Network in Lower 6 GHz Band
> >             (Exemption from Licensing Requirement) Rules, 2026
> >   File No : 24-04/2025-UBB
> >   Gazette : No. 47, CG-DL-E-21012026-269488
> >   Signed  : Devendra Kumar Rai, Joint Secretary, Ministry of Communicat=
ions
> >   URL : https://www.dot.gov.in/static/uploads/2026/02/88f0ac8c74eb6f690=
7934d17d0015ab5.pdf
> >
> > The Gazette defines two device classes for 5925=E2=80=936425 MHz:
> >
> >   1. Low power indoor
> >      - Max EIRP         : 30 dBm
> >      - Max PSD          : 11 dBm/MHz
> >      - Max bandwidth    : 320 MHz
> >      - Restriction      : Indoor use only (Rule 5)
> >
> >   2. Very low power outdoor
> >      - Max EIRP         : 14 dBm
> >      - Max PSD          : 1 dBm/MHz
> >      - Max bandwidth    : 320 MHz
> >      - Restriction      : None
> >
> > Additional operational restrictions per Rule 5 of the Gazette:
> >   - Band is prohibited on oil platforms
> >   - Indoor use prohibited on land vehicles, boats and aircraft below 10=
,000 ft
> >   - Communication with and control of drones/UAS is prohibited
> >   - Contention-based protocol is mandatory for all devices (Rule 4)
> >
> > Out-of-band emission limit: -27 dBm/MHz outside 5925=E2=80=936425 MHz (=
Rule 6)
> >
> > For now, add a rule for 6 GHz LPI. As the database does not support PSD
> > information, the EIRP needs to be limited so that transmissions over a
> > 20 MHz channel does not exceed the PSD requirements. This limits the
> > max EIRP to just 24 dBm.
> >
> > Reported-by: Gaurav Kansal <gaurav.kansal@nic.gov.in>
> > Reported-by: Degrader Snehil <degradersnehil@gmail.com>
> > Signed-off-by: Chen-Yu Tsai <wens@kernel.org>
>
> Listed regulation in this patch matches official URL page (translated
> by Google translation).

The PDF actually has an English part which is nice.

> Reviewed-by: Ping-Ke Shih <pkshih@realtek.com>
>
> > ---
> >  db.txt | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/db.txt b/db.txt
> > index e2842db..d54ef78 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -985,6 +985,7 @@ country IN:
> >         (5250 - 5350 @ 80), (24), DFS
> >         (5470 - 5725 @ 160), (24), DFS
> >         (5725 - 5875 @ 80), (30)
> > +       (5925 - 6425 @ 320), (24), NO-OUTDOOR
> >
> >  # Source:
> >  # https://asnad.cra.ir/fa/Public/Documents/Details/73af8590-f065-eb11-=
968f-0050569b0899
> > --
> > 2.47.3
> >
> >

