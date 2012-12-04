Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tfy3m-0007Gp-0O
 for wireless-regdb@lists.infradead.org; Tue, 04 Dec 2012 19:21:38 +0000
Received: by mail-la0-f49.google.com with SMTP id r15so3223083lag.36 for
 <wireless-regdb@lists.infradead.org>; Tue, 04 Dec 2012 11:21:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-type; bh=97Fh+JmuHQXfRssX2nwzqnLh7LFLLoWyrRFs1mcUP4Y=;
 b=WxC1RBRwf6Qj75AI78M2Tk/b5vvOWEEXuXIBbBTYBlsA4CYbJpD/MPka0GDSxL9S5b
 0JrpnSRSaoa8nOfJpN2WYJEMASHlr4pHGf1UMJerXftbA6RSWHWBFbtzI4E+c+Omxlxa
 PRQseKhJ/WHPhdjmFuHF0z+xUOGx+cce0hP61tU79Tmye29XH++H/QkVI7e9IHguuaNv
 8+2ZKFIDO4E+mdmku9j/RbijqH6sFbUgDxL5bZkjHD55/7BfUpM0LNNpVI8GI9awM91d
 e08BZOHrl1z601kaP04zjogOds7Ysx2Qqgb8qtWRHaewpog7mWr5UbaL08Gaml9JcnxM 87UQ==
MIME-Version: 1.0
In-Reply-To: <1354648275.9608.18.camel@jlt4.sipsolutions.net>
References: <1352713865.9525.9.camel@jlt4.sipsolutions.net>
 <1354643287.9608.8.camel@jlt4.sipsolutions.net>
 <CAB=NE6U2hvFbH_EMQbF+toBKSz6mdWyZhvwJ6UZVD-8ks4gp_g@mail.gmail.com>
 <1354645223.9608.11.camel@jlt4.sipsolutions.net>
 <CAB=NE6V8-AonsG23jBCY6yESy37gYNX_=cKLgnhD=KGzP5dh3A@mail.gmail.com>
 <1354646482.9608.15.camel@jlt4.sipsolutions.net>
 <CAB=NE6UMvx4uRxy9nTxZX6fCC=jPoxoF-mKdL=pvBVwH3cR+QA@mail.gmail.com>
 <1354648275.9608.18.camel@jlt4.sipsolutions.net>
From: "Luis R. Rodriguez" <mcgrof@gmail.com>
Date: Tue, 4 Dec 2012 11:21:15 -0800
Message-ID: <CAB=NE6VjSpq=3RKqoG8Q9VRj6qCcfC8ww=7rvUSYx5uSc0PsTw@mail.gmail.com>
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

On Tue, Dec 4, 2012 at 11:11 AM, Johannes Berg
<johannes@sipsolutions.net> wrote:
> On Tue, 2012-12-04 at 10:54 -0800, Luis R. Rodriguez wrote:
>
>> >> As I implemented it, it should be checking if HT40 is used. If so then
>> >> it should be checking to see if the primary can use 40 MHz bandwidth
>> >> and then check to see if the secondary can use 20 MHz. The issue
>> >> should be that the code should likely is checking that the secondary
>> >> requires 40 MHz. It should only need to check if the secondary can use
>> >> 20 MHz if HT40 is desired.
>> >
>> > I don't think this is really what we should do ... In fact given the way
>> > we do it now with overlapping freqbands this would cause more problems
>> > than it would solve, I think.
>>
>> If we end up supporting overlapping frequency rules to be submitted.
>> Right now they don't overlap but point taken that we do support it and
>> there may possible issue of having them supported.
>
> 00 has overlapping rules today, also JP and KP

I was just thinking that after I wrote this.. otherwise this would not
have come up.

>> > What it really should check is that for each freqband, as much bandwidth
>> > is allowed as falls into that freqband. But given that we have
>> > overlapping freqbands, much bandwidth will actually fall into each one
>> > of them, so we must allow @40 again ...
>> >
>> > I'm drawing some pictures now :-)
>>
>> :) Lets be clear though that your points on overlapping frequency
>> rules are a separate architectural position to take than addressing
>> the issue at hand. This however is a good crux point for us to
>> evaluate this particular architectural consideration.
>
> Agree.

:)

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

