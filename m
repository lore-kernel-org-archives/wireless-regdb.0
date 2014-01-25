Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x236.google.com ([2607:f8b0:400e:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W6qoZ-0003DZ-Go
 for wireless-regdb@lists.infradead.org; Sat, 25 Jan 2014 00:09:37 +0000
Received: by mail-pb0-f54.google.com with SMTP id uo5so3820307pbc.13 for
 <wireless-regdb@lists.infradead.org>; Fri, 24 Jan 2014 16:09:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-disposition:in-reply-to:user-agent;
 bh=Wm42B4hHHeiMWHj6xQRGmUPBtevfO2U3nsN9VaCnHnY=;
 b=1HpId/FhJ3EjA3DGpW4CY3lbd1T2vaa6y5LaPNkLxmxgDaZ48jM4RD/LlKqugFXXiX
 7wrro8JVnbFPGcRFdnevo5RI3mMufuYubrNedUpJOoXPP0H7PcD/Xffi5eemE5QrrrHT
 0sKEK++gJpNYfy13J5LKC30t/lbYEZ1YpWdRdNw/G0bwLySDHp0SBIJKffnlGrT3f5eC
 7lTBq0lIoQR98w59bGwPZAfmIJDoqibPLsqsGOvkSvD8YGHKaO58y5V0J0RCJlO5xZ+p
 7UR1OJdPa9g7RXoTGiKhOtt5/pL4okPhAXGWujEnFX9iyiTvpWEkFs/FB4mO8gMjLpBe RsLw==
Date: Fri, 24 Jan 2014 16:09:06 -0800
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Message-ID: <20140125000901.GA28512@garbanzo.do-not-panic.com>
References: <1389801162-14488-1-git-send-email-ilan.peer@intel.com>
 <1389801162-14488-4-git-send-email-ilan.peer@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1389801162-14488-4-git-send-email-ilan.peer@intel.com>
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

On Wed, Jan 15, 2014 at 05:52:39PM +0200, Ilan Peer wrote:
> Allow GO operation on a channel marked with IEEE80211_CHAN_GO_CONCURRENT
> iff there is an active station interface that is associated to
> an AP operating on the same channel in 2.4 or the same UNII band in 5.2
> (assuming that the AP is an authorized master)
> 
> Note that this is a permissive approach to the FCC definitions,
> that require a clear assessment that the device operating the AP is
> an authorized master, i.e., with radar detection and DFS capabilities.
> 
> It is assumed that such restrictions are enforced by user space.
> Furthermore, it is assumed, that if the conditions that allowed for
> the operation of the GO on such a channel change, i.e., the station
> interface disconnected from the AP, it is the responsibility of user
> space to evacuate the GO from the channel.

You may be interested in perhaps picking up my regulatory quiescing patch.
Can you check and let me know?

> diff --git a/net/wireless/Kconfig b/net/wireless/Kconfig
> index 81c05e4..f4012fc 100644
> --- a/net/wireless/Kconfig
> +++ b/net/wireless/Kconfig
> @@ -102,6 +102,15 @@ config CFG80211_REG_CELLULAR_HINTS
>  	  This option adds support for drivers that can receive regulatory
>  	  hints from cellular base stations
>  
> +config CFG80211_REG_SOFT_CONFIGURATIONS

Please use something specific to P2P, maybe
CFG80211_REG_P2P_RELAX or something. It would be good
to also provide a reference to a URL on wireless.kernel.org
on documentation about an example userspace instance or effort
that is doing this.

> diff --git a/net/wireless/chan.c b/net/wireless/chan.c
> index 78559b5..d47856b 100644
> --- a/net/wireless/chan.c
> +++ b/net/wireless/chan.c
> @@ -605,15 +605,77 @@ bool cfg80211_chandef_usable(struct wiphy *wiphy,
>  }
>  EXPORT_SYMBOL(cfg80211_chandef_usable);
>  
> +#ifdef CONFIG_CFG80211_REG_SOFT_CONFIGURATIONS

Please use config_enabled(CONFIG_FOO) check to simplify this.

> +/* For GO only, check if the channel can be used under permissive conditions
> + * mandated by the some regulatory bodies, i.e., the channel is marked with
> + * IEEE80211_CHAN_GO_CONCURRENT and there is an additional station interface
> + * associated to an AP on the same channel or on the same UNII band
> + * (assuming that the AP is an authorized master).
> + */

Comments go like this:

/*
 * somet suff
 * bladsf
 */

> +static bool cfg80211_go_permissive_chan(struct cfg80211_registered_device *rdev,
> +					struct ieee80211_channel *chan)
> +{
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

<--

> +		wdev_lock(wdev_iter);
> +		if (wdev_iter->current_bss)
> +			other_chan = wdev_iter->current_bss->pub.channel;
> +		wdev_unlock(wdev_iter);

-->

This is begging to be added as a helper.

> +
> +		if (!other_chan)
> +			continue;
> +
> +		if (chan == other_chan) {
> +			return true;

No need to use braces for one liners and since you are returning
no need to indent the code below, as the else is implicit. This
in practice helps reduce general code identation.

Likeywise you can follow by a check for ! 5 GHz and bail if, and save
yourself the identation on the negative.

> +static bool cfg80211_go_permissive_chan(struct cfg80211_registered_device *rdev,
> +					struct ieee80211_channel *chan)
> +{
> +	return false;
> +}
> +#endif /* CONFIG_CFG80211_REG_SOFT_CONFIGURATIONS */

Please review chan.c well and make a call (you decide) if this
belongs on chan.c or reg.c.

> +
>  bool cfg80211_reg_can_beacon(struct wiphy *wiphy,
> -			     struct cfg80211_chan_def *chandef)
> +			     struct cfg80211_chan_def *chandef,
> +			     enum nl80211_iftype iftype)
>  {
> +	struct cfg80211_registered_device *rdev = wiphy_to_dev(wiphy);
>  	bool res;
>  	u32 prohibited_flags = IEEE80211_CHAN_DISABLED |
> -			       IEEE80211_CHAN_NO_IR |
>  			       IEEE80211_CHAN_RADAR;
>  
> -	trace_cfg80211_reg_can_beacon(wiphy, chandef);
> +	trace_cfg80211_reg_can_beacon(wiphy, chandef, iftype);
> +
> +	/* Under certain conditions suggested by the some regulatory bodies
> +	 * a GO can operate on channels marked with IEEE80211_NO_IR
> +	 * so set this flag only if such relaxations are not enabled and
> +	 * the conditions are not met.

Comment style.

> +	 */
> +	if (iftype != NL80211_IFTYPE_P2P_GO ||
> +	    !cfg80211_go_permissive_chan(rdev, chandef->chan))
> +		prohibited_flags |= IEEE80211_CHAN_NO_IR;

Please add a wiphy regulatory feature flag here that allows
device drivers to disable this, this can be enabled by default.
Practice shows regulatory stuff varies and I can imagine other
vendors wanting to consider disabling for some customers or
builds for whatever unestablished reasons.

> diff --git a/net/wireless/reg.h b/net/wireless/reg.h
> index cc4c2c0..1ef2daa 100644
> --- a/net/wireless/reg.h
> +++ b/net/wireless/reg.h
> @@ -102,4 +102,16 @@ void regulatory_hint_country_ie(struct wiphy *wiphy,
>   */
>  void regulatory_hint_disconnect(void);
>  
> +/**
> + * cfg80211_get_unii - get a value specifying the U-NII band the frequency
> + * belongs too.

One liners for top description on kdoc IIRC.

> + * @freq: the frequency for which we want to get the UNII band.
> +
> + * U-NII bands are defined by the FCC in C.F.R 47 part 15.
> + *
> + * Returns -EINVAL if freq is invalid, 1 for UNII-1, 2 for UNII-2,
> + * 3 for UNII-2e, 4 for UNII-3.

What's your source for UNII definition? Can you provide a URL?

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

