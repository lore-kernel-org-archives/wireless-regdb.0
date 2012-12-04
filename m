Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from he.sipsolutions.net ([78.46.109.217] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfxQV-0005MM-AT
 for wireless-regdb@lists.infradead.org; Tue, 04 Dec 2012 18:41:03 +0000
Message-ID: <1354646482.9608.15.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Tue, 04 Dec 2012 19:41:22 +0100
In-Reply-To: <CAB=NE6V8-AonsG23jBCY6yESy37gYNX_=cKLgnhD=KGzP5dh3A@mail.gmail.com>
References: <1352713865.9525.9.camel@jlt4.sipsolutions.net>
 <1354643287.9608.8.camel@jlt4.sipsolutions.net>
 <CAB=NE6U2hvFbH_EMQbF+toBKSz6mdWyZhvwJ6UZVD-8ks4gp_g@mail.gmail.com>
 <1354645223.9608.11.camel@jlt4.sipsolutions.net>
 <CAB=NE6V8-AonsG23jBCY6yESy37gYNX_=cKLgnhD=KGzP5dh3A@mail.gmail.com>
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

On Tue, 2012-12-04 at 10:28 -0800, Luis R. Rodriguez wrote:

> >> This was a side effect of the checks we have in place, it was not expected.
> >
> > But this is what happens due to the reg.c implementation -- it checks
> > that the freqband into which the primary and secondary channel fall each
> > allows 40 MHz, even if they are two different freqbands.
> 
> As I implemented it, it should be checking if HT40 is used. If so then
> it should be checking to see if the primary can use 40 MHz bandwidth
> and then check to see if the secondary can use 20 MHz. The issue
> should be that the code should likely is checking that the secondary
> requires 40 MHz. It should only need to check if the secondary can use
> 20 MHz if HT40 is desired.

I don't think this is really what we should do ... In fact given the way
we do it now with overlapping freqbands this would cause more problems
than it would solve, I think.

What it really should check is that for each freqband, as much bandwidth
is allowed as falls into that freqband. But given that we have
overlapping freqbands, much bandwidth will actually fall into each one
of them, so we must allow @40 again ...

I'm drawing some pictures now :-)


> > Indeed this is what we had, but I built the db.txt parser based on the
> > assumption that in fact "@ 20" in the channel 11/12 freqband would have
> > been sufficient to allow 40 Mhz on channel 9+. This isn't the case in
> > the kernel implementation today.
> 
> I'll fix that, but given you have a slew of updates not sure if this
> should go in after / before your changes.

I think the easiest for now would be to actually do what's implemented
and make this change to dbparse.py:

@@ -162,9 +164,6 @@ class DBParser(object):
                 self._syntax_error("Inverted freq range (%d - %d)" % (start, end))
             if start == end:
                 self._syntax_error("Start and end freqs are equal (%d)" % start)
-            if end - start < bw:
-                self._syntax_error("Invalid bandwidth: %d width channel "
-                       "cannot possibly fit between %d - %d" % (bw, start, end))
         except ValueError:
             self._syntax_error("band must have frequency range")
 

Then we can make the db.txt change I suggested in the the original patch
in this thread and keep the rules that both the primary and secondary
channel must be in a freqband that allows 40 MHz.

Note that this really only applies for the 00 world roaming regdomain
(and maybe Japan, but I don't actually think so) since every other
regdomain just uses a single rule.

johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

