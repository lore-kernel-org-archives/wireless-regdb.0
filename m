Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:References:
 In-Reply-To:Date:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=IAoRIX0e9xMZ33bChG/maDVIPA+KrBDqBtw/xBCB7e0=;
 b=CDyoMCu+jCXqGy
 qkBu3FL2pNSbzA2a2vzt0ypSel/RW55CYz+hVS7NQs3oZ9c81o4BzfbmNYqkn0Bnd8kA6zOjWWIQL
 4WRVS6NuI7TCJMAfPQEurXhh6c9FyGYVUodPfV/EXkBjRLPxEUebVTadWBTt+ciw6T2HLVBvbtTVU
 v4opgdCHbMgO1zJyHzc8f394KjyD2IXak92q5QUA32yuLiURcx8dYTOBXP+NEWVm1vMKme6Fs20zU
 C+qBLgc040PQk9fDlVKx/gZBadzMVVngqMYWs1SmBwIF6I/tfnIMx+R6tXeITWCJxwCRc0gRFRvoX
 CirPwgCYNlSnkFu3jqLA==;
Received: from s3.sipsolutions.net ([2a01:4f8:191:72ef::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fDcgW-0002nj-Aw
 for wireless-regdb@lists.infradead.org; Tue, 01 May 2018 21:19:42 +0000
Message-ID: <1525209561.25505.3.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Tue, 01 May 2018 23:19:21 +0200
In-Reply-To: <20180501200256.GM3502@ubuntu-xps13>
References: <1525181772-30337-1-git-send-email-haim.dreyfuss@intel.com>
 <1525181772-30337-2-git-send-email-haim.dreyfuss@intel.com>
 <20180501200256.GM3502@ubuntu-xps13>
Mime-Version: 1.0
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
To: Seth Forshee <seth.forshee@canonical.com>, Haim Dreyfuss <haim.dreyfuss@intel.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, 2018-05-01 at 15:02 -0500, Seth Forshee wrote:
> 
> > +import attr
> 
> I'm a little hesitant to add use of non-standard libraries if it isn't
> necessary, as some distros have traditionally built the regdb from
> source (not sure how practical that is after the db-as-firmware changes
> though). Do we lose anything critical if we don't use attr?

I probably suggested the use of attr. It's super useful, for things like
this:

> > +@attr.s(frozen=True)
> > +class WmmRule(object):
> > +    vo_c = attr.ib()
> > +    vi_c = attr.ib()
> > +    be_c = attr.ib()
> > +    bk_c = attr.ib()
> > +    vo_ap = attr.ib()
> > +    vi_ap = attr.ib()
> > +    be_ap = attr.ib()
> > +    bk_ap = attr.ib()
> > +
> > +    def _as_tuple(self):
> > +        return (self.vo_c, self.vi_c, self.be_c, self.bk_c,
> > +                self.vo_ap, self.vi_ap, self.be_ap, self.bk_ap)

Spelling this out as a real object with all the __repr__ and comparisons
etc. gets far more verbose.

While we can get rid of it in theory, it's a ~100KiB package without any
further dependencies, and the code is better off for it.

Ultimately it's your decision, but I suspect that python is already such
a big dependency that adding this library is in the noise.

johannes

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

