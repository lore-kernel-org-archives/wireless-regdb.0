Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=zIK/+Ek6JX9Qa/UxEuTE2Nu6OxN4VcxQFpKLTFHsPt0=;
 b=45+8HYlMSH7AP8
 pu5/XslSaGK+gzW9j2HJ9mEYFPBXwpO+EqkmN0elMeOVXDeqWWdDfjD83JKxg1c8VvqnS/5NCELrR
 3WwScBYGRd6UMj3yhdV/KTkkSkyYNMMGQnJgaVnCNZaCdapooAg1b8Eugj5iW54qGx5//G3/LUZRp
 FWfYmeyU90qqwll/RzIGPkDw1x5yRCFDvLZJTJOOwUj7yRxm0p9rCZXqyufh7InMHf/cEh3r84ovB
 0HBF+p/QydsLs+KCQbGuHLUxWUjBSNhcFtwSarUuAM8sWdyqO+Ril2TDevNI0Nvm22zgb8Rmfdg/s
 J3hYrBR6Z2K1hoYXI54Q==;
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIv4n-00A8iY-CR
 for wireless-regdb@lists.infradead.org; Sat, 12 Feb 2022 16:16:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644682602;
 bh=B49CEMXFAbeur6FwmxEoVgg4tF+ceIGB3/CKqTM7JTw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Qzj00t5Cin8XrYFg7FnCgvelMyu+gGNlaOKCZUb5/jUy79WuYdYSbYJ6GgKk4C/5C
 EBfv5Se+pLfYEc8TVC20k4cEafHXFuiWwb511XPvgiZoIgzpgWNUrCBNXw1OWWzyX8
 XcbaTtO3VYOnkev6q5hvQCzyR1sIyWiYsBcOkQ9s5pNg3C+mwobjmbY1DNcdlE69S9
 Lx1aufxi1f49PkrGcgdj8J21kHP32MayrOBKC8SiYmNlZlIyfrmZ4W85bRuCLwC2Rj
 FBphBCjcNM+3wUYkJ/pb8KHewKiW0AHngvMD9csgXx+CfG7YcT8JWLnY6gUQpxyN11
 5bG1QA7w/NASg==
Date: Sat, 12 Feb 2022 10:16:41 -0600
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YgfdaR+/fxM/+1Im@ubuntu-x1>
References: <f05ace72-4ac3-4035-1cff-0ae12ebbf995@baanhofman.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f05ace72-4ac3-4035-1cff-0ae12ebbf995@baanhofman.nl>
Subject: Re: [wireless-regdb] Update for the Netherlands
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
To: Wilco Baan Hofman <wilco@baanhofman.nl>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Feb 03, 2022 at 11:30:36AM +0100, Wilco Baan Hofman wrote:
> Hi all,
> 
> I noticed the regulatory DB entry for the Netherlands has not been updated
> to match the rest of ETSI, despite the government opening up this spectrum
> in december 2021.
> 
> I have attached a patch, based on the announcement and law in the
> Netherlands.
> 
> NL official announcement:
> https://zoek.officielebekendmakingen.nl/stcrt-2021-49492.pdf
> NL effective law: https://wetten.overheid.nl/BWBR0036378/2021-12-15
> 
> Unfortunately only Dutch, but it matches 2021/1067/EU. (Indoor, 23dBm, only
> lower part of 6GHz)

Thanks for the patch! The content looks good. The indentation on the
description is a bit weird, but I can fix that up. In the future please
use 'git format-patch' as this should format the patch correctly for
application.

One thing I do need from you is a Signed-off-by tag. Please have a look
at the CONTRIBUTING file in the wireless-regdb source, and if you are in
agreement respond with your Signed-off-by tag.

Thanks,
Seth

> 
> Regards,
> 
> Wilco Baan Hofman
> 

> From 2379e97eb143985b51ebb2895e68a9f330a8bb41 Mon Sep 17 00:00:00 2001
> From: Wilco Baan Hofman <wilco@baanhofman.nl>
> Date: Thu, 3 Feb 2022 11:21:28 +0100
> Subject: [PATCH]     wireless-regdb: Update regulatory rules for the
>  Netherlands (NL) on 6GHz
> 
>     In accordance with the EU Commision decision 2021/1067/EU the
>     Dutch Ministry of Economic Affairs and Climate Policy has opened
>     the use of the lower 6GHz spectrum, for indoor use, up to 23dBM (200mW).
> 
>     NL Announcement https://zoek.officielebekendmakingen.nl/stcrt-2021-49492.pdf
>     NL Law: https://wetten.overheid.nl/BWBR0036378/2021-12-15
> 
>     Unfortunately, only available in dutch.
> ---
>  db.txt | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/db.txt b/db.txt
> index 6dbda3c..2fb4b97 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1178,6 +1178,10 @@ country NI: DFS-FCC
>  #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
>  # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
>  # NL: http://wetten.overheid.nl/BWBR0036378/2015-03-05
> +# Updated 14 december 2021 to allow the lower part of the 6GHz spectrum for WiFi 6E
> +# mobile short distance equipment, broadband transmission equipment, license free, from day after publication
> +# NL announcement: https://zoek.officielebekendmakingen.nl/stcrt-2021-49492.pdf
> +# NL law: https://wetten.overheid.nl/BWBR0036378/2021-12-15
>  country NL: DFS-ETSI
>  	(2400 - 2483.5 @ 40), (100 mW)
>  	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> @@ -1185,6 +1189,8 @@ country NL: DFS-ETSI
>  	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
>  	# short range devices (ETSI EN 300 440-1)
>  	(5725 - 5875 @ 80), (25 mW)
> +	# WiFi 6E
> +	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
>  	# 60 GHz band channels 1-4 (ETSI EN 302 567)
>  	(57000 - 66000 @ 2160), (40)
>  
> -- 
> 2.31.1
> 

> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

