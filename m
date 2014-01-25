Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from tuxdriver-1-pt.tunnel.tserv13.ash1.ipv6.he.net
 ([2001:470:7:9c9::2] helo=smtp.tuxdriver.com)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W6quu-0003Hx-Ij
 for wireless-regdb@lists.infradead.org; Sat, 25 Jan 2014 00:16:09 +0000
Date: Fri, 24 Jan 2014 19:01:13 -0500
From: "John W. Linville" <linville@tuxdriver.com>
Message-ID: <20140125000113.GO4309@tuxdriver.com>
References: <CABPxzYJSBagxbz4nd8=Qt_HbG4ecqe=-cbzi0N4JDPCwDE42Mg@mail.gmail.com>
 <CABPxzYLu+yjkfsi13BXG8sKoySu_CwtN+uSgwwYdiXdEq8sGMw@mail.gmail.com>
 <CAB=NE6U7zy8MeO4qLuWsEC_t69JKkS2=98crGrp4073=5WHU9Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAB=NE6U7zy8MeO4qLuWsEC_t69JKkS2=98crGrp4073=5WHU9Q@mail.gmail.com>
Subject: Re: [wireless-regdb] CRDA: Build Fail: Database signature
	verification failed
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
Cc: Krishna Chaitanya <chaitanya.mgit@gmail.com>, linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Jan 24, 2014 at 03:02:11PM -0800, Luis R. Rodriguez wrote:
> On Mon, Dec 16, 2013 at 11:14 PM, Krishna Chaitanya
> <chaitanya.mgit@gmail.com> wrote:
> > On Tue, Dec 17, 2013 at 12:20 PM, Krishna Chaitanya
> > <chaitanya.mgit@gmail.com> wrote:
> >> Hi,
> >>
> >> With the latest git source, i am seeing a build failure with the below error.
> >>
> >>   LD   crda
> >>   CC   intersect.o
> >>   LD   intersect
> >>   CC   regdbdump.o
> >>   LD   regdbdump
> >>   CC   db2rd.o
> >>   LD   db2rd
> >>   CC   optimize.o
> >>   LD   optimize
> >>   CHK  /usr/lib/crda/regulatory.bin
> >> Database signature verification failed.
> >> Invalid or empty regulatory file, note: a binary regulatory file should be used.
> >> make: *** [verify] Error 234
> >>
> >> Is there something wrong with the certificate?
> >>
> > Additional info:
> >
> > # regdbdump /usr/lib/crda/regulatory.bin
> > Database signature verification failed.
> > #  ls -l /usr/lib/crda/regulatory.bin
> > -rw-r--r-- 1 root root 3344 Dec 16 17:34 /usr/lib/crda/regulatory.bin
> >
> > regualtory.bin copied from wireless-regdb latest git.
> 
> John, what ever happened with this, I forget.

I thought these issues were resolved...?

-- 
John W. Linville		Someday the world will need a hero, and you
linville@tuxdriver.com			might be all we have.  Be ready.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

