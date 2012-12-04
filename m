Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from he.sipsolutions.net ([78.46.109.217] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tfx69-0004F3-Hf
 for wireless-regdb@lists.infradead.org; Tue, 04 Dec 2012 18:20:03 +0000
Message-ID: <1354645223.9608.11.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Tue, 04 Dec 2012 19:20:23 +0100
In-Reply-To: <CAB=NE6U2hvFbH_EMQbF+toBKSz6mdWyZhvwJ6UZVD-8ks4gp_g@mail.gmail.com>
References: <1352713865.9525.9.camel@jlt4.sipsolutions.net>
 <1354643287.9608.8.camel@jlt4.sipsolutions.net>
 <CAB=NE6U2hvFbH_EMQbF+toBKSz6mdWyZhvwJ6UZVD-8ks4gp_g@mail.gmail.com>
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
To: "Luis R. Rodriguez" <mcgrof@gmail.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, 2012-12-04 at 10:13 -0800, Luis R. Rodriguez wrote:

> >> When in world roaming mode, allow 40 MHz to be used
> >> on channels 12 and 13 so that an AP that is, e.g.,
> >> using HT40+ on channel 9 (in the UK) can be used.
> >
> > Well, hold on.. this can't possibly work now :(
> >
> > This is what happens when Luis and I disagree ...
> >
> > I thought the bandwidth in a given section means the bandwidth that can
> > be used from this section,
> 
> No, indeed that was the objective.

That's not what's implemented though.

> > Luis implemented it to mean that a channel
> > overlapping any part of that section can only use that much bandwidth.
> 
> This was a side effect of the checks we have in place, it was not expected.

But this is what happens due to the reg.c implementation -- it checks
that the freqband into which the primary and secondary channel fall each
allows 40 MHz, even if they are two different freqbands.

> > Note sure which was intended?
> 
> Technically speaking the math should be possible to figure out to
> enable HT40 or not based on peer channels and although that was
> assumed the user reported it not allowing HT40 due to the peer
> channels not allowing HT40. I took your patch as an assumption that
> was not possible.

Indeed this is what we had, but I built the db.txt parser based on the
assumption that in fact "@ 20" in the channel 11/12 freqband would have
been sufficient to allow 40 Mhz on channel 9+. This isn't the case in
the kernel implementation today.

johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

