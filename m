Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
 :From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=hgSfzQYSUUaC2gvJYog7zkHWsGTXOhCfCdQwK4vvROs=;
 b=XFBJfZKSSYeTpd
 GISqLfhQm7BTRL/8pyrJbDOdwadHCFsAb1oDn3kl6sQE920cEG1vVAbCnyprBh9pIIViWeuo34ZHb
 sEqSLFrZ4r1pYSfpj8zpO1WvNawr/7Hjl4o+wz9TJ+mrMjlOhZ7Gagfxuz+mj6jxmjZjnAuV/a0/d
 2SmKUZWCz3Kgu3Y1YHGNNov5xOHn1n6t9OnyVKm3vt77zvo3PEsWmPTK8Uh5yClnAlc0UEsHZaxDa
 bqx0WhAlU0UsPhcN2ElwYOt9LXHb4h7p3RnQFJvMMlbB1XAtk+TU9Newm7ur9z/oAIrPuDBautofZ
 GjBkKzXc0ncO/xxAu90A==;
Received: from correo.ctag.com ([217.130.243.141] helo=mail.ctag.com)
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dzKZe-0003Cd-3u
 for wireless-regdb@lists.infradead.org; Tue, 03 Oct 2017 10:37:18 +0000
Received: from [178.60.200.35] (helo=INN0263)
 by mail.ctag.com with esmtpa (Exim 4.80)
 (envelope-from <adrian.romasanta@ctag.com>) id 1dzKX9-0003EC-Si
 for wireless-regdb@lists.infradead.org; Tue, 03 Oct 2017 12:34:40 +0200
From: "adrian_romasanta" <adrian.romasanta@ctag.com>
Date: Tue, 3 Oct 2017 12:34:43 +0200
Message-ID: <001801d33c33$3a38dc80$aeaa9580$@ctag.com>
MIME-Version: 1.0
Content-Language: es
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
Content-Type: text/plain; charset="iso-8859-1"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hello all,

This band is also usable in Spain with the restriction of 25 mW for Short
Range Devices (or "Dispositivos de corto alcance" in Spanish):
http://www.boe.es/boe/dias/2008/01/31/pdfs/A05881-05889.pdf (page 7)
As previously commented, these are the only channels on 5 GHz that can be
used outdoors on EU countries, so I think it is important to add them into
the database even if they are not suitable for every use case.
Because of my work on automotive, I know in future more and more cars will
be equipped with WiFi hotspots, and these would be for now the only usable
channels on 5 GHz band.

--
Best regards=20
Adri=E1n

-----Original Message-----
From: wireless-regdb [mailto:wireless-regdb-bounces@lists.infradead.org] On
Behalf Of wireless-regdb-request@lists.infradead.org
Sent: Wednesday, September 13, 2017 9:00 PM
To: wireless-regdb@lists.infradead.org
Subject: wireless-regdb Digest, Vol 75, Issue 4

Send wireless-regdb mailing list submissions to
	wireless-regdb@lists.infradead.org

To subscribe or unsubscribe via the World Wide Web, visit
	http://lists.infradead.org/mailman/listinfo/wireless-regdb
or, via email, send a message with subject or body 'help' to
	wireless-regdb-request@lists.infradead.org

You can reach the person managing the list at
	wireless-regdb-owner@lists.infradead.org

When replying, please edit your Subject line so it is more specific than
"Re: Contents of wireless-regdb digest..."


Today's Topics:

   1. Re:  Question about 5.8 GHz in E.U. (Maximilian Engelhardt)
   2. Re:  Question about 5.8 GHz in E.U. (Mathieu Peyr?ga)


----------------------------------------------------------------------

Message: 1
Date: Wed, 13 Sep 2017 15:55:11 +0200
From: Maximilian Engelhardt <engelhardt@perisens.de>
To: wireless-regdb@lists.infradead.org
Cc: Ryan Mounce <ryan@mounce.com.au>, Mathieu Peyr?ga
	<mathieu.peyrega@gmail.com>
Subject: Re: [wireless-regdb] Question about 5.8 GHz in E.U.
Message-ID: <2091032.fZVXnZKvVJ@perisens15>
Content-Type: text/plain; charset=3D"iso-8859-1"

Hi,

I sent the patch to add the Frequency range from 5725 to 5875 MHz in Germany
so I can give you some background on this.
What I'm writing is only valid for Germany, but since it's all based on
European regulations it's probably very similar in other European countries.

In Germany there are three bands allowed for wireless LAN (WLAN) usage in
the
5 GHz band  [1]:

5150 - 5250 MHz (indoor only)
5250 - 5350 MHz (indoor only)
5470 - 5725 MHz (indoor and outdoor)

However the 5470 - 5725 MHz band is only allowed for fixed outdoor
installations (this is not stated directly in the legal document but I have
been told it's interpreted in this way. It's however explicitly stated that
usage for aircraft communication is not allowed). So for for non-fixed
outdoor setups none of these 5 GHz bands can be used.


Additionally to the official wireless LAN bands there are short range
devices
(SRD) bands. These are similar to the ISM bands and often share the same
frequency and power regulations, but unlike the ISM bands which are only
allowed for industrial, scientific or medical applications the SRD bands can
be used for data communication.
There exists a frequency range from 5725 - 5875 MHz as SRD band (also an ISM
band) with a maximum power of 25 mW [2]. While this is not specifically
regulated for wireless LAN usage, is can be legally transmitted in this band
following the power restriction. There are also no restrictions to indoor or
outdoor usage. So this is the only 5GHz band in Germany that can be legally
used for non-fixed outdoor equipment using wireless LAN.
Power on this band is limited but there may be applications where this is
not a problem, e.g. if you have line of sight communication or don't need to
transfer much data.

Because of this I see no reason why this frequency range should be removed
from the database. It has advantages over the other 5 GHz bands and it can
be legally used. I would find it annoying not being able to use it while I'm
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
> On 7 September 2017 at 23:33, Mathieu Peyr?ga=20
> <mathieu.peyrega@gmail.com>
wrote:
> > Hello,
> >=20
> > unfortunately, my wifi skills are not (yet ?) allowing me to track=20
> > further than what the "iw reg get" command tells me (confirmed by=20
> > some off the shelf Wifi analyzer sofwares).
> > Do you have pointers/tutorial to help me doing that ?
>=20
> Try this
>=20
> # find interface name
> iw dev
> # perform scan on interface
> iw dev wlan0 scan -u
>=20
> This previously dumped the country IE in a nice readable form, however=20
> it no longer does on my device running LEDE master so you may not have=20
> any luck depending on how new your distro is.
>=20
> Typically for this task I would use monitor mode + Wireshark or my=20
> favoured (sadly proprietary) WiFi surveying app, however I can only=20
> provide advise for macOS.
>=20
> > Further reading your answer, my guess is that DJI has complied to=20
> > UNII-3 choice. At least on their website Spark spec page, they=20
> > clearly give the good max power figures and make the difference between
FCC and EU areas.
> >=20
> > This leads to my concern about why not adding the matching rules in=20
> > the DB for EU countries that have transposed it into their laws.
> > Is this regulatory DB supposed to strictly reflect the current state=20
> > of local regulations or doe it also endorse a higher level of=20
> > "responsability"
> > in order to prevent issues with non complient devices as I=20
> > understand your fears ?
>=20
> The regdb is only used in practice for 802.11 rather than as a=20
> universal dictionary for radio regulations. My personal opinion is=20
> that it should first reflect local regulations, and then subsequently=20
> reflect established industry conventions that are more restrictive. In=20
> this instance, the industry convention appears to be disabling the
> UNII-3 range in Europe and I happen to agree more for practical=20
> reasons than any sense of 'responsibility'.
>=20
> > Regards
> >=20
> > Le 07/09/2017 ? 15:44, Ryan Mounce a ?crit :
> >> You can see the 'FR' Country Code, can you see the full 802.11d=20
> >> Country Information IE that is broadcast by the DJI drone?
> >>=20
> >> I can see how this situation has come about. In much of the world=20
> >> including China (DJI) and the USA (DJI's largest international=20
> >> market) the 'UNII-3' equivalent range is a simple default choice=20
> >> with high power and outdoor use permitted, with no DFS to worry about.
> >>=20
> >> Europe is not so simple. In roughly descending order of device=20
> >> compatibility.
> >>=20
> >> 2.4GHz has power restrictions compared to USA/China, and is=20
> >> polluted in every country.
> >> UNII-1 is indoor only and should require the user to confirm they=20
> >> are indoors (for a device like a drone that is likely to be used=20
> >> outdoors, unlike a home WiFi AP)
> >> UNII-2 adds DFS and TPC restrictions to UNII-1, quite restrictive.
> >> UNII-2E is fairly quiet and allows more generous power, however DFS=20
> >> is still a consideration and a portable device like a drone would=20
> >> have to scan for at least 60 seconds before broadcasting in this band.
> >> UNII-3 has the strictest power restrictions of all, and thus the=20
> >> most limited range.
> >>=20
> >> So it seems that DJI have simply ignored this altogether, and are=20
> >> broadcasting in a poorly supported frequency band in Europe with=20
> >> either a very weak short range signal or a very strong signal in=20
> >> violation of regulations. Either way, this is very much their=20
> >> problem (and unfortunately also their customers').
> >=20
> > --
> > tel : +33 (0)6 87 30 83 59
>=20
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb

-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 833 bytes
Desc: This is a digitally signed message part.
URL:
<http://lists.infradead.org/pipermail/wireless-regdb/attachments/20170913/70
7c8c6f/attachment-0001.sig>

------------------------------

Message: 2
Date: Wed, 13 Sep 2017 17:59:47 +0200
From: Mathieu Peyr?ga <mathieu.peyrega@gmail.com>
To: Maximilian Engelhardt <engelhardt@perisens.de>,
	wireless-regdb@lists.infradead.org
Cc: Ryan Mounce <ryan@mounce.com.au>
Subject: Re: [wireless-regdb] Question about 5.8 GHz in E.U.
Message-ID: <8f6b6758-5423-3338-a4af-898607cb35ca@gmail.com>
Content-Type: text/plain; charset=3Dwindows-1252; format=3Dflowed

Hello,

thank you for your insights !

Not all EU mandatorily share the exact same rules, but the doument I
referenced in my first post says that the values should be the minimal ones.
If a country wish to allow more power in a given band, it can do so (most
often will not).

As a user, I can says that the DJI Spark is a good example of device that
works well on the SRD band, despite the limited power. It's quite annoying
that this band is not allowed by current database.

Best regards,

Mathieu Peyr?ga

Le 13/09/2017 ? 15:55, Maximilian Engelhardt a ?crit?:
> Hi,
>
> I sent the patch to add the Frequency range from 5725 to 5875 MHz in=20
> Germany so I can give you some background on this.
> What I'm writing is only valid for Germany, but since it's all based=20
> on European regulations it's probably very similar in other European
countries.
>
> In Germany there are three bands allowed for wireless LAN (WLAN) usage=20
> in the
> 5 GHz band  [1]:
>
> 5150 - 5250 MHz (indoor only)
> 5250 - 5350 MHz (indoor only)
> 5470 - 5725 MHz (indoor and outdoor)
>
> However the 5470 - 5725 MHz band is only allowed for fixed outdoor=20
> installations (this is not stated directly in the legal document but I=20
> have been told it's interpreted in this way. It's however explicitly=20
> stated that usage for aircraft communication is not allowed). So for=20
> for non-fixed outdoor setups none of these 5 GHz bands can be used.
>
>
> Additionally to the official wireless LAN bands there are short range=20
> devices
> (SRD) bands. These are similar to the ISM bands and often share the=20
> same frequency and power regulations, but unlike the ISM bands which=20
> are only allowed for industrial, scientific or medical applications=20
> the SRD bands can be used for data communication.
> There exists a frequency range from 5725 - 5875 MHz as SRD band (also=20
> an ISM
> band) with a maximum power of 25 mW [2]. While this is not=20
> specifically regulated for wireless LAN usage, is can be legally=20
> transmitted in this band following the power restriction. There are=20
> also no restrictions to indoor or outdoor usage. So this is the only=20
> 5GHz band in Germany that can be legally used for non-fixed outdoor
equipment using wireless LAN.
> Power on this band is limited but there may be applications where this=20
> is not a problem, e.g. if you have line of sight communication or=20
> don't need to transfer much data.
>
> Because of this I see no reason why this frequency range should be=20
> removed from the database. It has advantages over the other 5 GHz=20
> bands and it can be legally used. I would find it annoying not being=20
> able to use it while I'm legally allowed to and not having another option
available.
>
> Regards,
> Maxi
>
> [1]=20
> https://www.bundesnetzagentur.de/SharedDocs/Downloads/DE/Sachgebiete/
> Telekommunikation/Unternehmen_Institutionen/Frequenzen/Allgemeinzuteil
> ungen/
> 2010_07_WLAN_5GHz_pdf.pdf
> [2]=20
> https://www.bundesnetzagentur.de/SharedDocs/Downloads/DE/Sachgebiete/
> Telekommunikation/Unternehmen_Institutionen/Frequenzen/Allgemeinzuteil
> ungen/
> 2014_69_SRD_pdf.pdf
>
> On Freitag, 8. September 2017 00:15:34 CEST Ryan Mounce wrote:
>> On 7 September 2017 at 23:33, Mathieu Peyr?ga=20
>> <mathieu.peyrega@gmail.com>
> wrote:
>>> Hello,
>>>
>>> unfortunately, my wifi skills are not (yet ?) allowing me to track=20
>>> further than what the "iw reg get" command tells me (confirmed by=20
>>> some off the shelf Wifi analyzer sofwares).
>>> Do you have pointers/tutorial to help me doing that ?
>> Try this
>>
>> # find interface name
>> iw dev
>> # perform scan on interface
>> iw dev wlan0 scan -u
>>
>> This previously dumped the country IE in a nice readable form,=20
>> however it no longer does on my device running LEDE master so you may=20
>> not have any luck depending on how new your distro is.
>>
>> Typically for this task I would use monitor mode + Wireshark or my=20
>> favoured (sadly proprietary) WiFi surveying app, however I can only=20
>> provide advise for macOS.
>>
>>> Further reading your answer, my guess is that DJI has complied to=20
>>> UNII-3 choice. At least on their website Spark spec page, they=20
>>> clearly give the good max power figures and make the difference between
FCC and EU areas.
>>>
>>> This leads to my concern about why not adding the matching rules in=20
>>> the DB for EU countries that have transposed it into their laws.
>>> Is this regulatory DB supposed to strictly reflect the current state=20
>>> of local regulations or doe it also endorse a higher level of=20
>>> "responsability"
>>> in order to prevent issues with non complient devices as I=20
>>> understand your fears ?
>> The regdb is only used in practice for 802.11 rather than as a=20
>> universal dictionary for radio regulations. My personal opinion is=20
>> that it should first reflect local regulations, and then subsequently=20
>> reflect established industry conventions that are more restrictive.=20
>> In this instance, the industry convention appears to be disabling the
>> UNII-3 range in Europe and I happen to agree more for practical=20
>> reasons than any sense of 'responsibility'.
>>
>>> Regards
>>>
>>> Le 07/09/2017 ? 15:44, Ryan Mounce a ?crit :
>>>> You can see the 'FR' Country Code, can you see the full 802.11d=20
>>>> Country Information IE that is broadcast by the DJI drone?
>>>>
>>>> I can see how this situation has come about. In much of the world=20
>>>> including China (DJI) and the USA (DJI's largest international=20
>>>> market) the 'UNII-3' equivalent range is a simple default choice=20
>>>> with high power and outdoor use permitted, with no DFS to worry about.
>>>>
>>>> Europe is not so simple. In roughly descending order of device=20
>>>> compatibility.
>>>>
>>>> 2.4GHz has power restrictions compared to USA/China, and is=20
>>>> polluted in every country.
>>>> UNII-1 is indoor only and should require the user to confirm they=20
>>>> are indoors (for a device like a drone that is likely to be used=20
>>>> outdoors, unlike a home WiFi AP)
>>>> UNII-2 adds DFS and TPC restrictions to UNII-1, quite restrictive.
>>>> UNII-2E is fairly quiet and allows more generous power, however DFS=20
>>>> is still a consideration and a portable device like a drone would=20
>>>> have to scan for at least 60 seconds before broadcasting in this band.
>>>> UNII-3 has the strictest power restrictions of all, and thus the=20
>>>> most limited range.
>>>>
>>>> So it seems that DJI have simply ignored this altogether, and are=20
>>>> broadcasting in a poorly supported frequency band in Europe with=20
>>>> either a very weak short range signal or a very strong signal in=20
>>>> violation of regulations. Either way, this is very much their=20
>>>> problem (and unfortunately also their customers').
>>> --
>>> tel : +33 (0)6 87 30 83 59
>> _______________________________________________
>> wireless-regdb mailing list
>> wireless-regdb@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/wireless-regdb


--
tel : +33 (0)6 87 30 83 59




------------------------------

Subject: Digest Footer

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb


------------------------------

End of wireless-regdb Digest, Vol 75, Issue 4
*********************************************


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

