Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from he.sipsolutions.net ([78.46.109.217] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ti2YF-0002JB-FZ
 for wireless-regdb@lists.infradead.org; Mon, 10 Dec 2012 12:33:40 +0000
Message-ID: <1355142835.9857.19.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Mon, 10 Dec 2012 13:33:55 +0100
In-Reply-To: <2225032.pbhpKMrF3f@lx-vladimir>
References: <8774585.BvFN3Opv12@lx-vladimir> <1424987.QUc2GD1qWX@lx-vladimir>
 <1355139107.9857.15.camel@jlt4.sipsolutions.net>
 <2225032.pbhpKMrF3f@lx-vladimir>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: add regulatory rule
 for ETSI members on 60gHz band
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
To: Vladimir Kondratiev <qca_vkondrat@qca.qualcomm.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, linville@tuxdriver.com
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, 2012-12-10 at 14:15 +0200, Vladimir Kondratiev wrote:
> On Monday, December 10, 2012 12:31:47 PM Johannes Berg wrote:
> > does the kernel understand the two rules with
> > different TX power/outdoor restriction properly?
> 
> Oh no! You are right, kernel won't get it.
> 
> In general: What is the right way to specify different restrictions
> for indoor and outdoor?

I don't know if we have a way to handle it right now ...

> In this particular case, would it be appropriate to specify
> indoor usage only, as 60g wi-fi will be used mostly indoor?

With the current rule system that'd be the only way, I think.

We should keep it in mind for the new rule system.

However, I notice there are also spectral power limits, that might be
relevant in case anyone ever uses the database for narrower channels?

johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

