Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x22d.google.com ([2a00:1450:400c:c05::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WosK1-0000O8-Kc
 for wireless-regdb@lists.infradead.org; Mon, 26 May 2014 10:40:02 +0000
Received: by mail-wi0-f173.google.com with SMTP id bs8so4016035wib.6 for
 <wireless-regdb@lists.infradead.org>; Mon, 26 May 2014 03:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-type; bh=kuKJf3hMcc8p7xq4gxvSXHV6WsVwEAmfLaQy7sJYvZc=;
 b=VXBMRvM9dtCEwP1pfiuW622GKQPe8DEHiGfzuBZ3+OMTIQWiDKgBypXfPIBdOm94fj
 iZglEuGDq60ENnbCWwsn5eaJWfFRKqyNh/FG2xluW6zMmwyckrChik3f5KFi1HVsuGWP
 pF4fRsDeIZek3DZ4kXRDvkA2ri6x8eF9ta5hIHIj0P7n08Yzv/G1Xq8nbrkGlsRv6TpT
 UE3n3fo74wmpVI4eRcMM46bbbZ7AENPtvcgt/TuVj63vjrqzMu+QYQiOoD4wrNMe6PhR
 KNWMuUN8MajPcV6SLc1u+Xr/W60ldPxCuvP3OM/0wKp9/A+33ALplfiTVzuStwViUD6c PTQw==
MIME-Version: 1.0
In-Reply-To: <1401098065.30496.0.camel@jlt4.sipsolutions.net>
References: <1401089962-10720-1-git-send-email-chaitanya.mgit@gmail.com>
 <1401097086.29704.0.camel@jlt4.sipsolutions.net>
 <CABPxzYKe5Cy36uc=C5wVEVZV0qiR=55yBw0LtzuRv412p58c9g@mail.gmail.com>
 <1401098065.30496.0.camel@jlt4.sipsolutions.net>
From: Krishna Chaitanya <chaitanya.mgit@gmail.com>
Date: Mon, 26 May 2014 16:09:17 +0530
Message-ID: <CABPxzYLC9fg-P5vP6TRH7CHvfd1Rncgoro3+7b17Bh6agEX=vw@mail.gmail.com>
Subject: Re: [wireless-regdb] [regdb] Add support to parse 2000mW tx power
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>, Luis Rodriguez <mcgrof@gmail.com>, wireless-regdb@lists.infradead.org, John Linville <linville@tuxdriver.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, May 26, 2014 at 3:24 PM, Johannes Berg
<johannes@sipsolutions.net> wrote:
> On Mon, 2014-05-26 at 15:16 +0530, Krishna Chaitanya wrote:
>> On Mon, May 26, 2014 at 3:08 PM, Johannes Berg
>> <johannes@sipsolutions.net> wrote:
>> > On Mon, 2014-05-26 at 13:09 +0530, chaitanya.mgit@gmail.com wrote:
>> >
>> >> @@ -74,7 +74,7 @@ function parse_reg_rule()
>> >>                       power = 23
>> >>               } else if (power == 500) {
>> >>                       power = 27
>> >> -             } else if (power == 1000) {
>> >> +             } else if ((power == 1000) || (power == 2000)) {
>> >>                       power = 30
>> >
>> > This seems like a pretty sick thing to do to start with, and certainly
>>
>> Agree.
>>
>> > power=30 isn't right for 2000mW...
>>
>> Sorry, typo. Its supposed to be 33.
>>
>> > Can't awk calculate the logarithm?
>> Does kernel support log arithmetic/Float operations.?
>
> This script runs at build time.
Ok, understood. I will send in V2 with the algo after some testing.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

