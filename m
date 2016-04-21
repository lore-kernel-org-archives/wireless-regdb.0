Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1atHuf-0005lG-VF
 for wireless-regdb@lists.infradead.org; Thu, 21 Apr 2016 16:57:10 +0000
Date: Thu, 21 Apr 2016 18:56:45 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
Message-ID: <20160421165645.GW1990@wotan.suse.de>
References: <1461113043-30102-1-git-send-email-bordjukov@gmail.com>
 <20160421140721.GB95003@ubuntu-hedt>
 <87fuuf54ai.wl-bordjukov@gmail.com>
 <20160421163410.GC95003@ubuntu-hedt>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160421163410.GC95003@ubuntu-hedt>
Subject: Re: [wireless-regdb] Updates for the regulatory rules for Bulgaria
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: Petko Bordjukov <bordjukov@gmail.com>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Apr 21, 2016 at 11:34:10AM -0500, Seth Forshee wrote:
> On Thu, Apr 21, 2016 at 07:12:53PM +0300, Petko Bordjukov wrote:
> > On Thu, 21 Apr 2016 17:07:21 +0300,
> > Seth Forshee wrote:
> > > This is almost certainly because these frequencies require transmit
> > > power control. We drop the TX power limits by half (i.e. 3 dB) when TPC
> > > is required on account of not supporting TPC.
> > 
> > I was under the impression that the underlying kernel infrastructure had support
> > for TPC. What I am observing is that hostapd automatically includes the Power
> > Constraint IE in beacons sent out on any channel with DFS enabled. The default
> > transmit power reduction is 3dBm.
> > 
> > This means that the TX power of any clients would be limited to 3dBm below the
> > TX power of the AP even though it's not required.
> > 
> > Would there be any merit in providing additional information regarding the TX
> > power and the target average TX power reduction for the system when TPC is
> > supported?
> 
> I'm frankly not certain about the status of kernel support, but my
> impression was that some drivers might have some level of TPC support
> but that it's not universal. I really haven't been keeping track of it
> though.

When I looked at adding support for Linux, IIRC the status of affairs
was that it was complex, and iffy, and no one ever really implemented
it even on Windows / OSX so the adjustments were easier to make so
that's what people did.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

