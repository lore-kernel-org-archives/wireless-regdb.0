Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from s3.sipsolutions.net ([5.9.151.49] helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yhv5E-0002Zv-Qy
 for wireless-regdb@lists.infradead.org; Tue, 14 Apr 2015 07:16:33 +0000
Message-ID: <1428995766.3019.0.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Tue, 14 Apr 2015 09:16:06 +0200
In-Reply-To: <20150413195426.GB3025@ubuntu-xps13>
References: <000601d075fe$e10e0600$a32a1200$@acksys.fr>
 <20150413162317.GA21761@ubuntu-xps13>
 <1428951396.2355.15.camel@sipsolutions.net>
 <20150413191818.GA3025@ubuntu-xps13>
 <1428953793.2355.16.camel@sipsolutions.net>
 <20150413195426.GB3025@ubuntu-xps13>
Mime-Version: 1.0
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: Jean-Pierre Tosoni <jp.tosoni@acksys.fr>, "Luis R. Rodriguez" <mcgrof@suse.com>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, 2015-04-13 at 14:54 -0500, Seth Forshee wrote:

> > > Yeah with AUTO-BW the bands could be broken up in db.txt, and we could
> > > even put in the CAC times. But we still can't get the CAC times into the
> > > current regulatory.bin format, so it doesn't really accomplish anything.
> > 
> > But then there's also little point in putting any code for it into the
> > crda binary, no?
> 
> Just to be clear, I'm not arguing for or against the patch at all. I'm
> only trying to explain why Jean-Pierre is proposing to change CRDA
> rather than db.txt. Maybe I should just let him speak for himself ...
> 
> As I understand it Jean-Pierre is looking for a stop-gap to get CAC
> times into the kernel until such time as we have a file format which
> allows getting them from regulatory.bin. Chaning CRDA can accomplish
> this, whereas modifying db.txt cannot.

Ah, yes, I got confused here. The regdb binary format doesn't support
it, but the kernel does.

johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

