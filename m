Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from he.sipsolutions.net ([78.46.109.217] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tg1fu-0008MB-MK
 for wireless-regdb@lists.infradead.org; Tue, 04 Dec 2012 23:13:15 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.0:DHE_RSA_CAMELLIA_256_CBC_SHA1:256) (Exim 4.80)
 (envelope-from <johannes@sipsolutions.net>) id 1Tg1fs-0001Qh-1l
 for wireless-regdb@lists.infradead.org; Wed, 05 Dec 2012 00:13:12 +0100
Message-ID: <1354662815.9608.29.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Wed, 05 Dec 2012 00:13:35 +0100
In-Reply-To: <1354662154.9608.25.camel@jlt4.sipsolutions.net>
References: <1354662154.9608.25.camel@jlt4.sipsolutions.net>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH] regdb: remove unused 10 MHz wide
 rules for JP
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
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, 2012-12-05 at 00:02 +0100, Johannes Berg wrote:
> From: Johannes Berg <johannes.berg@intel.com>
> 
> The 10 MHz rules overlap completely with other rules,
> so the kernel implementation will simply continue
> searching when it finds them as it looks for at least
> 20 MHz. But even if it were to look for less it would
> still be allowed either way.

Not true, it won't skip them ... my bad.

>  country JP:
>  	(2402 - 2482 @ 40), (N/A, 20)
>  	(2474 - 2494 @ 20), (N/A, 20), NO-OFDM
> -	(4910 - 4930 @ 10), (N/A, 23)
>  	(4910 - 4990 @ 40), (N/A, 23)

This @10 rule will in fact prevent channel 184 from getting used
together with HT40. It won't prevent anyone from using channel 184 as a
20 MHz channel because the kernel doesn't check the bandwidth for 20 MHz
channels at all.... (!)

>  	(4910 - 4990 @ 40), (N/A, 23)
> -	(4930 - 4950 @ 10), (N/A, 23)
> -	(5030 - 5045 @ 10), (N/A, 23)
>  	(5030 - 5090 @ 40), (N/A, 23)
> -	(5050 - 5060 @ 10), (N/A, 23)

These are in fact useless since they come *after* wider rules that
totally contain them, so they can't have any effect.

johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

