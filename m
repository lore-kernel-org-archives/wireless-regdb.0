Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WuTpj-0006eW-Q1
 for wireless-regdb@lists.infradead.org; Tue, 10 Jun 2014 21:43:56 +0000
Received: by mail-lb0-f177.google.com with SMTP id s7so4224674lbd.22 for
 <wireless-regdb@lists.infradead.org>; Tue, 10 Jun 2014 14:43:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=l7Qjr00/pud+r36qMyrXVNZi9nrQELpALgtFEfWgWf8=;
 b=RSwLokpUIEcGPIKnKdlke0xgCr3J8bm/YcE9crihtHvVu8URJl+Af1Oj7AXsn/hlQ3
 kzgw3YimThJwkpXO65HxY5Vk6Qifcft4rRmwya0BWs+EQJmADT4b8xCTq023QEm7fst8
 6mpYa0NG5W++q41W7/SQQAHi/4gBZo4pKSca0gAA5A6hnbMcMtxwBy3BWY///gaSDcMd
 ZSMi6Lfr/pewIlZnS8PQnSNDiP20uSy68O8tjZ0ilUmbrXqZS/nd/J/C5yK6Jo59qrFT
 9whgk1LssZXnznLisx8JONYZb6Wuiua8TMMjPhm5csvxZBQnO/TBQrZe1pb1dYEUwtMk mlnA==
MIME-Version: 1.0
In-Reply-To: <CA+XVXfezx4VpycJybyQ3NgvTXSPTdXn5eAg8jj+yjy+HxZ-EKA@mail.gmail.com>
References: <1399798250-20987-1-git-send-email-emmanuel.grumbach@intel.com>
 <1399798250-20987-4-git-send-email-emmanuel.grumbach@intel.com>
 <CAB=NE6Wwv0y1cOZrpLe+yjZqHLmZpdJ3dYaLhLro==x4-t9UzA@mail.gmail.com>
 <CA+XVXfdFZAFih=YStSofJCaNgLQYDPxBsEPbovWufWt7O0vbPQ@mail.gmail.com>
 <CAB=NE6U2Uy8qjEzZu2ZZqP393=wGNk7wUPOe=VwhHBB6+x56Hg@mail.gmail.com>
 <CA+XVXfezx4VpycJybyQ3NgvTXSPTdXn5eAg8jj+yjy+HxZ-EKA@mail.gmail.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 10 Jun 2014 14:43:13 -0700
Message-ID: <CAB=NE6Uc0WD4sC65bgpCP=z+TYDmY87uMMdaoCgRgdOaCT9uhg@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH 3/7] cfg80211: allow drivers to
 provide regulatory settings
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
To: Arik Nemtsov <arik@wizery.com>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
Cc: Johannes Berg <johannes@sipsolutions.net>, Emmanuel Grumbach <emmanuel.grumbach@intel.com>, linux-wireless <linux-wireless@vger.kernel.org>, Arik Nemtsov <arikx.nemtsov@intel.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, May 20, 2014 at 5:00 AM, Arik Nemtsov <arik@wizery.com> wrote:
>>> The wiphy_apply_custom_regulatory() option is to be used before
>>> registering the wiphy. We want to be able to accept country code
>>> changes at runtime, with the driver supplying the regdomain.
>>
>> For which cases exactly at run time? This is already being handled on
>> other drivers without changing APIs, so its unclear why you need this
>> and to expose this to cfg80211. To be clear, a few drivers other than
>> Intel already had this strategy and they managed to just use the
>> reg_notifier() and do what it needs by using the flag that ignores
>> country IEs, and doing everything else on the driver side. Please
>> explore this avenue.
>
> The problem is not propagating the country setting the FW. I agree
> this can be done via the notifier. The problem is propagating the
> regulatory data from FW to userspace.
> For instance we want P2P to be able to use 5Ghz channels in the US.
> For this, wpa_s must have up to date information from the regulatory
> DB for country=US. For Intel, the regulatory DB is in FW.

Doesn't the custom regulatory flag allow you to do what you want
already? Is the issue that the custom flag does not let dynamic run
time updates and that's what you need?

>>> As for why this was chosen - I think you're barking up the wrong tree :)
>>> The regulatory folks at Intel decided to store the data in FW,
>>
>> This has been done for a long time but the main reason why this was
>> done that way was that Intel had no need to have tons of regulatory
>> domains, and instead had only 4 world regulatory domains, that's all,
>> if things have changed it'd be good to understand this and also the
>> reasons why things are being done.
>
> This is no longer true. Some variants will now contain settings per county.

OK thanks, I suppose there is more need for regulatory folks at
companies to be talking.

>>> I don't  have any say here. I think this is more legal than technology reasons.
>>
>> Asking these questions, understanding them, and addressing concerns
>> are the questions that need to be asked to help advance wireless on
>> Linux, it was not asking these questions that got us into trouble in
>> the first place, we don't want to go back to that. So even if it is
>> non technical and purely regulatory we obviously should ask why.
>>
>
> I'm actually an advocate of the CRDA/regdb approach. Less work for us. :)
> We presented it but ultimately the decision was theirs, not mine.

I'm starting to think that having an organized group that does this
for the community would be good, having different companies do this
and come up with different conclusions seems rather a waste of time,
energy and resources.

> I believe the main motivations were security and uniformity across
> different OSes.

Having loose interpretations over what is generally accepted is
understood, specially for corner cases of new breeds of technology
like P2P and dealing with nagging customers who insist on things or
are pushing the envelope on what regulatory bodies have or have not
made explicit. However making it the norm seems rather counter
productive in the long run. I'm starting to think that having a clean
API to extract the regulatory data from FW to allow even dynamic
changes at run time might be good given that we can at least extract
that information and deduce updates from companies for the general
public wireless-regdb. That is, the mathematics on wireless-regdb /
CRDA can be used to create the intersections of what is accepted for
the case where no regulatory information is available. The technical
assumption however that one should be stuffing firmware with
regulatory data is brain dead given that it doesn't scale, prone to
regulatory issues, and bugs. The flexibility of having these updates
generalized and only using firmware for out of norm situations should
be strongly encouraged.

> For instance, one might replace the regdb and break
> regulatory. So the FW has a regulatory checker that verifies correct
> settings. Which in turn means it will hold the regulatory DB anyway.

That's just brain dead, we're reverse engineered firmware before,
firmware is no safe haven from modifications, what we should be
striving for, and what I do need your help with is arguing back up to
PHBs on the architectural issues with the firmware design, the fact
that its proven over and over to have issues, and that it doesn't
fucking scale.

That said, if your PHBs want to shoot themselves on the foot we can
let them, but we should at the very least be able to extract *all* the
regulatory db from the damn firmware so that we can then properly
implement a common solution upstream for all 802.11 drivers as we have
been doing.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

