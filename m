Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-yk0-x233.google.com ([2607:f8b0:4002:c07::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZC9yB-0000ex-C3
 for wireless-regdb@lists.infradead.org; Mon, 06 Jul 2015 17:14:15 +0000
Received: by ykeo3 with SMTP id o3so33820087yke.0 for
 <wireless-regdb@lists.infradead.org>; Mon, 06 Jul 2015 10:13:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=20120113;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :cc:content-type; bh=4nfPwh47cnmOf2dp1L6/lpAO3oPbVdNTCUBiNtY/Ji8=;
 b=GsSB44sWSSpFhPabiXFrIVuJrMXzayejGAj2FaVLSZ/klu2i4x6EojPfMhwKy1ubHd
 PQr7xlASXIUn6JIxSvUIHzbPLB3QR6rzMgNSXLR1bO4/Cg14K3gAmm6e9XsotK/qv6gS
 El8ZcI+aXsZ9zeDe4B2c3QjqGHb9KGepTWS9MK4LU4K2NiSLfqZHRXKnBvFHs5Lt1Www
 iWoXb0oUGsuACn7suu0P7qb1IpdPa2ZvB92CPu+wiZGM30y7pfTEYhlbeskQl4te50A2
 WxbTjzVEQ3ZIwW5HIuONwxbve+XNdwHvl458Yl0UsL7Ulh4VdFlMaCmAwJesfvO9t/pq 11CQ==
MIME-Version: 1.0
In-Reply-To: <559A9378.7000006@neratec.com>
References: <CAHr=Vq=hJr6WUQgFXftMSG2zYgwtCXgoTaXBzRfM8-kQa2-K2w@mail.gmail.com>
 <55966D1B.1040603@neratec.com>
 <CAHr=VqnpJ_+ovmB3gqm+X9WX98ZeVuO8VZ2cq6OFPcdjy8Rkgg@mail.gmail.com>
 <5596A3C0.6020303@neratec.com> <20150706132707.GA22962@ubuntu-hedt>
 <559A9378.7000006@neratec.com>
Date: Mon, 6 Jul 2015 10:13:53 -0700
Message-ID: <CAHr=VqkH=Tsi1mbRRgnhOT6UZSEfpNZXUXHA9+9B6M+qJb0upA@mail.gmail.com>
From: Wei Zhong <wzhong@google.com>
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
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Zefir Kurtisi <zefir.kurtisi@neratec.com>
Cc: linux-wireless@vger.kernel.org, Seth Forshee <seth.forshee@canonical.com>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

I have applied more restrictive rule for (5490-5590) and allowed 80Mhz
for (5650 - 5730).

The patch has been uploaded in another thread.
http://lists.infradead.org/pipermail/wireless-regdb/2015-July/000858.html

Thanks.

On Mon, Jul 6, 2015 at 7:40 AM, Zefir Kurtisi <zefir.kurtisi@neratec.com> wrote:
> On 07/06/2015 03:27 PM, Seth Forshee wrote:
>> On Fri, Jul 03, 2015 at 05:01:20PM +0200, Zefir Kurtisi wrote:
>>> On 07/03/2015 04:20 PM, Wei Zhong wrote:
>>> [...]
>>> From your other post:
>>>>>     >
>>>>>     >  -       (5490 - 5730 @ 160), (24), DFS
>>>>>     >  +       (5490 - 5590 @ 80), (24), DFS
>>>>>
>>>>>     I agree. 5590 is more strict than 5600.
>>>>>
>>>>>
>>>>> On a second thought,  5590 implies channel 116 can't have 40MHz. I think that is
>>>>> still allowed per regulation.
>>>>>
>>>>>
>>>
>>> No, channel 116 is not usable for HT40 if weather radar channels are disabled,
>>> since it can only be combined with channel 120 and that one partially falls into
>>> the restricted range.
>>
>> It's not necessary to restrict the band down to 5590 or break out the
>> rule for channel 116 separately, the software is smart enough to work
>> out what's allowed based on the original rule Wei supplied for 5490-5600
>> MHz. In fact that rule exactly matches what we used to have in db.txt
>> for the US prior to the TDWR restrictions being lifted.
>>
>
> Yes, the SW is smart and sane enough to extract the limitations even if they are
> defined less restrictive than required. Which raises the general question of what
> needs to be defined as rule and what can be relied on to be handled correctly by
> the SW.
>
> Example: why do we need to bother about the max-bw parameter for a rule at all? We
> know there is no 160MHz channel within 5490 and 5600, as does the SW. If we wrote
> (5490 - 5600 @ 160) instead of (5490 - 5600 @ 80), nothing would change.
>
> To me it sounds not fully consistent to explicitly limit max-bw while relying on
> SW to sanitize frequency ranges. Not that it really matters in practice, but it
> has a potential to simplify the rules (i.e. provide max-bw parameter only if the
> according country defines restrictions and leave SW to handle it otherwise).
>
>
> Cheers,
> Zefir

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

