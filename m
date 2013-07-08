Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwJG0-0000mL-CN
 for wireless-regdb@lists.infradead.org; Mon, 08 Jul 2013 21:46:05 +0000
Received: by mail-lb0-f171.google.com with SMTP id 13so4120994lba.2 for
 <wireless-regdb@lists.infradead.org>; Mon, 08 Jul 2013 14:45:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=mime-version:sender:in-reply-to:references:from:date
 :x-google-sender-auth:message-id:subject:to:cc:content-type;
 bh=cv23w/k52+dtEkrSrM747OcgjIM4j7x3bJRcGts9IsE=;
 b=Q44ub7qMMpdtZdBOCQ07jQHXREF9xJrCeR23zJ1XIg3UNdtNojxRSnOCNmS/reLZS0
 cbmTGQWLozlvJX6voibZo7/9SfcskWQ0pE5OGFfccTclE8aZksSYQICjfPqqVW5gmLK7
 f89oPd796exuhh+g18ggYte7fkRkxLLXz32qAQblpgyJG/ILFs5qa2jzGN5fNumFzrD3
 lxTtVOpoW8n11di6mb6999ZT+9xuwPJR5mvPLaQPWsE9ZVw46s+J+ZaipfwE4nFbj7+Z
 xDBoI+zbs5rr71qfaYMUgDlDrDvpuwMp3ETYQGP0GAbTlxcxmoX8y3/ptSfrlGJxcKqm LJxw==
MIME-Version: 1.0
In-Reply-To: <1372768095-26053-2-git-send-email-ilan.peer@intel.com>
References: <1372768095-26053-1-git-send-email-ilan.peer@intel.com>
 <1372768095-26053-2-git-send-email-ilan.peer@intel.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Mon, 8 Jul 2013 14:45:19 -0700
Message-ID: <CAB=NE6Wr_Y+uoGwOT_nE-VE49vd0eobv_F7=hF=mtVfGgCOehg@mail.gmail.com>
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
To: Ilan Peer <ilan.peer@intel.com>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, David Spinadel <david.spinadel@intel.com>
List-ID: <wireless-regdb@lists.infradead.org>

Cc'ing a few other lists for a wider review.

On Tue, Jul 2, 2013 at 5:28 AM, Ilan Peer <ilan.peer@intel.com> wrote:
> From: David Spinadel <david.spinadel@intel.com>
>
> The FCC are clarifying some soft configuration requirements,
> which among other includes the following:
>
> 1. Concurrent GO operation, where devices may support WFD in
>    bands where an authorized master (for example with DFS and
>    DFS and radar detection capability in the UNII band) is operating.

Is WFD WiFi Display? Is there any strict relationship here to WFD and
GO and regulatory or is WFD just a use case example? Are you
indicating that the FCC is making special rules for cases in specific
bands where GO *can* co-exist with other GO devices ?

You annotate that this is somehow related to DFS, are the GO
concurrent rules that the FCC is defining only applicable to DFS
frequency ranges? If so would it suffice to only use DFS flag ? Or are
there other special cases beyond DFS frequency ranges that the FCC is
creating special handling?

Apart from the FCC are you aware of special cases handling for other
regulatory bodies at this point?

Note that we have already these on regdb.h from CRDA:


/*
 * The Linux map defined in <linux/uapi/nl80211.h> enum nl80211_reg_rule_flags
 */
enum reg_rule_flags {
        RRF_NO_OFDM             = 1<<0, /* OFDM modulation not allowed */
        RRF_NO_CCK              = 1<<1, /* CCK modulation not allowed */
        RRF_NO_INDOOR           = 1<<2, /* indoor operation not allowed */
        RRF_NO_OUTDOOR          = 1<<3, /* outdoor operation not allowed */
        RRF_DFS                 = 1<<4, /* DFS support is required to be
                                         * used */
        RRF_PTP_ONLY            = 1<<5, /* this is only for Point To Point
                                         * links */
        RRF_PTMP_ONLY           = 1<<6, /* this is only for Point To Multi
                                         * Point links */
        RRF_PASSIVE_SCAN        = 1<<7, /* passive scan is required */
        RRF_NO_IBSS             = 1<<8, /* IBSS is not allowed */
};

Historically we don't distinguish then a type of 802.11 device that
initiates radiation except for the NO_IBSS rule, but that rule can be
treated more as legacy given that the intent and motivation behind
that was that some ODMs simply preferred an interpretation of
regulatory rules and we *currently* don't use that in much places
other than custom regulatory domains defined in the kernel. The
PTP_ONLY and PTMP_ONLY are example other rules that could potentially
have been used but to this day we haven't found a use case for it
given that typical 802.11 devices are PTMP.

I mention the NO_IBSS case as I'd like to try to avoid adding GO
specific flag if we can figure out a way to make this more generic. At
this point for example I think a more appropriate flag is in place:

  * NO_IR - cannot initiate radiation

And this could in turn end up replacing most use cases of NO_IBSS and
PASSIVE_SCAN givne that both of these imply we cannot initiate
radiation unless specific things are done. I wonder if we can fold the
GO flag into this and perhaps rename the NO_IBSS flag to the GO one.

Also note that we should keep the flags in sync with the uapi nl80211
change. Please review these suggestions and let me know what you
think.

> 2. Indoor operation, where in bands requiring indoor operation, the
>    device must be programmed to detect indoor operation, or
>    - Device must be connected to AC Power

Does anyone  know if the FCC considers "indoor" if we power a device
through the car on AC power through a converter ? Are we willing to
ignore that corner case?

>    - Device must be under the control of a local master that is acting

Interesting, so some APIs would be defined, I take it on hostapd to do
the proper callbacks to 'slave' type of devices that depend on the
local master(s). I could envision this being implemented on hostapd by
expanding the AP interface type and associating 'slave' devices and
callbacks for updates on AP device updates (channel changes, and so
on). Is this work being planned?

  Luis

>      as an AP and is connected to AC Power.
>
> See https://apps.fcc.gov/eas/comments/GetPublishedDocument.html?id=327&tn=528122
>
> Add support for advertising Indoor-only and Concurrent-GO channel
> properties.
>
> Signed-off-by: David Spinadel <david.spinadel@intel.com>
> Signed-off-by: Ilan Peer <ilan.peer@intel.com>
> ---
>  include/net/cfg80211.h       |    6 ++++++
>  include/uapi/linux/nl80211.h |    7 +++++++
>  net/wireless/nl80211.c       |    6 ++++++
>  3 files changed, 19 insertions(+)
>
> diff --git a/include/net/cfg80211.h b/include/net/cfg80211.h
> index 7b0730a..f0badeb 100644
> --- a/include/net/cfg80211.h
> +++ b/include/net/cfg80211.h
> @@ -110,6 +110,10 @@ enum ieee80211_band {
>   *     channel as the control or any of the secondary channels.
>   *     This may be due to the driver or due to regulatory bandwidth
>   *     restrictions.
> + * @IEEE80211_CHAN_INDOOR_ONLY: Only indoor use is permitted on this channel.
> + * @IEEE80211_CHAN_GO_CONCURRENT: GO operation is allowed on this channel if
> + *     it's connected concurrently to a BSS on the same channel on 2.4 or
> + *     to a channel in the same UNII band on 5.2.
>   */
>  enum ieee80211_channel_flags {
>         IEEE80211_CHAN_DISABLED         = 1<<0,
> @@ -121,6 +125,8 @@ enum ieee80211_channel_flags {
>         IEEE80211_CHAN_NO_OFDM          = 1<<6,
>         IEEE80211_CHAN_NO_80MHZ         = 1<<7,
>         IEEE80211_CHAN_NO_160MHZ        = 1<<8,
> +       IEEE80211_CHAN_INDOOR_ONLY      = 1<<9,
> +       IEEE80211_CHAN_GO_CONCURRENT    = 1<<10,
>  };
>
>  #define IEEE80211_CHAN_NO_HT40 \
> diff --git a/include/uapi/linux/nl80211.h b/include/uapi/linux/nl80211.h
> index 861e5eb..09a4f6b 100644
> --- a/include/uapi/linux/nl80211.h
> +++ b/include/uapi/linux/nl80211.h
> @@ -2158,6 +2158,11 @@ enum nl80211_band_attr {
>   * @NL80211_FREQUENCY_ATTR_NO_160MHZ: any 160 MHz (but not 80+80) channel
>   *     using this channel as the primary or any of the secondary channels
>   *     isn't possible
> + * @NL80211_FREQUENCY_ATTR_INDOOR_ONLY: Indoor only use is permitted
> + *     on this channel in current regulatory domain.
> + * @NL80211_FREQUENCY_ATTR_GO_CONCURRENT: GO operation is allowed on this
> + *      channel if it's connected concurrently to a BSS on the same channel on
> + *      2.4 or to a channel in the same UNII band on 5.2.
>   * @NL80211_FREQUENCY_ATTR_MAX: highest frequency attribute number
>   *     currently defined
>   * @__NL80211_FREQUENCY_ATTR_AFTER_LAST: internal use
> @@ -2176,6 +2181,8 @@ enum nl80211_frequency_attr {
>         NL80211_FREQUENCY_ATTR_NO_HT40_PLUS,
>         NL80211_FREQUENCY_ATTR_NO_80MHZ,
>         NL80211_FREQUENCY_ATTR_NO_160MHZ,
> +       NL80211_FREQUENCY_ATTR_INDOOR_ONLY,
> +       NL80211_FREQUENCY_ATTR_GO_CONCURRENT,
>
>         /* keep last */
>         __NL80211_FREQUENCY_ATTR_AFTER_LAST,
> diff --git a/net/wireless/nl80211.c b/net/wireless/nl80211.c
> index 7dc3343..cf22b22 100644
> --- a/net/wireless/nl80211.c
> +++ b/net/wireless/nl80211.c
> @@ -563,6 +563,12 @@ static int nl80211_msg_put_channel(struct sk_buff *msg,
>                 if ((chan->flags & IEEE80211_CHAN_NO_160MHZ) &&
>                     nla_put_flag(msg, NL80211_FREQUENCY_ATTR_NO_160MHZ))
>                         goto nla_put_failure;
> +               if ((chan->flags & IEEE80211_CHAN_INDOOR_ONLY) &&
> +                   nla_put_flag(msg, NL80211_FREQUENCY_ATTR_INDOOR_ONLY))
> +                       goto nla_put_failure;
> +               if ((chan->flags & IEEE80211_CHAN_GO_CONCURRENT) &&
> +                   nla_put_flag(msg, NL80211_FREQUENCY_ATTR_GO_CONCURRENT))
> +                       goto nla_put_failure;
>         }
>
>         if (nla_put_u32(msg, NL80211_FREQUENCY_ATTR_MAX_TX_POWER,
> --
> 1.7.10.4
>

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

