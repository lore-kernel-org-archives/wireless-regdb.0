Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=D/J9/Q80CR8Tmbu4u7drrhbSwQazG6+9OH7/zJc6z48=;
 b=ohO4J2yvLtGIK6
 gJrb7SDey5r45oqJ0RbwVgmGlwEr93Buu1qmpzRDgv19F7qAQTDbR+rK2TPQh1fGq0j7+fMi0rqXW
 osL0fVbDnAlpP7eHv0rmKXn+q/XC4GzHpwrJNaTXcXo75e/OuWQQebuYojIKjJMF3oLSgokHLuhLJ
 iF0pJuVrTuYBhiFVZo5u/J8EgoLdVhwMwfaW2uYo0cb0vciIbf9Vrbkavd4CtYPj4SEMFfn1TyUxK
 uHz9pKigz6Ue0cYBHoQWnw1Xr4/jfiFbnXrAEzsRrBtP349dqpbrvMOl0I2EPwdsDjKxG0E95qxG/
 AzUuxXUBBl1UHOcWdGXg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQtZS-0006B4-C8
 for wireless-regdb@lists.infradead.org; Wed, 15 May 2019 13:03:49 +0000
Received: from mail-it1-f199.google.com ([209.85.166.199])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1hQtZO-0006Rs-6g
 for wireless-regdb@lists.infradead.org; Wed, 15 May 2019 13:03:42 +0000
Received: by mail-it1-f199.google.com with SMTP id z125so2231062itf.4 for
 <wireless-regdb@lists.infradead.org>; Wed, 15 May 2019 06:03:42 -0700 (PDT)
Date: Wed, 15 May 2019 08:03:39 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20190515130339.GY4357@ubuntu-xps13>
References: <1556314283-17842-1-git-send-email-peter.oh@bowerswilkins.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556314283-17842-1-git-send-email-peter.oh@bowerswilkins.com>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: Update regulatory
 rules for South Korea
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
To: Peter Oh <peter.oh@bowerswilkins.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Apr 26, 2019 at 09:31:31PM +0000, Peter Oh wrote:
> From: Peter Oh <peter.oh@bowerswilkins.com>
> 
> Update power limit as documented in:
> http://www.law.go.kr/%ED%96%89%EC%A0%95%EA%B7%9C%EC%B9%99/
> %EC%8B%A0%EA%B3%A0%ED%95%98%EC%A7%80%EC%95%84%EB%8B%88%ED
> %95%98%EA%B3%A0%EA%B0%9C%EC%84%A4%ED%95%A0%EC%88%98%EC%9E
> %88%EB%8A%94%EB%AC%B4%EC%84%A0%EA%B5%AD%EC%9A%A9%EB%AC%B4
> %EC%84%A0%EA%B8%B0%EA%B8%B0/(2018-89,20181227)
> which revised on December 27, 2018.
> 
> Signed-off-by: Peter Oh <peter.oh@bowerswilkins.com>
> ---
>  db.txt | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/db.txt b/db.txt
> index 4fb1948..8d24305 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -695,11 +695,12 @@ country KP: DFS-JP
>  	(5735 - 5815 @ 20), (30)
>  
>  country KR: DFS-JP
> -	(2402 - 2482 @ 40), (13)
> -	(5170 - 5250 @ 80), (20), AUTO-BW
> -	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
> -	(5490 - 5710 @ 160), (30), DFS
> -	(5735 - 5835 @ 80), (30)
> +	# ref: https://www.rra.go.kr
> +	(2402 - 2482 @ 40), (23)
> +	(5170 - 5250 @ 80), (23), AUTO-BW
> +	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
> +	(5490 - 5710 @ 160), (23), DFS
> +	(5735 - 5835 @ 80), (23)

Is there any mention of transmit power control in the document? The fact
that some of the old limits are exactly half of they values you've given
makes me wonder if they weren't set lower for TPC, especially for
5250-5350 MHz where TPC is common.

Since you're changing these rules, I'd also like to see the frequency
ranges changed to match the documented ranges, i.e.:

 2400 - 2483.5
 5150 - 5250
 5250 - 5350
 5470 - 5710
 5735 - 5850

I left the gap in the 5470-5850 MHz range since I can't tell exactly
where the DFS requirement ends. Usually it seems to be 5725 MHz, but
that is not universal. If you can determine where the break is those
ranges could also be expanded.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

