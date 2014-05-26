Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from s3.sipsolutions.net ([5.9.151.49] helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WorMh-0006Vt-Cn
 for wireless-regdb@lists.infradead.org; Mon, 26 May 2014 09:38:44 +0000
Message-ID: <1401097086.29704.0.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Mon, 26 May 2014 11:38:06 +0200
In-Reply-To: <1401089962-10720-1-git-send-email-chaitanya.mgit@gmail.com>
References: <1401089962-10720-1-git-send-email-chaitanya.mgit@gmail.com>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] [regdb] Add support to parse 2000mW tx power
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
To: chaitanya.mgit@gmail.com
Cc: linux-wireless@vger.kernel.org, mcgrof@gmail.com, wireless-regdb@lists.infradead.org, linville@tuxdriver.com
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, 2014-05-26 at 13:09 +0530, chaitanya.mgit@gmail.com wrote:

> @@ -74,7 +74,7 @@ function parse_reg_rule()
>  			power = 23
>  		} else if (power == 500) {
>  			power = 27
> -		} else if (power == 1000) {
> +		} else if ((power == 1000) || (power == 2000)) {
>  			power = 30

This seems like a pretty sick thing to do to start with, and certainly
power=30 isn't right for 2000mW...

Can't awk calculate the logarithm?

johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

