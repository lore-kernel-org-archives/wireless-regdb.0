Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-f169.google.com ([209.85.217.169])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WueF0-0006BT-Hd
 for wireless-regdb@lists.infradead.org; Wed, 11 Jun 2014 08:50:43 +0000
Received: by mail-lb0-f169.google.com with SMTP id s7so4601093lbd.14 for
 <wireless-regdb@lists.infradead.org>; Wed, 11 Jun 2014 01:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=SRiwN4pIUsNQ4kZFGbS1KCVKzQFlbnqwiYlxahzJ4xA=;
 b=rvZW1k7uFwz9WofgLFfEybTVkU5eQuuIILnvVEFR9Rp+c671VJByjJCmccrfmpvM8G
 IC+9JSnEf8wk9RhZsoCXMRYc7igiT+nKFAJ0eOd8zxnhczMaPU9pEfon2MvJgnu84RFv
 H/SIj820TyRPByrx87VieZyr9f5V7YY3SqJCOjp+oCYsHC1aniY1IXiGEY1kgi4pxMWQ
 xve5r1tc5/uyNJNrSASaS/DUmTv+nSFH4dqOmfR3f+3Afp02zxt1YIDyy2ECXcyBup5k
 ivqJfBbNIJBA4EQH4liwKIyIT1wTwUq3o9mTKMgfmI1auzN6nXtuX3CgmCKA9FJlD/nY /X4Q==
MIME-Version: 1.0
In-Reply-To: <CALhHN=rzHzSr67W9KoC8u5cARrckOgQA-m26fmhXwX85aEcKoA@mail.gmail.com>
References: <1402385153-5056-1-git-send-email-janusz.dziedzic@tieto.com>
 <CAB=NE6VZs7d2bJNW0cp7NhPUMKr=bHn+pKwhvtk2U71rno4VMA@mail.gmail.com>
 <CALhHN=rzHzSr67W9KoC8u5cARrckOgQA-m26fmhXwX85aEcKoA@mail.gmail.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed, 11 Jun 2014 01:49:56 -0700
Message-ID: <CAB=NE6VwBB-_G6JfLo81PYsjxBbw+C4Y40ZogNh4-eG910rXuw@mail.gmail.com>
Subject: Re: [wireless-regdb] [RFC 1/2] crda: simplify text parsing for
	country/rules
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
To: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, Johannes Berg <johannes@sipsolutions.net>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "John W. Linville" <linville@tuxdriver.com>, Felix Fietkau <nbd@openwrt.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Jun 10, 2014 at 10:03 PM, Janusz Dziedzic
<janusz.dziedzic@tieto.com> wrote:
> On 11 June 2014 00:09, Luis R. Rodriguez <mcgrof@do-not-panic.com> wrote:
>> On Tue, Jun 10, 2014 at 12:25 AM, Janusz Dziedzic
>> <janusz.dziedzic@tieto.com> wrote:
>>> Remove strange parsers.
>>>
>>> Signed-off-by: Janusz Dziedzic <janusz.dziedzic@tieto.com>
>>
>> Did you test this with the different types of accepted rules?
>>
>
> Tested with current db.txt (+AUTO-BW in some cases).

I was curious more about the different use cases of the output power,
sometimes we use dBm, sometimes mW I think. I think I tried your
approach and ended up getting inconsistent results for the different
cases, so that's why all the parser junk got added. If you found a way
to successfully get rid of it though that's awesome, just want to be
sure we tested all cases. I purposely tried to upkeep the output to
match the input preference, some folks are picky about mW and others
like dB, this helps with regulatory rules as they vary depending on
the country and the country typically uses one or the other for the
definitions.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

