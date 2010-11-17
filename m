Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from charlotte.tuxdriver.com ([70.61.120.58]
 helo=smtp.tuxdriver.com) by canuck.infradead.org with esmtps (Exim 4.72 #1
 (Red Hat Linux)) id 1PIqHG-0003n4-8v for
 wireless-regdb@lists.infradead.org; Wed, 17 Nov 2010 22:15:02 +0000
Date: Wed, 17 Nov 2010 17:03:03 -0500
From: "John W. Linville" <linville@tuxdriver.com>
Message-ID: <20101117220303.GB2380@tuxdriver.com>
References: <7de8d1c9fd95f3b714597b4cd15f7a29@post.subsys.no>
	<AANLkTim9g63UYZaxow8SO7EZLihCbiukQyTqSbL6XkX=@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTim9g63UYZaxow8SO7EZLihCbiukQyTqSbL6XkX=@mail.gmail.com>
Subject: Re: [wireless-regdb] Changes to NO (Norway) in wireless-regdb
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
To: "Luis R. Rodriguez" <mcgrof@gmail.com>
Cc: linux-wireless@vger.kernel.org, Michael Green <Michael.Green@atheros.com>, Robert =?iso-8859-1?Q?Gr=F8nning?= <slimg@iggu.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Ping?

On Mon, Oct 25, 2010 at 03:55:00PM -0700, Luis R. Rodriguez wrote:
> Adding Michael and the wireless-regdb list. Please use that list for
> further reviews.
>=20
>  Luis
>=20
> On Mon, Oct 25, 2010 at 2:37 PM, Robert Gr=F8nning <slimg@iggu.org> wrote:
> > It seems like NO is wrong according to Norwegian rules
> >
> > This is how NO currently looks like in wireless-regdb-2009.11.25.tar.bz2
> > -------------------START-------------------
> > country NO:
> > =A0 =A0 =A0 =A0(2402 - 2482 @ 40), (N/A, 20)
> > =A0 =A0 =A0 =A0(5170 - 5250 @ 40), (N/A, 20)
> > =A0 =A0 =A0 =A0(5250 - 5330 @ 40), (N/A, 20), DFS
> > =A0 =A0 =A0 =A0(5490 - 5710 @ 40), (N/A, 27), DFS
> > --------------------END--------------------
> >
> > This is what the Norwegian rules say about general usage of frequencies
> > for wi-fi:
> > Note: The following text is a translation from a subsection of the
> > following document written in Norwegian:
> > http://www.lovdata.no/for/sf/sd/xd-20090602-0580.html#7
> > -------------------------------------START-----------------------------=
---------
> > (3) the frequency band 5150-5350 MHz is authorized for indoor data
> > transfer
> > including radio-based local area networks (WAS / RLAN) with a maximum
> > radiated
> > power of 200 mW eirp the frequency use defined in the standard EN 301 8=
93
> > If any
> > other use than indoor use, the average spectral density in the frequency
> > band
> > 5150-5350 MHz is limited to 10 mW / MHz eirp in any 1 MHz range.
> >
> > (4) the frequency band 5470-5725 MHz may be used for data transfer with
> > maximum
> > radiated power of 1 W eirp Maximum average spectral density shall not
> > exceed
> > 50 mW / MHz eirp in any 1 MHz band. The radio equipment shall implement
> > transmit
> > power control (TPC) which provides an average attenuation of at least 3
> > dB. If
> > TPC is not in use, the maximum allowed radiated power and power density=
 is
> > 3 dB
> > lower than that following the first and second sentence. The radio
> > equipment will
> > use Dynamic Frequency Selection (DFS) as specified in the standard EN 3=
01
> > 893
> >
> > (5) The frequency bands 5725-5795 MHz and 5815-5850 MHz for data transf=
er
> > with
> > maximum radiated power of 4 W eirp Maximum average spectral density sha=
ll
> > not
> > exceed 200 mW / MHz eirp in any 1 MHz band. The radio equipment shall
> > implement
> > Dynamic Frequency Selection (DFS) as specified in the standard EN 302 5=
02
> > Radio
> > equipment shall transmit power control (TPC) which provides an average
> > attenuation of at least 3 dB. If TPC is not in use, the maximum allowed
> > radiated
> > power and power density is 3 dB lower than that following the first and
> > second
> > sentence. On the border between Norway and neighboring power density sh=
all
> > not
> > exceed -122.5 dBW / m 2 measured with a reference bandwidth of 1 MHz
> > unless
> > otherwise stated in the coordination agreement.
> >
> > (6) The frequency bands 5725-5795 and 5815-5850 MHz for point-to-point
> > radio
> > links with maximum radiated power of 200 W eirp Maximum permitted power
> > supplied
> > antenna is 1 W. The maximum average spectral density shall not exceed 1=
0 W
> > / MHz
> > eirp in any 1 MHz band. The concept of point-to-point radio links exclu=
de
> > all
> > forms of point-to-multipoint, omnidirectional systems and transmitters
> > send the
> > same information located in the same place (sector antennas). The radio
> > equipment
> > shall implement Dynamic Frequency Selection (DFS) as specified in the
> > standard
> > EN 302 502 On the border between Norway and neighboring power density
> > shall not
> > exceed -122.5 dBW / m 2 measured with a reference bandwidth of 1 MHz
> > unless
> > otherwise stated in the coordination agreement.
> > --------------------------------------END------------------------------=
---------
> >
> > Here is the link to google english-translated section mentioned above:
> > http://translate.googleusercontent.com/translate_c?hl=3Dno&sl=3Dno&tl=
=3Den&u=3Dhttp://www.lovdata.no/for/sf/sd/xd-20090602-0580.html&rurl=3Dtran=
slate.google.com&usg=3DALkJrhhGbQPtCjONnilyHdAgh1NwIZhFVA#7
> >
> > According to that documentation, NO should probably look like this
> > instead:
> > -------------------START-------------------
> > country NO:
> > =A0 =A0 =A0 =A0(2400 - 2483.5 @ 40), (N/A, 20)
> > =A0 =A0 =A0 =A0(5150 - 5350 @ 40), (N/A, 23)
> > =A0 =A0 =A0 =A0(5470 - 5725 @ 40), (N/A, 27), DFS
> > --------------------END--------------------
> >
> > Question 1:
> > The norwegian laws also says that if TPC is available, then the maximum
> > allowed TX power
> > of the 5470 -> 5725 MHz frequency range changes from 27 dBm to 30 dBm, I
> > don't know how to write that in wireless-regdb.
> >
> > Question 2:
> > The norwegian laws for the 5470 -> 5725 MHz frequency range seem to exc=
eed
> > the European restrictions in 802.11n-2009, I'm guessing that the upper =
5725
> > MHz frequency needs to be decreased to comply with the European
> > restrictions? if so, I'm not sure what frequency it should be decreased=
 to.
> >
> > Question 3:
> > The norwegian documentation also mentions these radio frequencies for
> > wireless data transfer:
> > =A0* 5725 -> 5795 MHz and 5815-5850 MHz: point-to-point radio links
> > =A0* 17,1 -> 17,3 GHz:
> > =A0* 57 -> 66 GHz:
> > Does these belong in the wireless-regdb as well?
> >
> > I hope my limited knowlege doesn't cause anyone unreasonable much work,
> > I'm really trying to get better at this.
> >
> > -Robert Gr=F8nning (Norway)
> > --
> > To unsubscribe from this list: send the line "unsubscribe linux-wireles=
s" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at =A0http://vger.kernel.org/majordomo-info.html
> >
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

