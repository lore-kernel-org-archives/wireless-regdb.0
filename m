Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from smtp-out05.msg.oleane.net ([62.161.7.3])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YhyK1-0001KG-B9
 for wireless-regdb@lists.infradead.org; Tue, 14 Apr 2015 10:44:03 +0000
Received: from smtp28.msg.oleane.net (smtp28.mail.priv [172.17.20.150]) 
 by smtp-out05.msg.oleane.net with ESMTP id t3E8oHS9016312
 for <wireless-regdb@lists.infradead.org>; Tue, 14 Apr 2015 10:50:17 +0200
From: "Jean-Pierre Tosoni" <jp.tosoni@acksys.fr>
Date: Tue, 14 Apr 2015 10:28:33 +0200
Message-ID: <002801d0768c$ff2f66e0$fd8e34a0$@acksys.fr>
MIME-Version: 1.0
Content-Language: fr
Subject: Re: [wireless-regdb] [linux-wireless] was [RFC] [PATCH] crda:
	enforce ETSI CAC timer of 600s on the weather band
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
To: 'Johannes Berg' <johannes@sipsolutions.net>, linux-wireless@vger.kernel.org, "'Luis R. Rodriguez'" <mcgrof@suse.com>
Cc: 'Seth Forshee' <seth.forshee@canonical.com>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

> De=A0: Seth Forshee [mailto:seth.forshee@canonical.com] Envoy=E9=A0: lund=
i 13
avril 2015 21:54
> On Mon, Apr 13, 2015 at 09:36:33PM +0200, Johannes Berg wrote:
> > On Mon, 2015-04-13 at 14:18 -0500, Seth Forshee wrote:
> > > On Mon, Apr 13, 2015 at 08:56:36PM +0200, Johannes Berg wrote:
> > > > On Mon, 2015-04-13 at 11:23 -0500, Seth Forshee wrote:
> > > > > On Mon, Apr 13, 2015 at 05:31:14PM +0200, Jean-Pierre Tosoni
> wrote:
> > > > > > A really weird patch that splits the U-NII-2e band into 1, 2
> > > > > > or 3 sub-bands to enforce a CAC time of 10 minutes in the range
> 5600-5650 MHz.
> > > > >
> > > > > Wrong maintainer / list. CRDA patches should be directed to Luis
> > > > > and the linux-wireless list (feel free to Cc wireless-regdb if you
> like).
> > > >
> > > > However, I'm not convinced that this actually *belongs* into the
> > > > crda code? That seems like the wrong approach - shouldn't these
> > > > rules be captured in the database? We do have AUTO-BW now so it
> > > > should be possible, no?
> > > >
> > > > And if the timings aren't captured in the db.txt file they really
> > > > should be.
> > >
> > > Yeah with AUTO-BW the bands could be broken up in db.txt, and we
> > > could even put in the CAC times. But we still can't get the CAC
> > > times into the current regulatory.bin format, so it doesn't really
> accomplish anything.
> >
> > But then there's also little point in putting any code for it into the
> > crda binary, no?

I agree that this belongs to db.txt and regulatory.bin rather than crda, but
until the problem of defining a new format for regulatory.bin is settled,
there is no other way.
However I am not sure my patch should go to mainstream since in my mind it
is temporary approach. But it does enforce ETSI regulations and still allow
using weather frequencies.

>=20
> Just to be clear, I'm not arguing for or against the patch at all. I'm
> only trying to explain why Jean-Pierre is proposing to change CRDA rather
> than db.txt. Maybe I should just let him speak for himself ...
>=20
> As I understand it Jean-Pierre is looking for a stop-gap to get CAC times
> into the kernel until such time as we have a file format which allows
> getting them from regulatory.bin. Changing CRDA can accomplish this,
> whereas modifying db.txt cannot.

That's exactly what I meant.

Jean-Pierre


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

