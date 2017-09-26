Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=Xtb+S9E3BJeIDTFzdEqTOOpLp5A4opoTjf8h8spIji0=;
 b=ck+/C7HM4laLmB
 HGPrUYQdPYokxY0hZMezmtPholh1TE3vH45Bv32tLJnW/VXAcL1JucdyHQHXa4EK6ya/p8uIgnqzU
 6111sJ9S0Oq/pXkjhg+ztP3h247SwQqH6AG+NMxh0CCUZ4g3AO6pl1V2FIyx6RpgkKrvzY84nrp6Y
 8Xpbdik+r2GOtVlBkOZbN4e26z8rJ8zCfysDqOU2kCif2AWkXL34SJyLG6ncuARBgxltlLXYqcVK1
 oarBx/3Jk4BXbOTk06yspAL5c+3q3Est6RJ06bCzFge3aJBvVF7iXegKYWEWbvAzBOQRXuINhXG1z
 kJwSQY1L7X5wRz/ozEMw==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dwwIG-0003A8-5b
 for wireless-regdb@lists.infradead.org; Tue, 26 Sep 2017 20:17:27 +0000
Received: from mail-qk0-f200.google.com ([209.85.220.200])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1dwwHt-0005ds-AI
 for wireless-regdb@lists.infradead.org; Tue, 26 Sep 2017 20:17:01 +0000
Received: by mail-qk0-f200.google.com with SMTP id r141so16206838qke.7 for
 <wireless-regdb@lists.infradead.org>; Tue, 26 Sep 2017 13:17:01 -0700 (PDT)
Date: Tue, 26 Sep 2017 16:16:57 -0400
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20170926201657.5f4cxrh5ou2gu3m7@ubuntu-xps13>
References: <20170914144942.GA32066@rhlx01.hs-esslingen.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170914144942.GA32066@rhlx01.hs-esslingen.de>
Subject: Re: [wireless-regdb] [RFC] wireless-regdb: Update rules for 2.4GHz
 limit Republic of Korea (KR)
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
To: Andreas Mohr <andim2@users.sf.net>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Sep 14, 2017 at 04:49:42PM +0200, Andreas Mohr wrote:
> Dear Sir / Madam,
> 
> we have initiated a WiFi SAR/RF testing/certification effort of our current device
> (handheld, TI WL1271 WLAN/Bluetooth BLE module, current Linux distribution: Ubuntu 12.04 LTS, to be modernized).
> 
> During our activities with Korean KC certification body, the following request has been made (TÜV Korea):
> 
> Mail 2016-06-14:
> "
> Please keep the power limit of less than 20mW as sent in our previous e-mail (if not fulfilled, the test will be failed).
> <red>Please do not send out samples before it complies to the requirement.</red>
> "
> 
> 20mW equals 13dBm.
> 
> We already successfully applied a modified signed regulatory.bin to have (and thus use) the reduced limit,
> however obviously we'd strongly prefer to have an official upstream release binary which:
> - where not up-to-date (e.g. older distribution base) can be custom-applied
> - where already up-to-date vs. upstream implicitly does have/receive all necessary future updates
> - is signed with official wireless-regdb / distro keys
> 
> We then asked for a paper trail (specs document, black-and-white dead-tree notice etc.)
> in order to file a thoroughly/legitimately claimed request for conformance update of wireless-regdb
> (simply due to properly knowing the root cause / explanation for this request!
> Details on why this limit has been imposed, when it got required, which modulation types it applies to, ...),
> however that turned out to be difficult.
> We ultimately succeeded in receiving the proper reference (Korean document, available upon request)
> which lists the 20mW requirement.
> 
> Also, a prior Internet search for
> "dBm site:rra.go.kr" had resulted in
> https://www.rra.go.kr/FileDownSvl?file_type=research2&file_parentseq=1044&file_seq=1
> (4.ÀüÀÚÆÄÀÎÃ¼º¸È£´ëÃ¥¿¬±¸.pdf , a nice UTF-8 mis-transcoding of originally Korean cp949 4.체호책.pdf 4.[uCCB4 uD638 uCC45].pdf)
> which appears to list device measurements, and where notably
> many 802.11g values of various company device models appear to be restricted to the 13dBm (i.e., 20mW) area.
> 
> 
> Due to other delays, this issue has not been pursued here (sorry!).
> Unfortunately it looks like
> wireless-regdb HEAD (9b3317bd4) does not yet have any change which would fulfill this certification requirement.
> 
> Thus, I am now proposing (RFC) the following minimum (potentially extended/documented) update.
> I decided to restrict the limitation to 2.4GHz area only since
> the current certification effort (and thus the limit request) is about 2.4GHz.

I can't read the document you reference above, and my own searches don't
seem to turn up anything authoritative. I consider the source of the
original 20 dBm limit reliable, but it was added in 2013 so it's
possible things have changed since then.

I'll give a few days for any other comments, and if there are none I
will apply the change.

Thanks,
Seth

> Thank you!
> 
> Yours sincerely
> 
> Andreas Mohr
> 
> 
> From 0added12024197148e87633c28959334795cbd02 Mon Sep 17 00:00:00 2001
> From: Andreas Mohr <andim2@users.sf.net>
> Date: Wed, 13 Sep 2017 11:51:54 +0200
> Subject: [PATCH] wireless-regdb: reduce power level limit of KR (Korea)
>  802.11b/g/n to the certification-requested "20mW" (13dBm).
> 
> Signed-off-by: Andreas Mohr <andim2@users.sf.net>
> ---
>  db.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/db.txt b/db.txt
> index e48f9a6..97b22b0 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -668,7 +668,7 @@ country KP: DFS-JP
>  	(5735 - 5815 @ 20), (30)
>  
>  country KR: DFS-JP
> -	(2402 - 2482 @ 40), (20)
> +	(2402 - 2482 @ 40), (13)
>  	(5170 - 5250 @ 80), (20), AUTO-BW
>  	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
>  	(5490 - 5710 @ 160), (30), DFS
> -- 
> 2.9.5
> 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
