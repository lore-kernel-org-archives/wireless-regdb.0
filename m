Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=URnCRO+YzUj+7v8+Cnf+djkrRL7gzDAd5vDPlNiKN08=;
 b=RA8KM3LyQMOxpp
 xZAKnSCWEYuh0KHGccJhpDGHYeN5cI6GJRm3lwdgUgg88QlH82bxR8Z/B4P2VJzZcqNk+cj4dtDgl
 80FoktNiS70do0ai3wKSBFyEivsHLF3/+tk3z9ExtyD8j8nmR/cIXiP5ERcPS6YOr4oYo8V6U0JTW
 8fuqc5Q2cS2urwim1wrfOUfMgFFXChmJGKpihDJYCR5JUr11rgTwLXlKTENhQ44hz4YvLwz7ZvHiN
 /S8tKXjrtcwnNLzF88Npj2GrCocyxzYcAy4wv9eAw60rrL6RE6vG5Yi6ker+8uCIzr3kDcWJj9rlw
 Vm/LrJf26EN9CyqnJtPw==;
Received: from mail-qt0-x22d.google.com ([2607:f8b0:400d:c0d::22d])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cfEwn-0004Fv-Lj
 for wireless-regdb@lists.infradead.org; Sun, 19 Feb 2017 00:01:51 +0000
Received: by mail-qt0-x22d.google.com with SMTP id w20so64795320qtb.1 for
 <wireless-regdb@lists.infradead.org>; Sat, 18 Feb 2017 16:01:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mounce.com.au; s=google;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=2h7Lxoe/J2iKIZVzQoqk9fwBnaAYR4n9yhQWylX3akA=;
 b=fSoAzaRdkpRgTztGiasI2bCCV8ULLl16yznCLzn104tVLYJyqZik4UU2BD/CPtk6A2
 2iPncARXZx2BqHHbMgZJZTt/Ew1CCAn0CGfYs+8Naw332VaF8EYRglHL/9gQIa0tUeFY
 CVu7asOWwegLKA8Q1pwu3O6lP2ACZJHtsP6CBfnymRDrovAWsa75Ia7Guwf4Od0U5+OT
 EH40566RyGRnilw3CdKYQBU9PJnBLeJMemGk3qsZpezdsEjaOk856qfK9/+jEpWkTkx8
 B9obSFVHvqxUUVdQGUp1FXSMO8HZpYgiPlCJUjVIrieH+TSy7GWTpj7R4CHntFUrIkcp
 e4vQ==
MIME-Version: 1.0
In-Reply-To: <9d768854-e41d-fdb1-967d-7fdd7d692226@dd-wrt.com>
References: <20170218063515.16071-1-ryan@mounce.com.au>
 <9d768854-e41d-fdb1-967d-7fdd7d692226@dd-wrt.com>
From: Ryan Mounce <ryan@mounce.com.au>
Date: Sun, 19 Feb 2017 10:31:12 +1030
Message-ID: <CAN+fvRYkbeV8yXuA+J1HVtZemB+j-07wvHkbouEpgzL-7SE6-Q@mail.gmail.com>
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
To: Sebastian Gottschall <s.gottschall@dd-wrt.com>, seth.forshee@canonical.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi Sebastian,

There is no explicit channel width restriction in the document,
however the only band in which the current regdb rules permit 160MHz
operation (5490-5710MHz) would result in an overlap with the
restricted weather radar band 5600-5650MHz.

While remaining in compliance with both 802.11 and Australian law,
contiguous 160MHz operation in 5GHz is only permitted between
5170-5330MHz which spans two bands with slightly different
requirements, hence AUTO-BW.

Regards,
Ryan Mounce

ryan@mounce.com.au

On 19 February 2017 at 07:15, Sebastian Gottschall
<s.gottschall@dd-wrt.com> wrote:
> maybe i'm blind. but you reduced the channel width from 160 to 80 mhz. but i
> can't find any restriction in the document in a quick review
>
> Sebastian
>
>
> Am 18.02.2017 um 07:35 schrieb Ryan Mounce:
>>
>> Sourced from the latest legislation at
>> https://www.legislation.gov.au/Details/F2016C0043
>>
>> The current rules exceed legal limits between 5250-5330MHz, and permit
>> illegal operation in 5600-5650MHz (reserved for weather radar).
>>
>> Signed-off-by: Ryan Mounce <ryan@mounce.com.au>
>> ---
>>   db.txt | 15 ++++++++++-----
>>   1 file changed, 10 insertions(+), 5 deletions(-)
>>
>> diff --git a/db.txt b/db.txt
>> index 05108e0..b951e0c 100644
>> --- a/db.txt
>> +++ b/db.txt
>> @@ -85,12 +85,17 @@ country AT: DFS-ETSI
>>         # 60 GHz band channels 1-4, ref: Etsi En 302 567
>>         (57000 - 66000 @ 2160), (40)
>>   +# Source:
>> +# https://www.legislation.gov.au/Details/F2016C00432
>> +# Both DFS-ETSI and DFS-FCC are acceptable per AS/NZS 4268 Appendix B
>>   country AU: DFS-ETSI
>> -       (2402 - 2482 @ 40), (20)
>> -       (5170 - 5250 @ 80), (17), AUTO-BW
>> -       (5250 - 5330 @ 80), (24), DFS, AUTO-BW
>> -       (5490 - 5710 @ 160), (24), DFS
>> -       (5735 - 5835 @ 80), (30)
>> +       (2402 - 2482 @ 40), (36)
>> +       (5170 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
>> +       (5250 - 5330 @ 80), (23), NO-OUTDOOR, AUTO-BW, DFS
>> +       (5490 - 5590 @ 80), (30), DFS
>> +       (5650 - 5730 @ 80), (30), DFS
>> +       (5735 - 5835 @ 80), (36)
>> +       (57000 - 66000 @ 2160), (43), NO-OUTDOOR
>>     country AW: DFS-ETSI
>>         (2402 - 2482 @ 40), (20)
>
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
