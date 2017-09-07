Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=QKfQqKMg9gmjNl0wkDxKKCZpw7CUx6DOA/LnLuHFMl0=;
 b=tUuxW5VKueONnX
 NfQ0lQjSfsFopswU7wNbLhyqyYArW17KnFHSS9TA9/tMG9dyyhOBOGLcwSp+YRbQX1bggoYY0swni
 fIz8Qzqt+gWxMGX8xNCgT6B57DwagQACvuMDVtrYKWUX5q19dQNsstNaChhJuV5d38Wshy/ECeRqE
 dI2YeuJ5W0Xi06FrwCc6oODk64/2ukbJ/JohYsFFfS6Vu88SXG51p7HRxRVyuRcLl8eyhPNbHM/vI
 j7BJMXplmvUxuSZ30WbfdlqNAZh/az24UWzubUzPfIaEZnhFoNuI4QL7IORCXziDfvxAku1Thr6KM
 arfljTLMu0NsyaB3wDpA==;
Received: from mail-pg0-x230.google.com ([2607:f8b0:400e:c05::230])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dpx7h-0007lL-7G
 for wireless-regdb@lists.infradead.org; Thu, 07 Sep 2017 13:45:40 +0000
Received: by mail-pg0-x230.google.com with SMTP id m9so20952164pgd.3 for
 <wireless-regdb@lists.infradead.org>; Thu, 07 Sep 2017 06:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mounce.com.au; s=google;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=oHoRLbkaevbTZSN1cGQlPBdD2FDM/f1qE0KgLPnmWjg=;
 b=UihXgkyzZ44UEhaJpv/FrGiHBjbzTPzizS2OdLjH05y0rzy4UnFhKcqszQGmdhTvx1
 /segxt8lZyjsoGoBAfZ7ea3hcFuW4laCEN/RYmXf7eno+Ep3rxVk6GC3OkeVuXgCcvET
 d2lxH8bCqN7mbq3F/+JxP6rFMDNOw0F9IxxtE1FWyYys17CXW1arpgiU6a8lV49W8YGs
 hoQpO4WMlmMdK87FmWBhXIwCoplGDq7Kwgsi0Wtnes4+L6FEdhRDBwh0tbCzsIXw0m3h
 DFSZOsf/XN2NOSf78J2HM+GGum7k585EuEJ7QrXgobFBIsfqIRPHjA+27QLxGR/SKCWF
 VzjQ==
MIME-Version: 1.0
In-Reply-To: <893ab8a7-322d-a01c-a9dc-32b55fde35f2@gmail.com>
References: <442c446a-5ace-9d3e-faf8-4294146cf2d6@gmail.com>
 <CAN+fvRZxr4=1fVqOpXhv-4p-tVa7R3TcFCyYg8dd5urLOQoh+g@mail.gmail.com>
 <52d133f8-7c2e-c9ae-f14d-8b6261408817@gmail.com>
 <CAN+fvRZbcDm+3+Kf7BHFWO-w5b_mwGGcPUHYykZSN+V=bzZ6Jg@mail.gmail.com>
 <893ab8a7-322d-a01c-a9dc-32b55fde35f2@gmail.com>
From: Ryan Mounce <ryan@mounce.com.au>
Date: Thu, 7 Sep 2017 23:14:59 +0930
Message-ID: <CAN+fvRYeCHRPjGYmWh6Lb9Lvq2s7qoMJttwiKO9uj2wP37v6ZA@mail.gmail.com>
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
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: =?UTF-8?Q?Mathieu_Peyr=C3=A9ga?= <mathieu.peyrega@gmail.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On 7 September 2017 at 22:36, Mathieu Peyréga <mathieu.peyrega@gmail.com> wrote:
> I'll just give the context why I got interested into those Wifi reguations.
>
> I recently bought a DJI Spark UAV, which relies on those exact 5.8 GHz
> frequencies for controlling, under the WiFi standard (so channels 149 to
> 165). This is the vendor intended behaviour in any part of the World.
> The control device can be your regular Android smartphone (that is the
> client) flying device being the Access point.
>
> It happens that many E.U. customers are complaining that this is not working
> properly (I'm amongst them).
> When I check which Country Code is broadcasted by the Flying part (access
> point), I can see "FR" (this is automatically set from GPS onboard the
> device). My guess is that DJI has some kind of custom "FR" database on the
> Spark device with those fequencies enabled, but on the client side, most
> Android phones in E.U. will rely on this code and 802.11d mecanisms and then
> are not able to use those channels.

You can see the 'FR' Country Code, can you see the full 802.11d
Country Information IE that is broadcast by the DJI drone?

I can see how this situation has come about. In much of the world
including China (DJI) and the USA (DJI's largest international market)
the 'UNII-3' equivalent range is a simple default choice with high
power and outdoor use permitted, with no DFS to worry about.

Europe is not so simple. In roughly descending order of device compatibility.

2.4GHz has power restrictions compared to USA/China, and is polluted
in every country.
UNII-1 is indoor only and should require the user to confirm they are
indoors (for a device like a drone that is likely to be used outdoors,
unlike a home WiFi AP)
UNII-2 adds DFS and TPC restrictions to UNII-1, quite restrictive.
UNII-2E is fairly quiet and allows more generous power, however DFS is
still a consideration and a portable device like a drone would have to
scan for at least 60 seconds before broadcasting in this band.
UNII-3 has the strictest power restrictions of all, and thus the most
limited range.

So it seems that DJI have simply ignored this altogether, and are
broadcasting in a poorly supported frequency band in Europe with
either a very weak short range signal or a very strong signal in
violation of regulations. Either way, this is very much their problem
(and unfortunately also their customers').

>
> I understand that this example is probably slightly outside the scope of
> this mailing list.
>
>
>
> Le 07/09/2017 à 14:52, Ryan Mounce a écrit :
>>
>> On 7 September 2017 at 22:13, Mathieu Peyréga <mathieu.peyrega@gmail.com>
>> wrote:
>>>
>>> Hello
>>>
>>> Sorry, I'm kind of discovering all those wifi stuff and I'm not sure to
>>> follow your argument.
>>>
>>> What I can see in current DB version is that some E.U. countries have it
>>> enabled :
>>>
>>> e.g. Germany :
>>>
>>> |country DE: DFS-ETSI (2400 - 2483.5 @ 40), (100 mW) (5150 - 5250 @ 80),
>>> (100 mW), NO-OUTDOOR, AUTO-BW (5250 - 5350 @ 80), (100 mW), NO-OUTDOOR,
>>> DFS,
>>> AUTO-BW (5470 - 5725 @ 160), (500 mW), DFS # short range devices (ETSI EN
>>> 300 440-1) (5725 - 5875 @ 80), (25 mW) # 60 GHz band channels 1-4 (ETSI
>>> EN
>>> 302 567) (57000 - 66000 @ 2160), (40) |
>>
>> Correct, I missed that as they are using different (yet equivalent)
>> syntax.
>>
>> So this range is defined for BG, DE, NL. This is still very much the
>> exception rather than the norm.
>>
>> I maintain my opinion that these ranges should be removed on the basis
>> that it is very low power and poses a risk in the presence of
>> non-compliant devices.
>>
>>> Regards,
>>>
>>> Mathieu Peyrega
>>>
>>>
>>>
>>> Le 07/09/2017 à 14:38, Ryan Mounce a écrit :
>>>>
>>>> Hi Mathieu,
>>>>
>>>> The permitted power within 5725-5875 MHz is only 25mW / 14dBm EIRP, as
>>>> far as I am aware this was also the case prior to 2014. This rule does
>>>> exist in the regdb for Bulgaria / BG, which is technically correct
>>>> however in my opinion should be removed for consistency.
>>>>
>>>> I think the problem with 14dBm being such a low power level is that
>>>> its useful range is very limited. There is also the fear that client
>>>> devices designed for use outside the EU and not complying with 802.11d
>>>> will transmit far beyond the permissible power level in this range
>>>> upon associating with even a compliant AP.
>>>>
>>>> Whether for these reasons or others, the convention appears to be to
>>>> simply disable this frequency range altogether for EU countries.
>>>>
>>>> Regards,
>>>> Ryan Mounce
>>>>
>>>> On 7 September 2017 at 21:49, Mathieu Peyréga
>>>> <mathieu.peyrega@gmail.com>
>>>> wrote:
>>>>>
>>>>> Hello,
>>>>>
>>>>> I'm wondering if the regulatory DB is up to date for France, especially
>>>>> regarding channels in band 5725-5875 MHz
>>>>>
>>>>> in
>>>>>
>>>>>
>>>>> https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git/tree/db.txt?id=HEAD
>>>>>
>>>>> I can found (07/09/2017) :
>>>>>
>>>>> country FR: DFS-ETSI
>>>>>       (2402 - 2482 @ 40), (20)
>>>>>       (5170 - 5250 @ 80), (20), AUTO-BW
>>>>>       (5250 - 5330 @ 80), (20), DFS, AUTO-BW
>>>>>       (5490 - 5710 @ 160), (27), DFS
>>>>>       # 60 GHz band channels 1-4, ref: Etsi En 302 567
>>>>>       (57000 - 66000 @ 2160), (40)
>>>>>
>>>>> which as far as I understands it prevents those frequencies being used.
>>>>>
>>>>> The European Union have taken the following decision :
>>>>>
>>>>>
>>>>>
>>>>> http://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32013D0752&from=EN
>>>>> (or in French :
>>>>>
>>>>>
>>>>> http://eur-lex.europa.eu/legal-content/FR/TXT/PDF/?uri=CELEX:32013D0752&from=FR)
>>>>>
>>>>> where (p14/20, line 61 of the frequencies table) it shoul be allowed in
>>>>> E.U.
>>>>> and the last column states that member countries should reflect thie
>>>>> E.U.
>>>>> decision at national levels regulations before 2014 July 1st.
>>>>> I don't know for other countries, but it seems that France as complied
>>>>> with
>>>>> this, regarding the document from our national agency (ARCEP) :
>>>>>
>>>>> https://www.arcep.fr/uploads/tx_gsavis/14-1263.pdf
>>>>>
>>>>> on page 23/35, the table gives the exact same condition as the E.U.
>>>>> rules. I
>>>>> believe those frequencies should now be allowed in FR regdomain.
>>>>>
>>>>> Also, I own a Synology RT2600AC routeur, and the regional settigns
>>>>> pages
>>>>> allows to set "European Union" which result in the access point
>>>>> broadcastin
>>>>> a "EU" regdom that I can not find in the wireless-regdb
>>>>>
>>>>> Shouldn't it be added in the database ?
>>>>>
>>>>> regards,
>>>>>
>>>>> Mathieu Peyréga
>>>>> --
>>>>> tel : +33 (0)6 87 30 83 59
>>>>>
>>>>> _______________________________________________
>>>>> wireless-regdb mailing list
>>>>> wireless-regdb@lists.infradead.org
>>>>> http://lists.infradead.org/mailman/listinfo/wireless-regdb
>>>
>>>
>>>
>>> --
>>> tel : +33 (0)6 87 30 83 59
>>>
>
> --
> tel : +33 (0)6 87 30 83 59
>

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
