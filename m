Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:From:References:Cc:To:
 MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=ulsoOtNUeQ4abJ8Cp3K2v9sD3dOWCVhPyykyun9BSeE=;
 b=apaj5PBfYlpbxH
 ywyxf7BKlS9cklPbOoHeI8FUB5JE4AT+UdDURYQy4EhRhEecdWGqOJmfwwW/tvAC8Zc76YnWzSOUS
 fYz1PZ4ZwwCy0AfOG2ITw3H3p/ioHIFYMwQA1PcAxvDp2KUk9yBaxfz9335sQXLVAsPkUu3TyLNz0
 3Ckh0s/OPTdg5YlM3072N7VoAPQa8Uwc1xjCZYmBVFFq+5sfCnyCfd1Ui2bJW0xs4kKQ8hmrKKz9v
 f46Bi28CQSlQvx0JrNcjuR4XpvpQ/mYdDKeeS2W675GLjdi0Ab4AMclFfvFdUKFQRKM2L5dPN7XwD
 8w5mCynFEwQYnFhKau+w==;
Received: from hm1831-n-118.locaweb.com.br ([189.126.112.118])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oW1Fp-009Jx1-Rg
	for wireless-regdb@lists.infradead.org; Wed, 07 Sep 2022 20:02:35 +0000
Received: from mcbain0021.email.locaweb.com.br (201.76.49.41) by
 hm1831-n-113.locaweb.com.br id h33qt22n8lgc for
 <wireless-regdb@lists.infradead.org>; Wed, 7 Sep 2022 16:49:23 -0300
 (envelope-from <cesarb@cesarb.eti.br>)
Message-ID: <7c7135cb-ee5d-e7f3-45ca-8b7206312512@cesarb.eti.br>
Date: Wed, 7 Sep 2022 17:02:01 -0300
MIME-Version: 1.0
References: <20220901232734.5488-1-cesarb@cesarb.eti.br>
 <b8674e67fee2393d4c5fe9d9842028545c6adcfa.camel@sipsolutions.net>
 <6b577581-9daf-ff11-1aaa-ff1243eb9c03@cesarb.eti.br>
 <YxiwFLWhsOtJJhrq@do-x1extreme>
Content-Language: en-US
From: Cesar Eduardo Barros <cesarb@cesarb.eti.br>
In-Reply-To: <YxiwFLWhsOtJJhrq@do-x1extreme>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Brazil (BR)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Seth Forshee <sforshee@kernel.org>
Cc: Johannes Berg <johannes@sipsolutions.net>, wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Em 07/09/2022 11:52, Seth Forshee escreveu:
> On Fri, Sep 02, 2022 at 07:21:50PM -0300, Cesar Eduardo Barros wrote:
>> Em 02/09/2022 11:53, Johannes Berg escreveu:
>>> On Thu, 2022-09-01 at 20:27 -0300, Cesar Eduardo Barros wrote:
>>>>
>>>> +	# This range ends at 5725 MHz, but channel 144 extends to 5730 MHz.
>>>> +	# Since 5725 ~ 5730 MHz belongs to the next range which has looser
>>>> +	# requirements, we can extend the range by 5 MHz to make the kernel
>>>> +	# happy and be able to use channel 144.
>>>> +	(5470 - 5730 @ 160), (27), DFS
>>>> +	(5730 - 5850 @ 80), (30)
>>>>
>>>
>>> If you do the latter as 160 as well, and add AUTO-BW, couldn't you split
>>> them at 5725 correctly? But I guess it doesn't matter anyway.
>>
>> This was copied from the US rules (including the four-line comment), which
>> have an identical split. If AUTO-BW worked here, I'd expect the US rules to
>> use it.
> 
> AUTO-BW would work, and we have countries using it for this case. Iirc
> for some countries we move the split to 5730 because even though
> 5725-5730 is at a lower power limit the rules allow channel 144 to be
> used at the power limit for 5710-5725. For the US though I think it's
> just historical -- it was done that way initially, and it isn't
> important enough that anyone has cared to change it.

The only country I found in the database that does it that way is IL, 
and it has the power limits in the opposite direction (its 5470 - 5725 
range has a higher power limit than its 5725 - 5875 range, while for BR 
and US it's the former range which has a lower power limit); looking at 
other countries, AU does the manual adjustment with a comment like US, 
while TW has a 5 MHz overlap on its ranges. So the precedent is not 
enough for me to be confident that using the official split together 
with AUTO-BW would allow using channel 144 (and the 40 MHz and 80 MHz 
channels it's part of).

And the single one which does it using AUTO-BW (IL) doesn't change the 
bandwidth of its 5725 - 5875 to 160; is it really necessary to do that 
change to the bandwidth (considering also that channel 144 is not part 
of a pure 160 MHz channel, it could be used only for 80+80)? What about 
the 5150 - 5250 and 5250 - 5350 ranges, do they need also to be changed 
to 160 so that the combined 5170 - 5330 160 MHz channel can be used, or 
does AUTO-BW allow it even though both ranges are declared as allowing 
just 80 MHz channels? What about 80+80 channels?

> But we do generally try to keep the rules matching the official
> documents as much as possible, so for new rules we should split at 5725
> and use AUTO-BW as Johannes suggested. Could you send a v2 with that
> change?

Well, it's not exactly a new rule (the current database already has a 
5490 - 5730 @ 160 rule), but we could treat it that way since we're 
mostly rewriting them all (and the original didn't say where that came 
from).

Since I'm not certain that AUTO-BW will be interpreted as expected, 
before doing that change, I'll try to see if I can test it first on my 
laptop (by sheer luck, I happen to be using the 5650 - 5730 80 MHz 
channel right now, so I'd just have to see if it still connects at 80 
MHz, assuming I can somehow convince the kernel to load a modified 
file). Or would you prefer me to send the patch first (with or without a 
change in the channel bandwidths)?

-- 
Cesar Eduardo Barros
cesarb@cesarb.eti.br


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

