Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
 List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
 Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=PpJOugv72+Xz63xhCzLdXjfIGyAKXwZN2sZD6XBJLxs=;
 b=lmVr9qVxd1fAfQpHh3G48Mqgb
 FjKQva2sI91u+fXzZjUixAo24guWQXWg13LNWRZXUCabi/zZlHlYFH3Jy0MZFJAXRq7DhtM+H2Te0
 QDPP2KZqNfSqFav8UHWumQNabBQy/tlvC1EW5cuQ2FxMp6aR5n9BpLPIDV13Lvh10RwbmdHwGdH4R
 dL3gRQvYJT8eLGJOc2Eg1cm3ALNML3sxVsxgze2k0N5Av/nyQ/SE39Swneb1KOkrw5kbXy+svXAhD
 13X2X4DUXP6akFp1Mj8gDkVJn1qL2J81gh856RCRohfslkhiI0FcnVioYiX92x3OyEDDwhZ6PHxaA
 rOX8kicdA==;
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ds88o-00029u-D6
 for wireless-regdb@lists.infradead.org; Wed, 13 Sep 2017 13:55:50 +0000
From: Maximilian Engelhardt <engelhardt@perisens.de>
Date: Wed, 13 Sep 2017 15:55:11 +0200
Message-ID: <2091032.fZVXnZKvVJ@perisens15>
In-Reply-To: <CAN+fvRa5NyrVMvt_Bw5t4DMLVJGP0oyfXiPJWraJj8P4yAaKTg@mail.gmail.com>
References: <442c446a-5ace-9d3e-faf8-4294146cf2d6@gmail.com>
 <2fe0333a-2539-a895-48d9-24e1ccf5ff98@gmail.com>
 <CAN+fvRa5NyrVMvt_Bw5t4DMLVJGP0oyfXiPJWraJj8P4yAaKTg@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] Question about 5.8 GHz in E.U.
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4107504945124550683=="
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
To: wireless-regdb@lists.infradead.org
Cc: Ryan Mounce <ryan@mounce.com.au>, Mathieu =?ISO-8859-1?Q?Peyr=E9ga?= <mathieu.peyrega@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

--===============4107504945124550683==
Content-Type: multipart/signed; boundary="nextPart1747499.VUsL6XXu9I"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart1747499.VUsL6XXu9I
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi,

I sent the patch to add the Frequency range from 5725 to 5875 MHz in German=
y=20
so I can give you some background on this.
What I'm writing is only valid for Germany, but since it's all based on=20
European regulations it's probably very similar in other European countries.

In Germany there are three bands allowed for wireless LAN (WLAN) usage in t=
he=20
5 GHz band  [1]:

5150 - 5250 MHz (indoor only)
5250 - 5350 MHz (indoor only)
5470 - 5725 MHz (indoor and outdoor)

However the 5470 - 5725 MHz band is only allowed for fixed outdoor=20
installations (this is not stated directly in the legal document but I have=
=20
been told it's interpreted in this way. It's however explicitly stated that=
=20
usage for aircraft communication is not allowed). So for for non-fixed outd=
oor=20
setups none of these 5 GHz bands can be used.


Additionally to the official wireless LAN bands there are short range devic=
es=20
(SRD) bands. These are similar to the ISM bands and often share the same=20
frequency and power regulations, but unlike the ISM bands which are only=20
allowed for industrial, scientific or medical applications the SRD bands ca=
n be=20
used for data communication.
There exists a frequency range from 5725 - 5875 MHz as SRD band (also an IS=
M=20
band) with a maximum power of 25 mW [2]. While this is not specifically=20
regulated for wireless LAN usage, is can be legally transmitted in this ban=
d=20
following the power restriction. There are also no restrictions to indoor o=
r=20
outdoor usage. So this is the only 5GHz band in Germany that can be legally=
=20
used for non-fixed outdoor equipment using wireless LAN.
Power on this band is limited but there may be applications where this is n=
ot=20
a problem, e.g. if you have line of sight communication or don't need to=20
transfer much data.

Because of this I see no reason why this frequency range should be removed=
=20
from the database. It has advantages over the other 5 GHz bands and it can =
be=20
legally used. I would find it annoying not being able to use it while I'm=20
legally allowed to and not having another option available.

Regards,
Maxi

[1] https://www.bundesnetzagentur.de/SharedDocs/Downloads/DE/Sachgebiete/
Telekommunikation/Unternehmen_Institutionen/Frequenzen/Allgemeinzuteilungen/
2010_07_WLAN_5GHz_pdf.pdf
[2] https://www.bundesnetzagentur.de/SharedDocs/Downloads/DE/Sachgebiete/
Telekommunikation/Unternehmen_Institutionen/Frequenzen/Allgemeinzuteilungen/
2014_69_SRD_pdf.pdf

On Freitag, 8. September 2017 00:15:34 CEST Ryan Mounce wrote:
> On 7 September 2017 at 23:33, Mathieu Peyr=E9ga <mathieu.peyrega@gmail.co=
m>=20
wrote:
> > Hello,
> >=20
> > unfortunately, my wifi skills are not (yet ?) allowing me to track furt=
her
> > than what the "iw reg get" command tells me (confirmed by some off the
> > shelf Wifi analyzer sofwares).
> > Do you have pointers/tutorial to help me doing that ?
>=20
> Try this
>=20
> # find interface name
> iw dev
> # perform scan on interface
> iw dev wlan0 scan -u
>=20
> This previously dumped the country IE in a nice readable form, however
> it no longer does on my device running LEDE master so you may not have
> any luck depending on how new your distro is.
>=20
> Typically for this task I would use monitor mode + Wireshark or my
> favoured (sadly proprietary) WiFi surveying app, however I can only
> provide advise for macOS.
>=20
> > Further reading your answer, my guess is that DJI has complied to UNII-3
> > choice. At least on their website Spark spec page, they clearly give the
> > good max power figures and make the difference between FCC and EU areas.
> >=20
> > This leads to my concern about why not adding the matching rules in the=
 DB
> > for EU countries that have transposed it into their laws.
> > Is this regulatory DB supposed to strictly reflect the current state of
> > local regulations or doe it also endorse a higher level of
> > "responsability"
> > in order to prevent issues with non complient devices as I understand y=
our
> > fears ?
>=20
> The regdb is only used in practice for 802.11 rather than as a
> universal dictionary for radio regulations. My personal opinion is
> that it should first reflect local regulations, and then subsequently
> reflect established industry conventions that are more restrictive. In
> this instance, the industry convention appears to be disabling the
> UNII-3 range in Europe and I happen to agree more for practical
> reasons than any sense of 'responsibility'.
>=20
> > Regards
> >=20
> > Le 07/09/2017 =E0 15:44, Ryan Mounce a =E9crit :
> >> You can see the 'FR' Country Code, can you see the full 802.11d
> >> Country Information IE that is broadcast by the DJI drone?
> >>=20
> >> I can see how this situation has come about. In much of the world
> >> including China (DJI) and the USA (DJI's largest international market)
> >> the 'UNII-3' equivalent range is a simple default choice with high
> >> power and outdoor use permitted, with no DFS to worry about.
> >>=20
> >> Europe is not so simple. In roughly descending order of device
> >> compatibility.
> >>=20
> >> 2.4GHz has power restrictions compared to USA/China, and is polluted
> >> in every country.
> >> UNII-1 is indoor only and should require the user to confirm they are
> >> indoors (for a device like a drone that is likely to be used outdoors,
> >> unlike a home WiFi AP)
> >> UNII-2 adds DFS and TPC restrictions to UNII-1, quite restrictive.
> >> UNII-2E is fairly quiet and allows more generous power, however DFS is
> >> still a consideration and a portable device like a drone would have to
> >> scan for at least 60 seconds before broadcasting in this band.
> >> UNII-3 has the strictest power restrictions of all, and thus the most
> >> limited range.
> >>=20
> >> So it seems that DJI have simply ignored this altogether, and are
> >> broadcasting in a poorly supported frequency band in Europe with
> >> either a very weak short range signal or a very strong signal in
> >> violation of regulations. Either way, this is very much their problem
> >> (and unfortunately also their customers').
> >=20
> > --
> > tel : +33 (0)6 87 30 83 59
>=20
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb


--nextPart1747499.VUsL6XXu9I
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEdrCahkHx+1jLZi2IKKKNMGWQZYUFAlm5OL8ACgkQKKKNMGWQ
ZYWl/A//QL656mcK3GnsRp/TdzHZVh7SMxGYQ1LL9/SfpbM6S6dvpcn+6n/j5q4Q
8SovNDbj+svrjtc2WjHmvfgBy43uHhL65uT5fYMHxAZkS7kwkWiFrrXudpsWf3td
s5bqBZTnFD4AhOLO7CwmUJ0pLZAx8Gh+eC4yifwmxnQtpVjSbP8jXoyKqz0lEqOx
uwKRPycfRfrdep4XrTT8JUIA3Fy8rU6+VRf9oTBPHSM72X4skszY9fJlHuSQBlAt
CeqqsEROfLfg22iapk+AVoAGxloR9qR9mLUMhXsFTyOyq31dg+OQlZMdoD7O7h//
ZAxl3bwLXth2M8/0B8quSH10O1OmB5sbUmqXDpguz7fwu6zGsX6dakw230Ut5wiU
gpvWaPP/JH8aMKHF6YCdeGxkmB8sDFwKCP48/VasvFsjTZLGp93PS3tnsDsdH4Df
HHSQJL/vUxc1TYKZbjnrph6u9jL2mNtvudfNMl0sjB4S7lE1EnhsJOmslvCWsAbO
cJFeBjF5n1+c9e/DHAwf867MFN0FpV7ex01qU6WNLSSQ2wh8n92zeB5drXSYTEgI
b2LF5PN1cTKllyKv7D/3xwwG/jHfsJHaUW+nGTDtCnLfe4/vV1y2ZZnplaULNU/W
7fZ3ZY3lz//h7IwyL094AbvROQjKMCBalAYMbufajEKSJB93jyQ=
=KWIS
-----END PGP SIGNATURE-----

--nextPart1747499.VUsL6XXu9I--



--===============4107504945124550683==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

--===============4107504945124550683==--



