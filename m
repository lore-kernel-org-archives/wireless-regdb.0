Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=bkmU6BhlpgvO8AItA7PoOxgBxkV4Trh6f65XRuIn85U=;
 b=BEGL0Km2M7T1wN
 J+rU/DswzrgJcMQfqYrmiff6+HeEscLh8ox9mShwixWLWMaHR3rI858c0E3G6LC2nlXflJ5Sw77Zr
 Qd/GlOgeixgwtVkVowY+I0AWkucFEszcrfomIToBiH8rlZNLWUj0s/H/ksYzvr4yjzQGxSNXsztWT
 7U7EluccqATzFB58yqr3yVnNPsEPfm7KsdW6EOGvwa+UFIA2FnU0BU6ezUbOncCCXXGtfJjrdEtZv
 hRCgAA/L7qFsf0tgCSG6RoxkONor13iQw000fEz7f7TjdS7DD+J3o33e4DX/BvDYDCuySI0w0jepS
 VWgS3Ad/QN9WA4VyuN+g==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwBqL-0003W9-Oi
 for wireless-regdb@lists.infradead.org; Fri, 09 Aug 2019 20:50:35 +0000
Received: from mail-ot1-f69.google.com ([209.85.210.69])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1hwBqH-0005sx-Lg
 for wireless-regdb@lists.infradead.org; Fri, 09 Aug 2019 20:50:29 +0000
Received: by mail-ot1-f69.google.com with SMTP id j4so71283172otc.5 for
 <wireless-regdb@lists.infradead.org>; Fri, 09 Aug 2019 13:50:29 -0700 (PDT)
Date: Fri, 9 Aug 2019 15:50:25 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20190809205025.GP10402@ubuntu-xps13>
References: <20190726030538.16784-1-wens@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726030538.16784-1-wens@kernel.org>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Extend 5470-5725 MHz
 range to 5730 MHz for Taiwan (TW)
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
To: Chen-Yu Tsai <wens@kernel.org>
Cc: linux-wireless@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Jul 26, 2019 at 11:05:38AM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> This range ends at 5725 MHz, but channel 144 extends to 5730 MHz.
> The Linux kernel however does not seem capable of considering them
> most restrictive subset of multiple rules.
> 
> Since 5725 ~ 5730 MHz belongs to the next range which has looser
> requirements, we can do this manually and extend the range by 5 MHz
> to make the kernel happy and be able to use channel 144.
> 
> Also, looking at the US regulations, which the TW ones are based on,
> The DFS range ends at 5730 MHz, while the next range starts at 5735
> MHz. This doesn't match the actual regulations, but is skewed to meet
> wireless channel boundaries. I prefer the database match the law,
> and be adjuested only if necessary.
> 
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
> 
> I have a vague impression that you asked about the range boundaries
> when I first updated the rules for Taiwan. And here we are again.

I don't recall, but I too prefer that we keep the boundaries mostly in
line with the regulations, not the wireless channel boundaries. Here it
does seem appropriate though to borrow the extra 5MHz into a more
rescrictive rule.

I wasn't sure about having rules with overlapping ranges. I've been
looking at the code though, and I don't see that it will be an issue. I
may give a few more days though to see if anyone else knows some reason
I missed that it could be a problem.

Thanks,
Seth

> 
> ---
>  db.txt | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/db.txt b/db.txt
> index 37393e6..2e149b6 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1249,7 +1249,11 @@ country TW: DFS-FCC
>  	# 5.15 ~ 5.25 GHz: 30 dBm for master mode, 23 dBm for clients
>  	(5150 - 5250 @ 80), (23), AUTO-BW
>  	(5250 - 5350 @ 80), (23), DFS, AUTO-BW
> -	(5470 - 5725 @ 160), (23), DFS
> +	# This range ends at 5725 MHz, but channel 144 extends to 5730 MHz.
> +	# Since 5725 ~ 5730 MHz belongs to the next range which has looser
> +	# requirements, we can extend the range by 5 MHz to make the kernel
> +	# happy and be able to use channel 144.
> +	(5470 - 5730 @ 160), (23), DFS
>  	(5725 - 5850 @ 80), (30)
>  	# 60g band, LP0002 section 3.13.1.1 (3)(C), EIRP=40dBm(43dBm peak)
>  	(57000 - 66000 @ 2160), (40)
> -- 
> 2.20.1
> 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

