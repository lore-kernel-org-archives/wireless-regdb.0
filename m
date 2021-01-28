Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
 Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=ti60SxDyD/aI/C17X/1S2qJJk9QR6rekXz6d+ugyDkE=;
 b=Mj4jP/nhNFYa7ty2D38bnd+r0
 nuVXVkkKXdgMSq39du13gasmqLdqey3Yki1kxjERquIwYgEPa93+Il69AK2fan1hD9z11i4qTWvNH
 49XAP92fqmmMhwD1wgof2igmzjXIj4Yh0SpFYo/MXM5nFlDO5CuUHLXjBT/S7qNiitQSAMEwgr4n/
 f4bCej2ZIkQSWm1vm0P5jDfnjhTaVUCNIaJAomVxhvD5tz844UG9x9YZOZPtq3pFiG5lDKg/m0Rs6
 pEwQB3nFoUK1SxmaWdAiwD36CWyrIux9OHo17yHBLDuyVp/jNKVgCfK+B3Ab+ZQA+ZNUbJyMCPKhD
 geWPEwINQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l5DAr-0007zw-Ku
 for wireless-regdb@lists.infradead.org; Thu, 28 Jan 2021 19:41:51 +0000
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1l5DAp-0007AK-4N
 for wireless-regdb@lists.infradead.org; Thu, 28 Jan 2021 19:41:47 +0000
Received: by mail-io1-f70.google.com with SMTP id t15so5057253ioi.14 for
 <wireless-regdb@lists.infradead.org>; Thu, 28 Jan 2021 11:41:47 -0800 (PST)
Date: Thu, 28 Jan 2021 13:41:42 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <YBMTdvq71TGJjbvR@ubuntu-x1>
References: <20201222191738.56240-1-illia.volochii@gmail.com>
 <20201222192329.56983-1-illia.volochii@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201222192329.56983-1-illia.volochii@gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Ukraine (UA)
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
To: Illia Volochii <illia.volochii@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Dec 22, 2020 at 09:23:28PM +0200, Illia Volochii wrote:
> This patch is based on the latest Ukrainian norms https://zakon.rada.gov.ua/laws/show/z0201-15#n48 and is an updated version of the one sent previously.
> 
> * Extend some frequency ranges.
> * Provide some power limits in mW to be consistent with local norms.
> * Decrease EIRP on 60 GHz band channels to 20 dbm.
> * Set wmmrule=ETSI to frequency ranges that are related to EN 301 893.
> * Permit outdoor usage of 2.4 GHz band channels.
> * Prohibit outdoor usage of some 5 GHz and 60 GHz band channels.
> 
> Signed-off-by: Illia Volochii <illia.volochii@gmail.com>
> ---
>  db.txt | 27 ++++++++++++++-------------
>  1 file changed, 14 insertions(+), 13 deletions(-)
> 
> diff --git a/db.txt b/db.txt
> index c71a03a..be6edf0 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1548,21 +1548,22 @@ country TZ:
>  	(2402 - 2482 @ 40), (20)
>  	(5735 - 5835 @ 80), (30)
>  
> -# Source:
> -# #914 / 06 Sep 2007: http://www.ucrf.gov.ua/uk/doc/nkrz/1196068874
> -# #1174 / 23 Oct 2008: http://www.nkrz.gov.ua/uk/activities/ruling/1225269361
> -# (appendix 8)
> -# Listed 5GHz range is a lowest common denominator for all related
> -# rules in the referenced laws. Such a range is used because of
> -# disputable definitions there.
> +# Source: https://zakon.rada.gov.ua/laws/show/z0201-15#n48
> +# Power limit units are the same as provided in the source (i.e., mW for
> +# 2.4 and 5 GHz, dbm for 60 GHz).
> +# Although it is allowed to use up to 250 mW for some 5 GHz frequency ranges,
> +# all of them are limited to 100 mW for IEEE 802.11n and IEEE 802.11ac.
> +# 2.4 GHz band channels can be used outdoors when some requirements are met.
> +# 5 GHz band channels must be used only indoors in some cases. They are neither
> +# permitted nor denied outdoors in others.
>  country UA: DFS-ETSI
> -	(2400 - 2483.5 @ 40), (20), NO-OUTDOOR
> -	(5150 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> -	(5250 - 5350 @ 80), (20), DFS, NO-OUTDOOR, AUTO-BW
> -	(5490 - 5670 @ 160), (20), DFS
> -	(5735 - 5835 @ 80), (20)
> +	(2400 - 2483.5 @ 40), (100 mW)

You mention that some conditions are required for outdoor use of this
range. One of those is TPC, which would require reducing the max EIRP to
50 mW. There's also some language about the SSID format which implies a
license might be required, but it's not entirely clear from the
translation I'm reading. Seems like it might be best to keep this at 100
mW, NO-OUTDOOR.

> +	(5150 - 5250 @ 80), (100 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> +	(5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> +	(5470 - 5725 @ 160), (100 mW), DFS, NO-OUTDOOR, wmmrule=ETSI
> +	(5725 - 5850 @ 80), (100 mW), NO-OUTDOOR
>  	# 60 GHz band channels 1-4, ref: Etsi En 302 567
> -	(57000 - 66000 @ 2160), (40)
> +	(57000 - 66000 @ 2160), (20), NO-OUTDOOR

These changes all look fine to me.

Thanks,
Seth

>  
>  country UG: DFS-FCC
>  	(2402 - 2482 @ 40), (20)
> -- 
> 2.25.1
> 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

