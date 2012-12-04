Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from he.sipsolutions.net ([78.46.109.217] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tfwau-0000CX-W2
 for wireless-regdb@lists.infradead.org; Tue, 04 Dec 2012 17:47:45 +0000
Message-ID: <1354643287.9608.8.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Tue, 04 Dec 2012 18:48:07 +0100
In-Reply-To: <1352713865.9525.9.camel@jlt4.sipsolutions.net>
References: <1352713865.9525.9.camel@jlt4.sipsolutions.net>
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
To: wireless-regdb@lists.infradead.org
Cc: mcgrof@gmail.com
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, 2012-11-12 at 10:51 +0100, Johannes Berg wrote:
> From: Johannes Berg <johannes.berg@intel.com>
> 
> When in world roaming mode, allow 40 MHz to be used
> on channels 12 and 13 so that an AP that is, e.g.,
> using HT40+ on channel 9 (in the UK) can be used.

Well, hold on.. this can't possibly work now :(

This is what happens when Luis and I disagree ...

I thought the bandwidth in a given section means the bandwidth that can
be used from this section, Luis implemented it to mean that a channel
overlapping any part of that section can only use that much bandwidth.

Note sure which was intended?

johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

