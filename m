Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from tuxdriver-1-pt.tunnel.tserv13.ash1.ipv6.he.net
 ([2001:470:7:9c9::2] helo=smtp.tuxdriver.com)
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RurEq-0000yT-Uz
 for wireless-regdb@lists.infradead.org; Tue, 07 Feb 2012 20:02:06 +0000
Date: Tue, 7 Feb 2012 14:54:15 -0500
From: "John W. Linville" <linville@tuxdriver.com>
Message-ID: <20120207195415.GG5560@tuxdriver.com>
References: <87pqgkxn25.fsf@nemi.mork.no>
	 <20111128181912.GB2681@tuxdriver.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111128181912.GB2681@tuxdriver.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
	Norway (NO)
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
To: =?iso-8859-1?Q?Bj=F8rn?= Mork <bjorn@mork.no>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, Robert =?iso-8859-1?Q?Gr=F8nning?= <slimg@iggu.org>
List-ID: <wireless-regdb@lists.infradead.org>

Well, sorry for the delay...  I will take this silence as "no
objection". :-)

Bj=F8rn, could you give me a "Signed-off-by" line as well?

Thanks,

John

On Mon, Nov 28, 2011 at 01:19:12PM -0500, John W. Linville wrote:
> Any comments from the regulatory experts in the group?
>=20
> On Tue, Nov 22, 2011 at 03:13:22PM +0100, Bj=F8rn Mork wrote:
> > As mentioned by Robert Gr=F8nning <slimg at iggu.org> in June, Norway d=
oes
> > allow a few more bands than what's currently in the database.  In
> > particular, the old ISM band at 5725 - 5875 MHz is and has "always" been
> > allowed.
> >=20
> > The regulations [1] have some weird restrictions wrt power densities etc
> > which I have no idea how to describe in a format suitable for the db.
> > I've tried my best to make sure the entries are within the rules.
> >=20
> > The regulations also allow up to 1 W eirp in the band 5470 - 5725 MHz,
> > and up to 4 W eirp in the bands 5725 - 5795 MHz and 5815 - 5850 MHz if
> > TPC is in use. The limits are reduced by 3dB without TPC.  As I don't
> > know how to express the TPC requirement, I've chosen to put the reduced
> > limits (500 mW and 2 W) in the db entries.  This also matches the German
> > (DE) entry for 5470 - 5725 MHz, so I guess it must make some sense...
> >=20
> > I also have no idea which SI prefixes you allow in the database, so I've
> > used whatever was in the regulations.  Please adjust as needed if only
> > mW or dB is acceptable.  Or let me know and I'll provide an updated pat=
ch.
> >=20
> >=20
> > Patch attached.
> >=20
> >=20
> >=20
> >=20
> > References:
> >=20
> > [1] Current Norwegian regulations:
> >   http://www.lovdata.no/cgi-wift/ldles?doc=3D/sf/sf/sf-20090602-0580.ht=
ml
> >=20
> > [2] The Norwegian Post and Telecommunications Authority provides an uno=
fficial english translation of these regulations:
> >   http://www.npt.no/ikbViewer/Content/103810/Regulations_concerning_gen=
eral_authorisations_for_the_use_of_radio_frequencies.pdf
> >=20
> >=20
> > [3] Appendix 1 of ERC/REC 70-03 provides generic information about lice=
nsing
> >   status for Short Range Devices (SRD) in most CEPT countries:
> >   http://www.ecodocdb.dk/doks/filedownload.aspx?fileid=3D1694&fileurl=
=3Dhttp://www.erodocdb.dk/Docs/doc98/official/pdf/REC7003E.PDF
> >=20
> >=20
> >=20
> >=20
> > Bj=F8rn
>=20
> > diff --git a/db.txt b/db.txt
> > index e63a43e..375187f 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -469,11 +469,20 @@ country NL:
> >  	(5250 - 5330 @ 40), (N/A, 20), DFS
> >  	(5490 - 5710 @ 40), (N/A, 27), DFS
> > =20
> > +# Data from http://www.lovdata.no/cgi-wift/ldles?doc=3D/sf/sf/sf-20090=
602-0580.html
> >  country NO:
> > -	(2402 - 2482 @ 40), (N/A, 20)
> > -	(5170 - 5250 @ 40), (N/A, 20)
> > -	(5250 - 5330 @ 40), (N/A, 20), DFS
> > -	(5490 - 5710 @ 40), (N/A, 27), DFS
> > +	# =A7 7 (2)
> > +	(2400 - 2483.5 @ 40), (N/A, 100 mW)
> > +	# =A7 7 (3)
> > +	(5150 - 5350 @ 40), (N/A, 200 mW)
> > +	# =A7 7 (4)
> > +	(5470 - 5725 @ 40), (N/A, 500 mW), DFS
> > +	# =A7 7 (5)
> > +	(5725 - 5795 @ 40), (N/A, 2 W), DFS
> > +	(5815 - 5850 @ 40), (N/A, 2 W), DFS
> > +	# =A7 7 (6)
> > +	(5725 - 5795 @ 40), (23, 1 W), DFS, PTP-ONLY
> > +	(5815 - 5850 @ 40), (23, 1 W), DFS, PTP-ONLY
> > =20
> >  country NP:
> >  	(2402 - 2482 @ 40), (N/A, 20)
>=20
>=20
> --=20
> John W. Linville		Someday the world will need a hero, and you
> linville@tuxdriver.com			might be all we have.  Be ready.
> --
> To unsubscribe from this list: send the line "unsubscribe linux-wireless"=
 in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>=20

--=20
John W. Linville		Someday the world will need a hero, and you
linville@tuxdriver.com			might be all we have.  Be ready.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

