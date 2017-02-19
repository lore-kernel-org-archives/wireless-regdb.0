Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
 Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
 From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=Tm5cQxTiIzVMSvLTkMoznRulX9oihXxAo1tzJMG5WpQ=;
 b=Jwpkx6Nr9tf7tfGrR4tKvXjot
 RX/1afrIi7A8dXajGHbs1Q99EE2Po1vHEuvCccO1QhIIZuQw/xbPCgMAg8S4zT005Dbd8zNa0EI0h
 SnhRiLSdyJu4HSlAmEdnMTfazy7Uh1ecH9s0FJ7WiVWhuXoabpUJhEuWsptTtSNv0EbZg8GUSoOGd
 fRYnumJnsxewtFn6GU8nReh8opUGVMPmo1rr6lD1QXAM4HHnmDXXczMb5Oeye2/bQryrXO/Ykv99h
 tKWeimfttGcb7oa/oi0fZyMELqOhcvo1DiZpB+SFPLSajje8ZlYlYs/Ux13BTTuRgNHiBNFyBeYM4
 /iqhl9VoQ==;
Received: from nm.newmedia-net.de ([217.113.179.122]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cfQQ6-0008AX-59
 for wireless-regdb@lists.infradead.org; Sun, 19 Feb 2017 12:16:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=dd-wrt.com; s=mikd; 
 h=Subject:Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:Cc:References:To;
 bh=tFwy5UySxUyDa2595OjpxbrIAygZKW5d/7FWwlC/Fxg=; 
 b=acggmDmtk/SJeYWNdjk6vF9IJH/zBx1Z28VQeNaULYmjLRA3cPAQME+oijPRd29PCkVcjhn7gM94bElmtESma4hrRs1hzdDcD28QU252p6XwpLpOETIX73GR7zVHFvSHvfJcMJNArYHjwA0U14BxfIxVULITaez1BCVTFLFFUqw=;
References: <20170218063515.16071-1-ryan@mounce.com.au>
 <9d768854-e41d-fdb1-967d-7fdd7d692226@dd-wrt.com>
 <CAN+fvRYkbeV8yXuA+J1HVtZemB+j-07wvHkbouEpgzL-7SE6-Q@mail.gmail.com>
From: Sebastian Gottschall <s.gottschall@dd-wrt.com>
Message-ID: <b21a95a8-2a84-7bba-24b2-6d2ab3d255c1@dd-wrt.com>
Date: Sun, 19 Feb 2017 13:16:26 +0100
MIME-Version: 1.0
In-Reply-To: <CAN+fvRYkbeV8yXuA+J1HVtZemB+j-07wvHkbouEpgzL-7SE6-Q@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update rules for
 Australia (AU) and add 60GHz rules
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
To: Ryan Mounce <ryan@mounce.com.au>, seth.forshee@canonical.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Am 19.02.2017 um 01:01 schrieb Ryan Mounce:
> Hi Sebastian,
>
> There is no explicit channel width restriction in the document,
> however the only band in which the current regdb rules permit 160MHz
> operation (5490-5710MHz) would result in an overlap with the
> restricted weather radar band 5600-5650MHz.
thats the case for all countries, so this couldnt be a argument. dfs 
should handle this
>
> While remaining in compliance with both 802.11 and Australian law,
> contiguous 160MHz operation in 5GHz is only permitted between
> 5170-5330MHz which spans two bands with slightly different
> requirements, hence AUTO-BW.
>
> Regards,
> Ryan Mounce
>
> ryan@mounce.com.au
>
> On 19 February 2017 at 07:15, Sebastian Gottschall
> <s.gottschall@dd-wrt.com> wrote:
>> maybe i'm blind. but you reduced the channel width from 160 to 80 mhz. but i
>> can't find any restriction in the document in a quick review
>>
>> Sebastian
>>
>>
>> Am 18.02.2017 um 07:35 schrieb Ryan Mounce:
>>> Sourced from the latest legislation at
>>> https://www.legislation.gov.au/Details/F2016C0043
>>>
>>> The current rules exceed legal limits between 5250-5330MHz, and permit
>>> illegal operation in 5600-5650MHz (reserved for weather radar).
>>>
>>> Signed-off-by: Ryan Mounce <ryan@mounce.com.au>
>>> ---
>>>    db.txt | 15 ++++++++++-----
>>>    1 file changed, 10 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/db.txt b/db.txt
>>> index 05108e0..b951e0c 100644
>>> --- a/db.txt
>>> +++ b/db.txt
>>> @@ -85,12 +85,17 @@ country AT: DFS-ETSI
>>>          # 60 GHz band channels 1-4, ref: Etsi En 302 567
>>>          (57000 - 66000 @ 2160), (40)
>>>    +# Source:
>>> +# https://www.legislation.gov.au/Details/F2016C00432
>>> +# Both DFS-ETSI and DFS-FCC are acceptable per AS/NZS 4268 Appendix B
>>>    country AU: DFS-ETSI
>>> -       (2402 - 2482 @ 40), (20)
>>> -       (5170 - 5250 @ 80), (17), AUTO-BW
>>> -       (5250 - 5330 @ 80), (24), DFS, AUTO-BW
>>> -       (5490 - 5710 @ 160), (24), DFS
>>> -       (5735 - 5835 @ 80), (30)
>>> +       (2402 - 2482 @ 40), (36)
>>> +       (5170 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
>>> +       (5250 - 5330 @ 80), (23), NO-OUTDOOR, AUTO-BW, DFS
>>> +       (5490 - 5590 @ 80), (30), DFS
>>> +       (5650 - 5730 @ 80), (30), DFS
>>> +       (5735 - 5835 @ 80), (36)
>>> +       (57000 - 66000 @ 2160), (43), NO-OUTDOOR
>>>      country AW: DFS-ETSI
>>>          (2402 - 2482 @ 40), (20)
>>
>>
>> --
>> Mit freundlichen Grüssen / Regards
>>
>> Sebastian Gottschall / CTO
>>
>> NewMedia-NET GmbH - DD-WRT
>> Firmensitz:  Berliner Ring 101, 64625 Bensheim
>> Registergericht: Amtsgericht Darmstadt, HRB 25473
>> Geschäftsführer: Peter Steinhäuser, Christian Scheele
>> http://www.dd-wrt.com
>> email: s.gottschall@dd-wrt.com
>> Tel.: +496251-582650 / Fax: +496251-5826565
>>


-- 
Mit freundlichen Grüssen / Regards

Sebastian Gottschall / CTO

NewMedia-NET GmbH - DD-WRT
Firmensitz:  Berliner Ring 101, 64625 Bensheim
Registergericht: Amtsgericht Darmstadt, HRB 25473
Geschäftsführer: Peter Steinhäuser, Christian Scheele
http://www.dd-wrt.com
email: s.gottschall@dd-wrt.com
Tel.: +496251-582650 / Fax: +496251-5826565


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
