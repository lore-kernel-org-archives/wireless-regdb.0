Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
 Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
 From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=hj6tC8DJdF/Hh2RSNzWV4jvcX5jSaxM1eh4jT2HkrnY=;
 b=ghudx++5HiplAXLXK94KjQVZk
 bdwmloi1ZrS/uVAkM30jvxTUBn8s1/YLDq4v+aq+SYHfav5kfG237QwC0Vw0/DA+I2GuX255JVp71
 S9eeDl6MnKvgGG/5S9UY3UC15siDg+bS4in9b597JROMU0V04epSikwzjaqeSAyu4pIOMeHKOXNOR
 CIZ9E2R4behc8cdzlMLPZxtNl/fSo0SN+Efaj/CvngfmhjxaMqWNeQMm0gWVmbjPfhUNaLhpjDB3Y
 N4VSrmQN1rUWL1eaDW0zoD8xcntmJ1KDy7nYXmWmOH3wfel52xWicKVWPHxckZAVUtwZuPr6LS+cK
 G1SMeY49Q==;
Received: from mail-wr0-x230.google.com ([2a00:1450:400c:c0c::230])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dpwWZ-0000Wd-9o
 for wireless-regdb@lists.infradead.org; Thu, 07 Sep 2017 13:07:22 +0000
Received: by mail-wr0-x230.google.com with SMTP id o42so8822126wrb.3 for
 <wireless-regdb@lists.infradead.org>; Thu, 07 Sep 2017 06:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=f5qxJY5CzurAlIvcBKleJRrtH/CigH/CPqszCJIBfB0=;
 b=HxTQTHqwso2MxDGumA/Hsmzl1wG7M1kyFbvQqVQFUIxLyetyMDSWsKTy1ZRZLOzSNt
 PNgb9xRqVScxoOEt8iP6bVWrwYiYRVA+z6yFvoEG0LFQkL0tuM36G6l/TsiJ9HblgP6H
 /Zla1LDkJ4QvC1oQji1wB5Ap2kg57z+QEcGQ0M7Id5HgWXRg7zq9NLsHpDQDQLMf2+Xt
 s04cSisI1hQ+KNml6T+wijhzhiQmpho9NZ3jxIA3lLrGNagaxWOBHgUB7ujXBvcn8G/P
 wUldf1iWZvZOXQgyGGug6YnN41iNvr08ROQi91KbQZ2M/JOJbCpCEHg/V0UdrpY8rJlf zJcg==
References: <442c446a-5ace-9d3e-faf8-4294146cf2d6@gmail.com>
 <CAN+fvRZxr4=1fVqOpXhv-4p-tVa7R3TcFCyYg8dd5urLOQoh+g@mail.gmail.com>
 <52d133f8-7c2e-c9ae-f14d-8b6261408817@gmail.com>
 <CAN+fvRZbcDm+3+Kf7BHFWO-w5b_mwGGcPUHYykZSN+V=bzZ6Jg@mail.gmail.com>
From: =?UTF-8?Q?Mathieu_Peyr=c3=a9ga?= <mathieu.peyrega@gmail.com>
Message-ID: <893ab8a7-322d-a01c-a9dc-32b55fde35f2@gmail.com>
Date: Thu, 7 Sep 2017 15:06:46 +0200
MIME-Version: 1.0
In-Reply-To: <CAN+fvRZbcDm+3+Kf7BHFWO-w5b_mwGGcPUHYykZSN+V=bzZ6Jg@mail.gmail.com>
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
Content-Type: text/plain; charset="utf-8"; format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Ryan Mounce <ryan@mounce.com.au>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

I'll just give the context why I got interested into those Wifi reguations.

I recently bought a DJI Spark UAV, which relies on those exact 5.8 GHz 
frequencies for controlling, under the WiFi standard (so channels 149 to 
165). This is the vendor intended behaviour in any part of the World.
The control device can be your regular Android smartphone (that is the 
client) flying device being the Access point.

It happens that many E.U. customers are complaining that this is not 
working properly (I'm amongst them).
When I check which Country Code is broadcasted by the Flying part 
(access point), I can see "FR" (this is automatically set from GPS 
onboard the device). My guess is that DJI has some kind of custom "FR" 
database on the Spark device with those fequencies enabled, but on the 
client side, most Android phones in E.U. will rely on this code and 
802.11d mecanisms and then are not able to use those channels.

I understand that this example is probably slightly outside the scope of 
this mailing list.


Le 07/09/2017 à 14:52, Ryan Mounce a écrit :
> On 7 September 2017 at 22:13, Mathieu Peyréga <mathieu.peyrega@gmail.com> wrote:
>> Hello
>>
>> Sorry, I'm kind of discovering all those wifi stuff and I'm not sure to
>> follow your argument.
>>
>> What I can see in current DB version is that some E.U. countries have it
>> enabled :
>>
>> e.g. Germany :
>>
>> |country DE: DFS-ETSI (2400 - 2483.5 @ 40), (100 mW) (5150 - 5250 @ 80),
>> (100 mW), NO-OUTDOOR, AUTO-BW (5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS,
>> AUTO-BW (5470 - 5725 @ 160), (500 mW), DFS # short range devices (ETSI EN
>> 300 440-1) (5725 - 5875 @ 80), (25 mW) # 60 GHz band channels 1-4 (ETSI EN
>> 302 567) (57000 - 66000 @ 2160), (40) |
> Correct, I missed that as they are using different (yet equivalent) syntax.
>
> So this range is defined for BG, DE, NL. This is still very much the
> exception rather than the norm.
>
> I maintain my opinion that these ranges should be removed on the basis
> that it is very low power and poses a risk in the presence of
> non-compliant devices.
>
>> Regards,
>>
>> Mathieu Peyrega
>>
>>
>>
>> Le 07/09/2017 à 14:38, Ryan Mounce a écrit :
>>> Hi Mathieu,
>>>
>>> The permitted power within 5725-5875 MHz is only 25mW / 14dBm EIRP, as
>>> far as I am aware this was also the case prior to 2014. This rule does
>>> exist in the regdb for Bulgaria / BG, which is technically correct
>>> however in my opinion should be removed for consistency.
>>>
>>> I think the problem with 14dBm being such a low power level is that
>>> its useful range is very limited. There is also the fear that client
>>> devices designed for use outside the EU and not complying with 802.11d
>>> will transmit far beyond the permissible power level in this range
>>> upon associating with even a compliant AP.
>>>
>>> Whether for these reasons or others, the convention appears to be to
>>> simply disable this frequency range altogether for EU countries.
>>>
>>> Regards,
>>> Ryan Mounce
>>>
>>> On 7 September 2017 at 21:49, Mathieu Peyréga <mathieu.peyrega@gmail.com>
>>> wrote:
>>>> Hello,
>>>>
>>>> I'm wondering if the regulatory DB is up to date for France, especially
>>>> regarding channels in band 5725-5875 MHz
>>>>
>>>> in
>>>>
>>>> https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git/tree/db.txt?id=HEAD
>>>>
>>>> I can found (07/09/2017) :
>>>>
>>>> country FR: DFS-ETSI
>>>>       (2402 - 2482 @ 40), (20)
>>>>       (5170 - 5250 @ 80), (20), AUTO-BW
>>>>       (5250 - 5330 @ 80), (20), DFS, AUTO-BW
>>>>       (5490 - 5710 @ 160), (27), DFS
>>>>       # 60 GHz band channels 1-4, ref: Etsi En 302 567
>>>>       (57000 - 66000 @ 2160), (40)
>>>>
>>>> which as far as I understands it prevents those frequencies being used.
>>>>
>>>> The European Union have taken the following decision :
>>>>
>>>>
>>>> http://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32013D0752&from=EN
>>>> (or in French :
>>>>
>>>> http://eur-lex.europa.eu/legal-content/FR/TXT/PDF/?uri=CELEX:32013D0752&from=FR)
>>>>
>>>> where (p14/20, line 61 of the frequencies table) it shoul be allowed in
>>>> E.U.
>>>> and the last column states that member countries should reflect thie E.U.
>>>> decision at national levels regulations before 2014 July 1st.
>>>> I don't know for other countries, but it seems that France as complied
>>>> with
>>>> this, regarding the document from our national agency (ARCEP) :
>>>>
>>>> https://www.arcep.fr/uploads/tx_gsavis/14-1263.pdf
>>>>
>>>> on page 23/35, the table gives the exact same condition as the E.U.
>>>> rules. I
>>>> believe those frequencies should now be allowed in FR regdomain.
>>>>
>>>> Also, I own a Synology RT2600AC routeur, and the regional settigns pages
>>>> allows to set "European Union" which result in the access point
>>>> broadcastin
>>>> a "EU" regdom that I can not find in the wireless-regdb
>>>>
>>>> Shouldn't it be added in the database ?
>>>>
>>>> regards,
>>>>
>>>> Mathieu Peyréga
>>>> --
>>>> tel : +33 (0)6 87 30 83 59
>>>>
>>>> _______________________________________________
>>>> wireless-regdb mailing list
>>>> wireless-regdb@lists.infradead.org
>>>> http://lists.infradead.org/mailman/listinfo/wireless-regdb
>>
>>
>> --
>> tel : +33 (0)6 87 30 83 59
>>

-- 
tel : +33 (0)6 87 30 83 59


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
