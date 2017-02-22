Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=hUH5HzRUx+moVidRNKosSat4rYZb2AawpqMm8GxyaLg=;
 b=RuK1ka4q/Ajcpv
 yzdr2wriVRrhc1g9tfSaCRyIlvGZQM9YVn/w+rwSx2I0yqpJDhnhl+9kJR7ID+cDWlOwdhK+O6gZm
 SgQ8lr1Y21GrhLOrF6KhjxVQUdFjlaJNKFwC0C4PWsnNBCYmi3w3od6q85L6gSiUqmzHJa8PBo3fL
 tvgPGKBOBvE5tkrFpXXCuqwley1jbpwaJ4qb1uXD7BslzZh4dNQBj6AbOasIBzlm6y3CcyZSsYsK9
 8Ld8dJUWxu5yR/LjG3LvxBgAIGqXyeVbecAO8HWe5AHJJR1yy5x2DwJsNjkCHl/0IoZae0tEfyQ81
 I9JGY2lgbGsOqw4ry0RQ==;
Received: from mail-it0-x230.google.com ([2607:f8b0:4001:c0b::230])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cgeVL-0001cc-Ps
 for wireless-regdb@lists.infradead.org; Wed, 22 Feb 2017 21:31:22 +0000
Received: by mail-it0-x230.google.com with SMTP id h10so143716112ith.1 for
 <wireless-regdb@lists.infradead.org>; Wed, 22 Feb 2017 13:30:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=o4Gg64o0X1DPFBr67RYnzBDdIgAcN1feY93UCY97AE8=;
 b=Zb9YpNvVB1ATt4dC98XDMbTDPIv25RFIeZzsOePd9eSyeoquOQNuAalQJWRL5CQ/ex
 qsCNFJyHCpCyg1I4iPJJR7BnE1o8CBwdYjwEfl3/m5RN7VS5rQCy/bt0dVIrzvgMtH2b
 ANzSQouXm0e0aRM93jPes4kGAJwJyay8yJL5FpBwB/v2VuFf4uOqk3CzLC1F6eZSnObS
 I83rNGBDJlp49v2xqU5BLugMPPmUaV9Vwz2PY4/p7Hg5RpOCIwj5NCPnwEREbEdqVRBu
 4I+5hAdDkMl/yj5cWB8UpAbQHTc3l1DKSDnbrPrqsg4vTrv3g58m1SYA6ryr3+63LisO
 WU7Q==
Date: Wed, 22 Feb 2017 15:30:57 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20170222213057.GA33925@ubuntu-hedt>
References: <20170218063515.16071-1-ryan@mounce.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170218063515.16071-1-ryan@mounce.com.au>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update rules for
 Australia (AU) and add 60GHz rules
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
To: Ryan Mounce <ryan@mounce.com.au>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sat, Feb 18, 2017 at 05:05:15PM +1030, Ryan Mounce wrote:
> Sourced from the latest legislation at
> https://www.legislation.gov.au/Details/F2016C0043

This link isn't working for me.

> The current rules exceed legal limits between 5250-5330MHz, and permit
> illegal operation in 5600-5650MHz (reserved for weather radar).

The changes also increases the limits for most other ranges, by quite a
bit in some cases. Seems that this should also be mentioned in the
changelog, and I'd like to be able to check those changes against the
documentation.

Thanks,
Seth

> 
> Signed-off-by: Ryan Mounce <ryan@mounce.com.au>
> ---
>  db.txt | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)
> 
> diff --git a/db.txt b/db.txt
> index 05108e0..b951e0c 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -85,12 +85,17 @@ country AT: DFS-ETSI
>  	# 60 GHz band channels 1-4, ref: Etsi En 302 567
>  	(57000 - 66000 @ 2160), (40)
>  
> +# Source:
> +# https://www.legislation.gov.au/Details/F2016C00432
> +# Both DFS-ETSI and DFS-FCC are acceptable per AS/NZS 4268 Appendix B
>  country AU: DFS-ETSI
> -	(2402 - 2482 @ 40), (20)
> -	(5170 - 5250 @ 80), (17), AUTO-BW
> -	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
> -	(5490 - 5710 @ 160), (24), DFS
> -	(5735 - 5835 @ 80), (30)
> +	(2402 - 2482 @ 40), (36)
> +	(5170 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
> +	(5250 - 5330 @ 80), (23), NO-OUTDOOR, AUTO-BW, DFS
> +	(5490 - 5590 @ 80), (30), DFS
> +	(5650 - 5730 @ 80), (30), DFS
> +	(5735 - 5835 @ 80), (36)
> +	(57000 - 66000 @ 2160), (43), NO-OUTDOOR
>  
>  country AW: DFS-ETSI
>  	(2402 - 2482 @ 40), (20)
> -- 
> 2.11.0
> 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

