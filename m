Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from s3.sipsolutions.net ([144.76.43.152] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W9ErK-0000nc-I7
 for wireless-regdb@lists.infradead.org; Fri, 31 Jan 2014 14:14:19 +0000
Message-ID: <1391177634.4141.24.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Fri, 31 Jan 2014 15:13:54 +0100
In-Reply-To: <1390818118-27261-5-git-send-email-ilan.peer@intel.com>
References: <1390818118-27261-1-git-send-email-ilan.peer@intel.com>
 <1390818118-27261-5-git-send-email-ilan.peer@intel.com>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH v3 4/6] cfg80211: Add an option to
 hint indoor operation
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

>  	switch (user_reg_hint_type) {
>  	case NL80211_USER_REG_HINT_USER:
>  	case NL80211_USER_REG_HINT_CELL_BASE:
> -		break;
> +		if (!info->attrs[NL80211_ATTR_REG_ALPHA2])
> +			return -EINVAL;
> +
> +		data = nla_data(info->attrs[NL80211_ATTR_REG_ALPHA2]);
> +		return regulatory_hint_user(data, user_reg_hint_type);
> +	case NL80211_USER_REG_HINT_INDOOR:
> +		return regulatory_hint_indoor_user();
>  	default:
>  		return -EINVAL;
>  	}
>  
> -	r = regulatory_hint_user(data, user_reg_hint_type);
> -
> -	return r;
> +	return 0;

Isn't that "return 0" dead code now?

johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

