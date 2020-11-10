Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
 Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=RFAlr/mmhO+wSi1gkkgd1SS0O95F0xDG2qnr8GC+PLw=;
 b=Z4QEqEeU26G684KVgMXxTGWl/
 QTFp4XqEaUxXXWjeBYDXAd91NoPruv6OU1olXfKrqWlEBV3SQlqmJ0LCvNCNXi8PaSbeqt7/OUq9y
 wHYRDkxSwBXZ9UlRwLGJsn8V/36tqFdMMNDc+tQBE55MXKbJft3KkHkFzkSoui1xh0twFv4nJkMIg
 nuDTtydSKBiKSOZ0fRFCdIpwH2Ttquxn0I62CL1PzngWIYwGY5EdViDQW0L2Sj3MFBI3Zx3eg5TV+
 xGZ1G/AbRk9izJijEEpGjGz/mx7Xd47n3VfS0FlvkMJXNY49Qy5d5dRks3hLe2j/KM2USRsI8Z0tn
 hfa4KBbLg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcbO8-0001ux-GP
 for wireless-regdb@lists.infradead.org; Tue, 10 Nov 2020 21:41:18 +0000
Received: from mail-ot1-f71.google.com ([209.85.210.71])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1kcbO7-0003Q2-Cv
 for wireless-regdb@lists.infradead.org; Tue, 10 Nov 2020 21:41:15 +0000
Received: by mail-ot1-f71.google.com with SMTP id l12so23343oth.16 for
 <wireless-regdb@lists.infradead.org>; Tue, 10 Nov 2020 13:41:15 -0800 (PST)
Date: Tue, 10 Nov 2020 15:41:12 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20201110214112.GO6125@ubuntu-x1>
References: <20201106215324.91265-1-seth.forshee@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201106215324.91265-1-seth.forshee@canonical.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: update 5.8 GHz
 regulatory rule for GB
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
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Nov 06, 2020 at 03:53:24PM -0600, Seth Forshee wrote:
> Based on [1], the 5.8 GHz limit for GB is 200 mW and requires DFS
> and TPC. Update the rule accordingly.
> 
> While at it, expand the 5470 - 5725 rule to 5730 as specified in
> the same document to allow channel 144 to be used.
> 
> [1] https://www.ofcom.org.uk/__data/assets/pdf_file/0028/84970/ir-2030.pdf
> 
> Signed-off-by: Seth Forshee <seth.forshee@canonical.com>

Applied.

> ---
>  db.txt | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/db.txt b/db.txt
> index 699bce9fb9d8..39e1928fe384 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -593,9 +593,9 @@ country GB: DFS-ETSI
>  	(2400 - 2483.5 @ 40), (100 mW)
>  	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
>  	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
> -	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
> +	(5470 - 5730 @ 160), (500 mW), DFS, wmmrule=ETSI
>  	# short range devices (ETSI EN 300 440-1)
> -	(5725 - 5875 @ 80), (25 mW)
> +	(5725 - 5875 @ 80), (100 mW), DFS
>  	# 60 GHz band channels 1-6
>  	(57000 - 71000 @ 2160), (40)
>  
> -- 
> 2.27.0
> 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

