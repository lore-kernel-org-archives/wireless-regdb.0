Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:From:References:Cc:To:
 MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=eg1MpDbuHzycxLsVKrtULEZWT6ciLJZqilIWdO4uteQ=;
 b=Kct5oeXgGphccd
 toumd5FwSX+GkM9wmzBZJ7dp6Gupns/NCh3WxiT9ffZZ6S/D0Z2FNuCJlkgquwq9oUVD9Dmt0y7vZ
 L5qmqBLqRZt4HnutxnlQLj31/FvWJi1YMD/6KOk/gBh/tNRQ07z4BW+WZKEKGciFXSUFVBobL1fIL
 HUdp5uxsGQY7KEMPRWsWoKAYBXu/HB586QBuAIQiYxqtRaErdtTM1wYu3K74SJnonIpXMU5UisA0j
 UjlHEw4QWJi6ejZQVcch+PCcpquB3UrAebp0BOPKfE/TiEm48X+IrKq4tzBY6JfPYOFteK8Okc0Nc
 WXufjxr9D4QHjnz7n3hQ==;
Received: from forward500c.mail.yandex.net
 ([2a02:6b8:c03:500:1:45:d181:d500]) by bombadil.infradead.org with esmtps
 (Exim 4.96 #2 (Red Hat Linux)) id 1rDnpL-000hOE-2q for
 wireless-regdb@lists.infradead.org; Thu, 14 Dec 2023 15:40:45 +0000
Message-ID: <21b0fc55-6b5d-404b-88d1-3ad2b7acbbcd@16depo.xyz>
Date: Thu, 14 Dec 2023 18:40:34 +0300
MIME-Version: 1.0
Content-Language: en-US
References: <411a77cb-47f1-2f97-76c6-939c024654b4@16depo.xyz>
 <a0480e18-7b67-4e16-983e-c8f888c97261@16depo.xyz>
 <CAGb2v65V==YE=NLYyE=2ApN04jPeuFFc9d6bfTaQYBUsXoFWsQ@mail.gmail.com>
From: Kirill Matvienko <me@16depo.xyz>
In-Reply-To: <CAGb2v65V==YE=NLYyE=2ApN04jPeuFFc9d6bfTaQYBUsXoFWsQ@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] Update regulatory info for Armenia
 (AM)
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
To: wens@kernel.org
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

I have no evidence to why bandwidth restriction exist in the first 
place, and my main concern in not power or bandwidth, but number of 
channels. Now most wireless vendors use only UNII-1 and (less often) 
UNII-2 for AM regulatory domain, but this decision from regulators will 
allow to use UNII-2 extended and UNII-3.
The document that being amended is N-169 
(https://www.arlis.am/documentview.aspx?docid=76877), and there is only 
this passage about 5GHz:

5150 - 5250 ՄՀց, 5725 - 5875 ՄՀց ռադիոհաճախականությունների շերտերում 
աշխատող, մինչև 100 մՎտ հզորությամբ, լոկալ ցանցերի սարքավորումների 
օգտագործման համար (միայն շենքերի ներսում, ինչպես նաև օդանավերում` երկրի 
մակերևույթից 3000 մետրից բարձր թռիչքի ժամանակ), 5250 - 5350 ՄՀց, 5470 - 
5725 ՄՀց ռադիոհաճախականությունների շերտերում աշխատող, մինչև100 մՎտ 
հզորությամբ, լոկալ ցանցերի սարքավորումների օգտագործման համար 
(օդանավերում` երկրի մակերևույթից 3000 մետրից բարձր թռիչքի ժամանակ),

which translated as:

Operating in the radio frequency bands 5150 - 5250 MHz, 5725 - 5875 MHz, 
for the use of local area network equipment with a power of up to 100 mW 
(only inside buildings, as well as in aircraft when flying above 3000 
meters above the earth's surface), 5250 - 5350 MHz, 5470 - 5725 MHz for 
the use of local network equipment operating in radio frequency bands 
with a power of up to 100 mW (in airplanes during flight above 3000 
meters above the earth's surface);

Anyway, if you think that we can't use wider channels, please, change 
only frequencies and power.

On 14.12.2023 18:02, Chen-Yu Tsai wrote:
> On Thu, Dec 14, 2023 at 7:04 PM Kirill Matvienko <me@16depo.xyz> wrote:
>>
>> Source:https://www.arlis.am/DocumentView.aspx?DocID=181829
> 
> This only justifies the power limit change. What about the
> maximum bandwidth?
> 
> 
> ChenYu
> 
>> Signed-off-by: Kirill Matvienko <me@16depo.xyz>
>>
>> ---
>>    db.txt | 4 ++--
>>    1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/db.txt b/db.txt
>> index fdc2c13..0708039 100644
>> --- a/db.txt
>> +++ b/db.txt
>> @@ -80,8 +80,8 @@ country AL: DFS-ETSI
>>
>>    country AM: DFS-ETSI
>>        (2402 - 2482 @ 40), (20)
>> -    (5170 - 5250 @ 20), (18)
>> -    (5250 - 5330 @ 20), (18), DFS
>> +    (5150 - 5350 @ 80), (100mW)
>> +    (5470 - 5875 @ 80), (100mW), NO-OUTDOOR,DFS
>>
>>    country AN: DFS-ETSI
>>        (2402 - 2482 @ 40), (20)
>> --
>> 2.34.1
>>

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
