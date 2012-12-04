Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfxET-00052N-Hy
 for wireless-regdb@lists.infradead.org; Tue, 04 Dec 2012 18:28:38 +0000
Received: by mail-la0-f49.google.com with SMTP id r15so3179067lag.36 for
 <wireless-regdb@lists.infradead.org>; Tue, 04 Dec 2012 10:28:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-type; bh=8Rwt6xfIqg0P74ukRRC+n74tfZwhbd/Xz+OSoJoy/Hc=;
 b=hSkUqS/umtBwa86rStsjRez8egvGmxewwDEY5pBv6f9wr68QbXs3eRppvkO3aSF6uv
 InXq3CBuwHTmV43gSV9lk9lFqI5nh/S0K82bJ+kwpnG4IrT45YEqie0ftOxF6XTfjLlt
 J3iFw/463ppCa6+JquFB86VUo11HBilVjgqe+fDIO5n8MXrvp9Kbz/3jb39PAXhNQi6J
 F01VsIMQtCbfn4OeOfcmdrmTZpjINVfr7PE2TDT5sSUntl5EIaQ6jNgyDNB+n+HNbUEL
 WbksyNLnzUSsZ5pURk/jNmVfbXALfAZYp8BycSqVCXPfcS/ZVLHYBTsJ2+BXYcyhD4dj TkbQ==
MIME-Version: 1.0
In-Reply-To: <1354645223.9608.11.camel@jlt4.sipsolutions.net>
References: <1352713865.9525.9.camel@jlt4.sipsolutions.net>
 <1354643287.9608.8.camel@jlt4.sipsolutions.net>
 <CAB=NE6U2hvFbH_EMQbF+toBKSz6mdWyZhvwJ6UZVD-8ks4gp_g@mail.gmail.com>
 <1354645223.9608.11.camel@jlt4.sipsolutions.net>
From: "Luis R. Rodriguez" <mcgrof@gmail.com>
Date: Tue, 4 Dec 2012 10:28:15 -0800
Message-ID: <CAB=NE6V8-AonsG23jBCY6yESy37gYNX_=cKLgnhD=KGzP5dh3A@mail.gmail.com>
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

On Tue, Dec 4, 2012 at 10:20 AM, Johannes Berg
<johannes@sipsolutions.net> wrote:
> On Tue, 2012-12-04 at 10:13 -0800, Luis R. Rodriguez wrote:
>
>> >> When in world roaming mode, allow 40 MHz to be used
>> >> on channels 12 and 13 so that an AP that is, e.g.,
>> >> using HT40+ on channel 9 (in the UK) can be used.
>> >
>> > Well, hold on.. this can't possibly work now :(
>> >
>> > This is what happens when Luis and I disagree ...
>> >
>> > I thought the bandwidth in a given section means the bandwidth that can
>> > be used from this section,
>>
>> No, indeed that was the objective.
>
> That's not what's implemented though.
>
>> > Luis implemented it to mean that a channel
>> > overlapping any part of that section can only use that much bandwidth.
>>
>> This was a side effect of the checks we have in place, it was not expected.
>
> But this is what happens due to the reg.c implementation -- it checks
> that the freqband into which the primary and secondary channel fall each
> allows 40 MHz, even if they are two different freqbands.

As I implemented it, it should be checking if HT40 is used. If so then
it should be checking to see if the primary can use 40 MHz bandwidth
and then check to see if the secondary can use 20 MHz. The issue
should be that the code should likely is checking that the secondary
requires 40 MHz. It should only need to check if the secondary can use
20 MHz if HT40 is desired.

>> > Note sure which was intended?
>>
>> Technically speaking the math should be possible to figure out to
>> enable HT40 or not based on peer channels and although that was
>> assumed the user reported it not allowing HT40 due to the peer
>> channels not allowing HT40. I took your patch as an assumption that
>> was not possible.
>
> Indeed this is what we had, but I built the db.txt parser based on the
> assumption that in fact "@ 20" in the channel 11/12 freqband would have
> been sufficient to allow 40 Mhz on channel 9+. This isn't the case in
> the kernel implementation today.

I'll fix that, but given you have a slew of updates not sure if this
should go in after / before your changes.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

