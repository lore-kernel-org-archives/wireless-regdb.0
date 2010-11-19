Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail.atheros.com ([12.19.149.2])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PJSfX-0001o0-La
	for wireless-regdb@lists.infradead.org; Fri, 19 Nov 2010 15:14:33 +0000
Received: from mail.atheros.com ([10.10.20.108]) by sidewinder.atheros.com
	for <wireless-regdb@lists.infradead.org>;
	Fri, 19 Nov 2010 07:14:18 -0800
From: Michael Green <Michael.Green@Atheros.com>
Date: Fri, 19 Nov 2010 07:14:28 -0800
Message-ID: <93781E992CBA7843962D8B0E7D683F3C16334843DD@SC1EXMB-MBCL.global.atheros.com>
References: <20100525151429.GC6342@tpkurt2.garloff.de>
	<1290029817-711-1-git-send-email-linville@tuxdriver.com>
	<AANLkTimDkoqNbkFWDsU2HgFK3926gRpcBbokX_GL5sSc@mail.gmail.com>
	<93781E992CBA7843962D8B0E7D683F3C163340D5AE@SC1EXMB-MBCL.global.atheros.com>
	<20101119020414.GB2512@tuxdriver.com>
	<20101119091450.GD12228@tpkurt2.nue.garloff.de>
In-Reply-To: <20101119091450.GD12228@tpkurt2.nue.garloff.de>
Content-Language: en-US
MIME-Version: 1.0
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
Content-Type: text/plain; charset="iso-8859-1"
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
To: Kurt Garloff <garloff@suse.de>, "John W. Linville" <linville@tuxdriver.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, Johannes Berg <johannes@sipsolutions.net>, "Luis R. Rodriguez" <mcgrof@gmail.com>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

Is the issue that the regdb currently limits DK to 2.4GHz operation (5GHz i=
s disabled)?

If I understand this email string, then clearly DK should be corrected to e=
nable 5GHz operation.

I believe DK should be set to the same 5GHz channel and power settings per =
the Harmonized standard EN301 893. This is true of all countries that accep=
t CE Marking.

If this patch/issue is about something else, then please let me know.

tks,

Michael Green
Atheros Communications, Inc.
mgreen@atheros.com
Desk:   +1-781-400-1491
Mobile: +1-508-380-4921

-----Original Message-----
From: Kurt Garloff [mailto:garloff@suse.de]=20
Sent: Friday, November 19, 2010 4:15 AM
To: John W. Linville
Cc: Michael Green; Luis R. Rodriguez; wireless-regdb@lists.infradead.org; J=
ohannes Berg; linux-wireless@vger.kernel.org
Subject: Re: [PATCH] wireless-regdb: update rules for DE

John,

enjoy your birthday!

Michael,

enjoy vacation!

I submitted this change 6 months ago.
I was surprised that my ath9k device would not do anything in the 5GHz band=
 unlike all neighour countries, found out that this is due to the regulator=
y DB and started studying the regulations to see whether it's justified.

A few days certainly don't make a difference here. Review carefully when yo=
u can get to it next week.

Best,
--
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
> > From: Luis R. Rodriguez [mailto:mcgrof@gmail.com]
> > Sent: Thursday, November 18, 2010 1:29 PM
> > To: John W. Linville; Michael Green
> > Cc: wireless-regdb@lists.infradead.org; Johannes Berg; Kurt Garloff;=20
> > linux-wireless@vger.kernel.org
> > Subject: Re: [PATCH] wireless-regdb: update rules for DE
> >=20
> > On Wed, Nov 17, 2010 at 1:36 PM, John W. Linville=20
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
> > > -# Data from "Frequenznutzungsplan" (as published in April 2008),=20
> > > -# downloaded from=20
> > > http://www.bundesnetzagentur.de/media/archive/13358.pdf
> > > -# Also applicable is=20
> > > http://www.bundesnetzagentur.de/media/archive/5009.pdf
> > > -# On the 5 GHz ranges TX power can be doubled if TPC is implemented.
> > > +# Data from "Frequenznutzungsplan" (as published in April 2008),=20
> > > +downloaded from #=20
> > > +http://www.bundesnetzagentur.de/cae/servlet/contentblob/38448/pub
> > > +licationFile/2659/Frequenznutzungsplan2008_Id17448pdf.pdf
> > > +# For the 5GHz range also see
> > > +#=20
> > > +http://www.bundesnetzagentur.de/cae/servlet/contentblob/38216/pub
> > > +licationFile/6579/WLAN5GHzVfg7_2010_28042010pdf.pdf
> > > +# The values have been reduced by a factor of 2 (3db) for non TPC=20
> > > +devices # (in other words: devices with TPC can use twice the tx pow=
er of this table).
> > > +# Note that the docs do not require TPC for 5150--5250; the=20
> > > +reduction to # 100mW thus is not strictly required -- however the=20
> > > +conservative 100mW # limit is used here as the non-interference=20
> > > +with radar and satellite # apps relies on the attenuation by the=20
> > > +building walls only in the # absence of DFS; the neighbour countries=
 have 100mW limit here as well.
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
> --
> John W. Linville =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Someday the world will ne=
ed a hero,=20
> and you linville@tuxdriver.com =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0might b=
e all we have. =A0Be ready.
>=20



_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

