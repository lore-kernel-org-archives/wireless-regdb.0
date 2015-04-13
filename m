Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-vn0-f43.google.com ([209.85.216.43])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YhjsX-0002Kq-7s
 for wireless-regdb@lists.infradead.org; Mon, 13 Apr 2015 19:18:42 +0000
Received: by vnbf129 with SMTP id f129so22909301vnb.9 for
 <wireless-regdb@lists.infradead.org>; Mon, 13 Apr 2015 12:18:19 -0700 (PDT)
Date: Mon, 13 Apr 2015 14:18:18 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150413191818.GA3025@ubuntu-xps13>
References: <000601d075fe$e10e0600$a32a1200$@acksys.fr>
 <20150413162317.GA21761@ubuntu-xps13>
 <1428951396.2355.15.camel@sipsolutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1428951396.2355.15.camel@sipsolutions.net>
Subject: Re: [wireless-regdb] [RFC] [PATCH] crda: enforce ETSI CAC timer of
 600s on the weather band
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
Cc: Jean-Pierre Tosoni <jp.tosoni@acksys.fr>, "Luis R. Rodriguez" <mcgrof@suse.com>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Apr 13, 2015 at 08:56:36PM +0200, Johannes Berg wrote:
> On Mon, 2015-04-13 at 11:23 -0500, Seth Forshee wrote:
> > On Mon, Apr 13, 2015 at 05:31:14PM +0200, Jean-Pierre Tosoni wrote:
> > > A really weird patch that splits the U-NII-2e band into 1, 2 or 3
> > > sub-bands to enforce a CAC time of 10 minutes in the range 5600-5650 MHz.
> > 
> > Wrong maintainer / list. CRDA patches should be directed to Luis and the
> > linux-wireless list (feel free to Cc wireless-regdb if you like).
> 
> However, I'm not convinced that this actually *belongs* into the crda
> code? That seems like the wrong approach - shouldn't these rules be
> captured in the database? We do have AUTO-BW now so it should be
> possible, no?
> 
> And if the timings aren't captured in the db.txt file they really should
> be.

Yeah with AUTO-BW the bands could be broken up in db.txt, and we could
even put in the CAC times. But we still can't get the CAC times into the
current regulatory.bin format, so it doesn't really accomplish anything.

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

