Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V2d3b-0000yl-61
 for wireless-regdb@lists.infradead.org; Fri, 26 Jul 2013 08:07:24 +0000
Received: by mail-la0-f50.google.com with SMTP id ep20so2097768lab.9 for
 <wireless-regdb@lists.infradead.org>; Fri, 26 Jul 2013 01:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=mime-version:sender:in-reply-to:references:from:date
 :x-google-sender-auth:message-id:subject:to:cc:content-type;
 bh=OR3NedITegy/LxRPv9cE+yzoBBxJB1CNs/4GEWDsBeo=;
 b=eidMTWvqnkOG6mMrpXQbgha2P7QqoH0LosR/0Maa2ySXqSIGgg/pSyB5wyOH0aOpSN
 xCU2f8yqJJlZ/hARfFwwnfJthkUWjfWvgzBXP1xa+ndkV4DEjPBnNcazoZuKDizJfbfI
 NVZ2fBQ7rjK+0dKqJIBfV+z6RE5gzTxV5mT7vSlTfVlE+Rs+gwNI6qxqsHezZu0HTVlz
 +uXLGOCkJxZH8VzVhIbljGtNuyCGuskxEDsnxTVE8LOFeX+YZlJUhQsfdPdexDpN4e2n
 FsQIOCyEkhf+9FGKsCwyU+tir1fXj87uEOdooxK1B8jplDKf16a2d1NReKeiTFnG3MRm 0Fjg==
MIME-Version: 1.0
In-Reply-To: <1374825552.8248.2.camel@jlt4.sipsolutions.net>
References: <CAB=NE6V_PKG2UBSLPRhziUDcFzFi8uOJNiNzoPNaK0oU7rmZuQ@mail.gmail.com>
 <1374825552.8248.2.camel@jlt4.sipsolutions.net>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri, 26 Jul 2013 01:06:40 -0700
Message-ID: <CAB=NE6Wr1hC2mQy1qo79yAawkw1cVsTG4unEFYYdu7vWKMM2MA@mail.gmail.com>
Subject: Re: [wireless-regdb] Updates to wireless-regdb review - vendor
	namespaces and VHT80
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
To: Johannes Berg <johannes@sipsolutions.net>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Jul 26, 2013 at 12:59 AM, Johannes Berg
<johannes@sipsolutions.net> wrote:
> On Tue, 2013-07-02 at 17:38 -0700, Luis R. Rodriguez wrote:
>
>> I'd like to propose a middle ground to also address another issue I've
>> noticed. Vendors can disagree and in order to give vendors a warm
>> fuzzy on ability to ensure their data is interpreted and provide the
>> ability to offload down to wireless-regdb even more interpretations
>> I'd like to propose the idea of embracing vendor namespaces within
>> wireless-regdb / crda / the kernel. The way I'd envision this is
>> '/sbin/crda US OUI' is passed upon a regulatory hint and in turn CRDA
>> will read the namespace for the OUI passed in regulatory.bin. Then at
>> our wireless summit kumbaya and with the development / enhancements of
>> intersect.c and union.c (not yet developed) we'd work on generalizing
>> the data. This would also allow vendors to supply their own rules
>> without the high bar that we are setting which so far has proven very
>> difficult to met.
>
> I'm not really fully convinced, but let's discuss at the summit.
>
> Wasn't the point of the regdb and documentation etc. also that the users
> can trust it? It seems to me that if you're building a generic system
> you wouldn't really want different regulatory interpretations. And if
> you think for some special system (say a tablet) you need a different
> database, you'll probably hand-roll one specifically for that system
> anyway.

I don't think that's the problem. The problem is more -- folks are not
used to and don't wan to engage. What do we do in the meantime where
the alternative is something separate and likely redistributable
elsewhere. I'd personally rather have folks engaged and I figured a
namespace would at least provide a central middle ground. Glad to
discuss at the summit.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

