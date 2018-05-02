Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=g9rPNlyCi1DJB2qCiOvTg4a1hYIMdAb2NwkmAlML34k=;
 b=e0kMz/bSV1DvWR
 zrgXWnEJAA4r2SwiZgrrX/MPcJSy7ADwcfjS3+r22vruSXZAcFId7zgsMeria9gHvlJ0cXpQcvgT7
 RkjB8BYERA5gkzAThUli1/Vfe1XOwM+8CmAApXghQwua+jPrtbvzwNeIVcvRxUbPiigkJ4vsDnax5
 tZHv8YJUI2D6YY5PScedz+rOmCPyu8jIgxg/jKDykM6VVPLF4x9Mi/BJzVs9zS9wUts5Gb75iez96
 5KTKWWUduqhIqlRXO7H9M6YlGdtHpQ4EzeRWktFqST5TdAPdNS9zVQcqmEQZTDVc99RRTQuFCCGeO
 t9LffHgzYTEeEz5gYUzQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fDqwG-0000Z7-6k
 for wireless-regdb@lists.infradead.org; Wed, 02 May 2018 12:32:56 +0000
Received: from mail-it0-f72.google.com ([209.85.214.72])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fDqw4-0003u2-Cb
 for wireless-regdb@lists.infradead.org; Wed, 02 May 2018 12:32:40 +0000
Received: by mail-it0-f72.google.com with SMTP id r80-v6so7920758ita.1 for
 <wireless-regdb@lists.infradead.org>; Wed, 02 May 2018 05:32:40 -0700 (PDT)
Date: Wed, 2 May 2018 07:32:36 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180502123236.GA981@ubuntu-xps13>
References: <1525181772-30337-1-git-send-email-haim.dreyfuss@intel.com>
 <1525181772-30337-2-git-send-email-haim.dreyfuss@intel.com>
 <20180501200256.GM3502@ubuntu-xps13>
 <1525209561.25505.3.camel@sipsolutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1525209561.25505.3.camel@sipsolutions.net>
Subject: Re: [wireless-regdb] [PATCH 2/2] wireless-regdb: Parse wmm rule
 data
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
To: Johannes Berg <johannes@sipsolutions.net>
Cc: linux-wireless@vger.kernel.org, Haim Dreyfuss <haim.dreyfuss@intel.com>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, May 01, 2018 at 11:19:21PM +0200, Johannes Berg wrote:
> On Tue, 2018-05-01 at 15:02 -0500, Seth Forshee wrote:
> > 
> > > +import attr
> > 
> > I'm a little hesitant to add use of non-standard libraries if it isn't
> > necessary, as some distros have traditionally built the regdb from
> > source (not sure how practical that is after the db-as-firmware changes
> > though). Do we lose anything critical if we don't use attr?
> 
> I probably suggested the use of attr. It's super useful, for things like
> this:
> 
> > > +@attr.s(frozen=True)
> > > +class WmmRule(object):
> > > +    vo_c = attr.ib()
> > > +    vi_c = attr.ib()
> > > +    be_c = attr.ib()
> > > +    bk_c = attr.ib()
> > > +    vo_ap = attr.ib()
> > > +    vi_ap = attr.ib()
> > > +    be_ap = attr.ib()
> > > +    bk_ap = attr.ib()
> > > +
> > > +    def _as_tuple(self):
> > > +        return (self.vo_c, self.vi_c, self.be_c, self.bk_c,
> > > +                self.vo_ap, self.vi_ap, self.be_ap, self.bk_ap)
> 
> Spelling this out as a real object with all the __repr__ and comparisons
> etc. gets far more verbose.
> 
> While we can get rid of it in theory, it's a ~100KiB package without any
> further dependencies, and the code is better off for it.
> 
> Ultimately it's your decision, but I suspect that python is already such
> a big dependency that adding this library is in the noise.

I'm more thinking that for e.g. Debian if attr is installed via pip and
not a distro package then that might be a problem for their package
builds. But let's go ahead and leave it, if there's fallout we can
figure that out later.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

