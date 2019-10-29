Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=MBT+onH7si536IgOt8xc+oUChJYsjk81HGDmX3KNc5M=;
 b=IlM/oDO9Mj7LUC
 ScV1/hzyKmpx3dHNEroU0cGWzgWirVcR7Mr9Zn+CaDjypW9A6BdyEDERkfU5kms+UuCBRi4yGq9E5
 ODTgdLqxpJqQQvwBydgRJ50pQq9YeSANl7e/UwIltb+qI8De7u4nX8ICN/bg1xp4+MEXUJbIWWoUp
 aslQRPPPVmOwq3d1obM2nRwFEKZw4G2t4yvnDgDEebYSW3OUJQscc3Egu949HlIseATLtA2OQRfZu
 KBJrtjdvJYTP6NPoQgxCmh+ZvTUGsqR2rHf75AeHvNadDCo7vXrxiIVUD0ANeOkEVZSimaF98p0i8
 OB/BCIO4jRcCwlUgoJkg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPSnG-0001vH-0b
 for wireless-regdb@lists.infradead.org; Tue, 29 Oct 2019 14:48:24 +0000
Received: from mail-yw1-f71.google.com ([209.85.161.71])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1iPSnD-0006vq-F4
 for wireless-regdb@lists.infradead.org; Tue, 29 Oct 2019 14:48:19 +0000
Received: by mail-yw1-f71.google.com with SMTP id 123so9919723ywq.21 for
 <wireless-regdb@lists.infradead.org>; Tue, 29 Oct 2019 07:48:19 -0700 (PDT)
Date: Tue, 29 Oct 2019 09:48:15 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20191029144815.GR30813@ubuntu-xps13>
References: <1567189484-27536-1-git-send-email-hanipouspilot@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567189484-27536-1-git-send-email-hanipouspilot@gmail.com>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: update regulatory
 rules for Kazakhstan (KZ)
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
To: Dmitry Tunin <hanipouspilot@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Aug 30, 2019 at 09:24:44PM +0300, Dmitry Tunin wrote:
> Update according to the regulatory rule of January 21, 2015
> 
> http://egov.kz/cms/ru/law/list/V1500010730
> https://tengrinews.kz/zakon/pravitelstvo_respubliki_kazahstan_premer_ministr_rk/svyaz/id-V1500010730/
> 
> No DFS or TPC is mentioned in the document. Neither is 80 MHz channel width.
> 
> Signed-off-by: Dmitry Tunin <hanipouspilot@gmail.com>

Thanks for the patch. I don't agree with all of your changes though,
please see details below.

> ---
>  db.txt | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/db.txt b/db.txt
> index 37393e6..491598e 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -717,13 +717,13 @@ country KY: DFS-FCC
>  	(5735 - 5835 @ 80), (30)
>  
>  # Source:
> -# http://mic.gov.kz/sites/default/files/pages/pravila_prisvoeniya_polos_chastot_no34.pdf
> -# http://adilet.zan.kz/rus/docs/P000001379_
> -country KZ: DFS-ETSI
> -	(2402 - 2482 @ 40), (20)
> -	(5150 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
> -	(5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
> -	(5470 - 5725 @ 80), (20), NO-OUTDOOR, DFS
> +# http://egov.kz/cms/ru/law/list/V1500010730
> +# https://tengrinews.kz/zakon/pravitelstvo_respubliki_kazahstan_premer_ministr_rk/svyaz/id-V1500010730/
> +country KZ:
> +	(2400 - 2483.5 @ 40), (20)
> +	(5150 - 5350 @ 160), (23), NO-OUTDOOR
> +	(5470 - 5850 @ 160), (20), NO-OUTDOOR

The documents you provided reference this document:

https://egov.kz/wps/poc?uri=mjnpa:document&language=ru&documentId=V1500010375#z7

Which says that bands 5150-5350 MHz and 5470-5725 MHz should conform to
WRC-12 resolution 229:

https://www.itu.int/dms_pub/itu-r/opb/act/R-ACT-WRC.9-2012-PDF-E.pdf

This indicates that 5250-5350 MHz and 5470-5725 MHz must either have TPC
or reduce the maximum EIRP by 3 dBm, which for this database means
reducing the maximum power by 3 dBm for these bands. It also states that
these bands must implement the mitigation measures from ITU-R M.1652-1
in these bands, i.e. DFS.

So it appears to me that the existing DFS requirements are correct.
I think 5150-5250 MHz can be raised to 23 dBm, and 5250-5350 MHz needs
to remain at 20 dBm due to the TPC requirement. WRC-12 does mandate TCP
for 5470-5725 MHz, but also a maximum EIRP of 1W, so since 100 mW is far
less than half of that I suspect we can leave that at 20 dBm.

> +	(57000 - 66000 @ 2160), (40), NO-OUTDOOR

This addition looks fine to me.

Thanks,
Seth

>  
>  country LB: DFS-FCC
>  	(2402 - 2482 @ 40), (20)
> -- 
> 2.7.4
> 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

