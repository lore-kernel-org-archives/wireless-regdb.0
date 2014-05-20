Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from charlotte.tuxdriver.com ([70.61.120.58]
 helo=smtp.tuxdriver.com) by bombadil.infradead.org with esmtps (Exim 4.80.1
 #2 (Red Hat Linux)) id 1Wmkph-0003z3-3M for
 wireless-regdb@lists.infradead.org; Tue, 20 May 2014 14:15:57 +0000
Date: Tue, 20 May 2014 10:06:08 -0400
From: "John W. Linville" <linville@tuxdriver.com>
Message-ID: <20140520140608.GA13981@tuxdriver.com>
References: <1399624723-9167-1-git-send-email-janusz.dziedzic@tieto.com>
 <CAB=NE6X76jCotGR+61wPxyu0treDTebXsxu-inU7xWJnMRLevA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAB=NE6X76jCotGR+61wPxyu0treDTebXsxu-inU7xWJnMRLevA@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: add AUTO-BW rule flag
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
Cc: Janusz Dziedzic <janusz.dziedzic@tieto.com>, linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, May 20, 2014 at 12:59:29AM -0700, Luis R. Rodriguez wrote:
> On Fri, May 9, 2014 at 1:38 AM, Janusz Dziedzic
> <janusz.dziedzic@tieto.com> wrote:
> > Sync with latest nl80211.h and add AUTO-BW flag.
> > If this flag set, maximum available bandwidth should
> > be calculated base on contiguous rules and wider channels
> > will be allowed to cross multiple contiguous/overlapping
> > frequency ranges.
> >
> > Signed-off-by: Janusz Dziedzic <janusz.dziedzic@tieto.com>
> 
> Once John merges this I'll merge on CRDA, just as with the DFS CAC
> patch, please do let me know if and when that happens.

I just merged this yesterday:

commit e90f7a95b9c646b398d56cfe381bf1cc3508d96e
Author: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Date:   Tue Feb 25 08:21:18 2014 +0100

    wireless-regdb: add AUTO-BW rule flag
    
    Sync with latest nl80211.h and add AUTO-BW flag.
    If this flag set, maximum available bandwidth should
    be calculated base on contiguous rules and wider channels
    will be allowed to cross multiple contiguous/overlapping
    frequency ranges.
    
    Signed-off-by: Janusz Dziedzic <janusz.dziedzic@tieto.com>
    Signed-off-by: John W. Linville <linville@tuxdriver.com>

-- 
John W. Linville		Someday the world will need a hero, and you
linville@tuxdriver.com			might be all we have.  Be ready.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

