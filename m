Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=8Nl/AKVzKpmBfyA50r5DSoWaoXsVkz6dy46OLsphVrc=;
 b=MZv3mFl/J7WqYC
 3rcCDCFnLLc0sUU78/eg7FyJni/8paGz137wrIgy9KhMMDYw7+RqvENjZHsiFbalZEwbLuRCUGPDy
 p7R8CRPZUyNIToENU4p3+vEDg8WZPzV6Nf9WSWUdDXcaCJV7gpzt3qPEayPhY7vi0hKx08/7SI/Lu
 In5uU4EG85VsMq6Url3GEEEfrzWmzHTl1Xz6PLgRpF+4djwNffBDSBaj70zBZhA35yDowS+NeiLmG
 dlPcsWJyUIZE6Tf+O+tvGxaTCVjFYX+2w6EwoIbKxmg852Ier0ZkQaLbj32EMfbHkXjjtzQ/q3D+z
 lCaO/2mO2tNH9GB+RrRg==;
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncrLo-000Svw-Oy
 for wireless-regdb@lists.infradead.org; Fri, 08 Apr 2022 16:20:46 +0000
Received: by mail-yw1-x1134.google.com with SMTP id
 00721157ae682-2eb680211d9so102070517b3.9 for
 <wireless-regdb@lists.infradead.org>; Fri, 08 Apr 2022 09:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to :cc;
 bh=fwwusgA1LzFpaCXkdPk8ihdzVLfL7nW4Ue+KuTewXQY=;
 b=kPzBgF2wRAPsQq+tqyojaCZ9gC9lganp3JmpNdIgAxQ/pFLa9RWkt2+ZJC/TC90nWH
 7FPvJErfQkMEcnh+aYLSMHoyWfbbUJpTH13wHIMc0wGCxv89PBgeB4ogyY82efEps3mT
 TxFLOpQSgDHxTfumbHkzZHW5F6mfVJmgVwjcQJJE36VIYXjjLAixEiQgXHoY2fH4KbnE
 FKXzyznCNFJ/kK81OjQwvabry+fHPa//7hAyCe8EqEIKLYbjNPP6Am87Gm5ZLywhGSe7
 xGznfQTytKplkZnT2qCJM0AMOWX2sXKJNnrfMengM6+KIjdQxKNqMle4bxyHQ/aT0r3r wy6A==
MIME-Version: 1.0
References: <YlBLWuf0eKyS1HL0@ubuntu-x1>
 <CAM0KTbBCeyx8TGkGcNkjJ7TYjtr6zeFY2=1TWwbzd5d3xHdZXg@mail.gmail.com>
 <YlBdVvV7NGNccysW@ubuntu-x1>
In-Reply-To: <YlBdVvV7NGNccysW@ubuntu-x1>
From: Sid Hayn <sidhayn@gmail.com>
Date: Fri, 8 Apr 2022 12:20:32 -0400
Message-ID: <CAM0KTbCvVYsatQWvT3igwKwRVCG4Q2XU7qqLJYwF-Bs0iK3Cig@mail.gmail.com>
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
To: Seth Forshee <sforshee@kernel.org>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Apr 8, 2022 at 12:05 PM Seth Forshee <sforshee@kernel.org> wrote:
>
> On Fri, Apr 08, 2022 at 11:37:54AM -0400, Sid Hayn wrote:
> > Are "regulatory.db" and "regulatory.db.p7s" missing from this release
> > on accident or no longer required?
> >
> > I package wireless-regdb for gentoo but I honestly haven't been
> > following development much more closely than just bumping for
> > releases.  For the recent releases I've been installing regulatory.bin
> > in /usr/lib/crda and regulatory.db and regulatory.db.p7s in
> > /lib/firmware
>
> Oops, it looks like a typo caused them to be removed by accident. I've
> updated the archives and the signature to contain the missing files.
> Thanks for letting me know!
>
And thank you for the quick fix :-)

> Seth
>
> >
> > Thanks,
> > Zero_Chaos
> >
> > On Fri, Apr 8, 2022 at 10:49 AM Seth Forshee <sforshee@kernel.org> wrote:
> > >
> > > A new release of wireless-regdb (master-2022-04-08) is available at:
> > >
> > > https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2022.04.08.tar.xz
> > >
> > > The short log of changes since the master-2022-02-18 release is below.
> > >
> > > Thanks,
> > > Seth
> > >
> > > ---
> > >
> > > Richard Huynh (1):
> > >       wireless-regdb: Update regulatory rules for Australia (AU)
> > >
> > > Roman Kunzman (1):
> > >       wireless-regdb: Update regulatory rules for Israel (IL)
> > >
> > > Seth Forshee (2):
> > >       wireless-regdb: add missing spaces for US S1G rules
> > >       wireless-regdb: update regulatory database based on preceding changes
> > >
> > > _______________________________________________
> > > wireless-regdb mailing list
> > > wireless-regdb@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/wireless-regdb

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

