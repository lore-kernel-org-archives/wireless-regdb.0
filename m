Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from iron3.routit.net ([2a02:22a0:0:1:2::12])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WL9eZ-0004f9-9e
 for wireless-regdb@lists.infradead.org; Wed, 05 Mar 2014 11:06:24 +0000
Message-ID: <53170512.9040205@raritan.com>
Date: Wed, 05 Mar 2014 12:05:54 +0100
From: Ronald Wahl <ronald.wahl@raritan.com>
MIME-Version: 1.0
References: <1393844485-23624-1-git-send-email-ronald.wahl@raritan.com>
 <CALhHN=oonTMjSu3p3VcSXX_tomf1LAPA-gUCc3U6hB2Y-gKe0A@mail.gmail.com>
In-Reply-To: <CALhHN=oonTMjSu3p3VcSXX_tomf1LAPA-gUCc3U6hB2Y-gKe0A@mail.gmail.com>
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
Content-Type: text/plain; charset="utf-8"; format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On 05.03.2014 11:32, Janusz Dziedzic wrote:
> On 3 March 2014 12:01, Ronald Wahl <ronald.wahl@raritan.com> wrote:
>> This is a port of what Johannes Berg sent to the Linux kernel
>> in May 2013 for the static world regulatory domain.
>>
>> Signed-off-by: Ronald Wahl <ronald.wahl@raritan.com>
>> ---
>>   db.txt | 5 ++++-
>>   1 file changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/db.txt b/db.txt
>> index fcab208..9391ff6 100644
>> --- a/db.txt
>> +++ b/db.txt
>> @@ -7,7 +7,10 @@ country 00:
>>          (2474 - 2494 @ 20), (20), NO-IR
>>          # Channel 36 - 48
>>          (5170 - 5250 @ 80), (20), NO-IR
> @ 160
>> -       # NB: 5260 MHz - 5700 MHz requies DFS
>> +       # Channel 52 - 64
>> +       (5250 - 5330 @ 80), (20), NO-IR, DFS
> @160
>> +       # Channel 100 - 144
>> +       (5490 - 5730 @ 80), (20), NO-IR, DFS
> @160?
>>          # Channel 149 - 165
>>          (5735 - 5835 @ 80), (20), NO-IR
>>          # IEEE 802.11ad (60GHz), channels 1..3
>> --
>> 1.8.5.3

At the moment there are no @ 160 entries at all in the db.txt so I 
hesitated to add it for the world regdom. Maybe we should add the @ 160 
in a separate patch for the regdoms where this is appropriate. What do 
you think?

- ron

-- 
Ronald Wahl - ronald.wahl@raritan.com - Phone +49 375271349-0 Fax -99
Raritan Deutschland GmbH, Kornmarkt 7, 08056 Zwickau, Germany
USt-IdNr. DE813094160, Steuer-Nr. 227/117/01749
Amtsgericht Chemnitz HRB 23605
Geschäftsführung: Stuart Hopper, Ralf Ploenes

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
