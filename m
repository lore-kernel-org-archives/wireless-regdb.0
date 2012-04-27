Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from tuxdriver-1-pt.tunnel.tserv13.ash1.ipv6.he.net
 ([2001:470:7:9c9::2] helo=smtp.tuxdriver.com)
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SNkah-0002cL-9j
 for wireless-regdb@lists.infradead.org; Fri, 27 Apr 2012 12:48:04 +0000
Date: Fri, 27 Apr 2012 08:40:18 -0400
From: "John W. Linville" <linville@tuxdriver.com>
Message-ID: <20120427124018.GA16207@tuxdriver.com>
References: <1335437414-3421-1-git-send-email-rmanohar@qca.qualcomm.com>
 <CAB=NE6WSaoR+n3JUrZ+XRimHxLQa2ZU3nwKO+gcGFX-=k2o1zw@mail.gmail.com>
 <20120426133925.GA7741@vmraj-lnx.users.atheros.com>
 <20120427071642.GB2386@vmraj-lnx.users.atheros.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120427071642.GB2386@vmraj-lnx.users.atheros.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: add Rwanda (RW)
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
To: Rajkumar Manoharan <rmanohar@qca.qualcomm.com>
Cc: "Luis R. Rodriguez" <mcgrof@frijolero.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Apr 27, 2012 at 12:46:44PM +0530, Rajkumar Manoharan wrote:
> On Thu, Apr 26, 2012 at 07:09:27PM +0530, Rajkumar Manoharan wrote:
> > On Thu, Apr 26, 2012 at 04:36:14AM -0700, Luis R. Rodriguez wrote:
> > > On Thu, Apr 26, 2012 at 3:50 AM, Rajkumar Manoharan
> > > <rmanohar@qca.qualcomm.com> wrote:
> > > > Add support to country Rwanda with APL1_WORLD.
> > > >
> > > > Signed-off-by: Rajkumar Manoharan <rmanohar@qca.qualcomm.com>
> > > 
> > > We had decided a while ago the requirements of new patches to wireless-regdb:
> > > 
> > > http://marc.info/?l=linux-wireless&m=128414096127554&w=2
> > > 
> > > This patch does not provide any regulatory data. The APL1_WORLD name
> > > is only an Atheros reference and provides no data for anyone to
> > > review.
> > >
> > Thanks for the info. Im not aware of that. Will come up with more information.
> 
> Luis,
> 
> As per the Rwanda regulatory guidelines, the following ISM band are allowed.
> 
> 2400-2500 MHz (centre frequency 2 450 MHz),
> 5725-5875 MHz (centre frequency 5 800 MHz),
> 
> Ref: www.rura.gov.rw/publication/ISMbandguidelines.pdf
> 
> Shall I update the same in commit log and resubmit the patch?

Yes, please do so.

-- 
John W. Linville		Someday the world will need a hero, and you
linville@tuxdriver.com			might be all we have.  Be ready.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

