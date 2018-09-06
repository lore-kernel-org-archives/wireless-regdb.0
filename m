Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=wNVHGYc+lTQjgu7VBTmZY5iAUf07ThbDCeWHfwiLiGs=;
 b=cJlL5hL0tHO472
 0zldrN9mmA+AoL54216hAVVcHPsCxeRRhYLEOIZ34tSRYCIDEfVXvUznK/UF+70XzJTiZLyAaUigV
 E/LnTDR6OFMg41rvITiKWojtmQgZCnq2l8cWeveFF6RPczyZ7JBcEAdiYTc7tQY2NMTflcSvPSMEs
 Clyc+Jzhr/1VSFuOOehFOTGB7qm065IThMbZqX3dk8wrutP/c+RDujE13yFH8mu7OH8hIe2WCydo2
 5meqxp9f5sK3F/efJq8oVDpTC8TWwe9PUXx6rZa6Y4fl73kCU3lTHkK2cIbSvtI1xBHlBCFrfObeW
 5bf5IKHfFlvUq9O15DFw==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fxtvD-0007cN-VP
 for wireless-regdb@lists.infradead.org; Thu, 06 Sep 2018 13:02:13 +0000
Received: from mail-yb1-f200.google.com ([209.85.219.200])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fxtuz-00018s-Eo
 for wireless-regdb@lists.infradead.org; Thu, 06 Sep 2018 13:01:53 +0000
Received: by mail-yb1-f200.google.com with SMTP id q65-v6so3752019ybg.12
 for <wireless-regdb@lists.infradead.org>; Thu, 06 Sep 2018 06:01:53 -0700
 (PDT)
Date: Thu, 6 Sep 2018 08:01:49 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180906130149.GE4251@ubuntu-xps13>
References: <d7dddf8e-b434-2492-3564-6f35b558d750@laxhuber.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d7dddf8e-b434-2492-3564-6f35b558d750@laxhuber.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Switzerland (CH), and Liechtenstein (LI) on 5GHz
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
To: Henrik Laxhuber <henrik@laxhuber.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sat, Aug 18, 2018 at 02:01:50PM +0200, Henrik Laxhuber wrote:
> [ My previous message didn't go through because I hadn't signed up to ]
> [   the wireless-regdb mailing list; I apologise if anyone receives   ]
> [                         this message twice                          ]

Thanks for the patch. However you forgot to include a Signed-off-by tag
(see the CONTRIBUTING file). Please also only include a description of
the patch in the commit message, any additional comments/questions can
be included in a cover letter.

Also one small comment about the changes below.

> As far as I could tell, the regulatory information for Switzerland and
> Liechtenstein did not match the information published by the national
> regulator. I have gone ahead and updated the information according to
> the 'National Frequency Allocation Strategy Table' [0] for both
> countries.
> 
> On a somewhat related note, are there any plans to properly support TPC?
> There are quite a few entries in the database where maximum transmission
> power could be increased when TPC is in use. Being able to set a
> different maximum antenna gain and/or EIRP when TCP is in use could be
> helpful in these cases. I guess what's holding this back is lacking
> driver support?

I haven't heard of any plans for supporting TPC in the kernel.

> PS: Since [0] can be cumbersome to navigate, I am also providing the
> direct links to the applicable tables. It's possible that these links
> will rot:
> 5150 - 5350 MHz: [1]
> 5470 - 5725 MHz: [2]
> 
> [0] https://www.ofcomnet.ch/#/fatTable
> [1] https://www.ofcomnet.ch/api/rir/1010/05
> [2] https://www.ofcomnet.ch/api/rir/1010/04
> ---
>  db.txt | 19 +++++++++++++++----
>  1 file changed, 15 insertions(+), 4 deletions(-)
> 
> diff --git a/db.txt b/db.txt
> index 8cf7dee..69cea85 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -265,10 +265,14 @@ country CF: DFS-FCC
>      (5490 - 5730 @ 40), (24), DFS
>      (5735 - 5835 @ 40), (30)
> 
> +# Source:
> +# https://www.ofcomnet.ch/#/fatTable
> +# Note that the maximum transmitter power can be doubled for 5250-5710MHz
> if
> +# transmitter power control is in use: 5250-5330@23db, 5490-5710@30db
>  country CH: DFS-ETSI
>      (2402 - 2482 @ 40), (20)
> -    (5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=ETSI
> -    (5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
> +    (5170 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI

This should also be changed to 5150-5250.

Thanks,
Seth

> +    (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
>      (5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
>      # 60 GHz band channels 1-4, ref: Etsi En 302 567
>      (57000 - 66000 @ 2160), (40)
> @@ -743,11 +747,18 @@ country LC: DFS-ETSI
>      (5490 - 5710 @ 160), (30), DFS
>      (5735 - 5815 @ 80), (30)
> 
> +
> +# Source:
> +# https://www.ofcomnet.ch/#/fatTable
> +# Note that the maximum transmitter power can be doubled for 5250-5710MHz
> if
> +# transmitter power control is in use: 5250-5330@23db, 5490-5710@30db
>  country LI: DFS-ETSI
>      (2402 - 2482 @ 40), (20)
> -    (5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=ETSI
> -    (5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
> +    (5170 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> +    (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
>      (5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
> +    # 60 GHz band channels 1-4, ref: Etsi En 302 567
> +    (57000 - 66000 @ 2160), (40)
> 
>  country LK: DFS-FCC
>      (2402 - 2482 @ 40), (20)
> -- 
> 2.18.0
> 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
