Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=ZYjcWQqTMGSUxWiJ0BPbeDy42vem5WNqdAdCIwkaYIE=;
 b=AUbUu6xI4fhiW4
 a0SL4HjjYF7gfkBA/7BCYVZRGfI3coaI2d6EvF/5mpogTQ0C2cW/yIQmHGKbM9gaGxsQfZ268FySu
 6i7Dp8dM4tKKDohZ5Xe773zsUYwGEmGzgJicfeRdwVY0gqcCEzPkbksfHf0T5pJwq0aBOaAzKMgmJ
 W2C5EXGSVqQzP11obSaPam6Cphj2+R4ILnYuaLNaJq9WxexgF51mupGVBtd2NHO+d2luj96v8mL1v
 +Qk4d3FndRDlyBlJN0AVU/lk+1fr4QJV5DRibQ0cQq116MDgXeVYYJQHgDKlX8YQojRUfeD/LOez/
 FSsWwcIS7yIPeAscH+rA==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIvEj-00AA3V-NG
 for wireless-regdb@lists.infradead.org; Sat, 12 Feb 2022 16:27:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644683220;
 bh=1bZEhY9CKQ31lE6mby38BoOplrKPJXlR72hvJbrPCM4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rpnIg3ILEPFYyLPn5fbY5vQ0RLQuvTWHRs+Q2AwYRxUiwzAJpi5Ky1wR500uXSQ8F
 dz15xy8TXoT8Wn9+gEuZ0+WVujue7653KlxUdK02Vq8PtFKU8sXVzxLZJ4UjjS5nTJ
 N5WbPNxD1bfyLAepeGAuVuGPGsr1q4zJJH17uPqKh65LuZVtnhmhT1axLb04eyI+sZ
 KV3fBiFQVzbblrLLIxcIy6ZxPH2reQuzZS3z3Dh9e3x3ehEK9bjm9mMRl298fCnefQ
 D6biCEIwwA+0CitDDyTak5MyFg2MhtV44ymnHpoOgbiwG24W1j3/gMd6qfPr/1Yvz9
 tko5isx+/F/OQ==
Date: Sat, 12 Feb 2022 10:26:59 -0600
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <Ygff0yenjQMS64BP@ubuntu-x1>
References: <20211212152050.25962-1-mans0n@gorani.run>
 <20220130124907.39224-1-mans0n@gorani.run>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220130124907.39224-1-mans0n@gorani.run>
Subject: Re: [wireless-regdb] [PATCH v4] wireless-regdb: Update regulatory
 rules for South Korea (KR)
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
To: Sungbo Eo <mans0n@gorani.run>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sun, Jan 30, 2022 at 09:49:07PM +0900, Sungbo Eo wrote:
> This patch is based on MSIT Public Notification 2021-86 ("Unlicensed Radio
> Equipment Established Without Notice"), officially announced on 2021-11-29.
> 
> The PSD must not exceed 2.5 mW/MHz if the frequency range includes all or
> part of 5230-5250 MHz and the bandwidth is equal to or less than 40 MHz.
> This leads to the following:
> * 5230-5250 @ 20 -> 17 dBm
> * 5210-5250 @ 40 -> 20 dBm
> Here the power limit for >20 MHz bandwidth is also lowered to 17 dBm, as
> it's not possible to set different power limits for different bandwidths
> at the moment.
> 
> Extend the last 5 GHz frequency range to 5850 MHz.
> 
> Wi-Fi 6E is now allowed with the following restrictions:
> * Indoor: the full 1.2 GHz range, up to 160 MHz bandwidth and 2 dBm/MHz PSD
> * Outdoor: the lower 500 MHz range, up to 160 MHz bandwidth and 25 mW EIRP
> Here only the former entry is added.
> 
> And also update the regulatory source links.
> 
> Signed-off-by: Sungbo Eo <mans0n@gorani.run>
> ---
> v4:
> * merge 5210-5230 MHz band rule
> * revert back to "indoor only" 6E rule as its power limit is higher
> 
> v3:
> * update regulatory source to newer revision
> * replace "indoor only" 6E rule with "both indoor and outdoor" rule
>   as "indoor only" rule limits PSD instead of EIRP
> 
> v2:
> * split 5150-5250 MHz band rule to accommodate the PSD limit
> * remove AUTO-BW flag from 6 GHz band rule
> ---
>  db.txt | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
> 
> diff --git a/db.txt b/db.txt
> index b898799..9b02a2c 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -862,15 +862,21 @@ country KP: DFS-JP
>  	(5490 - 5630 @ 20), (30), DFS
>  	(5735 - 5815 @ 20), (30)
>  
> +# Source:
> +# https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000205195
> +# https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000205187
> +# https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000206568
>  country KR: DFS-JP
> -	# ref: https://www.rra.go.kr
>  	(2400 - 2483.5 @ 40), (23)
> -	(5150 - 5250 @ 80), (23), AUTO-BW
> +	(5150 - 5230 @ 40), (23), AUTO-BW
> +	# max. PSD 2.5 mW/MHz in 5230-5250 MHz frequency range
> +	(5230 - 5250 @ 20), (17), AUTO-BW
>  	(5250 - 5350 @ 80), (20), DFS, AUTO-BW
>  	(5470 - 5725 @ 160), (20), DFS
> -	(5725 - 5835 @ 80), (23)
> -	# 60 GHz band channels 1-4,
> -	# ref: http://www.law.go.kr/%ED%96%89%EC%A0%95%EA%B7%9C%EC%B9%99/%EB%AC%B4%EC%84%A0%EC%84%A4%EB%B9%84%EA%B7%9C%EC%B9%99
> +	(5725 - 5850 @ 80), (23)
> +	# 6 GHz band
> +	(5925 - 7125 @ 160), (15), NO-OUTDOOR

I'm curious about this power limit. In v1/v2 it was 24 dBm, then in v3
you lowered it for indoor/outdoor. Now you've chaned it back to indoor
only, but the limit is 15 dBm rather than the 24 you had in v1/v2. Why
the change?

Thanks,
Seth

> +	# 60 GHz band channels 1-4
>  	(57000 - 66000 @ 2160), (43)
>  
>  country KW: DFS-ETSI
> -- 
> 2.35.0
> 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

