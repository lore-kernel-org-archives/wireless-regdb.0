Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from s3.sipsolutions.net ([144.76.43.152] helo=sipsolutions.net)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcKbh-0007jZ-Vk
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 19:42:10 +0000
Message-ID: <1383334899.14379.2.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Fri, 01 Nov 2013 20:41:39 +0100
In-Reply-To: <1383314131-20774-7-git-send-email-mcgrof@do-not-panic.com>
References: <1383314131-20774-1-git-send-email-mcgrof@do-not-panic.com>
 <1383314131-20774-7-git-send-email-mcgrof@do-not-panic.com>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH 6/8] wireless-regdb: optimize two of
	DE's rules
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
To: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, linville@tuxdriver.com
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, 2013-11-01 at 14:55 +0100, Luis R. Rodriguez wrote:

> -	# entry 303005
> -	(5150 - 5250 @ 80), (100 mW), NO-OUTDOOR
> -	# entries 304002 and 305002
> -	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR
> +	# entry 303005, 304002 and 305002

should probably say entries :)

Btw, according to the formal definition that the kernel uses, having two
versus one rule actually *is* different. Having two stops you from using
a channel that crosses the boundary. In practice, this kind of
interpretation is actually cumbersome and error-prone, which I've
pointed out long ago together with my suggestion to actually change it,
but I wanted to point it out anyway.

johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

