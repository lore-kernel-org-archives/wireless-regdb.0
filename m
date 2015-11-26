Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from s3.sipsolutions.net ([5.9.151.49] helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a20ht-0005fl-0P
 for wireless-regdb@lists.infradead.org; Thu, 26 Nov 2015 17:51:45 +0000
Message-ID: <1448560280.2167.41.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Thu, 26 Nov 2015 18:51:20 +0100
In-Reply-To: <1448303241-27747-5-git-send-email-sojkam1@fel.cvut.cz>
References: <1448303241-27747-1-git-send-email-sojkam1@fel.cvut.cz>
 <1448303241-27747-5-git-send-email-sojkam1@fel.cvut.cz>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH v2 4/8] cfg80211: reg: Properly handle
 rules for 5 and 10 MHz channels
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
Cc: Jan =?ISO-8859-1?Q?Kaisrl=EDk?= <kaisrja1@fel.cvut.cz>, Felix Fietkau <nbd@openwrt.org>, wireless-regdb@lists.infradead.org, ath9k-devel@qca.qualcomm.com, ath9k-devel@lists.ath9k.org, bernd.lehmann@volkswagen.de, s.sander@nordsys.de
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, 2015-11-23 at 19:27 +0100, Michal Sojka wrote:
> Regulatory rules are applied to channels as if the channel is at
> least
> 20 MHz wide. This is a problem when dealing with 5 and 10 MHz
> channels
> because side channels of a regulatory rule get disabled even when
> they
> fall into rule's frequency range.
> 
> This problem was already fixed in commit
> 4edd56981c8fbb349b1529a2feaf772636eb1c83, but only for custom
> regulatory
> domains provided by drivers. Here we fix it also for all other (e.g.
> user-supplied) regulatory domains.
> 
> Before that, similar commit was
> reverted (e33e2241e272eddc38339692500bd1c7d8753a77) due to it
> allowing
> running AP on channel 12 in the US regulatory domain. I have checked
> that this is not possible with this change:
> 
>   # iw reg set US
>   # iw dev wlan0 interface add wlan0_ap  type __ap
>   # iw dev wlan0_ap set channel 12
>   command failed: Invalid argument (-22)
> 
Applied, with some fixups to the commit message :)

johannes

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
