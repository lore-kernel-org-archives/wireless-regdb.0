Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=XYEeSS4R9/b+97mj/F+lHUQLHa4U5tbqAgHJcKD3eIg=;
 b=LaSZQyaNgX0BPY
 WFs0ObqRARzPWJ2c6xS7WeJAA68V6lNSCOKWyQJJDzxrrO91ltCfmarLZlxnrKjOehRIU1lqrzJzP
 F8JDlEhvIhVCJCwZe6/rIPzuMmnrSIpvmyS6h2bGxpsoYGvy6XpwO3iidvq3Ehg5g5DGBobmeMZuF
 0oKqf4XM2P6x1R6puprvuI7SY4VQOMf5hTy+r0+v0hxyb9ksC/eznikZTO3lnTGWQJMNyN6nIXSgX
 6VBjP/tYGniG/SFM3sFRu/FKooE2jjZNdBxxhawClHMPCvUztufmyHJnxz7aw+Zx4HioGMP5qgmLj
 M/Kr9gvYHlQDr1+ddtwA==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQtyY-000055-10
 for wireless-regdb@lists.infradead.org; Wed, 15 May 2019 13:29:43 +0000
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1hQtyV-0008Bd-9W
 for wireless-regdb@lists.infradead.org; Wed, 15 May 2019 13:29:39 +0000
Received: by mail-io1-f71.google.com with SMTP id h189so1827844ioa.13 for
 <wireless-regdb@lists.infradead.org>; Wed, 15 May 2019 06:29:39 -0700 (PDT)
Date: Wed, 15 May 2019 08:29:36 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20190515132936.GA4357@ubuntu-xps13>
References: <20190504191817.3668-1-xose.vazquez@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190504191817.3668-1-xose.vazquez@gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: update source of
 information for ES
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
To: Xose Vazquez Perez <xose.vazquez@gmail.com>
Cc: REGDB ML <wireless-regdb@lists.infradead.org>, WIRELESS ML <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Sat, May 04, 2019 at 09:18:17PM +0200, Xose Vazquez Perez wrote:
> Cc: Seth Forshee <seth.forshee@canonical.com>
> Cc: WIRELESS ML <linux-wireless@vger.kernel.org>
> Cc: REGDB ML <wireless-regdb@lists.infradead.org>
> Signed-off-by: Xose Vazquez Perez <xose.vazquez@gmail.com>

Applied, thanks!
> ---
>  db.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/db.txt b/db.txt
> index 4fb1948..fe909a8 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -432,7 +432,7 @@ country EG: DFS-ETSI
>  
>  # Source:
>  # Cuadro nacional de atribución de frecuencias (CNAF)
> -# http://www.mincotur.gob.es/telecomunicaciones/espectro/paginas/cnaf.aspx
> +# https://avancedigital.gob.es/espectro/Paginas/cnaf.aspx
>  country ES: DFS-ETSI
>  	(2400 - 2483.5 @ 40), (100 mW)
>  	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
