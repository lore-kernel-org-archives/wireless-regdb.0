Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x229.google.com ([2a00:1450:4010:c03::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uzxff-0000LE-DK
 for wireless-regdb@lists.infradead.org; Thu, 18 Jul 2013 23:31:40 +0000
Received: by mail-la0-f41.google.com with SMTP id fn20so3010089lab.28 for
 <wireless-regdb@lists.infradead.org>; Thu, 18 Jul 2013 16:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=mime-version:sender:in-reply-to:references:from:date
 :x-google-sender-auth:message-id:subject:to:cc:content-type;
 bh=xJ9yZM0Fl3rCihetz94WrlCjl5Lk+gCUIJ5OH2nMy9A=;
 b=KB2x+tLZaiO95yMrgjjyEkY1b9iMq1ArDHYzf9JzJ72YucTYze/4M1yqLQfD0uOX6J
 0Iw8bmENRdDzx6yNgLo5x2p0cA0neoiiw6Z91LP8Whn6Bfo2IBykKwUx9WlLeb629LBm
 rMAcI6fg3dgLhsv0LzsJYJiYVJmp8CpwP+AS4Qckc82iDlzuAuByZM/93YMYXe3R2KgW
 wXpJ4CU9g6fbXTZDv4H90FhBezJkP1hm8K9uxyrxAmYcqmLOX4tzTdqGxVrJfELWOo0u
 JvHwDR/osmEi/MErX9BR2CWRcwsoTwPFMIy1TiG9py54+qN1Dt9nDa5VVpZ3sbexGMAE pN1g==
MIME-Version: 1.0
In-Reply-To: <CB3B3D4774441E42AA3EA0E1BA8230A01AD31E07@HASMSX106.ger.corp.intel.com>
References: <1372768095-26053-1-git-send-email-ilan.peer@intel.com>
 <1372768095-26053-2-git-send-email-ilan.peer@intel.com>
 <CAB=NE6Wr_Y+uoGwOT_nE-VE49vd0eobv_F7=hF=mtVfGgCOehg@mail.gmail.com>
 <CB3B3D4774441E42AA3EA0E1BA8230A01AD2DF7B@HASMSX106.ger.corp.intel.com>
 <CAB=NE6WBz36HktdvOd_Ay=xrx0LJQd=9MxxTrTFKhALS+HMHzg@mail.gmail.com>
 <CB3B3D4774441E42AA3EA0E1BA8230A01AD31E07@HASMSX106.ger.corp.intel.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 18 Jul 2013 16:30:53 -0700
Message-ID: <CAB=NE6U3hBaEawcMJ27ZUFPaFo6RDUuzt9hh5AQN=eFWYMX-Hg@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH 1/3] [RFC] cfg80211: Add indoor only
 and GO concurrent channel attributes
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
Cc: "Shalev, Oz" <oz.shalev@intel.com>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>, "Ginsburg,
 Noam" <noam.ginsburg@intel.com>, "Perelmooter,
 Liraz" <liraz.perelmooter@intel.com>, "Spinadel,
 David" <david.spinadel@intel.com>, Michael Green <green@qca.qualcomm.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Jul 17, 2013 at 11:47 AM, Peer, Ilan <ilan.peer@intel.com> wrote:
> On some day Luis wrote:
>
>> Based on the documentation I reviewed and your proposal it'd seem to me that
>> we can distinguish GO on the upper layers and determine if a channel is DFS or
>> not by just the DFS flag. The next hint you'd need is if the GO got regulatory
>> information from a master somehow, no?
>
> This should also be handled by user space, based on the device type/sub type of the local device directly, or
> indirectly through other means such a managed interface associating with an AP that it's device type
> value is 6 etc.

This seems reasonable but we need to also consider state machine
changes possible on the channel the GO is on as well and there are
different reasons for the channel to change:

  * beacon hint - nl80211_send_beacon_hint_event()
  * regulatory change - nl80211_send_reg_change_event()

The beacon hint multicast group message sends the channel prior to the
beacon hint and after. The regulatory change event currently isn't as
atomic and only provides the the fact that regulatory domain state
machine has incurred a change. In this case it may make sense to send
all wiphy information and have hostapd verify if a change has occurred
on the channel.

>> That is I am not seeing a need for a new flag at this point in wireless-regdb,
>> given also I mentioned another type of case for regulatory hints technically
>> possible (cellular base station hints but it seems only allowed with exceptional
>> review by the FCC).
>>
>> I take it what you want to enable here is GO operation on DFS channels and use
>> country IEs to determine if you can use GO, but if you do have GO enabled then
>> you'd want hooks to not daisy chain, ack?
>
> Currently, we do not intend to base the relaxation on the country IE directly,

Its still a possibility so it should be handled and we should consider
it on core regulatory. One possible solution might be to not enable GO
unless the the NL80211_ATTR_REG_INITIATOR was something appropriate
for the wiphy.

> but base it on the fact that if
> there is a managed connection to an AP who's not a mobile device (assuming that it is an authorized master),

How do you intend on verifying a device that has associated to an AP,
that that AP is not a mobile device, ie that it fits this "authorized
master" category ?

> than the channel used by the managed connection is valid for use (as long as the managed interface
> is connected to the AP on the channel).

Makes sense.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

