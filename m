Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from charlotte.tuxdriver.com ([70.61.120.58]
 helo=smtp.tuxdriver.com) by bombadil.infradead.org with esmtps (Exim 4.80.1
 #2 (Red Hat Linux)) id 1WmSL7-0004tp-Aw for
 wireless-regdb@lists.infradead.org; Mon, 19 May 2014 18:31:09 +0000
Date: Mon, 19 May 2014 14:15:02 -0400
From: "John W. Linville" <linville@tuxdriver.com>
Message-ID: <20140519181502.GF7650@tuxdriver.com>
References: <D0D2EC853BFD0147A005CC7FAC0E4A53A196FC4D@AKI2K113.wd.govt.nz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <D0D2EC853BFD0147A005CC7FAC0E4A53A196FC4D@AKI2K113.wd.govt.nz>
Subject: Re: [wireless-regdb] New Zealand regulatory update 5 GHz
 channelling
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
To: Peter Gent <Peter.Gent@mbie.govt.nz>
Cc: "aenertia@aenertia.net" <aenertia@aenertia.net>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

I don't suppose that anyone would care to translate this into a patch again=
st db.txt?

On Mon, Feb 03, 2014 at 01:02:29AM +0000, Peter Gent wrote:
> Hi,
>=20
> I've recently been made aware that the current regulatory database for 5 =
GHz channelling is not up to date for New Zealand. Therefore we would like =
to suggest the following changes=20
>=20
> 5150 - 5250 MHz (indoor use only) 200 mW
> 5250 - 5350 MHz (indoor use only) 200 mW DFS enabled and Transmitter powe=
r control enabled=20
> 5250 - 5350 MHz (outdoor use) 1 W DFS enabled and Transmitter power contr=
ol enabled
> 5470 - 5725 MHz 500 mW, transmitter power control not enabled
> 5470 - 5725 MHz 1 Watt, DFS enabled and transmitter power control enabled
> 5725 - 5875 MHz 1 Watt DFS not enabled
> 5725 - 5875 MHZ 4 Watts DFS enabled=20
>=20
> There are no restrictions on channel size however power densities are spe=
cified. Therefore 40 MHz channelling is allowed (up from the current state =
of 20 MHz channelling) at a minimum and all power values are given as EIRP =
in Watts include the gain of the system antenna
>=20
> Regards
>=20
> Peter Gent
>=20
> Peter Gent
> Planning Analyst=20
> Radio Spectrum Policy & Planning=20
> Ministry of Business, Innovation & Employment
> DDI: +64 4 462 4279=A0=20
> 33 Bowen Street, PO Box 1473, Wellington 6140
>=20
>=20
>=20
> http://newzealand.govt.nz/ - connecting you to New Zealand central & loca=
l government services
>=20
> Any opinions expressed in this message are not necessarily those of the M=
inistry of Business, Innovation and Employment. This message and any files =
transmitted with it are confidential and solely for the use of the intended=
 recipient. If you are not the intended recipient or the person responsible=
 for delivery to the intended recipient, be advised that you have received =
this message in error and that any use is strictly prohibited. Please conta=
ct the sender and delete the message and any attachment from your computer.
>=20
>=20
>=20
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb
>=20

--=20
John W. Linville		Someday the world will need a hero, and you
linville@tuxdriver.com			might be all we have.  Be ready.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

