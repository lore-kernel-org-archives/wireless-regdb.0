Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=/Ta0BOiXx+cWI5Mu7hQ7PhrZtDMwgRiad7diP/bCSPg=;
 b=mofqOGCDfF2Ala
 KdhCTlCwRCq2bRiTcPQsHEFVHJ5NkxrjIYs6YyuURMedbPwyZRf2HHRqPIqZVBne5r3/0oeLYeyBJ
 HiC/eez6wzJREjF58bFp/6yLnr/GpjDKxj2CXowbwjyvFm/Vkw56Cqhl/NC3779twUMU5uLF0FmH7
 yNu7IaTpmlUuRo/HKyKJVak4u+qF86C50F4wpFPKJUvlVXe8ppbR6Uq7F7kRwoKoRVtsnsPzJvM9j
 momtGQodvInc74ASgJtHZXrd3n/y7sgc2Qrs/zv/TyEcv7tgn3mKZsHfo04wvUPIKQA2SshzD6amw
 9f955/9Ahk3pqETJBAEQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6kZR-0004Ik-Or
 for wireless-regdb@lists.infradead.org; Sat, 07 Sep 2019 23:56:50 +0000
Received: from mail-qt1-f199.google.com ([209.85.160.199])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1i6kZL-0006oq-1X
 for wireless-regdb@lists.infradead.org; Sat, 07 Sep 2019 23:56:39 +0000
Received: by mail-qt1-f199.google.com with SMTP id y13so11150993qtn.6 for
 <wireless-regdb@lists.infradead.org>; Sat, 07 Sep 2019 16:56:39 -0700 (PDT)
Date: Sat, 7 Sep 2019 19:56:36 -0400
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20190907235636.GA8256@ubuntu-xps13>
References: <bf327181-521b-e1ce-c5c8-81b828fc65b6@streamunlimited.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bf327181-521b-e1ce-c5c8-81b828fc65b6@streamunlimited.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Fix ranges of EU
 countries as they are harmonized since 2014...
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
To: Emil Petersky <emil.petersky@streamunlimited.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Aug 05, 2019 at 04:19:16PM +0200, Emil Petersky wrote:
> This patch unites entries for EU countries, as they have been harmonized
> latest by July 2014...
> EU decision 2005/513/EC:
> https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
> EU decision 2006/771/EC:
> https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
> 
> Signed-off-by: Emil Petersky <emil.petersky@streamunlimited.com>

Thanks for this patch, and especially for all the references you
provided. Sorry it's taken a while to get back -- I've been checking the
changes against the links which took quite some time, and I have pretty
limited time for reviewing these patches.

Overall this looks good, however when I try to apply it I get an error
that the patch is corrupt. Can you try resending?

I also get warnings from git about trailing whitespace, and I've noted a
couple other trivial whitespace issues below, if you wouldn't mind
fixing those up before resending.

> @@ -167,23 +185,30 @@ country BF: DFS-FCC
>  #
>  # Note: The transmit power limits in the 5250-5350 MHz and 5470-5725 MHz bands
>  # can be raised by 3 dBm if TPC is enabled. Refer to BDS EN 301 893 for details.
> +#
> +# BG as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893) 
> +# and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
> +#  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
> +#  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
> +# BG: https://crc.bg/files/_en/Electronic_Communications_Revised_EN1.pdf
> +# BG: acceptance of 2006/771/EC https://crc.bg/files/Pravila_06_12_2018.pdf
> +
>  country BG: DFS-ETSI

This is the only place where you added a blank line between the comment
and the country. Let's remove that for consistency.

>  	# Wideband data transmission systems (WDTS) in the 2.4GHz ISM band, ref:
>  	# I.22 of the List, BDS EN 300 328
> -	(2402 - 2482 @ 40), (20)
> +	(2400 - 2483.5 @ 40), (100 mW)
>  	# 5 GHz Radio Local Area Networks (RLANs), ref:
>  	# II.H01 of the List, BDS EN 301 893
> -	(5170 - 5250 @ 80), (23), AUTO-BW, wmmrule=ETSI
> -	(5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
> +	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> +	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
>  	# II.H01 of the List, I.54 from the List, BDS EN 301 893
> -	(5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
> -	# Short range devices (SRDs) in the 5725-5875 MHz frequency range, ref:
> +	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
> +	# short range devices (ETSI EN 300 440-1)
>  	# I.43 of the List, BDS EN 300 440-2, BDS EN 300 440-1
> -	(5725 - 5875 @ 80), (14)
> -	# 60 GHz Multiple-Gigabit RLAN Systems, ref:
> +	(5725 - 5875 @ 80), (25 mW)
> +	# 60 GHz band channels 1-4 (ETSI EN 302 567)
>  	# II.H03 of the List, BDS EN 302 567-2
> -	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
> -
> +	(57000 - 66000 @ 2160), (40)
>  country BH: DFS-JP

You removed the blank line between the BG rules and BH here.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

