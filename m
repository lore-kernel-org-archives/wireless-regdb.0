Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from charlotte.tuxdriver.com ([70.61.120.58]
 helo=smtp.tuxdriver.com) by bombadil.infradead.org with esmtps (Exim 4.80.1
 #2 (Red Hat Linux)) id 1WmoZw-0000YN-MA for
 wireless-regdb@lists.infradead.org; Tue, 20 May 2014 18:15:57 +0000
Date: Tue, 20 May 2014 14:08:32 -0400
From: "John W. Linville" <linville@tuxdriver.com>
Message-ID: <20140520180832.GD13981@tuxdriver.com>
References: <1399624824-9204-1-git-send-email-janusz.dziedzic@tieto.com>
 <CAB=NE6UuZFDLdA-KW=ohaFwXjj_3wSY84cj3-KPO7HoKREPHOA@mail.gmail.com>
 <20140520142453.GB13981@tuxdriver.com>
 <CALhHN=qtxwww9hQ7XxK8tan3+4eSoXo3D_g9YLD0QhQDPcDUmg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALhHN=qtxwww9hQ7XxK8tan3+4eSoXo3D_g9YLD0QhQDPcDUmg@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: add DFS CAC time
	parameter
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, May 20, 2014 at 08:01:31PM +0200, Janusz Dziedzic wrote:
> On 20 May 2014 16:24, John W. Linville <linville@tuxdriver.com> wrote:
> > On Tue, May 20, 2014 at 12:33:51AM -0700, Luis R. Rodriguez wrote:
> >> On Fri, May 9, 2014 at 1:40 AM, Janusz Dziedzic
> >> <janusz.dziedzic@tieto.com> wrote:
> >> > Introduce support for setting DFS CAC time
> >> > in milliseconds.
> >> >
> >> > Eg.
> >> > (5250 - 5330 @ AUTO), (20), (60000), DFS
> >> >
> >> > will setup CAC 60 seconds CAC time.
> >>
> >> Can you elaborate whether or not this will require a bump on CRDA  and
> >> issuing of two new wireless-regdb files for the different versions on
> >> the commit log?
> >
> > I would really prefer not to manage two regdb binary releases.
> > Fear of that is what has kept me from merging this patch.
> >
> I can add support for version 19 and 20 in one crda. I am not sure
> this is the best option.
> BTW what about versions < 19? How do we handle this this days?

What about older CRDA with newer wireless-regdb?  Do we need to worry about that?

John
-- 
John W. Linville		Someday the world will need a hero, and you
linville@tuxdriver.com			might be all we have.  Be ready.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

