Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from s3.sipsolutions.net ([5.9.151.49] helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a2FiM-0005Wd-O6
 for wireless-regdb@lists.infradead.org; Fri, 27 Nov 2015 09:53:16 +0000
Message-ID: <1448617968.2531.33.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Fri, 27 Nov 2015 10:52:48 +0100
In-Reply-To: <87si3r22w0.fsf@steelpick.2x.cz>
References: <1448303241-27747-1-git-send-email-sojkam1@fel.cvut.cz>
 <1448303241-27747-7-git-send-email-sojkam1@fel.cvut.cz>
 <1448613316.2531.13.camel@sipsolutions.net>
 <87si3r22w0.fsf@steelpick.2x.cz>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH v2 6/8] cfg80211: reg: Add
 NL80211_RRF_USER_REGD_NEEDED flag
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
To: Michal Sojka <sojkam1@fel.cvut.cz>, linux-wireless@vger.kernel.org
Cc: Jan =?ISO-8859-1?Q?Kaisrl=EDk?= <kaisrja1@fel.cvut.cz>, wireless-regdb@lists.infradead.org, ath9k-devel@qca.qualcomm.com, ath9k-devel@lists.ath9k.org, bernd.lehmann@volkswagen.de, s.sander@nordsys.de
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, 2015-11-27 at 10:43 +0100, Michal Sojka wrote:

> What do you mean by "show"? nl80211_put_regdom() already sends regdom
> flags to userspace. Or do you mean introducing a new channel
> attribute and send it in nl80211_msg_put_channel()?
> 

No, I meant keeping the flag - so that people can know with "iw list"
or something that they need a special regdomain to enable the channels?

johannes

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

