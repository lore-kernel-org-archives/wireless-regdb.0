Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from he.sipsolutions.net ([78.46.109.217] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5E43-00061x-SU
 for wireless-regdb@lists.infradead.org; Tue, 12 Feb 2013 11:30:21 +0000
Message-ID: <1360668547.29011.0.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Tue, 12 Feb 2013 12:29:07 +0100
In-Reply-To: <20121204161122.GA2241@tuxdriver.com>
References: <1352713865.9525.9.camel@jlt4.sipsolutions.net>
 <1354632761.9608.1.camel@jlt4.sipsolutions.net>
 <20121204161122.GA2241@tuxdriver.com>
Mime-Version: 1.0
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
To: "John W. Linville" <linville@tuxdriver.com>
Cc: mcgrof@gmail.com, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, 2012-12-04 at 11:11 -0500, John W. Linville wrote:
> On Tue, Dec 04, 2012 at 03:52:41PM +0100, Johannes Berg wrote:
> > On Mon, 2012-11-12 at 10:51 +0100, Johannes Berg wrote:
> > > From: Johannes Berg <johannes.berg@intel.com>
> > > 
> > > When in world roaming mode, allow 40 MHz to be used
> > > on channels 12 and 13 so that an AP that is, e.g.,
> > > using HT40+ on channel 9 (in the UK) can be used.
> > 
> > Ping?
> > johannes
> 
> Sorry, I need to give the wireless-regdb tree some love.  If no one
> objects I'll try to get this merged in the next day or two.

Ping again -- the discussion was a bit confusing but we did exactly this
change in the kernel so should do it here as well.

johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

