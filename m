Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
 Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=DeMQ6PO5UczW+PN27HOIU4xkiU4PMliGFHnWndC4V3w=;
 b=atSKnWVL4R4xnQYN5d86owvex
 zAa3SsSOpVgbrbWlDfL4AVsfnNN5WMCP1yg+5iy1heYf5IPAi10jlC0iFpMZzTLrPpe2g42IMHP3+
 Ge8wSv3fn6uOyginWmB2ESYsuzqeGYxfxM10YWAuDzs1NV1F1Xp8HobPkyx4LvNTzfDla/pp26EZu
 YyqfPm2RHdrF65EJ/46gf10nRhSufIP40FRx8oqBVz4DUVJFQCeCuLbWk/zYP6DoBVIG6u0/7oLGf
 VFTCr0L7IHN8YmDfzD4Td/LUoox6OIYa9naSE388wUhfWfbbw2g0jZhtNE++VWrtf/CFRUIOrKeuS
 JvmrrDBJw==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcGP8-0005As-P7
 for wireless-regdb@lists.infradead.org; Mon, 09 Nov 2020 23:16:56 +0000
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1kcGP6-0001I0-Dy
 for wireless-regdb@lists.infradead.org; Mon, 09 Nov 2020 23:16:52 +0000
Received: by mail-il1-f197.google.com with SMTP id f66so7783291ilh.17 for
 <wireless-regdb@lists.infradead.org>; Mon, 09 Nov 2020 15:16:52 -0800 (PST)
Date: Mon, 9 Nov 2020 17:16:49 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20201109231649.GH6125@ubuntu-x1>
References: <20200913172140.66439-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200913172140.66439-1-robert.marko@sartura.hr>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Croatia (HR)
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
To: Robert Marko <robert.marko@sartura.hr>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, Luka Perkov <luka.perkov@sartura.hr>
List-ID: <wireless-regdb@lists.infradead.org>

On Sun, Sep 13, 2020 at 07:21:40PM +0200, Robert Marko wrote:
> Croatian Regulatory Authority for Network Industries (HAKOM) has
> updated the general licenses OD-85 and OD-86 with the new OD-85a
> and OD-86a versions.
> 
> These introuduce the following changes:
> * Outdoor usage for 5150-5250 and 5250-5350 MHz ranges is permitted
> * 5150-5250 MHz range TPC requirment was dropped and power output raised to 200mW
> 
> OD-85a: https://www.hakom.hr/UserDocsImages/op%C4%87e%20dozvole%20prosinac%202009.g/Opca_dozvola_85a.pdf
> OD-86a: https://www.hakom.hr/UserDocsImages/op%C4%87e%20dozvole%20prosinac%202009.g/Opca_dozvola_86a.pdf
> 
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> Cc: Luka Perkov <luka.perkov@sartura.hr>
> ---
>  db.txt | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/db.txt b/db.txt
> index ac32483..52d0fab 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -693,8 +693,8 @@ country HR: DFS-ETSI
>  # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
>  # HR: http://tablice.hakom.hr:8080/vis?lang=en
>  	(2400 - 2483.5 @ 40), (100 mW)
> -	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> -	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
> +	(5150 - 5250 @ 80), (200 mW), AUTO-BW, wmmrule=ETSI

Based on the translation I'm reading the 200 mW applied to elevations
from 5 degrees to 30 degrees, and for elevations above 30 degress the
limit is 125 mW. I'm not expeienced with regulations that vary with the
elevation angle. Why should we use 200 mW instead of 125 mW, which is
allowed for any elevation?

> +	(5250 - 5350 @ 80), (200 mW), DFS, AUTO-BW, wmmrule=ETSI

The translation of OD-86a I'm reading says "use mostly indoors." Is that
an accurate translation? How does this compare to the language from
OD-86? I'm a little unsure how to interpret it.

Thanks,
Seth

>  	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
>  	# short range devices (ETSI EN 300 440-1)
>  	(5725 - 5875 @ 80), (25 mW)
> -- 
> 2.26.2
> 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

