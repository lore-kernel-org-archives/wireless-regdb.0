Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from s3.sipsolutions.net ([144.76.43.152] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uk7Ir-0006js-59
 for wireless-regdb@lists.infradead.org; Wed, 05 Jun 2013 06:34:37 +0000
Message-ID: <1370414046.8920.1.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Wed, 05 Jun 2013 08:34:06 +0200
In-Reply-To: <1368738412-7740-1-git-send-email-johannes@sipsolutions.net>
References: <1368738412-7740-1-git-send-email-johannes@sipsolutions.net>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH] regulatory: enable channels 52-64 and
 100-144 for world roaming
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
To: linux-wireless@vger.kernel.org
Cc: mcgrof@do-not-panic.com, wireless-regdb@lists.infradead.org, bzhao@marvell.com
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, 2013-05-16 at 23:06 +0200, Johannes Berg wrote:
> From: Johannes Berg <johannes.berg@intel.com>
> 
> If allowed in a country, these channels typically require DFS
> so mark them as such. Channel 144 is a bit special, it's coming
> into use now to allow more VHT 80 channels, but world roaming
> with passive scanning is acceptable anyway. It seems fairly
> unlikely that it'll be used as the control channel for a VHT
> AP, but it needs to be present to allow a full VHT connection
> to an AP that uses it as one of the secondary channels.
> 
> Also enable VHT 160 on these channels, and also for channels
> 36-48 to be able to use VHT 160 there.

You guys all get a few more days for comments, then I'm merging this
next Monday. I really think it's the right thing to do, there's no
reason to prohibit passive scanning on radar channels that I know of.

johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

