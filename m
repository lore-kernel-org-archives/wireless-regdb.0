Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
 Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=v/uc0aMpTdnPqPpkE9f7g2MezQlKGRMEp++LZk4dox8=;
 b=i9JNCQY3HfnkYWlcSGFMzr6Cc
 3HSWgQzOjtCX4KX/0Ly0hf5hdYbKIOuaeIOIjBYFopLKVFY7/kCjmr+9Q3WuVka9P43TUNNBQh2+e
 bwgV8M3ykffizNAEZGtEqMKtaQFOcr//p9XjP/tChkdBhQiQXv1YN3N+SIcRKl4rRQ+l3awNywmP6
 ELfvKaAOZElewXMeIatW5tFuaq8a6aaDT0rjUvoetimoBFw/FWYwHQsOnSjT8chAKQE7zfKWSpUdO
 DnhqRlr0TYmppFI+QCKilAEYCwCldWB6CAlofv07v3obJZ5qal+AHI3qlF4+7X23FHhum9ipILREa
 SCBFeHqCA==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcIg4-0001Cl-AH
 for wireless-regdb@lists.infradead.org; Tue, 10 Nov 2020 01:42:33 +0000
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1kcIg3-00011H-ER
 for wireless-regdb@lists.infradead.org; Tue, 10 Nov 2020 01:42:31 +0000
Received: by mail-il1-f197.google.com with SMTP id z18so8003314ilb.12 for
 <wireless-regdb@lists.infradead.org>; Mon, 09 Nov 2020 17:42:31 -0800 (PST)
Date: Mon, 9 Nov 2020 19:42:28 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20201110014228.GJ6125@ubuntu-x1>
References: 
	 <840438bf70c72d2ab933aee9ae5aa6985b6c1531.1601902881.git.b.K.il.h.u+tigbuh@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <840438bf70c72d2ab933aee9ae5aa6985b6c1531.1601902881.git.b.K.il.h.u+tigbuh@gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: restore channel 12 &
 13 limitation in the US
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
To: bkil <b.K.il.h.u+tigbuh@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Oct 05, 2020 at 03:01:22PM +0200, bkil wrote:
> The precisely allowed transmission power on channel 12 & 13 is not clear.
> 
> I did some fact checking and document reviews in the past, but still
> failed to come up with an exact reference or calculation regarding what TX
> power should be allowed in general to reduce interference in the
> neighboring restricted band 2483.5-2500 MHz and whether indoor vs. outdoor
> and b/g/n modulation would make a difference (probably yes).
> 
> Existing documents that discuss this are vague and pretty much out of date:
> https://en.wikipedia.org/wiki/List_of_WLAN_channels#endnote_B
> 
> Following these guidelines, I failed to come up with an approximate
> formula that would prohibit usage of channel 12 & 13, but still allow
> usage of channel 11 with full power, hence at least part of the argument
> for prohibiting channel 12 & 13 needs to be refined.
> 
> Until further research, just to stay safe, I propose that we restore the
> previous limitation of disabling channel 12 & 13 as before. We should
> work towards finding a safe transmission power to use on both and specify
> that (like 50mW on channel 13 and 100mW on channel 12?).
> 
> I've also started a discussion for investigation on Wikipedia:
> https://en.wikipedia.org/wiki/Talk:List_of_WLAN_channels#Should_the_2.4GHz_channel_12_and_13_in_the_USA_need_updating?
> 
> Signed-off-by: bkil <b.K.il.h.u+tigbuh@gmail.com>

I tried doing a little research, and it does appear that use of channels
12 and 13 is more complicated than it might seem on the surface. I
cannot find any clear guidance on power limits and lack the background
to determine appropriate limits from the information I did find, so it
does seem prudent to restore the previous limitation.

Applied, thanks!

> ---
>  db.txt | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/db.txt b/db.txt
> index ac32483..68613cf 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1568,8 +1568,12 @@ country UG: DFS-FCC
>  
>  # https://www.ecfr.gov/cgi-bin/text-idx?SID=eed706a2c49fd9271106c3228b0615f3&mc=true&node=pt47.1.15&rgn=div5
>  # Title 47 Part 15 - Radio Frequency Devices, April 2, 2020
> +# Channels 12 and 13 are not forbidden, but are not normally used with full
> +# power in order to avoid any potential interference in the adjacent restricted
> +# frequency band, 2,483.5–2,500 MHz which is subject to strict emission limits
> +# set out in 47 CFR § 15.205. TODO: reenable and specify a safe TX power here.
>  country US: DFS-FCC
> -	(2400 - 2483.5 @ 40), (30)
> +	(2400 - 2472 @ 40), (30)
>  	# 5.15 ~ 5.25 GHz: 30 dBm for master mode, 23 dBm for clients
>  	(5150 - 5250 @ 80), (23), AUTO-BW
>  	(5250 - 5350 @ 80), (23), DFS, AUTO-BW

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
