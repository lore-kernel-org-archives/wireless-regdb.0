Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-f172.google.com ([209.85.212.172])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzCKB-0000FR-30
 for wireless-regdb@lists.infradead.org; Tue, 16 Jul 2013 20:58:20 +0000
Received: by mail-wi0-f172.google.com with SMTP id c10so4633351wiw.17 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 13:57:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=mime-version:sender:in-reply-to:references:from:date
 :x-google-sender-auth:message-id:subject:to:cc:content-type
 :content-transfer-encoding;
 bh=fggRwI4JdATqK3Se47PAE6YniyBhEFzM1ZNniTfU2kg=;
 b=HZzMAgzux9prr3O2DHvqREk0Yo7Ie+45jsLk9TQepkAZhxgVn+8YNU6BRrBg7xzipO
 w3P+PEUyzhusBS7h5WH0it1YelBLrYo4fKdRH6rDdrTE1+yvZVwn0qssWm1RvHcAgIwt
 EDf5LBFByGhgh9i03vRn8YDWKr5JXBiRse895bltTEsmDohXVPIcCBz7FXK/X9+7t8MT
 6kmqQ8H7tIGCQNQgxFd4Ax1u550hxckVyqs6RBBg2jJL0y9yuRYU3nzcWTv5dqLW6ytU
 azLeWDRfImnw+Ydta3hRvo7j5TggrO6jb3SfJeEHPvhRwT7+7UatsCZ311mVG3Y5StGM +RTw==
MIME-Version: 1.0
In-Reply-To: <CB3B3D4774441E42AA3EA0E1BA8230A01AD2DFC5@HASMSX106.ger.corp.intel.com>
References: <1372768095-26053-1-git-send-email-ilan.peer@intel.com>
 <1372768095-26053-4-git-send-email-ilan.peer@intel.com>
 <CAB=NE6VQXQPRK9_Q-Nh+ripRa+PdCd=4_EZvPxeghBjc32ejyQ@mail.gmail.com>
 <CB3B3D4774441E42AA3EA0E1BA8230A01AD2DFC5@HASMSX106.ger.corp.intel.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 13:57:34 -0700
Message-ID: <CAB=NE6WY43BYDehH5-MyF0GQORC1dTrNToUsRVC-Q5bDwcna3A@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH 3/3] [RFC] cfg80211: Enable GO
	operation on additional channels
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
To: "Peer, Ilan" <ilan.peer@intel.com>
Cc: "Shalev, Oz" <oz.shalev@intel.com>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, Jouni Malinen <j@w1.fi>, linux-wireless <linux-wireless@vger.kernel.org>, "Ginsburg, Noam" <noam.ginsburg@intel.com>, "Perelmooter,
 Liraz" <liraz.perelmooter@intel.com>, "Spinadel,
 David" <david.spinadel@intel.com>, Michael Green <green@qca.qualcomm.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Jul 10, 2013 at 3:47 AM, Peer, Ilan <ilan.peer@intel.com> wrote:
>> Are you aware of UNII-1, UNII-2, UNII-2E, UNII-3 are specific world regulatory
>> language bands? When I last tried to look for a clear definition I could not find
>> a clear definition of them and its why on the ath module on for QCA modules I
>> state "we call these" in reference to the UNII nomenclature. If we can get a
>> clear resource for its definition that would help here.
>>
>
> Maybe these link will help.
> http://www.gpo.gov/fdsys/pkg/CFR-2010-title47-vol1/xml/CFR-2010-title47-vol1-part15.xml#seqnum15.403
> http://hraunfoss.fcc.gov/edocs_public/attachmatch/FCC-13-22A1.pdf
>
> Anyway, I will use your ''we call these" notation as well :)

No no, this is good, its just United States / FCC biased and I hadn't
seen the documentation you provided before. This confirms these are
official terms but still just US / FCC biased. My point was that we
should be careful to not make global statements on regulatory code
about things that are not global. If we know only the FCC calls this
UNII well lets document that and provide the reference you supplied. I
anticipated having to deal with special case regulatory code outside
of of what CRDA / wireless-regdb provides -- given that CRDA /
wireless-regdb were meant to be more RF agnostic anyway.

Given that other vendors may also want to get the UNII band can you
stuff instead cfg80211_get_unii_band() into reg.c and do the #ifdef
properly with the Kconfig, and export it as well, as well as document
it properly providing the reference you mentioned.

>> > + * 1. Indoor only: a GO can be operational on such a channel, iff there is
>> > + *    clear assessment that the platform device is indoor.
>> > + * 2. Concurrent GO: a GO can be operational on such a channel, iff there is
>> an
>> > + *    additional station interface connected to an AP on this channel.
>> > + *
>> > + * TODO: The function is too permissive, as it does not verify the
>> > + platform
>> > + * device type is indeed indoor, or that the AP is indoor/AC powered.
>>
>> So to do this properly we need an eventual userspace API to throw to
>> kernelspace if we are AC powered? We'll need this to enhance this routine
>> here?
>>
>
> Not sure about this point. I prefer leaving the exact knowledge of the device type, being AC Powered or not (and which type of AC power) etc. out side of the kernel. The approach I chose with this patch was to only allow to start a GO on such a channel, making the basic verification done above, assuming that the user space component guarantees that all the full restrictions are satisfied.

Fair enough. Seems we just need to zero in now on the requirement or
not on the extra flag you suggested.

>> In the meantime, while you get all your patch sets properly developed I'd
>> recommend to define the code returning false there strictly or perhaps for any
>> flag on the channel requiring DFS / no-ibss, or passive scan. The stricter case,
>> defining false always, seems to be what you are suggesting here.
>
> I do not think that this is needed here. Returning false, means that the code should test if the PASSIVE_SCAN and NO_IBSS are not set on the channel we want to start beaconing on.
>
>> Do you have a white list that can exclude some channels for now globally or
>> somehow as all this lines up?
>>
>
> Note sure I understood what you are looking for. Can you please clarify this point?

It was unclear for what exact channels you needed to deal with here.
Given review so far wouldn't it just be DFS flagged channels on some
UNII bands ? Then again if the indoor flag needs to be pegged to to a
specific UNII band and we can do that on wireless-regdb do we even
need the UNII band check routine helper?

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

