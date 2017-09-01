Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=+/YIKTrlCEdtfTUsMW+/TODAWzsriVx7WYC+IwwLBek=;
 b=aLll+zE5QaIfhg
 yEmAP1oSEiV8GFLnQQjmjfKs5YK2y5KioVpigsVHHso1210xMy9A/5TP3T+J7x3oO5/KF72Z0nDi6
 s9woem8+ZVd+KYbYRrPoa9koXNhF7GzQtMdE5S4H7C+WfJzY5z/idFrKQ7p8FsohqMNx3fTThCjIW
 +VmH1MRWN6k8Xa+TAbou55kJUXAOJUSHOigd+8AesefLhJ6oaup6UuujJe4z+p1TrqJZoht+1JdkG
 Oi6e524Bh7+UrkiGv7bs+1YoFlsjvjgQk7zW8EZOmZhXbMbfxD2cOiAJu7/T4Aspb76SZsPlBuRoF
 nj9PPU4CPYV0pwkGyHyA==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dnoAY-0007Fh-K7
 for wireless-regdb@lists.infradead.org; Fri, 01 Sep 2017 15:47:45 +0000
Received: from mail-io0-f200.google.com ([209.85.223.200])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1dnoAA-0004M1-FT
 for wireless-regdb@lists.infradead.org; Fri, 01 Sep 2017 15:47:18 +0000
Received: by mail-io0-f200.google.com with SMTP id 81so1518223ioj.2 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Sep 2017 08:47:18 -0700 (PDT)
Date: Fri, 1 Sep 2017 10:47:15 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20170901154715.hpkm4iluogxqj3lz@ubuntu-xps13>
References: <20170823081100.GB44003@mercury.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170823081100.GB44003@mercury.local>
Subject: Re: [wireless-regdb] [PATCH] Update rules for Turkey 5ghz
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
To: Edwin Steele <edwin@wordspeak.org>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Aug 23, 2017 at 06:11:00PM +1000, Edwin Steele wrote:
> 
> Update rules for Turkey 5ghz
> 
> Based on the information from [1] the power limit for 5Ghz channels
> can be increased. Additionally 5170-5330Mhz are restricted to indoor
> use.
> 
> There are references to e.i.r.p density in [1] that will affect the
> power available for wide channels, but they are not reflected in
> this change as it's unclear how they would be specified.
> 
> [1] https://www.btk.gov.tr/File/?path=ROOT%2f1%2fDocuments%2fOrdinance%2fBY%2DLAW%20ON%20SHORT%20RANGE%20DEVICES.pdf                                                                                                 
> Signed-off-by: Edwin Steele <edwin at wordspeak.org>
> 
> diff --git a/db.txt b/db.txt                         
> index 0bc068e..9a1192f 100644                        
> --- a/db.txt                                         
> +++ b/db.txt                                         
> @@ -1158,11 +1158,15 @@ country TN: DFS-ETSI         
>         (5170 - 5250 @ 80), (20), AUTO-BW            
>         (5250 - 5330 @ 80), (20), DFS, AUTO-BW       
>                                                      
> +# Source:                                           
> +# By-Law on Short Range Radio Devices (SRD) Oct 2015
> +# https://www.btk.gov.tr/File/?path=ROOT%2f1%2fDocuments%2fOrdinance%2fBY%2DLAW%20ON%20SHORT%20RANGE%20DEVICES.pdf                                                                                                 
> +# Article 8                                         
>  country TR: DFS-ETSI                                
> -       (2402 - 2482 @ 40), (20)                     
> -       (5170 - 5250 @ 80), (20), AUTO-BW            
> -       (5250 - 5330 @ 80), (20), DFS, AUTO-BW       
> -       (5490 - 5710 @ 160), (27), DFS               
> +       (2400 - 2483.5 @ 40), (20)                   
> +       (5170 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
> +       (5250 - 5330 @ 80), (23), DFS, NO-OUTDOOR, AUTO-BW                                                
> +       (5470 - 5725 @ 160), (30), DFS               

What you missed is that 5250-5350 and 5470-5725 MHz also require TPC
which means we need to cut their power limits in half. So for these
ranges the previous limits of 20 and 27 dBm are correct.

The other changes look correct. Could you resend with those power limits
adjusted?

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

