Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=Tx1G2rme8f8g7pVC1gc96OacNoYYNTTlMToaXEE7fdU=;
 b=SMr6gEkXN2ne3b
 XBv67wbZuLeMr8J/VDb8W18SGA5auIV9Lf7zD7gR+hb9+apwfWoAW9VT/1kOfZLsYr+5wf4VlBsgs
 mGpYtmLsiBW0M6C1WJTdrEUEe1W7olbHqovDt8bKFfikFyAhe6C9ToFFyOzVqqB5I3yBmZYeju0C/
 J+LI+R3ztJGcPnRL+D6+o5MnbYsm1mrsnIu1JznDvTbE0fDBFYm1+fpt2Rvx9Sv+Xd4AXhmfOUcnK
 5C4oLtUQipTju6z1BMK92fiLWRQxKscvkrO/egFw4+8lX7XDa/yV+zN+qhJuZI8ovL1Lh5cYA9BLl
 zdISCWLmjvl60CAooZNA==;
Received: from mail-qk0-x241.google.com ([2607:f8b0:400d:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cfQja-0006sM-Aa
 for wireless-regdb@lists.infradead.org; Sun, 19 Feb 2017 12:37:00 +0000
Received: by mail-qk0-x241.google.com with SMTP id s186so5096556qkb.1 for
 <wireless-regdb@lists.infradead.org>; Sun, 19 Feb 2017 04:36:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mounce.com.au; s=google;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=2GorekLkmDVLecPpiiZb6Pkw6tG+enAm85duoueSs0Q=;
 b=VZzERYSEJsmHIayJgIiRIY1vgJAR9O40VKrtyyAWqPhK7bOVsv5IoTAg9IGSOkOBrB
 7B6mhvgdMSoqS0kxoJUyrJlluVNWKjbg2I7oBTpSNI9xRX2a+g6hjb7bDXWukiGuMTmV
 3IjykOVPRWj3E6neO0sdkdlr4ElySugTR89eT316yLUpMPOPjjA/jxKx+A/x6JDJZjMy
 XIjher+uQaS4yBXKZ8oDuin5in8qkNBH8PBTpPue5gj4AThp1W4aads22bHxthxoqzLr
 WVzmvhTxH3xOxSHVyBTBqIKRfETLhgm6445++F6/qlk96WfgMH/tvPAx6OTsMRx5hTZT
 k0Iw==
MIME-Version: 1.0
In-Reply-To: <b21a95a8-2a84-7bba-24b2-6d2ab3d255c1@dd-wrt.com>
References: <20170218063515.16071-1-ryan@mounce.com.au>
 <9d768854-e41d-fdb1-967d-7fdd7d692226@dd-wrt.com>
 <CAN+fvRYkbeV8yXuA+J1HVtZemB+j-07wvHkbouEpgzL-7SE6-Q@mail.gmail.com>
 <b21a95a8-2a84-7bba-24b2-6d2ab3d255c1@dd-wrt.com>
From: Ryan Mounce <ryan@mounce.com.au>
Date: Sun, 19 Feb 2017 23:06:21 +1030
Message-ID: <CAN+fvRbXvLcU57aTRNxeBhWP0QQmbodiUbSjarPGf1HKTisJbA@mail.gmail.com>
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
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Sebastian Gottschall <s.gottschall@dd-wrt.com>
Cc: linux-wireless@vger.kernel.org, Seth Forshee <seth.forshee@canonical.com>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Australian regulations differ from most of Europe, the USA and even
New Zealand (which shares AS/NZS 4268) in that any unlicensed
operation between 5600-5650MHz is prohibited outright, rather than
being allowed after an extended DFS channel availability check.

The situation appears to be similar in Canada, the regdb has
previously been amended to reflect this.

https://git.kernel.org/cgit/linux/kernel/git/sforshee/wireless-regdb.git/commit/db.txt?id=ce7697d3def48f87427b3a3c285b46241af3b79d

On 19 February 2017 at 22:46, Sebastian Gottschall
<s.gottschall@dd-wrt.com> wrote:
> Am 19.02.2017 um 01:01 schrieb Ryan Mounce:
>>
>> Hi Sebastian,
>>
>> There is no explicit channel width restriction in the document,
>> however the only band in which the current regdb rules permit 160MHz
>> operation (5490-5710MHz) would result in an overlap with the
>> restricted weather radar band 5600-5650MHz.
>
> thats the case for all countries, so this couldnt be a argument. dfs should
> handle this
>
>>
>> While remaining in compliance with both 802.11 and Australian law,
>> contiguous 160MHz operation in 5GHz is only permitted between
>> 5170-5330MHz which spans two bands with slightly different
>> requirements, hence AUTO-BW.
>>
>> Regards,
>> Ryan Mounce
>>
>> ryan@mounce.com.au
>>
>> On 19 February 2017 at 07:15, Sebastian Gottschall
>> <s.gottschall@dd-wrt.com> wrote:
>>>
>>> maybe i'm blind. but you reduced the channel width from 160 to 80 mhz.
>>> but i
>>> can't find any restriction in the document in a quick review
>>>
>>> Sebastian
>>>
>>>
>>> Am 18.02.2017 um 07:35 schrieb Ryan Mounce:
>>>>
>>>> Sourced from the latest legislation at
>>>> https://www.legislation.gov.au/Details/F2016C0043
>>>>
>>>> The current rules exceed legal limits between 5250-5330MHz, and permit
>>>> illegal operation in 5600-5650MHz (reserved for weather radar).
>>>>
>>>> Signed-off-by: Ryan Mounce <ryan@mounce.com.au>
>>>> ---
>>>>    db.txt | 15 ++++++++++-----
>>>>    1 file changed, 10 insertions(+), 5 deletions(-)
>>>>
>>>> diff --git a/db.txt b/db.txt
>>>> index 05108e0..b951e0c 100644
>>>> --- a/db.txt
>>>> +++ b/db.txt
>>>> @@ -85,12 +85,17 @@ country AT: DFS-ETSI
>>>>          # 60 GHz band channels 1-4, ref: Etsi En 302 567
>>>>          (57000 - 66000 @ 2160), (40)
>>>>    +# Source:
>>>> +# https://www.legislation.gov.au/Details/F2016C00432
>>>> +# Both DFS-ETSI and DFS-FCC are acceptable per AS/NZS 4268 Appendix B
>>>>    country AU: DFS-ETSI
>>>> -       (2402 - 2482 @ 40), (20)
>>>> -       (5170 - 5250 @ 80), (17), AUTO-BW
>>>> -       (5250 - 5330 @ 80), (24), DFS, AUTO-BW
>>>> -       (5490 - 5710 @ 160), (24), DFS
>>>> -       (5735 - 5835 @ 80), (30)
>>>> +       (2402 - 2482 @ 40), (36)
>>>> +       (5170 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
>>>> +       (5250 - 5330 @ 80), (23), NO-OUTDOOR, AUTO-BW, DFS
>>>> +       (5490 - 5590 @ 80), (30), DFS
>>>> +       (5650 - 5730 @ 80), (30), DFS
>>>> +       (5735 - 5835 @ 80), (36)
>>>> +       (57000 - 66000 @ 2160), (43), NO-OUTDOOR
>>>>      country AW: DFS-ETSI
>>>>          (2402 - 2482 @ 40), (20)
>>>
>>>
>>>
>>> --
>>> Mit freundlichen Grüssen / Regards
>>>
>>> Sebastian Gottschall / CTO
>>>
>>> NewMedia-NET GmbH - DD-WRT
>>> Firmensitz:  Berliner Ring 101, 64625 Bensheim
>>> Registergericht: Amtsgericht Darmstadt, HRB 25473
>>> Geschäftsführer: Peter Steinhäuser, Christian Scheele
>>> http://www.dd-wrt.com
>>> email: s.gottschall@dd-wrt.com
>>> Tel.: +496251-582650 / Fax: +496251-5826565
>>>
>
>
> --
> Mit freundlichen Grüssen / Regards
>
> Sebastian Gottschall / CTO
>
> NewMedia-NET GmbH - DD-WRT
> Firmensitz:  Berliner Ring 101, 64625 Bensheim
> Registergericht: Amtsgericht Darmstadt, HRB 25473
> Geschäftsführer: Peter Steinhäuser, Christian Scheele
> http://www.dd-wrt.com
> email: s.gottschall@dd-wrt.com
> Tel.: +496251-582650 / Fax: +496251-5826565
>

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
