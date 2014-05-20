Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from charlotte.tuxdriver.com ([70.61.120.58]
 helo=smtp.tuxdriver.com) by bombadil.infradead.org with esmtps (Exim 4.80.1
 #2 (Red Hat Linux)) id 1Wml4E-00023s-1G for
 wireless-regdb@lists.infradead.org; Tue, 20 May 2014 14:30:59 +0000
Date: Tue, 20 May 2014 10:24:53 -0400
From: "John W. Linville" <linville@tuxdriver.com>
Message-ID: <20140520142453.GB13981@tuxdriver.com>
References: <1399624824-9204-1-git-send-email-janusz.dziedzic@tieto.com>
 <CAB=NE6UuZFDLdA-KW=ohaFwXjj_3wSY84cj3-KPO7HoKREPHOA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAB=NE6UuZFDLdA-KW=ohaFwXjj_3wSY84cj3-KPO7HoKREPHOA@mail.gmail.com>
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
To: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Cc: Janusz Dziedzic <janusz.dziedzic@tieto.com>, linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, May 20, 2014 at 12:33:51AM -0700, Luis R. Rodriguez wrote:
> On Fri, May 9, 2014 at 1:40 AM, Janusz Dziedzic
> <janusz.dziedzic@tieto.com> wrote:
> > Introduce support for setting DFS CAC time
> > in milliseconds.
> >
> > Eg.
> > (5250 - 5330 @ AUTO), (20), (60000), DFS
> >
> > will setup CAC 60 seconds CAC time.
> 
> Can you elaborate whether or not this will require a bump on CRDA  and
> issuing of two new wireless-regdb files for the different versions on
> the commit log?

I would really prefer not to manage two regdb binary releases.
Fear of that is what has kept me from merging this patch.

John
-- 
John W. Linville		Someday the world will need a hero, and you
linville@tuxdriver.com			might be all we have.  Be ready.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

