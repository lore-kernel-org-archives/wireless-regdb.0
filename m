Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from s3.sipsolutions.net ([5.9.151.49] helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a20lu-0007lA-II
 for wireless-regdb@lists.infradead.org; Thu, 26 Nov 2015 17:55:55 +0000
Message-ID: <1448560529.2167.43.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Thu, 26 Nov 2015 18:55:29 +0100
In-Reply-To: <1448303241-27747-8-git-send-email-sojkam1@fel.cvut.cz>
References: <1448303241-27747-1-git-send-email-sojkam1@fel.cvut.cz>
 <1448303241-27747-8-git-send-email-sojkam1@fel.cvut.cz>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH v2 7/8] cfg80211: Add Kconfig option
 for ITS-G5 band (5.9 GHz)
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
> This option is meant for use by drivers and other subsystems to
> enable
> support for the Intelligent Transportation System (ITS-G5) band. The
> option depends on CFG80211_CERTIFICATION_ONUS as the use of this band
> is
> restricted. EU allows using it only for certain applications, USA
> require certification.

Hm. Why do we need this now? I see that you're checking it in ath9k, to
enable the "ITSG5" channels, but why wouldn't you always do that, now
that you have the extra checks with the user regdb being required and
all?

johannes

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

