Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=desiato.20200630;
 h=Sender:Content-Transfer-Encoding
 :Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
 Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=3wcmY7R/uFmem39sLYwx5w6E1UPuBzqfGzIvAhJhUfM=;
 b=BbQEe0elysxb2G
 PsX9q+pC07UcFwJRM+4M1mrqg+nUS0W355/RhzTwY0I1GuSYklCQe9pHqA4TsGxY22QVkgwjAlngC
 ctvz/SLTrL+KrR5M+9ZOND/N9z5p2v27RIN8Di/6LI6+VSQojr9rbFNsg4Mj2X/Nx1NejGTKSSr50
 uHe9n69ZMrO3csgSJOhPZ/sEFtmMaUm9xgaN4GZxKiPGSnSzsaoT+ew5pzqYHWkVYyUGxjXBXt2aj
 UOnxu/Ai83bd+QvmkzrRNUuJwfhpont1gvHZwbFFrQ11NgFdxGjRIOUXoE9/qxGzjCj9iYptusoTy
 slaEqSYf0dZAxg+1lxQQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMXvj-003QkA-OU
 for wireless-regdb@lists.infradead.org; Wed, 17 Mar 2021 15:17:54 +0000
Received: from mail-ot1-f72.google.com ([209.85.210.72])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1lMXvi-00073a-JF
 for wireless-regdb@lists.infradead.org; Wed, 17 Mar 2021 15:17:50 +0000
Received: by mail-ot1-f72.google.com with SMTP id c6so22935609otl.14 for
 <wireless-regdb@lists.infradead.org>; Wed, 17 Mar 2021 08:17:50 -0700 (PDT)
Date: Wed, 17 Mar 2021 10:17:47 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <YFIdm5Y+i2WRdIdU@ubuntu-x1>
References: <002501d7066d$1a51cf50$4ef56df0$@yandex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <002501d7066d$1a51cf50$4ef56df0$@yandex.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Cuba (CU) on 5GHz
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
To: Jose Daniel Rodriguez <josedanielr@yandex.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Feb 18, 2021 at 10:12:45PM -0500, Jose Daniel Rodriguez wrote:
> Hello
> 
> I'm sending this patch to update wireless regulations of Cuba based on the
> linked resolution of the Ministry of Communications from 2019.
> 
> Best,
> Jose D.
> 
> 
> PS: The linux-wireless mailing list rejects my messages, it says: "Your
> address is not liked source for email".

Thanks for the patch. Please remember to include a Signed-off-by tag in
patches as indicated in the CONTRIBUTING file.

Also note that there is some line wrapping in the email, which makes the
patch fail to apply. It's easy to fix up in this case, but something to
watch out for in the future.

> 
> 
> ---
>  db.txt | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/db.txt b/db.txt
> index 32d71f5..e6e26ce 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -372,11 +372,12 @@ country CR: DFS-FCC
>  	(5735 - 5835 @ 20), (30)
>  
>  # Source:
> -# https://www.mincom.gob.cu/es/marco-legal
> -# - Redes Informáticas
> -# Resolución 127- 2011 Reglamento de Banda de frecuencias de 2,4 GHz.
> +#
> https://www.mincom.gob.cu/sites/default/files/marcoregulatorio/r_98-19_regla
> mento_redes_inalambricas.pdf
>  country CU: DFS-FCC
>  	(2400 - 2483.5 @ 40), (200 mW)
> +	(5150 - 5350 @ 80), (200 mW), NO-IR, NO-OUTDOOR

I'm reading a machine translation of the document, which isn't a great
translation. There I see power limits for "Internet Service Providers to
public" and for "Public service operators of telecommunications." Does
this mean that private networks are not allowed in this range? If so,
this range should probably be omitted.

What provision necessitates the NO-IR flag, both here and for 5470-5725
MHz?

> +	(5470 - 5725 @ 80), (200 mW), NO-IR

I don't see any EIRP limit below 250 mW for this range, so why 200 mW?

Thanks,
Seth

> +	(5725 - 5850 @ 80), (200 mW)
>  
>  country CX: DFS-FCC
>  	(2402 - 2482 @ 40), (20)
> -- 
> 2.26.0.windows.1
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
