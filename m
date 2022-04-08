Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=jGwm8HcuvKDp4ZmNjE8ydw6rfxWNuCoXlN+2iArzzLc=;
 b=JU+z6+g9081wbq
 OuI7xNWaprIKvy8DtLsnN+bb9xQIy6LXjn3lzlWzKAGt0w2PD2VdZuOLI2FLBMwyxyj1RJ6txJFU1
 m9Um26op+wgaWAF5zSiac8dzAv/m1XBLnKDU8prJIaOS37jmwjHGxGvSqcbw0cdqfSCySv8cSgkIs
 kU7TKJuKbvwxLnyFMqZRX4ZUx6lbGOg4UZdGDmvnYuSfflHQp5DI1qhdQEDdwWGZX90sUz3xW9dAx
 IK2Uvol8W+YHIbMELCEh/vDXxh2ro+I57yCaC4rT5EKNe95n3rVcoU67BzX+3ItaaDkV0zotlWeEE
 oNh5dV7YtVWjFNAS9Jyg==;
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncr7K-000PJN-HN
 for wireless-regdb@lists.infradead.org; Fri, 08 Apr 2022 16:05:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649433943;
 bh=k2qCXXomEcAYdSFbcqOIT43BVhU94YLzspEslYFtN1o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p2cF+0FiRQOqJcfpwzeFpZnZ/eWs8GZmXtP6RJiKpK7GWabw55PZx5TBOEuLCbdza
 8UfI4OnWLSJ1fglTVjShVQiHvI9/sMPqltFYoH5VxqOP2z9HU48pD2i0aHU6lMr2Hh
 fRtzLFls4GAbzMDzHBbFMvrF5CpK83m/ABjaFHRUpc/HC2mj6J2PcTgz83s2felDWi
 NczUjP+SBrs5fqCUjSWgtbS0svWcR2ckJoGlNcW+wNkhVy1h9w5QEdhDxDyhHMdN2l
 +RtiSnJy05FFEE40cOx6qqz0SEuI3HOtLRZOSrIISAhHzGprABfU7XN8RM/AhMypVK
 OBvbQ8EhX4Szg==
Date: Fri, 8 Apr 2022 11:05:42 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YlBdVvV7NGNccysW@ubuntu-x1>
References: <YlBLWuf0eKyS1HL0@ubuntu-x1>
 <CAM0KTbBCeyx8TGkGcNkjJ7TYjtr6zeFY2=1TWwbzd5d3xHdZXg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM0KTbBCeyx8TGkGcNkjJ7TYjtr6zeFY2=1TWwbzd5d3xHdZXg@mail.gmail.com>
Subject: Re: [wireless-regdb] [ANN] wireless-regdb: master-2022-04-08
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Sid Hayn <sidhayn@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Apr 08, 2022 at 11:37:54AM -0400, Sid Hayn wrote:
> Are "regulatory.db" and "regulatory.db.p7s" missing from this release
> on accident or no longer required?
> 
> I package wireless-regdb for gentoo but I honestly haven't been
> following development much more closely than just bumping for
> releases.  For the recent releases I've been installing regulatory.bin
> in /usr/lib/crda and regulatory.db and regulatory.db.p7s in
> /lib/firmware

Oops, it looks like a typo caused them to be removed by accident. I've
updated the archives and the signature to contain the missing files.
Thanks for letting me know!

Seth

> 
> Thanks,
> Zero_Chaos
> 
> On Fri, Apr 8, 2022 at 10:49 AM Seth Forshee <sforshee@kernel.org> wrote:
> >
> > A new release of wireless-regdb (master-2022-04-08) is available at:
> >
> > https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2022.04.08.tar.xz
> >
> > The short log of changes since the master-2022-02-18 release is below.
> >
> > Thanks,
> > Seth
> >
> > ---
> >
> > Richard Huynh (1):
> >       wireless-regdb: Update regulatory rules for Australia (AU)
> >
> > Roman Kunzman (1):
> >       wireless-regdb: Update regulatory rules for Israel (IL)
> >
> > Seth Forshee (2):
> >       wireless-regdb: add missing spaces for US S1G rules
> >       wireless-regdb: update regulatory database based on preceding changes
> >
> > _______________________________________________
> > wireless-regdb mailing list
> > wireless-regdb@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/wireless-regdb

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

