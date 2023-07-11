Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=WYx4nLZ31XcqMOq2UnMRErBFbMPRQNJEDXijLpx6v4U=;
 b=ODeA0ceZFS2Am8
 6zcLWdQBNndTxJKxWayeYltdqiTj1XdliSbdROaZ6LEUpEU4//qmCU1cGzwc9rCqw9qb1OcHriEeK
 S1cqJCmLpJzWB9vnVapM53e0QZXZMhcT7NDcaVks+iEn5RD3l6acl1FAwJaVbU1IOAgo4BR2rNQwq
 bEDqGQf50/mON5xf0J8CDDUl+8WCpFDGFV4o0tCszkrVMRCF1SdJ694hd4ce2W/Fl2JKjHGumrekE
 C5u8hFwtl9uatQeUAfw7qwNU+Ol6gPuU/CSVjsjhSWrF+hBKzxnj5osMA1z6nY/a2dwGn1FjqD9CK
 sxtkTkE1gn8kpfQxSsng==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJF6D-00FE7z-33
	for wireless-regdb@lists.infradead.org;
	Tue, 11 Jul 2023 15:16:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689088578;
	bh=jkOs/sMxgD3MzJjm39sfOwLuLRX58r1S5uoM9MWiK8g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=L1y49BRoIZIFelBqBuZZIO+4SgB2ZHY41gI0bpOzGXoeLBZZElBwDVoQRn7IZf1uZ
	 S6Pty5fpq9RtXkP7WwhUwx+WUFGTgxMeJdwlYNrdFOrP5qZwrE5PGjBKZCWbU9v/A/
	 W+1TQefYR5hpmpI8cK6x7bHNjUTVG+1QGe3m6d2oGxbbgSM73Sevx0IpOqKcXFNCii
	 82c6XkgWL50+YPLXU5T/QBUHz0Ri0oHbzzS9Jywb0ILFnIThdt8FR4PVZrTHlfHsVE
	 slz3CbB3FA+MqyNtCi7Lx5lBlZqqFQyRPf1sk8OHdj54vo/baoAYtoGcUVk6kXbsS/
	 YQZmjpiH2gPAQ==
Date: Tue, 11 Jul 2023 10:16:17 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <ZK1yQciEefUp1vUt@do-x1extreme>
References: <CAKOr0YRiWtywH_hggMn0jFivS7GOp9huw+ib5Lz43BxWo5M7CA@mail.gmail.com>
 <ZHibY/SqV02YuEWL@ubuntu-x1>
 <CAKOr0YRy=14-0QHBJNPWK3LHNMY01eVZnGL8nToP1271vJwz+g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKOr0YRy=14-0QHBJNPWK3LHNMY01eVZnGL8nToP1271vJwz+g@mail.gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Egypt (EG) on 5GHz
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Mohammed Ismail <m.ismael@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Please be sure that you do not drop the mailing lists when you reply.

On Tue, Jul 04, 2023 at 08:07:35PM +0300, Mohammed Ismail wrote:
> Dear  Seth,
> Thank you for your swift reply, and I am sorry for that huge delay in my
> response.
> 
> You are right that there is no power information in the documents I
> provided.
> 
> But the power allowed for 5150-5350 is 200mw
> and your rules defined (5250 - 5350 @ 80), (*20*), DFS, AUTO-BW,
> wmmrule=ETSI

This is because 5250-5350 MHz requires TPC. Linux does not support TPC, so
we must reduce the max EIRP by half to 100 mW in this range.

I'll send a patch soon.

Thanks,
Seth

> 
> 
> thank you for your cooperation
> 
> best regards.
> Muhammad
> 
> On Thu, Jun 1, 2023 at 4:21 PM Seth Forshee <sforshee@kernel.org> wrote:
> 
> > On Thu, May 25, 2023 at 12:04:00PM +0300, Mohammed Ismail wrote:
> > > Hi
> > > Current rules are
> > >
> > > country EG: DFS-ETSI
> > >         (2402 - 2483 @ 40), (N/A, 20), (N/A)
> > >         (5150 - 5250 @ 80), (N/A, 23), (N/A), NO-OUTDOOR, AUTO-BW
> > >         (5250 - 5330 @ 80), (N/A, 20), (0 ms), NO-OUTDOOR, DFS, AUTO-BW
> > >
> > > it is outdated , here are the updated information
> > >
> > >
> > https://www.tra.gov.eg/wp-content/uploads/2021/11/EGY-NTRA-June21-NFAT.pdf
> > >
> > >
> > https://www.tra.gov.eg/wp-content/uploads/2021/11/EGY-NTRA-June21-Chart.pdf
> >
> > Thanks for the links, however they don't seem to contain the information
> > about power limits, etc. that we need to update the database. I found
> > this document:
> >
> >
> > https://www.tra.gov.eg/wp-content/uploads/2022/03/EGY-NTRA-March-2022-SRD_English_Final.pdf
> >
> > From this I think the correct rules are:
> >
> > country EG: DFS-ETSI
> >         (2402 - 2483.5 @ 40), (20)
> >         (5150 - 5250 @ 80), (23), AUTO-BW, wmmrule=ETSI
> >         (5250 - 5350 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
> >         (57000 - 66000 @ 2160), (40)
> >
> > If this looks correct to you, I'll send a patch.
> >
> > Thanks,
> > Seth
> >

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
