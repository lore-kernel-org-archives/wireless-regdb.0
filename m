Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from he.sipsolutions.net ([78.46.109.217] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tfyh5-0001wz-Ds
 for wireless-regdb@lists.infradead.org; Tue, 04 Dec 2012 20:02:15 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.0:DHE_RSA_CAMELLIA_256_CBC_SHA1:256) (Exim 4.80)
 (envelope-from <johannes@sipsolutions.net>) id 1Tfyh3-0006RX-2z
 for wireless-regdb@lists.infradead.org; Tue, 04 Dec 2012 21:02:13 +0100
Message-ID: <1354651357.9608.20.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Tue, 04 Dec 2012 21:02:37 +0100
In-Reply-To: <1354648499.9608.19.camel@jlt4.sipsolutions.net>
References: <1354648499.9608.19.camel@jlt4.sipsolutions.net>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH] dbparse: remove usable bandwidth check
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
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, 2012-12-04 at 20:14 +0100, Johannes Berg wrote:
> From: Johannes Berg <johannes.berg@intel.com>
> 
> The kernel uses the bandwidth this way: any frequency
> rule that is required for any of the 20 MHz subchannels
> of a given channel must allow the total bandwidth.
> Therefore, this check is wrong -- a frequency rule may
> need to be specified with higher bandwidth than it has
> to allow to form e.g. HT40 out of subchannels.

This patch, and the other patch, are because we currently interpret the
rules this way:

http://johannes.sipsolutions.net/files/chans-old.pdf

johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

