Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from charlotte.tuxdriver.com ([70.61.120.58]
 helo=smtp.tuxdriver.com) by bombadil.infradead.org with esmtps (Exim 4.80.1
 #2 (Red Hat Linux)) id 1WpJL7-0000lu-Gs for
 wireless-regdb@lists.infradead.org; Tue, 27 May 2014 15:30:57 +0000
Date: Tue, 27 May 2014 11:23:57 -0400
From: "John W. Linville" <linville@tuxdriver.com>
Message-ID: <20140527152357.GA5694@tuxdriver.com>
References: <1401089962-10720-1-git-send-email-chaitanya.mgit@gmail.com>
 <1401097086.29704.0.camel@jlt4.sipsolutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1401097086.29704.0.camel@jlt4.sipsolutions.net>
Subject: Re: [wireless-regdb] [regdb] Add support to parse 2000mW tx power
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
To: Johannes Berg <johannes@sipsolutions.net>
Cc: chaitanya.mgit@gmail.com, linux-wireless@vger.kernel.org, mcgrof@gmail.com, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, May 26, 2014 at 11:38:06AM +0200, Johannes Berg wrote:
> On Mon, 2014-05-26 at 13:09 +0530, chaitanya.mgit@gmail.com wrote:
> 
> > @@ -74,7 +74,7 @@ function parse_reg_rule()
> >  			power = 23
> >  		} else if (power == 500) {
> >  			power = 27
> > -		} else if (power == 1000) {
> > +		} else if ((power == 1000) || (power == 2000)) {
> >  			power = 30
> 
> This seems like a pretty sick thing to do to start with, and certainly
> power=30 isn't right for 2000mW...

Heh...it was like that in my original version!  

> Can't awk calculate the logarithm?

I probably didn't know how to compute it in awk.  I still don't OTOH...

John
-- 
John W. Linville		Someday the world will need a hero, and you
linville@tuxdriver.com			might be all we have.  Be ready.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

