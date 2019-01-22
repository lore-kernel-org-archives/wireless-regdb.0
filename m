Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=aXGg7Emd1BOt6hufrUTrZsR2xnfLl/55mCDWkBFwvKA=;
 b=JNV5Kj5e9fOT2G
 uXi25ETdBIgCW494yuYsHf13EL77aF3DR1b6dZqOJpQ6rngOgS8k9FFlywYQB3ObqjDlkwgsF7Vul
 DY2S7ES+KU40yFPmyBaVcmoiX9BMJPe54RCeZivTfUnWYg3Hlh1e2UDh3x0Z6+CJWFa8ZvOUcA6iN
 TqOq7Py8+K+y8lChqfoLPkr+GnoVNWLwzkTv4G1wTjsjgbbxf5hJ4hv1MEau2dhYIBdNgx8hwKle9
 e7od1BllYp3W5pZp+u7ZjKBCuNwSiAsQFg+d/IaFaaClvipBlKffIRLCe+e8SQF1hjaJGJ2Qg82H6
 8nI+pyaCG1WWo7eMOgug==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gm3Mp-00013u-RO
 for wireless-regdb@lists.infradead.org; Tue, 22 Jan 2019 21:13:57 +0000
Received: from mail-yw1-f69.google.com ([209.85.161.69])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1gm3Mo-00043y-7U
 for wireless-regdb@lists.infradead.org; Tue, 22 Jan 2019 21:13:54 +0000
Received: by mail-yw1-f69.google.com with SMTP id u126so10054ywb.0 for
 <wireless-regdb@lists.infradead.org>; Tue, 22 Jan 2019 13:13:54 -0800 (PST)
Date: Tue, 22 Jan 2019 15:13:51 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20190122211351.GW7206@ubuntu-xps13>
References: <20181218080815.19395-1-chaitanya.mgit@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181218080815.19395-1-chaitanya.mgit@gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: update 60ghz band
 rules for us
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
To: chaitanya.mgit@gmail.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Dec 18, 2018 at 01:38:15PM +0530, chaitanya.mgit@gmail.com wrote:
> From: Chaitanya Tata <Chaitanya.Mgit@gmail.com>
> 
> Include channels 4, 5 & 6 for US in 60GHz band. FCC extended the
> 57-64GHz band till 71GHz with almost same rules.

This looks right to me based on my research. You're missing one thing
though. You need to provide a Signed-off-by tag, please see the
CONTRIBUTING file for more information. If you reply with your tag I
will add it when I apply the patch. Thanks!

> ---
>  db.txt | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/db.txt b/db.txt
> index fa5c0e0..ae650dd 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -1280,9 +1280,9 @@ country US: DFS-FCC
>  	(5490 - 5730 @ 160), (23), DFS
>  	(5735 - 5835 @ 80), (30)
>  	# 60g band
> -	# reference: http://cfr.regstoday.com/47cfr15.aspx#47_CFR_15p255
> -	# channels 1,2,3, EIRP=40dBm(43dBm peak)
> -	(57240 - 63720 @ 2160), (40)
> +	# reference: section IV-D https://docs.fcc.gov/public/attachments/FCC-16-89A1.pdf
> +	# channels 1-6 EIRP=40dBm(43dBm peak)
> +	(57240 - 71000 @ 2160), (40)
>  
>  country UY: DFS-FCC
>  	(2402 - 2482 @ 40), (20)
> -- 
> 2.17.1
> 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

