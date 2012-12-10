Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from he.sipsolutions.net ([78.46.109.217] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ti1a8-0005BV-H4
 for wireless-regdb@lists.infradead.org; Mon, 10 Dec 2012 11:31:33 +0000
Message-ID: <1355139107.9857.15.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Mon, 10 Dec 2012 12:31:47 +0100
In-Reply-To: <1424987.QUc2GD1qWX@lx-vladimir>
References: <8774585.BvFN3Opv12@lx-vladimir> <1573921.0GjqNuABMd@lx-vladimir>
 <1355134918.9857.9.camel@jlt4.sipsolutions.net>
 <1424987.QUc2GD1qWX@lx-vladimir>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: add regulatory rule
 for ETSI members on 60gHz band
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
To: Vladimir Kondratiev <qca_vkondrat@qca.qualcomm.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, linville@tuxdriver.com
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, 2012-12-10 at 13:09 +0200, Vladimir Kondratiev wrote:
> On Monday, December 10, 2012 11:21:58 AM Johannes Berg wrote:
> > On Mon, 2012-12-10 at 11:45 +0200, Vladimir Kondratiev wrote:
> > 
> > > For the 60gHz band, regulation defined in the "Etsi En 302 567"
> > > http://docsfiles.com/pdf_final_draft_etsi_en_302_567.html
> > 
> > > +country AD:
> > > +        # 60 gHz band channels 1-4, ref: Etsi En 302 567
> > > +        (57240 - 65880 @ 2160), (N/A, 40), NO-OUTDOOR
> > > +        (57240 - 65880 @ 2160), (N/A, 25)
> > 
> > There doesn't seem to be a bandwidth limitation in the rules, should we
> > really put one into the database?
> Yes, there is no limit and I'd want to remove bandwidth, but I don't see
> how to do so. If I simply omit '@ 2160', I am getting error from db2bin.py:

Right. I have this patch as work in progress:

http://git.kernel.org/?p=linux/kernel/git/jberg/mac80211-next.git;a=commitdiff;h=ec6e761bc0eb2471cda223431207b34af36f2b28

which would allow having no limit in the kernel, but the scripts here
would need to be updated to use it and allow the omission (or doing @N/A
or so)

Also, now looking closer, does the kernel understand the two rules with
different TX power/outdoor restriction properly?

johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

