Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=Ww0+lejiRzdX2oUK2ZPT9alKsRtbGeN+xqmWDgTsPZE=;
 b=GME+h/mU8TUt8b
 AyQ+cLpPq42RHQQvAyaWxAKVEZRP3zldRiXAPlsbNGhEybCnRbBi5PeTuwqSWhD3J+CueMyEs3Y/Q
 VLNpUoED4vUjn0dUmCxxpDXc/nasLLBsRiEAzcKyWDGPZieK5RTr5wCNul97GRqaNKTzLr5XXK1Lz
 z0ZD9IXPSbqpiibr8HKtE8009vXzKdszQPwp57IkLtg7ay1Jx8K64gFn1WE0mFreis+WErLyH+G24
 uUXjiRdIfTIEZICWai4pHLl8zprj4KeS08yrvKbmb5XtSLAzp68vcf4z397YWpWLl5wf6HWIL3Uac
 8pC2RwXV3aKplPuI+DzQ==;
Received: from mail-it0-x22a.google.com ([2607:f8b0:4001:c0b::22a])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cgvQy-0000Km-Qc
 for wireless-regdb@lists.infradead.org; Thu, 23 Feb 2017 15:35:59 +0000
Received: by mail-it0-x22a.google.com with SMTP id y135so4622984itc.1 for
 <wireless-regdb@lists.infradead.org>; Thu, 23 Feb 2017 07:35:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ITCNvSeNmPwZTLpJSJgHES3ObxdkjPuczQbhOJO0A4M=;
 b=k8rE+XsDJLe+FtpvK1BT5v8XnWR8mEru/ymLpzabGxOPunD0IRenGlqiHijT4Ft5+7
 srkvNk390LTrlNN7QjBjnWO5rNsA6fiyxgiH0+6OIjAAyBHrE2DGCbW+baroaiosztYO
 VeTqR0EN8aqtBQTQ2hRWkXP4mIiV4nMixqAWyFid0MuYiw/EQGDGoOg/dz+5bfHO/qpP
 zLV344/dIyb1mttSk00SOfPgIZC+6hupEvp6BICpLUMdEP6d5G5bupxu4kcI5ZyRXeGY
 ZO6i7cz7TerYR8UZFkJlYjZpLmDank9OfcbyFgCZrKNcXSNmn/vJEypq5I6ELqQqehnq
 8LOQ==
Date: Thu, 23 Feb 2017 09:35:32 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20170223153532.GA3479@ubuntu-hedt>
References: <20170223130142.GA90803@ubuntu-hedt>
 <20170223135253.1681-1-ryan@mounce.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170223135253.1681-1-ryan@mounce.com.au>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: Update rules for
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
Cc: linux-wireless@vger.kernel.org, Johannes Berg <johannes@sipsolutions.net>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Feb 24, 2017 at 12:22:53AM +1030, Ryan Mounce wrote:
> Sourced from the current legislation at
> https://www.legislation.gov.au/Details/F2016C00432
> 
> The current rules exceed legal limits between 5250-5330MHz, and permit
> illegal operation in 5600-5650MHz (disallowed regardless of DFS).
> 
> Frequency ranges and EIRP limits for all ranges have been updated to
> match items 59-63, 65 in the linked document. As the rules for AU have
> never previously mirrored local regulations, changes include a
> significant increase in the allowable 2.4GHz EIRP and smaller increases
> in most other bands.
> 
> In order to allow 80MHz operation between 5650-5730MHz (bordering two
> bands) the lower, more restrictive band has been rounded up by 5MHz.
> 
> Signed-off-by: Ryan Mounce <ryan@mounce.com.au>
> ---
>  db.txt | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)
> 
> diff --git a/db.txt b/db.txt
> index 05108e0..00e81b6 100644
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
> +	(2400 - 2483.5 @ 40), (36)

The mention of ETSI EN 300 328 in item 55 (a) leads me to believe that
this is the limit we should be using, i.e. 500 mW. It is a bit confusing
though since it seems like such devices would also fall under "digital
modulation transmitters." 

> +	(5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW

This looks correct.

> +	(5250 - 5350 @ 80), (23), NO-OUTDOOR, AUTO-BW, DFS

Since this range requires TPC we need to set the power limit at 100 mW.

> +	(5470 - 5600 @ 80), (30), DFS
> +	(5650 - 5730 @ 80), (30), DFS

These ranges also require TPC so we need to set the limit at 500 mW.

> +	(5730 - 5850 @ 80), (36)

In the document the ranges are 5650-5725 MHz and 5725-5850 MHz. I
suspect that the existing rules fudge that to line up with the wifi
channels, which technically is okay because the rules in the former
range are more restrictive. I wonder if we shouldn't be recording them
here as per the document and adding AUTO-BW. Johannes, any thoughts?

> +	(57000 - 66000 @ 2160), (43), NO-OUTDOOR

This looks correct.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

