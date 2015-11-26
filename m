Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from s3.sipsolutions.net ([5.9.151.49] helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a1zhc-0000BL-Cw
 for wireless-regdb@lists.infradead.org; Thu, 26 Nov 2015 16:47:25 +0000
Message-ID: <1448556415.2167.22.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Thu, 26 Nov 2015 17:46:55 +0100
In-Reply-To: <1448303241-27747-3-git-send-email-sojkam1@fel.cvut.cz>
References: <1448303241-27747-1-git-send-email-sojkam1@fel.cvut.cz>
 <1448303241-27747-3-git-send-email-sojkam1@fel.cvut.cz>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH v2 2/8] cfg80211: Remove unused
 cfg80211_can_use_iftype_chan()
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

On Mon, 2015-11-23 at 19:27 +0100, Michal Sojka wrote:
> Last caller of this function was removed in 3.17 in commit
> 97dc94f1d933c9df2c0b327066ea130c0e92083f.
> 
Heh.

I've applied the first two patches for now - will review the others in
more detail later.

johannes

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

