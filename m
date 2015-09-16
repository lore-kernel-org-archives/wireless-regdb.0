Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-io0-f170.google.com ([209.85.223.170])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZcDDN-0001Z0-LW
 for wireless-regdb@lists.infradead.org; Wed, 16 Sep 2015 13:57:38 +0000
Received: by ioii196 with SMTP id i196so231381248ioi.3 for
 <wireless-regdb@lists.infradead.org>; Wed, 16 Sep 2015 06:57:15 -0700 (PDT)
Date: Wed, 16 Sep 2015 08:56:38 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150916135638.GA63277@ubuntu-hedt>
References: <CAH9F5rkwnYRerb=y2tQudYq-UwBdHcf0nwA9aAugOmBhWhKnzg@mail.gmail.com>
 <20150915164346.GC146373@ubuntu-hedt>
 <CAH9F5r=JY=QcPGHrvvcWHMfNy7C370kaYs2iAND3Ku_aJ8WHCQ@mail.gmail.com>
 <CAH9F5rmHRCPTuzcJCdVLEV_OJNwZp23dmJY_hsjeTKsk6pZJUg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAH9F5rmHRCPTuzcJCdVLEV_OJNwZp23dmJY_hsjeTKsk6pZJUg@mail.gmail.com>
Subject: Re: [wireless-regdb] Regulatory Domain for Hong Kong
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
To: Atul Joshi <atul.suresh.joshi@gmail.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Sep 16, 2015 at 10:10:12AM +0530, Atul Joshi wrote:
> Hello,
> One more thing. If HK falls under DFS-ETSI, will it use 10 min CAC time ?

I don't know. But the binary database format currently lacks any way to
encode CAC time into rules, so we lack a mechanism for specifying some
other value regardless.

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

