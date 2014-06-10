Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from s3.sipsolutions.net ([5.9.151.49] helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WuPBW-0001wk-LL
 for wireless-regdb@lists.infradead.org; Tue, 10 Jun 2014 16:46:08 +0000
Message-ID: <1402418724.4152.3.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Tue, 10 Jun 2014 18:45:24 +0200
In-Reply-To: <CALhHN=qZuPMjQMWGf0+J0ZKnj=5EGtfC=nWjJAYj2YWu=TTYLg@mail.gmail.com>
References: <1399624824-9204-1-git-send-email-janusz.dziedzic@tieto.com>
 <CAB=NE6UuZFDLdA-KW=ohaFwXjj_3wSY84cj3-KPO7HoKREPHOA@mail.gmail.com>
 <20140520142453.GB13981@tuxdriver.com>
 <CALhHN=qtxwww9hQ7XxK8tan3+4eSoXo3D_g9YLD0QhQDPcDUmg@mail.gmail.com>
 <20140520180832.GD13981@tuxdriver.com>
 <1400610273.4474.6.camel@jlt4.sipsolutions.net>
 <CAB=NE6WiuydxR62dvua_OEyV+sqxvH8aOUHOBLS3ePz1dGCLAw@mail.gmail.com>
 <1400688233.4136.8.camel@jlt4.sipsolutions.net>
 <20140521180020.GA13656@tuxdriver.com>
 <1400699356.4136.13.camel@jlt4.sipsolutions.net>
 <CALhHN=qZuPMjQMWGf0+J0ZKnj=5EGtfC=nWjJAYj2YWu=TTYLg@mail.gmail.com>
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
To: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "John W. Linville" <linville@tuxdriver.com>, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, 2014-06-09 at 09:33 +0200, Janusz Dziedzic wrote:

> Why not just skip this binary interface between regdb --> crda and use
> signed db.txt file?

I fail to see how that's any better? If anything, it seems to me that it
would be *harder* to keep the database text format parseable to old CRDA
versions when making changes.

johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

