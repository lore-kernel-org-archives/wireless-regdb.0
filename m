Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:From:References:Cc:To:
 MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=Ymk2trkf3TWiLqzDtGdF5FGgZZzWpXzmsFGlf898U28=;
 b=V6PCzRnH9X4wLQ
 ONQs/ori8x9ZKoEFwU1rVg47pijOvhPhov3+uwhQdsVl5srGPPX0LAAQK4nlZsh5PYaluB4RSL7/C
 VTyVU2UDF1zqNyPweys+F3jbR5WYxPyB5V3lJc9tPv9d/vBJJYhhA3YLRA/W+kOSBLvpajlpcoPEM
 wVwbL7A6ny4R9T2W5yz4x/v8CN67CC6RFRkRAyZY0goZGBZFre5M3Wsf4v2ZVWy7pwlxFUPb6+zVQ
 Arv/NzeDNTjLr4Kg6zjt7uPGfNZZ3PGc5ZrGv9yeBXITgTTDZTAbA4vjLSkCjk+GOpcnYNWiVdc0q
 IZDVHLN/AmO3WEWOsgbA==;
Received: from hm1831-35.locaweb.com.br ([189.126.112.55])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWmW7-003XUs-0m
	for wireless-regdb@lists.infradead.org; Fri, 09 Sep 2022 22:30:33 +0000
Received: from mcbain0012.email.locaweb.com.br (189.126.112.16) by
 hm1831-n-113.locaweb.com.br id h3etna2n8lg4 for
 <wireless-regdb@lists.infradead.org>; Fri, 9 Sep 2022 19:16:38 -0300
 (envelope-from <cesarb@cesarb.eti.br>)
Message-ID: <e55819d3-cc2f-23ac-4b40-bdd1fd8e6b68@cesarb.eti.br>
Date: Fri, 9 Sep 2022 19:29:26 -0300
MIME-Version: 1.0
References: <20220901232734.5488-1-cesarb@cesarb.eti.br>
 <b8674e67fee2393d4c5fe9d9842028545c6adcfa.camel@sipsolutions.net>
 <6b577581-9daf-ff11-1aaa-ff1243eb9c03@cesarb.eti.br>
 <YxiwFLWhsOtJJhrq@do-x1extreme>
 <7c7135cb-ee5d-e7f3-45ca-8b7206312512@cesarb.eti.br>
 <Yxs9pmL7Efl+EPxe@do-x1extreme>
Content-Language: en-US
From: Cesar Eduardo Barros <cesarb@cesarb.eti.br>
In-Reply-To: <Yxs9pmL7Efl+EPxe@do-x1extreme>
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

Em 09/09/2022 10:20, Seth Forshee escreveu:
> On Wed, Sep 07, 2022 at 05:02:01PM -0300, Cesar Eduardo Barros wrote:
> 
>> And the single one which does it using AUTO-BW (IL) doesn't change the
>> bandwidth of its 5725 - 5875 to 160; is it really necessary to do that
>> change to the bandwidth (considering also that channel 144 is not part of a
>> pure 160 MHz channel, it could be used only for 80+80)? What about the 5150
>> - 5250 and 5250 - 5350 ranges, do they need also to be changed to 160 so
>> that the combined 5170 - 5330 160 MHz channel can be used, or does AUTO-BW
>> allow it even though both ranges are declared as allowing just 80 MHz
>> channels? What about 80+80 channels?
> 
> You cannot change the bandwidth for 5725 - 5875 to 160; the kernel will
> reject the rule since a 160 MHz channel doesn't fit in the range. The
> kernel might still allow a 160 MHz channel though. I haven't looked at
> this code in quite some time and it's pretty convoluted, but some of the
> code does calculate a max bandwidth based on what will fit when dealing
> with AUTO-BW rules.

I took a quick peek at the kernel code, and I also saw the validation 
logic which would reject that 160 MHz rule.

 From my quick look, it seems that it would set a NO-160MHZ flag in the 
rule, which would then propagate to each 20MHz sub-channel, and probably 
would lead to it rejecting the use of the whole as a 160MHz channel; but 
there's also the 80+80 mode, which would still be allowed (and I vaguely 
recall seeing somewhere that adjacent 80+80 was prefered over 160 for 
some reason).

> 
>>> But we do generally try to keep the rules matching the official
>>> documents as much as possible, so for new rules we should split at 5725
>>> and use AUTO-BW as Johannes suggested. Could you send a v2 with that
>>> change?
>>
>> Well, it's not exactly a new rule (the current database already has a 5490 -
>> 5730 @ 160 rule), but we could treat it that way since we're mostly
>> rewriting them all (and the original didn't say where that came from).
>>
>> Since I'm not certain that AUTO-BW will be interpreted as expected, before
>> doing that change, I'll try to see if I can test it first on my laptop (by
>> sheer luck, I happen to be using the 5650 - 5730 80 MHz channel right now,
>> so I'd just have to see if it still connects at 80 MHz, assuming I can
>> somehow convince the kernel to load a modified file). Or would you prefer me
>> to send the patch first (with or without a change in the channel
>> bandwidths)?
> 
> I'd be interested in your results, especially if there's any way you
> could test at 160 MHz bandwidth since the AUTO-BW code in the kernel is
> hard to follow. Getting the kernel to trust the file is the tricky part.
> It would probably be easier to convince CRDA to do it if you want to go
> that route. Or if you contact me off-list I can provide a signed file
> that the kernel will trust -- I'm okay with doing that in this case
> since we wouldn't be trying anything which would be in violation of the
> regulations.

Unfortunately, I don't have any hardware which can use 160MHz channels; 
it's only last month that I upgraded my AP to one which can use 80MHz 
channels (which is what led me to looking into all this stuff).

After looking at the kernel code, I'm feeling more confident on the 
split at 5725 working; I will send the v2 patch.

-- 
Cesar Eduardo Barros
cesarb@cesarb.eti.br


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

