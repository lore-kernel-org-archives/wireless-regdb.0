Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
 Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
 From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=FHpEsRA2VXotrQlej0s7X9z/N6Apvt/4TImns6gC/UE=;
 b=g7lAcUo91zR5GK76iI1csv90k
 EQ5Uw0AZVqgZfibyIAzSiWeK3uUeesRH2HsAtaxWHBrcDXCym7xF0I9V1S4q7kymOjCKJ99D/fj+h
 9c/Ebk3/6xZashY0RZTAIomoZ9fkvVl+plBIdpfBtfB62/hikRkh6nrltSx0jx9lUDzEUCxXIqgk8
 izuQumGC6WUf0rXXleRHMgdDHc+BeQQe4TlqpHMJvE+rCVx3Wz+dhRnMrAZ+4cxnI2dAPiDCWhEdJ
 m+Aoyv2FMwV+lmSYjW8AQjpmQ0JxehsOyNAIN93T+7gJnoi55W4syJ/xXGiux43rbwNlBJeYlMYe2
 CLVEY3dtA==;
Received: from mail-wm0-x231.google.com ([2a00:1450:400c:c09::231])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dsA5G-0004MM-TY
 for wireless-regdb@lists.infradead.org; Wed, 13 Sep 2017 16:00:17 +0000
Received: by mail-wm0-x231.google.com with SMTP id g206so10512320wme.0 for
 <wireless-regdb@lists.infradead.org>; Wed, 13 Sep 2017 08:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=7QtR7PpJbdKKgnGYQNmUpdWBRebSjiWrTva4mnjqX9c=;
 b=UxEFTkFM5ARa+BLWq0DKPVDF45QcIEXd/5TtqPfosu3j5DKsGTsWn8n7Yjw3TvbRCH
 2SI6oZxrJqEntvGaxTfCOL8japBGFAmVaPQOJWuGIpPsE7QhKPHjPs8v1ipKLDrYdLC/
 SSqVP3wrA/TgF+SuI8bHtcY++y5uyLiSRyK9RctZ1l6PAdLHwgg4sVzueAvIsIIOTd/K
 mLOpReOvJcmOPOFI0QjXMtRHPzr0fK/BCIGk+UlyVRyUDWymfg7KxzJ4kRk/uLj0gS7+
 nbcKQ8ic2GUwcKZst1viJ5JJUL5EBiLLInJHmEl1+NOJ63fPbEc9iF9sgwNDBwemyDCl wPDQ==
References: <442c446a-5ace-9d3e-faf8-4294146cf2d6@gmail.com>
 <2fe0333a-2539-a895-48d9-24e1ccf5ff98@gmail.com>
 <CAN+fvRa5NyrVMvt_Bw5t4DMLVJGP0oyfXiPJWraJj8P4yAaKTg@mail.gmail.com>
 <2091032.fZVXnZKvVJ@perisens15>
From: =?UTF-8?Q?Mathieu_Peyr=c3=a9ga?= <mathieu.peyrega@gmail.com>
Message-ID: <8f6b6758-5423-3338-a4af-898607cb35ca@gmail.com>
Date: Wed, 13 Sep 2017 17:59:47 +0200
MIME-Version: 1.0
In-Reply-To: <2091032.fZVXnZKvVJ@perisens15>
Content-Language: fr
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
Content-Type: text/plain; charset="windows-1252"; format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
To: Maximilian Engelhardt <engelhardt@perisens.de>, wireless-regdb@lists.infradead.org
Cc: Ryan Mounce <ryan@mounce.com.au>
List-ID: <wireless-regdb@lists.infradead.org>

Hello,

thank you for your insights !

Not all EU mandatorily share the exact same rules, but the doument I=20
referenced in my first post says that the values should be the minimal ones.
If a country wish to allow more power in a given band, it can do so=20
(most often will not).

As a user, I can says that the DJI Spark is a good example of device=20
that works well on the SRD band, despite the limited power. It's quite=20
annoying that this band is not allowed by current database.

Best regards,

Mathieu Peyr=E9ga

Le 13/09/2017 =E0 15:55, Maximilian Engelhardt a =E9crit=A0:
> Hi,
>
> I sent the patch to add the Frequency range from 5725 to 5875 MHz in Germ=
any
> so I can give you some background on this.
> What I'm writing is only valid for Germany, but since it's all based on
> European regulations it's probably very similar in other European countri=
es.
>
> In Germany there are three bands allowed for wireless LAN (WLAN) usage in=
 the
> 5 GHz band  [1]:
>
> 5150 - 5250 MHz (indoor only)
> 5250 - 5350 MHz (indoor only)
> 5470 - 5725 MHz (indoor and outdoor)
>
> However the 5470 - 5725 MHz band is only allowed for fixed outdoor
> installations (this is not stated directly in the legal document but I ha=
ve
> been told it's interpreted in this way. It's however explicitly stated th=
at
> usage for aircraft communication is not allowed). So for for non-fixed ou=
tdoor
> setups none of these 5 GHz bands can be used.
>
>
> Additionally to the official wireless LAN bands there are short range dev=
ices
> (SRD) bands. These are similar to the ISM bands and often share the same
> frequency and power regulations, but unlike the ISM bands which are only
> allowed for industrial, scientific or medical applications the SRD bands =
can be
> used for data communication.
> There exists a frequency range from 5725 - 5875 MHz as SRD band (also an =
ISM
> band) with a maximum power of 25 mW [2]. While this is not specifically
> regulated for wireless LAN usage, is can be legally transmitted in this b=
and
> following the power restriction. There are also no restrictions to indoor=
 or
> outdoor usage. So this is the only 5GHz band in Germany that can be legal=
ly
> used for non-fixed outdoor equipment using wireless LAN.
> Power on this band is limited but there may be applications where this is=
 not
> a problem, e.g. if you have line of sight communication or don't need to
> transfer much data.
>
> Because of this I see no reason why this frequency range should be removed
> from the database. It has advantages over the other 5 GHz bands and it ca=
n be
> legally used. I would find it annoying not being able to use it while I'm
> legally allowed to and not having another option available.
>
> Regards,
> Maxi
>
> [1] https://www.bundesnetzagentur.de/SharedDocs/Downloads/DE/Sachgebiete/
> Telekommunikation/Unternehmen_Institutionen/Frequenzen/Allgemeinzuteilung=
en/
> 2010_07_WLAN_5GHz_pdf.pdf
> [2] https://www.bundesnetzagentur.de/SharedDocs/Downloads/DE/Sachgebiete/
> Telekommunikation/Unternehmen_Institutionen/Frequenzen/Allgemeinzuteilung=
en/
> 2014_69_SRD_pdf.pdf
>
> On Freitag, 8. September 2017 00:15:34 CEST Ryan Mounce wrote:
>> On 7 September 2017 at 23:33, Mathieu Peyr=E9ga <mathieu.peyrega@gmail.c=
om>
> wrote:
>>> Hello,
>>>
>>> unfortunately, my wifi skills are not (yet ?) allowing me to track furt=
her
>>> than what the "iw reg get" command tells me (confirmed by some off the
>>> shelf Wifi analyzer sofwares).
>>> Do you have pointers/tutorial to help me doing that ?
>> Try this
>>
>> # find interface name
>> iw dev
>> # perform scan on interface
>> iw dev wlan0 scan -u
>>
>> This previously dumped the country IE in a nice readable form, however
>> it no longer does on my device running LEDE master so you may not have
>> any luck depending on how new your distro is.
>>
>> Typically for this task I would use monitor mode + Wireshark or my
>> favoured (sadly proprietary) WiFi surveying app, however I can only
>> provide advise for macOS.
>>
>>> Further reading your answer, my guess is that DJI has complied to UNII-3
>>> choice. At least on their website Spark spec page, they clearly give the
>>> good max power figures and make the difference between FCC and EU areas.
>>>
>>> This leads to my concern about why not adding the matching rules in the=
 DB
>>> for EU countries that have transposed it into their laws.
>>> Is this regulatory DB supposed to strictly reflect the current state of
>>> local regulations or doe it also endorse a higher level of
>>> "responsability"
>>> in order to prevent issues with non complient devices as I understand y=
our
>>> fears ?
>> The regdb is only used in practice for 802.11 rather than as a
>> universal dictionary for radio regulations. My personal opinion is
>> that it should first reflect local regulations, and then subsequently
>> reflect established industry conventions that are more restrictive. In
>> this instance, the industry convention appears to be disabling the
>> UNII-3 range in Europe and I happen to agree more for practical
>> reasons than any sense of 'responsibility'.
>>
>>> Regards
>>>
>>> Le 07/09/2017 =E0 15:44, Ryan Mounce a =E9crit :
>>>> You can see the 'FR' Country Code, can you see the full 802.11d
>>>> Country Information IE that is broadcast by the DJI drone?
>>>>
>>>> I can see how this situation has come about. In much of the world
>>>> including China (DJI) and the USA (DJI's largest international market)
>>>> the 'UNII-3' equivalent range is a simple default choice with high
>>>> power and outdoor use permitted, with no DFS to worry about.
>>>>
>>>> Europe is not so simple. In roughly descending order of device
>>>> compatibility.
>>>>
>>>> 2.4GHz has power restrictions compared to USA/China, and is polluted
>>>> in every country.
>>>> UNII-1 is indoor only and should require the user to confirm they are
>>>> indoors (for a device like a drone that is likely to be used outdoors,
>>>> unlike a home WiFi AP)
>>>> UNII-2 adds DFS and TPC restrictions to UNII-1, quite restrictive.
>>>> UNII-2E is fairly quiet and allows more generous power, however DFS is
>>>> still a consideration and a portable device like a drone would have to
>>>> scan for at least 60 seconds before broadcasting in this band.
>>>> UNII-3 has the strictest power restrictions of all, and thus the most
>>>> limited range.
>>>>
>>>> So it seems that DJI have simply ignored this altogether, and are
>>>> broadcasting in a poorly supported frequency band in Europe with
>>>> either a very weak short range signal or a very strong signal in
>>>> violation of regulations. Either way, this is very much their problem
>>>> (and unfortunately also their customers').
>>> --
>>> tel : +33 (0)6 87 30 83 59
>> _______________________________________________
>> wireless-regdb mailing list
>> wireless-regdb@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/wireless-regdb


--=20
tel : +33 (0)6 87 30 83 59


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

