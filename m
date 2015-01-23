Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-f52.google.com ([209.85.218.52])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YEgEg-0006yB-R3
 for wireless-regdb@lists.infradead.org; Fri, 23 Jan 2015 15:33:27 +0000
Received: by mail-oi0-f52.google.com with SMTP id h136so5074016oig.11 for
 <wireless-regdb@lists.infradead.org>; Fri, 23 Jan 2015 07:33:04 -0800 (PST)
Date: Fri, 23 Jan 2015 09:33:03 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150123153303.GB4094@ubuntu-hedt>
References: <CALf=PEbVwhqoV2-aXsNDJNB+wHrJm=ZNx6cYedjt7hu6UPJENg@mail.gmail.com>
 <20150123103720.GA7274@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150123103720.GA7274@jouni.qca.qualcomm.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Add back regulatory
 rules for US
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
To: Jouni Malinen <jouni@qca.qualcomm.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, Daiwei Li <daiweili@suitabletech.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Jan 23, 2015 at 12:37:20PM +0200, Jouni Malinen wrote:
> On Fri, Jan 16, 2015 at 07:42:12PM -0800, Daiwei Li wrote:
> > We've found that our devices can't seem to operate on certain
> > frequencies (e.g. 5660MHz) being used by access points like the Apple
> > Airport Extreme and Asus RT-AC68U. I did a git bisect and found that
> > 31dc1c5eca29d039ac8f26340defe44bd7e497c1 removed that band amongst
> > others. A more recent [1] FCC source implies that these frequencies
> > should be usable with DFS.
> > 
> > Does anyone know the source for the commit that removed these frequencies from?
> 
> I'm not sure what the exact rationale for that part of the commit was.
> 
> > @@ -1125,6 +1125,8 @@ country US: DFS-FCC
> >         (2402 - 2472 @ 40), (30)
> >         (5170 - 5250 @ 80), (17), AUTO-BW
> >         (5250 - 5330 @ 80), (23), DFS, AUTO-BW
> > +       (5490 - 5600 @ 80), (23), DFS, AUTO-BW
> > +       (5650 - 5710 @ 40), (23), DFS, AUTO-BW
> >         (5735 - 5835 @ 80), (30)
> 
> AUTO-BW does not seem to make much sense here since neither new range
> has immediately neighboring ranges with different flags.

Good point. Daiwei, care to send an updated patch?

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

