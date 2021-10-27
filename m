Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=1taR1jxf8jlW1vTp5tGppsjICwjUcBuhhiUJZj/QTEs=;
 b=1TYKQYWAwdeM91
 BWE6UiLqlqXnH7x0JDRnoHiVsA2Hhjjbmi5WmuhQtT++G8658aDuDqjvS+pEy8WMY+7P22IkzRp4F
 sxITF8sc9wfS/jIWSN7+4zMeR/uQcuBDFmJkWWvzbWBdK7f7jSUs/zcnmCVzMP4oYpWuYSpeVYI8c
 3Q2iyopVdXJYCiNdwzXtB8iqQhFlEm67p7XadjVuC55z3PrcO8Z9vayWAf36ZIj8wCWP0R/o/M59z
 MWNLgbgikEWm2QlCcvriaGTq0fHCEWk8/kIJu32YEJMACiwcwakKkIyuPIQ9mbstVUoPTXo1/PzFC
 gQdRq0v6sOL90ifCm1FQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfnJv-005dnZ-ET
 for wireless-regdb@lists.infradead.org; Wed, 27 Oct 2021 18:06:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635357998;
 bh=9C4WXZSWSm8i+UevIYDwWe94/MoAul2XY6bUhMhBEaM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SL3rtRB6EVXMfxVVq77pIKnOKLw3j1/7bZLV8e9I6y+MrCQUBL64EjlwQNH15XQXk
 zf4Fr66csbkoug8P8RQqB8GGCRWWmAwzReYA29RRz2UOa73pkHtQqL4gsFODm6mtze
 /PLMYmshXw6lMLnRylqLbthCSY32pVnGLBin04QdNpNJzH1JZadmrRnAlvhAgwL8P3
 WboQfeLOF555rGYTXrhcZGzx2ZGq6dttITzoDFfhy/50t34LUvLc+w9wrB4WaDBFPP
 73ffivc0GUuCsFC/9HS3kmnaTVhsYIcNKUgsTUx9H1iwek9mWb5+MnTPUt3He9BUfY
 7jVLjG0xfhXTQ==
Date: Wed, 27 Oct 2021 13:06:37 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YXmVLUzVEgrAMLwL@ubuntu-x1>
References: <20210929172728.7512-1-mans0n@gorani.run>
 <20211024113821.51538-1-mans0n@gorani.run>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211024113821.51538-1-mans0n@gorani.run>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: Update regulatory
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

On Sun, Oct 24, 2021 at 08:38:21PM +0900, Sungbo Eo wrote:
> This patch is based on MSIT Public Notification 2020-113 ("Unlicensed Radio
> Equipment Established Without Notice"), officially announced on 2021-01-06.
> 
> The PSD must not exceed 2.5 mW/MHz if the frequency range includes all or
> part of 5230-5250 MHz and the bandwidth is equal to or less than 40 MHz.
> This leads to the following:
> * 5230-5250 @ 20 -> 17 dBm
> * 5210-5250 @ 40 -> 20 dBm
> Here the power limits for 80/160 MHz bandwidth are also lowered to 17 dBm,
> as it's not possible to set different power limits for different bandwidths
> at the moment.
> 
> Extend the last 5 GHz frequency range to 5850 MHz.
> 
> WiFi 6E is now allowed with the following restrictions:
> * Indoor: the full 1.2 GHz range, up to 160 MHz bandwidth and 250mW EIRP
> * Outdoor: the lower 500 MHz range, up to 160 MHz bandwidth and 25mW EIRP
> Here only the former entry is added.
> 
> And also update the regulatory source links.
> 
> Signed-off-by: Sungbo Eo <mans0n@gorani.run>
> ---
> v2:
> * split 5150-5250 MHz band rule to accommodate the PSD limit
> * remove AUTO-BW flag from 6 GHz band rule
> ---
>  db.txt | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
> 
> diff --git a/db.txt b/db.txt
> index 6e8dbef..387ac93 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -862,15 +862,22 @@ country KP: DFS-JP
>  	(5490 - 5630 @ 20), (30), DFS
>  	(5735 - 5815 @ 20), (30)
>  
> +# Source:
> +# https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000196972
> +# https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000196973
> +# https://www.law.go.kr/LSW//admRulLsInfoP.do?chrClsCd=&admRulSeq=2100000196974
>  country KR: DFS-JP
> -	# ref: https://www.rra.go.kr
>  	(2400 - 2483.5 @ 40), (23)
> -	(5150 - 5250 @ 80), (23), AUTO-BW
> +	(5150 - 5210 @ 40), (23), AUTO-BW
> +	# max. PSD 2.5 mW/MHz in 5230-5250 MHz frequency range
> +	(5210 - 5230 @ 20), (20), AUTO-BW
> +	(5230 - 5250 @ 20), (17), AUTO-BW

Even with 5210-5230 split out like this, 5210-5250 @ 40 still gets
limited to 17 dBm by the 5230-5250 rule. So why do we need to split out
5210-5230 separate from 5150-5210?

Thanks,
Seth

>  	(5250 - 5350 @ 80), (20), DFS, AUTO-BW
>  	(5470 - 5725 @ 160), (20), DFS
> -	(5725 - 5835 @ 80), (23)
> -	# 60 GHz band channels 1-4,
> -	# ref: http://www.law.go.kr/%ED%96%89%EC%A0%95%EA%B7%9C%EC%B9%99/%EB%AC%B4%EC%84%A0%EC%84%A4%EB%B9%84%EA%B7%9C%EC%B9%99
> +	(5725 - 5850 @ 80), (23)
> +	# 6 GHz band
> +	(5925 - 7125 @ 160), (24), NO-OUTDOOR
> +	# 60 GHz band channels 1-4
>  	(57000 - 66000 @ 2160), (43)
>  
>  country KW: DFS-ETSI
> -- 
> 2.33.1
> 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

