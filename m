Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from charlotte.tuxdriver.com ([70.61.120.58]
 helo=smtp.tuxdriver.com) by bombadil.infradead.org with esmtps (Exim 4.80.1
 #2 (Red Hat Linux)) id 1WnB3p-0007e7-Bl for
 wireless-regdb@lists.infradead.org; Wed, 21 May 2014 18:16:17 +0000
Date: Wed, 21 May 2014 14:00:21 -0400
From: "John W. Linville" <linville@tuxdriver.com>
Message-ID: <20140521180020.GA13656@tuxdriver.com>
References: <1399624824-9204-1-git-send-email-janusz.dziedzic@tieto.com>
 <CAB=NE6UuZFDLdA-KW=ohaFwXjj_3wSY84cj3-KPO7HoKREPHOA@mail.gmail.com>
 <20140520142453.GB13981@tuxdriver.com>
 <CALhHN=qtxwww9hQ7XxK8tan3+4eSoXo3D_g9YLD0QhQDPcDUmg@mail.gmail.com>
 <20140520180832.GD13981@tuxdriver.com>
 <1400610273.4474.6.camel@jlt4.sipsolutions.net>
 <CAB=NE6WiuydxR62dvua_OEyV+sqxvH8aOUHOBLS3ePz1dGCLAw@mail.gmail.com>
 <1400688233.4136.8.camel@jlt4.sipsolutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1400688233.4136.8.camel@jlt4.sipsolutions.net>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: add DFS CAC time
	parameter
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
Cc: Janusz Dziedzic <janusz.dziedzic@tieto.com>, linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, May 21, 2014 at 06:03:53PM +0200, Johannes Berg wrote:
> On Tue, 2014-05-20 at 11:48 -0700, Luis R. Rodriguez wrote:
> 
> > > I think we should, but if we can't then at least can we cut to an
> > > extensible format?
> 
> I don't see any way to extend the format right now.
> 
> There's a wrinkle with making it more extensible too though - if we do
> that then we must be extremely careful that future older crda versions
> (i.e. the next version that we're about to write) will not parse a newer
> extended file more permissively, so our extensions are limited anyway.
> 
> Looks like the format update really is needed, which probably means we
> should change the scripts to generate two databases and change the
> filename, or so?

The 'do not parse more permissively' would seem to be a problem if
we still produce an older format too, no?  I mean, wouldn't we have
to simply drop new rules to produce an older binary?  Even worse if
we left the old binary in place, since then you could never update
any rules for old crda installations at all.

It seems like forcing a crda update to use any new format-breaking
rules might just be the right thing.  Can we make crda choke and die
loudly when it sees an unknown format?  Will the current crda do that?

John
-- 
John W. Linville		Someday the world will need a hero, and you
linville@tuxdriver.com			might be all we have.  Be ready.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

