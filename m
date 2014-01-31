Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from s3.sipsolutions.net ([144.76.43.152] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W9Eou-0000i1-7D
 for wireless-regdb@lists.infradead.org; Fri, 31 Jan 2014 14:11:48 +0000
Message-ID: <1391177479.4141.23.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Fri, 31 Jan 2014 15:11:19 +0100
In-Reply-To: <1390818118-27261-4-git-send-email-ilan.peer@intel.com>
References: <1390818118-27261-1-git-send-email-ilan.peer@intel.com>
 <1390818118-27261-4-git-send-email-ilan.peer@intel.com>
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
To: Ilan Peer <ilan.peer@intel.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, 2014-01-27 at 12:21 +0200, Ilan Peer wrote:

> It is assumed that such restrictions are enforced by user space.
> Furthermore, it is assumed, that if the conditions that allowed for
> the operation of the GO on such a channel change, i.e., the station
> interface disconnected from the AP, it is the responsibility of user
> space to evacuate the GO from the channel.

For the latter here, don't we need some sort of flag with userspace
saying "trust me, I know what I'm doing"? Or put another way - how does
this not make us break compliance when running with old versions of
wpa_supplicant?

johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

