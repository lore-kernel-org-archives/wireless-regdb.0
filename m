Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from s3.sipsolutions.net ([5.9.151.49] helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a2EU2-0005sh-IB
 for wireless-regdb@lists.infradead.org; Fri, 27 Nov 2015 08:34:23 +0000
Message-ID: <1448613238.2531.12.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Fri, 27 Nov 2015 09:33:58 +0100
In-Reply-To: <1448303241-27747-6-git-send-email-sojkam1@fel.cvut.cz>
References: <1448303241-27747-1-git-send-email-sojkam1@fel.cvut.cz>
 <1448303241-27747-6-git-send-email-sojkam1@fel.cvut.cz>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH v2 5/8] cfg80211: Add support for
	OCB-only channels
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Michal Sojka <sojkam1@fel.cvut.cz>, linux-wireless@vger.kernel.org
Cc: Jan =?ISO-8859-1?Q?Kaisrl=EDk?= <kaisrja1@fel.cvut.cz>, wireless-regdb@lists.infradead.org, Jouni Malinen <j@w1.fi>, ath9k-devel@qca.qualcomm.com, ath9k-devel@lists.ath9k.org, bernd.lehmann@volkswagen.de, s.sander@nordsys.de
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, 2015-11-23 at 19:27 +0100, Michal Sojka wrote:

>  #define NL80211_RRF_PASSIVE_SCAN	NL80211_RRF_NO_IR
> diff --git a/net/wireless/chan.c b/net/wireless/chan.c
> index 59cabc9..b1ab77a 100644
> --- a/net/wireless/chan.c
> +++ b/net/wireless/chan.c
> @@ -804,7 +804,8 @@ static bool _cfg80211_reg_can_beacon(struct wiphy
> *wiphy,
>  {
>  	bool res;
>  	u32 prohibited_flags = IEEE80211_CHAN_DISABLED |
> -			       IEEE80211_CHAN_RADAR;
> +			       IEEE80211_CHAN_RADAR |
> +			       IEEE80211_CHAN_OCB_ONLY;

So ... for the kernel, I don't *like* this approach, because it
requires touching every single driver, and every single person who
writes code in the future must be aware of the special handling for
this flag.

For userspace, however, this approach is simply impossible. Consider an
older version of wpa_supplicant, that queries the channel list and
isn't aware of the OCB_ONLY flag. This version would take the channel
list and build a scan request with it, only to get the scan rejected
since some channels it picked were only usable for OCB, as far as I can
tell.

I think the solution to this would be to redefine the CHAN_DISABLED
flag to mean "channel disabled for non-ocb mode" and add a
CHAN_OCB_ENABLED flag.

Then code that knows about OCB would simply not test CHAN_DISABLED, but
would instead test CHAN_OCB_ENABLED instead - and if that's clear OCB
would not be permitted.

However, this would have the side effect of enabling OCB *only* on OCB
channels, which might not be a good idea, for testing purposes one
might want to use the regular 2.4 or 5 GHz channels? If so, OCB could
still be made to do something like

	ocb_usable = (flags & OCB_ENABLED) || !(flags & DISABLED);

or we could even make the channel list internally maintain a
CHAN_OCB_USABLE flag that essentially encodes the logic above.

In any case, this would collapse the patch down to modifying only OCB
code and nothing else, which is nice, and would keep existing userspace
working since it would just see disabled channels while ignoring the
OCB flag.

johannes

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
