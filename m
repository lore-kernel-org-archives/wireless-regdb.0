Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from s3.sipsolutions.net ([144.76.43.152] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V2cwA-0000n5-Su
 for wireless-regdb@lists.infradead.org; Fri, 26 Jul 2013 07:59:43 +0000
Message-ID: <1374825552.8248.2.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Fri, 26 Jul 2013 09:59:12 +0200
In-Reply-To: <CAB=NE6V_PKG2UBSLPRhziUDcFzFi8uOJNiNzoPNaK0oU7rmZuQ@mail.gmail.com>
References: <CAB=NE6V_PKG2UBSLPRhziUDcFzFi8uOJNiNzoPNaK0oU7rmZuQ@mail.gmail.com>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] Updates to wireless-regdb review - vendor
	namespaces and VHT80
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
To: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, 2013-07-02 at 17:38 -0700, Luis R. Rodriguez wrote:

> I'd like to propose a middle ground to also address another issue I've
> noticed. Vendors can disagree and in order to give vendors a warm
> fuzzy on ability to ensure their data is interpreted and provide the
> ability to offload down to wireless-regdb even more interpretations
> I'd like to propose the idea of embracing vendor namespaces within
> wireless-regdb / crda / the kernel. The way I'd envision this is
> '/sbin/crda US OUI' is passed upon a regulatory hint and in turn CRDA
> will read the namespace for the OUI passed in regulatory.bin. Then at
> our wireless summit kumbaya and with the development / enhancements of
> intersect.c and union.c (not yet developed) we'd work on generalizing
> the data. This would also allow vendors to supply their own rules
> without the high bar that we are setting which so far has proven very
> difficult to met.

I'm not really fully convinced, but let's discuss at the summit.

Wasn't the point of the regdb and documentation etc. also that the users
can trust it? It seems to me that if you're building a generic system
you wouldn't really want different regulatory interpretations. And if
you think for some special system (say a tablet) you need a different
database, you'll probably hand-roll one specifically for that system
anyway.

> In the meantime, while that gets developed, I'd still like to supply
> patches to enable VHT80 for a few countries without hopefully such
> high bar for documentation as I cannot get this information.

I've also been sitting on the patch "regulatory: enable channels 52-64
and 100-144 for world roaming" ...

johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

