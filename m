Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail.neratec.com ([46.140.151.2])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZB2TP-0008Ck-KA
 for wireless-regdb@lists.infradead.org; Fri, 03 Jul 2015 15:01:53 +0000
Message-ID: <5596A3C0.6020303@neratec.com>
Date: Fri, 03 Jul 2015 17:01:20 +0200
From: Zefir Kurtisi <zefir.kurtisi@neratec.com>
MIME-Version: 1.0
References: <CAHr=Vq=hJr6WUQgFXftMSG2zYgwtCXgoTaXBzRfM8-kQa2-K2w@mail.gmail.com>	<55966D1B.1040603@neratec.com>
 <CAHr=VqnpJ_+ovmB3gqm+X9WX98ZeVuO8VZ2cq6OFPcdjy8Rkgg@mail.gmail.com>
In-Reply-To: <CAHr=VqnpJ_+ovmB3gqm+X9WX98ZeVuO8VZ2cq6OFPcdjy8Rkgg@mail.gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: update CA rules for 5600 -
	5650 mHz
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
To: Wei Zhong <wzhong@google.com>
Cc: linux-wireless@vger.kernel.org, Seth Forshee <seth.forshee@canonical.com>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On 07/03/2015 04:20 PM, Wei Zhong wrote:
> On Fri, Jul 3, 2015 at 4:08 AM, Zefir Kurtisi <zefir.kurtisi@neratec.com> wrote:
>>
>> On 07/02/2015 07:44 AM, Wei Zhong wrote:
>>> commit 2fef4cad8a1bd9cbbf178e59a1b3ca672b057095
>>> Author: Wei Zhong <wzhong@google.com>
>>> Date:   Wed Jul 1 22:39:09 2015 -0700
>>>
>>>     wireless-regdb: update CA rules for 5600 - 5650 mHz
>>>
>>>     Related regulation:
>>>     http://www.ic.gc.ca/eic/site/smt-gst.nsf/eng/sf10971.html#s6.2.3
>>>
>>>     Frequency Bands 5470-5600 MHz and 5650-5725 MHz
>>>     Until further notice, devices subject to this section [i.e. Wifi device
>>>     supporting 5 GHz bands] shall not be capable of transmitting in the band
>>>     5600-5650 MHz. This restriction is for the protection of Environment
>>>     Canada’s weather radars operating in this band.
>>>
>>> diff --git a/db.txt b/db.txt
>>> index 809cd3c..da0cfad 100644
>>> --- a/db.txt
>>> +++ b/db.txt
>>> @@ -216,7 +216,8 @@ country CA: DFS-FCC
>>>         (2402 - 2472 @ 40), (30)
>>>         (5170 - 5250 @ 80), (17), AUTO-BW
>>>         (5250 - 5330 @ 80), (24), DFS, AUTO-BW
>>> -       (5490 - 5730 @ 160), (24), DFS
>>> +       (5490 - 5600 @ 80), (24), DFS
>>> +       (5650 - 5730 @ 40), (24), DFS
>>>         (5735 - 5835 @ 80), (30)
>>>
>>>  # Source:
>>> --
>>
>> I believe this could also be interpreted differently. If the change is only about
>> removing the weather radar band (5600-5650), the change should be
>>
>>  -       (5490 - 5730 @ 160), (24), DFS
>>  +       (5490 - 5570 @ 80), (24), DFS
>>  +       (5570 - 5590 @ 20), (24), DFS
>>  +       (5650 - 5730 @ 80), (24), DFS
>>
>> The second rule explicitly states that channel 116 remains available for HT20. If
>> this level of strict correctness is not needed, rule 1 and 2 combined would be
>>
>>  -       (5490 - 5730 @ 160), (24), DFS
>>  +       (5490 - 5590 @ 80), (24), DFS
> 
> I agree. 5590 is more strict than 5600.
> 
>>
>>  +       (5650 - 5730 @ 80), (24), DFS
> 
> 5690 MHz is not a channel can be used, is it still necessary to mark
> this band as 80MHz while in practice it is not possible to fully
> unitize the entire band?
> 

I must be missing something here, where does the restriction for 5690 come from?
The document handles the band 5650-5725 as available, I don't see any further
restrictions for 5690.


From your other post:
>>     >
>>     >  -       (5490 - 5730 @ 160), (24), DFS
>>     >  +       (5490 - 5590 @ 80), (24), DFS
>> 
>>     I agree. 5590 is more strict than 5600.
>> 
>>  
>> On a second thought,  5590 implies channel 116 can't have 40MHz. I think that is
>> still allowed per regulation.
>> 
>> 

No, channel 116 is not usable for HT40 if weather radar channels are disabled,
since it can only be combined with channel 120 and that one partially falls into
the restricted range.

I found the FCC channel plans (which CA conforms to) in [1] very helpful when
checking the restrictions.


[1] https://apps.fcc.gov/kdb/GetAttachment.html?id=lp4w3WTVG9PReWNFG0ckTg%3D%3D



_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
