Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from cantor2.suse.de ([195.135.220.15] helo=mx2.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2j3Q-0007bK-MV
 for wireless-regdb@lists.infradead.org; Thu, 03 Jul 2014 15:36:09 +0000
Date: Thu, 3 Jul 2014 17:35:44 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
Message-ID: <20140703153544.GC27687@wotan.suse.de>
References: <1404302531-18132-1-git-send-email-janusz.dziedzic@tieto.com>
 <CAB=NE6WN=6cu1rfHjLV32bvwAY6tnW9wrpVx5WHfdu0SJMvC0A@mail.gmail.com>
 <CALhHN=pfaLS_Axuky82QkUy1yaJw7qd+_Sss5h3nti9Li2g1Fw@mail.gmail.com>
 <CALhHN=oDHmz4Y4ZZUbyCU=gsM5_J=X7GH90qpCA_nqsjv9eK+A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALhHN=oDHmz4Y4ZZUbyCU=gsM5_J=X7GH90qpCA_nqsjv9eK+A@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] crda: db2rd, parse/print CAC time
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
To: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Jul 03, 2014 at 08:34:37AM +0200, Janusz Dziedzic wrote:
> On 3 July 2014 08:26, Janusz Dziedzic <janusz.dziedzic@tieto.com> wrote:
> > On 3 July 2014 00:06, Luis R. Rodriguez <mcgrof@do-not-panic.com> wrote:
> >> On Wed, Jul 2, 2014 at 5:02 AM, Janusz Dziedzic
> >> <janusz.dziedzic@tieto.com> wrote:
> >>> db2rd, parse and print DFS CAC time
> >>>
> >>> Signed-off-by: Janusz Dziedzic <janusz.dziedzic@tieto.com>
> >>
> >>
> >> This doesn't print the DFS CAC if its a in a line like this:
> >>
> >> (5250 - 5330 @ 0), (20), (60000), DFS, AUTO-BW
> >>
> > will check this, BTW BW=0 is not allowed I think.
> >
> 
> Did such test:
> country AE: DFS-FCC
>         (2402 - 2482 @ 40), (20)
>         (5170 - 5250 @ 80), (17)
>         (5250 - 5330 @ 0), (24), (60000), DFS, AUTO-BW
>         (5490 - 5730 @ 80), (24), DFS
>         (5735 - 5835 @ 80), (30)
> 
> And get:
> ./db2rd < db.txt
> 
> country AE: DFS-FCC
>     (2402.000 - 2482.000 @ 40.000), (20.00), (N/A)
>     (5170.000 - 5250.000 @ 80.000), (17.00), (N/A)
>     (5250.000 - 5330.000 @ 0.000), (24.00), (60000), DFS, AUTO-BW
>     (5490.000 - 5730.000 @ 80.000), (24.00), (N/A), DFS
>     (5735.000 - 5835.000 @ 80.000), (30.00), (N/A)
> 
> Seems works fine. Did you install reglib, could be you are using old one?
> I am using x86_64.

Heh yeah that's the issue, sorry, patch pushed!

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

