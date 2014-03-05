Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x22d.google.com ([2a00:1450:4010:c03::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WLAAq-0005oG-RQ
 for wireless-regdb@lists.infradead.org; Wed, 05 Mar 2014 11:39:45 +0000
Received: by mail-la0-f45.google.com with SMTP id hr17so596914lab.4 for
 <wireless-regdb@lists.infradead.org>; Wed, 05 Mar 2014 03:39:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tieto.com;
 s=google;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :cc:content-type; bh=G5Zb6AMja0OwV9bAzVK5e8wVsZKl2p6dDIIprFqnpDk=;
 b=1YZEizFw/e5vBVEhZXsuZO3fjDxAaggiH2XC2foHPVOiHGNQioqNxC4lEGy5wuD/7d
 rbsPkvoWRNJ/tD7CkKxq8qx34/sGjygwM82BW2VWU4Qwb8nnNKodr1GFDT2KUVg6OzDF
 rtEc/Db1U37iFMIAbl4P6HTpbcMDpLi8t3Iwo=
MIME-Version: 1.0
In-Reply-To: <53170512.9040205@raritan.com>
References: <1393844485-23624-1-git-send-email-ronald.wahl@raritan.com>
 <CALhHN=oonTMjSu3p3VcSXX_tomf1LAPA-gUCc3U6hB2Y-gKe0A@mail.gmail.com>
 <53170512.9040205@raritan.com>
Date: Wed, 5 Mar 2014 12:39:22 +0100
Message-ID: <CALhHN=ov8CohcvE6aujD3cqb9ODW6rpopVsrDpfJMcBh-3iR5Q@mail.gmail.com>
From: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Subject: Re: [wireless-regdb] [PATCH] regulatory: add channels 52..64 and
 100..144 to world regdom
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Ronald Wahl <ronald.wahl@raritan.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

On 5 March 2014 12:05, Ronald Wahl <ronald.wahl@raritan.com> wrote:
> On 05.03.2014 11:32, Janusz Dziedzic wrote:
>>
>> On 3 March 2014 12:01, Ronald Wahl <ronald.wahl@raritan.com> wrote:
>>>
>>> This is a port of what Johannes Berg sent to the Linux kernel
>>> in May 2013 for the static world regulatory domain.
>>>
>>> Signed-off-by: Ronald Wahl <ronald.wahl@raritan.com>
>>> ---
>>>   db.txt | 5 ++++-
>>>   1 file changed, 4 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/db.txt b/db.txt
>>> index fcab208..9391ff6 100644
>>> --- a/db.txt
>>> +++ b/db.txt
>>> @@ -7,7 +7,10 @@ country 00:
>>>          (2474 - 2494 @ 20), (20), NO-IR
>>>          # Channel 36 - 48
>>>          (5170 - 5250 @ 80), (20), NO-IR
>>
>> @ 160
>>>
>>> -       # NB: 5260 MHz - 5700 MHz requies DFS
>>> +       # Channel 52 - 64
>>> +       (5250 - 5330 @ 80), (20), NO-IR, DFS
>>
>> @160
>>>
>>> +       # Channel 100 - 144
>>> +       (5490 - 5730 @ 80), (20), NO-IR, DFS
>>
>> @160?
>>>
>>>          # Channel 149 - 165
>>>          (5735 - 5835 @ 80), (20), NO-IR
>>>          # IEEE 802.11ad (60GHz), channels 1..3
>>> --
>>> 1.8.5.3
>
>
> At the moment there are no @ 160 entries at all in the db.txt so I hesitated
> to add it for the world regdom. Maybe we should add the @ 160 in a separate
> patch for the regdoms where this is appropriate. What do you think?
>
I think we should set 160 for world regdom - same as kernel do.
World regdom freq_diff is not verified for rules, when REQUEST by CORE
- workaround? - and such config will be allowed.

@Luis ?

For the other countries we could not set 160 while freq_diff < 160 for
most of the rules and there will be verification in kernel space for
that.
In such case AUTO-BW flag could be used in the future. That allow auto
calculation of max bandwidth base on contiguous freq rules.

BR
Janusz

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

