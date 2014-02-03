Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from s3.sipsolutions.net ([144.76.43.152] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WAIvp-0007xO-GZ
 for wireless-regdb@lists.infradead.org; Mon, 03 Feb 2014 12:47:22 +0000
Message-ID: <1391431612.4488.13.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Mon, 03 Feb 2014 13:46:52 +0100
In-Reply-To: <CB3B3D4774441E42AA3EA0E1BA8230A0333705C1@HASMSX106.ger.corp.intel.com>
References: <1390818118-27261-1-git-send-email-ilan.peer@intel.com>
 <1390818118-27261-4-git-send-email-ilan.peer@intel.com>
 <1391177479.4141.23.camel@jlt4.sipsolutions.net>
 <CB3B3D4774441E42AA3EA0E1BA8230A0333705C1@HASMSX106.ger.corp.intel.com>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH v3 3/6] cfg80211: Enable GO operation
 on additional channels
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
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Sun, 2014-02-02 at 19:20 +0000, Peer, Ilan wrote:

> I do not think that this will be needed, as current wpa_supplicant
> logic is not aware of the GO_CONCURRENT and INDOOR_ONLY flags (leaving
> them ignored) and does not allow instantiating an AP/GO on channels
> marked with NO_IR. In addition as this feature must be enabled under
> CONFIG_ONUS, I expect that whoever uses it uses know what's is doing.

Ok, thanks for the clarification. I wasn't sure how existing wpa_s
versions would treat this.

> Such logic might be needed if kernel enforces regulatory compliance
> after the GO_CONCURRENT relaxation conditions are no longer met
> (station interface leaves the channel), where if such a case is true,
> it would be appropriate to add an indication to the kernel telling it
> that user space knows what it's doing, so the kernel will not do any
> quiescing logic (similar to what Luis suggested).

I'm not convinced that is necessary - the "quiescing" would be good I
suppose, but there should be plenty of time before it for userspace to
request an appropriate CSA so I don't think any additional flag is
needed.

Assuming we're talking about the same scenario? I guess it should be
like this:

 - STA connected to AP on an "additional" channel
 - GO operating on the same channel
 - AP starts to advertise CSA
 - wpa_s will request CSA for GO as well
 - all will be fine

If wpa_s is broken, then at the time that the CSA actually kicks in the
GO would be stopped, since it didn't switch channel, but I don't think
there's a need for any additional flags.

johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

