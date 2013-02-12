Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from tuxdriver-1-pt.tunnel.tserv13.ash1.ipv6.he.net
 ([2001:470:7:9c9::2] helo=smtp.tuxdriver.com)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5Kco-00014U-Nh
 for wireless-regdb@lists.infradead.org; Tue, 12 Feb 2013 18:30:39 +0000
Date: Tue, 12 Feb 2013 13:24:11 -0500
From: "John W. Linville" <linville@tuxdriver.com>
Message-ID: <20130212182411.GG2086@tuxdriver.com>
References: <1352713865.9525.9.camel@jlt4.sipsolutions.net>
 <1354632761.9608.1.camel@jlt4.sipsolutions.net>
 <20121204161122.GA2241@tuxdriver.com>
 <1360668547.29011.0.camel@jlt4.sipsolutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360668547.29011.0.camel@jlt4.sipsolutions.net>
Subject: Re: [wireless-regdb] [PATCH] regdb: allow 40 MHz on world roaming
 channels 12/13
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
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Johannes Berg <johannes@sipsolutions.net>
Cc: mcgrof@gmail.com, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Feb 12, 2013 at 12:29:07PM +0100, Johannes Berg wrote:
> On Tue, 2012-12-04 at 11:11 -0500, John W. Linville wrote:
> > On Tue, Dec 04, 2012 at 03:52:41PM +0100, Johannes Berg wrote:
> > > On Mon, 2012-11-12 at 10:51 +0100, Johannes Berg wrote:
> > > > From: Johannes Berg <johannes.berg@intel.com>
> > > > 
> > > > When in world roaming mode, allow 40 MHz to be used
> > > > on channels 12 and 13 so that an AP that is, e.g.,
> > > > using HT40+ on channel 9 (in the UK) can be used.
> > > 
> > > Ping?
> > > johannes
> > 
> > Sorry, I need to give the wireless-regdb tree some love.  If no one
> > objects I'll try to get this merged in the next day or two.
> 
> Ping again -- the discussion was a bit confusing but we did exactly this
> change in the kernel so should do it here as well.

OK, I merged this and the Spain patches.  I pushed the tarball through
kup to kernel.org.

I'm guessing that there aren't going to be any automatic release
messages anymore?

John
-- 
John W. Linville		Someday the world will need a hero, and you
linville@tuxdriver.com			might be all we have.  Be ready.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

