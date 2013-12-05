Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from s3.sipsolutions.net ([144.76.43.152] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VoYgZ-0000TT-3i
 for wireless-regdb@lists.infradead.org; Thu, 05 Dec 2013 13:09:43 +0000
Message-ID: <1386248952.4182.1.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Thu, 05 Dec 2013 14:09:12 +0100
In-Reply-To: <1386098166-24196-4-git-send-email-ilan.peer@intel.com>
References: <1386098166-24196-1-git-send-email-ilan.peer@intel.com>
 <1386098166-24196-4-git-send-email-ilan.peer@intel.com>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH v2 3/6] cfg80211: Enable GO operation
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

On Tue, 2013-12-03 at 21:16 +0200, Ilan Peer wrote:

> +#ifdef CONFIG_CFG80211_REG_SOFT_CONFIGURATIONS
> +/* For GO only, check if the channel can be used under permissive conditions
> + * mandated by the some regulatory bodies, i.e., the channel is marked with
> + * IEEE80211_CHAN_GO_CONCURRENT and there is an additional station interface
> + * associated to an AP on the same channel or on the same UNII band
> + * (assuming that the AP is an authorized master).
> + */
> +static bool cfg80211_go_permissive_chan(struct cfg80211_registered_device *rdev,
> +					struct ieee80211_channel *chan)
> +{

Seems like you could move the ifdef here ...

> +	struct wireless_dev *wdev_iter;
> +
> +	ASSERT_RTNL();
> +
> +	if (!(chan->flags & IEEE80211_CHAN_GO_CONCURRENT))
> +		return false;
> +
> +	list_for_each_entry(wdev_iter, &rdev->wdev_list, list) {
> +		struct ieee80211_channel *other_chan = NULL;
> +
> +		if (wdev_iter->iftype != NL80211_IFTYPE_STATION ||
> +		    !netif_running(wdev_iter->netdev))
> +				continue;
> +
> +		wdev_lock(wdev_iter);
> +		if (wdev_iter->current_bss)
> +			other_chan = wdev_iter->current_bss->pub.channel;
> +		wdev_unlock(wdev_iter);
> +
> +		if (!other_chan)
> +			continue;
> +
> +		if (chan == other_chan) {
> +			return true;
> +		} else if (chan->band == IEEE80211_BAND_5GHZ) {
> +			int r1 = cfg80211_get_unii(chan->center_freq);
> +			int r2 = cfg80211_get_unii(other_chan->center_freq);
> +
> +			if (r1 != -EINVAL && r1 == r2)
> +				return true;
> +		}
> +	}

and here instead of duplicating the function prototype

> +	return false;
> +}

johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

