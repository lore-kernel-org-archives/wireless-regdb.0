Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from s3.sipsolutions.net ([5.9.151.49] helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wmoj2-0004rR-01
 for wireless-regdb@lists.infradead.org; Tue, 20 May 2014 18:25:20 +0000
Message-ID: <1400610273.4474.6.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Tue, 20 May 2014 20:24:33 +0200
In-Reply-To: <20140520180832.GD13981@tuxdriver.com>
References: <1399624824-9204-1-git-send-email-janusz.dziedzic@tieto.com>
 <CAB=NE6UuZFDLdA-KW=ohaFwXjj_3wSY84cj3-KPO7HoKREPHOA@mail.gmail.com>
 <20140520142453.GB13981@tuxdriver.com>
 <CALhHN=qtxwww9hQ7XxK8tan3+4eSoXo3D_g9YLD0QhQDPcDUmg@mail.gmail.com>
 <20140520180832.GD13981@tuxdriver.com>
Mime-Version: 1.0
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
To: "John W. Linville" <linville@tuxdriver.com>
Cc: Janusz Dziedzic <janusz.dziedzic@tieto.com>, linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, 2014-05-20 at 14:08 -0400, John W. Linville wrote:

> > I can add support for version 19 and 20 in one crda. I am not sure
> > this is the best option.
> > BTW what about versions < 19? How do we handle this this days?
> 
> What about older CRDA with newer wireless-regdb?  Do we need to worry about that?

I think we should, but if we can't then at least can we cut to an
extensible format?

(and yeah, I know I was part of defining the format ...)

johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

