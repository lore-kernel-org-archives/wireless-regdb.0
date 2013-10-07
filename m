Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from s3.sipsolutions.net ([144.76.43.152] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VT6D0-0003yP-ED
 for wireless-regdb@lists.infradead.org; Mon, 07 Oct 2013 08:30:31 +0000
Message-ID: <1381134605.13586.4.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Mon, 07 Oct 2013 10:30:05 +0200
In-Reply-To: <1381134567.13586.3.camel@jlt4.sipsolutions.net>
References: <1378472763-36062-1-git-send-email-nbd@openwrt.org>
 <1378472763-36062-2-git-send-email-nbd@openwrt.org>
 <1380625512.14430.19.camel@jlt4.sipsolutions.net>
 <524AAE97.5020708@openwrt.org>
 <1380628244.14430.37.camel@jlt4.sipsolutions.net>
 <524FF599.5040706@openwrt.org>
 <1381134567.13586.3.camel@jlt4.sipsolutions.net>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH 2/2] mac80211: implement support for
 configuring antenna gain
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
To: Felix Fietkau <nbd@openwrt.org>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

+ wireless-regdb

On Mon, 2013-10-07 at 10:29 +0200, Johannes Berg wrote:
> On Sat, 2013-10-05 at 13:18 +0200, Felix Fietkau wrote:
> 
> > > I understand. I don't understand the pieces about "max_antenna_gain".
> 
> > Right now ath9k has an antenna gain value in the EEPROM, and it compares
> > it against the channel max_antenna_gain value.
> 
> I just don't understand what the max means. If I connect a 5dBi gain
> antenna, but the "max antenna gain" is 3dBi, what should happen?
> 
> > Let's assume we have configured the tx power to the maximum value, the
> > regdb allows 3 dB antenna gain, and the ath9k EEPROM contains an antenna
> > gain of 3 dB as well.
> > If we now add another 3 dB of user-configured antenna gain, it first
> > starts tapping into the regulatory-allowed antenna gain before reducing
> > tx power in mac80211. The driver needs to know about this, so I put the
> > calculated maximum antenna gain into the hw conf as well.
> 
> I don't think it really works this way, does it? I don't believe the
> "regulatory-allowed antenna gain" is really something that's allowed on
> top of the EIRP?
> 
> johannes
> 
> --
> To unsubscribe from this list: send the line "unsubscribe linux-wireless" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> 



_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

