Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=i2ksJAt51UwJwOMDWNeo4ej7Y2rW0oe2dM9abRolWIE=;
 b=asOpJGF9RLKimK
 U6YevGSJ5RjNDAD+WFygvuiBNhXGVsroZc5qpHghWcDvh0604kCCnBTfY4nAMgnKPqxpU9+2tBsdz
 SIInaZRIxcZovt2hu+o6g0Ek4Kq8ggEH1cvfBaBOGK01wG+3J/27vJZ+Y+aXX+0/OmqQRr9zqpAM8
 8hL7GZgLXaMkzWd2VX/1uXuZbeAQxNYGBmgW0d4sIwdE4bLMA+RJt7Qf+4BUJNSJL3SBqf7QKrZ6M
 fItNYyYN3x/eVa/2u0b0JeOU0Gq2yCImsl1sbXqYC3fngtIWRJw4rYpcHTxXzTQLtI0D2LSlI/TBe
 xdrPEG0OiGe1WlfEKDfw==;
Received: from mail-oi1-f170.google.com ([209.85.167.170])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyDfd-001Usb-9z
	for wireless-regdb@lists.infradead.org; Mon, 06 Jun 2022 14:25:31 +0000
Received: by mail-oi1-f170.google.com with SMTP id h188so19910017oia.2 for
 <wireless-regdb@lists.infradead.org>; Mon, 06 Jun 2022 07:25:27 -0700 (PDT)
Date: Mon, 6 Jun 2022 09:25:24 -0500
From: Seth Forshee <seth@forshee.me>
Message-ID: <Yp4OVOe7oEgSoTBT@ubuntu-x1>
References: <20220527193149.127735-1-sforshee@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220527193149.127735-1-sforshee@kernel.org>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Remove AUTO-BW from 6
 GHz rules
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
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org, Dennis Bland <dennis@dbperformance.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, May 27, 2022 at 02:31:49PM -0500, Seth Forshee wrote:
> No other bands are directly adjacent to this one, so AUTO-BW doesn't
> make sense. Remove it, and also fix a nearby whitespace mistake found
> while doing this update.
> 
> Cc: Dennis Bland <dennis@dbperformance.com>
> Signed-off-by: Seth Forshee <sforshee@kernel.org>

Applied.

> ---
>  db.txt | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/db.txt b/db.txt
> index cf35883d1867..47850c051c9a 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -470,7 +470,7 @@ country DE: DFS-ETSI
>  	# short range devices (ETSI EN 300 440-1)
>  	(5725 - 5875 @ 80), (25 mW)
>  	# WiFi 6E
> -	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> +	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, wmmrule=ETSI
>  	# 60 GHz band channels 1-4 (ETSI EN 302 567)
>  	(57000 - 66000 @ 2160), (40)
>  
> @@ -558,7 +558,7 @@ country ES: DFS-ETSI
>  	# short range devices (ETSI EN 300 440-1)
>  	(5725 - 5875 @ 80), (25 mW)
>  	# WiFi 6E
> -	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> +	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, wmmrule=ETSI
>  	# 60 GHz band channels 1-4 (ETSI EN 302 567)
>  	(57000 - 66000 @ 2160), (40)
>  
> @@ -582,8 +582,8 @@ country FI: DFS-ETSI
>  	# short range devices (ETSI EN 300 440-1)
>  	(5725 - 5875 @ 80), (25 mW)
>  	# 6 GHz band
> -	(5945 - 6425 @ 160), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> -        # 60 GHz band channels 1-4 (ETSI EN 302 567)
> +	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
> +	# 60 GHz band channels 1-4 (ETSI EN 302 567)
>  	(57000 - 66000 @ 2160), (40)
>  
>  country FM: DFS-FCC
> @@ -607,7 +607,7 @@ country FR: DFS-ETSI
>  	# short range devices (ETSI EN 300 440-1)
>  	(5725 - 5875 @ 80), (25 mW)
>  	# WiFi 6E low power indoor
> -	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> +	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, wmmrule=ETSI
>  	# 60 GHz band channels 1-6 (ETSI EN 302 567 v2.2.1)
>  	(57000 - 71000 @ 2160), (40)
>  
> @@ -732,7 +732,7 @@ country HR: DFS-ETSI
>  	# short range devices (ETSI EN 300 440-1)
>  	(5725 - 5875 @ 80), (25 mW)
>  	# WiFi 6E
> -	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> +	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, wmmrule=ETSI
>  	# 60 GHz band channels 1-4 (ETSI EN 302 567)
>  	(57000 - 66000 @ 2160), (40)
>  
> @@ -1222,7 +1222,7 @@ country NL: DFS-ETSI
>  	# short range devices (ETSI EN 300 440-1)
>  	(5725 - 5875 @ 80), (25 mW)
>  	# WiFi 6E
> -	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> +	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, wmmrule=ETSI
>  	# 60 GHz band channels 1-4 (ETSI EN 302 567)
>  	(57000 - 66000 @ 2160), (40)
>  
> @@ -1242,7 +1242,7 @@ country NO: DFS-ETSI
>  	# short range devices (ETSI EN 300 440-1)
>  	(5725 - 5875 @ 80), (25 mW)
>  	# WiFi 6E
> -	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> +	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, wmmrule=ETSI
>  	# 60 GHz band channels 1-4 (ETSI EN 302 567)
>  	(57000 - 71000 @ 2160), (40)
>  
> -- 
> 2.34.1
> 
> 
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

