Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from cantor.suse.de ([195.135.220.2] helo=mx1.suse.de)
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PJN3X-0007Sz-Mn
	for wireless-regdb@lists.infradead.org; Fri, 19 Nov 2010 09:15:04 +0000
Date: Fri, 19 Nov 2010 10:14:51 +0100
From: Kurt Garloff <garloff@suse.de>
Message-ID: <20101119091450.GD12228@tpkurt2.nue.garloff.de>
References: <20100525151429.GC6342@tpkurt2.garloff.de>
	<1290029817-711-1-git-send-email-linville@tuxdriver.com>
	<AANLkTimDkoqNbkFWDsU2HgFK3926gRpcBbokX_GL5sSc@mail.gmail.com>
	<93781E992CBA7843962D8B0E7D683F3C163340D5AE@SC1EXMB-MBCL.global.atheros.com>
	<20101119020414.GB2512@tuxdriver.com>
MIME-Version: 1.0
In-Reply-To: <20101119020414.GB2512@tuxdriver.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: update rules for DE
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0037041542=="
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
To: "John W. Linville" <linville@tuxdriver.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, Michael Green <Michael.Green@Atheros.com>, "Luis R. Rodriguez" <mcgrof@gmail.com>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, Johannes Berg <johannes@sipsolutions.net>
List-ID: <wireless-regdb@lists.infradead.org>

--===============0037041542==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="R9b51G30WkD62Ue3"
Content-Disposition: inline


--R9b51G30WkD62Ue3
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

John,

enjoy your birthday!

Michael,

enjoy vacation!

I submitted this change 6 months ago.
I was surprised that my ath9k device would not do anything in the
5GHz band unlike all neighour countries, found out that this is due
to the regulatory DB and started studying the regulations to see=20
whether it's justified.

A few days certainly don't make a difference here. Review carefully
when you can get to it next week.

Best,
--=20
Kurt Garloff, VP OPS Partner Engineering -- Novell Inc.
SUSE: Supporting Linux since 1992.

On Thu, Nov 18, 2010 at 09:04:14PM -0500, John W. Linville wrote:
> FWIW, I'm out on Friday anyway -- it's my birthday! :-)
>=20
> On Thu, Nov 18, 2010 at 01:23:42PM -0800, Michael Green wrote:
> > Hi guys,
> >=20
> > I am on PTO until Monday. Do I need to read this now and respond or can=
 it wait?  I am not asking you to hold anything up due to me. But if you wa=
nt me to give feedback on something, pls let me know if it can wait until M=
on.
> >=20
> > Michael Green
> > Atheros Communications, Inc.
> > mgreen@atheros.com
> > Desk:   +1-781-400-1491
> > Mobile: +1-508-380-4921
> > -----Original Message-----
> > From: Luis R. Rodriguez [mailto:mcgrof@gmail.com]=20
> > Sent: Thursday, November 18, 2010 1:29 PM
> > To: John W. Linville; Michael Green
> > Cc: wireless-regdb@lists.infradead.org; Johannes Berg; Kurt Garloff; li=
nux-wireless@vger.kernel.org
> > Subject: Re: [PATCH] wireless-regdb: update rules for DE
> >=20
> > On Wed, Nov 17, 2010 at 1:36 PM, John W. Linville
> > <linville@tuxdriver.com> wrote:
> > > From: Kurt Garloff <garloff@suse.de>
> > >
> > > http://marc.info/?l=3Dlinux-wireless&m=3D127480075306482&w=3D2
> > >
> > > Cc: "Luis R. Rodriguez" <mcgrof@gmail.com>
> > > Acked-by: Johannes Berg <johannes@sipsolutions.net>
> > > Signed-off-by: John W. Linville <linville@tuxdriver.com>
> > > ---
> > > Time to clear the logjam...
> >=20
> > Michael, are you subscribed to wireless-regdb now? Did you get this e-m=
ail? ACK?
> >=20
> >   Luis
> >=20
> > > =A0db.txt | =A0 24 +++++++++++++++++-------
> > > =A01 files changed, 17 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/db.txt b/db.txt
> > > index e63a43e..40a8bbc 100644
> > > --- a/db.txt
> > > +++ b/db.txt
> > > @@ -176,17 +176,27 @@ country CZ:
> > > =A0 =A0 =A0 =A0(5250 - 5350 @ 40), (N/A, 200 mW), NO-OUTDOOR, DFS
> > > =A0 =A0 =A0 =A0(5470 - 5725 @ 40), (N/A, 1000 mW), DFS
> > >
> > > -# Data from "Frequenznutzungsplan" (as published in April 2008),
> > > -# downloaded from http://www.bundesnetzagentur.de/media/archive/1335=
8.pdf
> > > -# Also applicable is http://www.bundesnetzagentur.de/media/archive/5=
009.pdf
> > > -# On the 5 GHz ranges TX power can be doubled if TPC is implemented.
> > > +# Data from "Frequenznutzungsplan" (as published in April 2008), dow=
nloaded from
> > > +# http://www.bundesnetzagentur.de/cae/servlet/contentblob/38448/publ=
icationFile/2659/Frequenznutzungsplan2008_Id17448pdf.pdf
> > > +# For the 5GHz range also see
> > > +# http://www.bundesnetzagentur.de/cae/servlet/contentblob/38216/publ=
icationFile/6579/WLAN5GHzVfg7_2010_28042010pdf.pdf
> > > +# The values have been reduced by a factor of 2 (3db) for non TPC de=
vices
> > > +# (in other words: devices with TPC can use twice the tx power of th=
is table).
> > > +# Note that the docs do not require TPC for 5150--5250; the reductio=
n to
> > > +# 100mW thus is not strictly required -- however the conservative 10=
0mW
> > > +# limit is used here as the non-interference with radar and satellite
> > > +# apps relies on the attenuation by the building walls only in the
> > > +# absence of DFS; the neighbour countries have 100mW limit here as w=
ell.
> > > +
> > > =A0country DE:
> > > =A0 =A0 =A0 =A0# entries 279004 and 280006
> > > =A0 =A0 =A0 =A0(2400 - 2483.5 @ 40), (N/A, 100 mW)
> > > - =A0 =A0 =A0 # entries 303005, 304002 and 305002
> > > - =A0 =A0 =A0 (5150 - 5350 @ 40), (N/A, 100 mW), NO-OUTDOOR, DFS
> > > + =A0 =A0 =A0 # entry 303005
> > > + =A0 =A0 =A0 (5150 - 5250 @ 40), (N/A, 100 mW), NO-OUTDOOR
> > > + =A0 =A0 =A0 # entries 304002 and 305002
> > > + =A0 =A0 =A0 (5250 - 5350 @ 40), (N/A, 100 mW), NO-OUTDOOR, DFS
> > > =A0 =A0 =A0 =A0# entries 308002, 309001 and 310003
> > > - =A0 =A0 =A0 (5470 - 5725 @ 40), (N/A, 500 mW), NO-OUTDOOR, DFS
> > > + =A0 =A0 =A0 (5470 - 5725 @ 40), (N/A, 500 mW), DFS
> > >
> > > =A0country DK:
> > > =A0 =A0 =A0 =A0(2402 - 2482 @ 40), (N/A, 20)
> > > --
> > > 1.7.3.2
> > >
> > >
>=20
> --=20
> John W. Linville =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Someday the world will ne=
ed a hero, and you
> linville@tuxdriver.com =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0might be all we=
 have. =A0Be ready.
>=20



--R9b51G30WkD62Ue3
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.12 (GNU/Linux)

iD8DBQFM5kAKxmLh6hyYd04RAk0RAJ9Sac5Z9S7lrAbEfF/Vvluk0Vw0GwCgjIk/
V8c9udrP+t6P1yBLEgqQNms=
=CEnA
-----END PGP SIGNATURE-----

--R9b51G30WkD62Ue3--


--===============0037041542==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

--===============0037041542==--


