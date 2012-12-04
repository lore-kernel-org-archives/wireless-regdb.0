Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tfx0a-0002TG-3W
 for wireless-regdb@lists.infradead.org; Tue, 04 Dec 2012 18:14:17 +0000
Received: by mail-la0-f49.google.com with SMTP id r15so3168170lag.36 for
 <wireless-regdb@lists.infradead.org>; Tue, 04 Dec 2012 10:14:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-type; bh=zefcmrci56+uECfkv50DTg23htu9Vjt+RAqoB1O5+X0=;
 b=wUoNjmXb+BGyzhYJwSoI9G3/lSKKgu1laFh3x9DsVN7e9RMc8qlB3s8mhHro6pJ0jl
 sTTrP6hObChb1RRJvQaRG4XLBOkahMPwAReBxQF6fzpinZnpr3/nOhV8R2eAK09z3hZG
 8YIbauunNo6IFSKpypjQ1x+Nk++pGQj7EpYk51xUaLPTyvHnqTFTwRQ9ObR5SoE36vYA
 6gM5BryqqlM57A6Hn1GRwC6y0cKEBoce6vph51cP0yyXEdx3ScUPuZoOb9cVnYvYE7+S
 MMaib0n3NNZXk4O2jWR0/GIozLA2Jnz5zsCfMLzBS/2xPm5O+Z8gqnp4+uq2KPs28o7+ 3k8w==
MIME-Version: 1.0
In-Reply-To: <1354643287.9608.8.camel@jlt4.sipsolutions.net>
References: <1352713865.9525.9.camel@jlt4.sipsolutions.net>
 <1354643287.9608.8.camel@jlt4.sipsolutions.net>
From: "Luis R. Rodriguez" <mcgrof@gmail.com>
Date: Tue, 4 Dec 2012 10:13:52 -0800
Message-ID: <CAB=NE6U2hvFbH_EMQbF+toBKSz6mdWyZhvwJ6UZVD-8ks4gp_g@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] regdb: allow 40 MHz on world roaming
 channels 12/13
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
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Johannes Berg <johannes@sipsolutions.net>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Dec 4, 2012 at 9:48 AM, Johannes Berg <johannes@sipsolutions.net> wrote:
> On Mon, 2012-11-12 at 10:51 +0100, Johannes Berg wrote:
>> From: Johannes Berg <johannes.berg@intel.com>
>>
>> When in world roaming mode, allow 40 MHz to be used
>> on channels 12 and 13 so that an AP that is, e.g.,
>> using HT40+ on channel 9 (in the UK) can be used.
>
> Well, hold on.. this can't possibly work now :(
>
> This is what happens when Luis and I disagree ...
>
> I thought the bandwidth in a given section means the bandwidth that can
> be used from this section,

No, indeed that was the objective.

> Luis implemented it to mean that a channel
> overlapping any part of that section can only use that much bandwidth.

This was a side effect of the checks we have in place, it was not expected.

> Note sure which was intended?

Technically speaking the math should be possible to figure out to
enable HT40 or not based on peer channels and although that was
assumed the user reported it not allowing HT40 due to the peer
channels not allowing HT40. I took your patch as an assumption that
was not possible.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

