Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
 Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=WLK0Dg+ka9JZB1uE6LvBDQUknGKyOT2fiG7xbI7b/BI=;
 b=q+4WqzdtWJCnJlA+RbvqKF+/s
 uGVXOqJC0KjVZtJUX3Tbt4BHn3WdyEw7kq/WYRxICI4DeN0Tmt5F/NoxajgUkcWmpiBn6L8GR+E7t
 CVNKu5ZdzCfpZA7c9WFv/nqHjeKCdvu1PWd8zJExvFtkRQS/2KywPYEqcZER0egiS1CU+y5RXIF6q
 JbBwvUPjTMJp3dgmpFAbbdtx2r31O2IEZnGG3CG7m8D50LWR1k7fYoZ6GxrFiNnEi3k8uqbtXxAH3
 P+s4YJ20fENaWLzBqRvTUdIWlIljaXwdKLZxHPuIVpUFQztJhlRFPqQGsbNXLuYrjeLvTYWeNTg+n
 kWCE6kOKQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kgAcW-0005JO-DS
 for wireless-regdb@lists.infradead.org; Fri, 20 Nov 2020 17:54:54 +0000
Received: from mail-oi1-f198.google.com ([209.85.167.198])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1kgAcT-0004SY-Tr
 for wireless-regdb@lists.infradead.org; Fri, 20 Nov 2020 17:54:50 +0000
Received: by mail-oi1-f198.google.com with SMTP id o130so4759431oig.2 for
 <wireless-regdb@lists.infradead.org>; Fri, 20 Nov 2020 09:54:49 -0800 (PST)
Date: Fri, 20 Nov 2020 11:54:44 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20201120175444.GN5439@ubuntu-x1>
References: <4d07581c-a3be-a3c6-bf32-7007eb45d541@wildgooses.com>
 <20201106214446.GG6125@ubuntu-x1>
 <2a710032-f2ec-d55b-5da4-d881089fe0cd@wildgooses.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2a710032-f2ec-d55b-5da4-d881089fe0cd@wildgooses.com>
Subject: Re: [wireless-regdb] Correction of wireless-regdb for GB
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
To: Ed W <lists@wildgooses.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Nov 13, 2020 at 06:49:40PM +0000, Ed W wrote:
> Hi Seth
> 
> Thanks for patching this. Can I also bring a later patch that I posted to your attention, the actual
> patch is now out of date, but I'm posting verbatim since I think there is a 25Mhz discrepancy (?)
> and also my patch is almost certainly wrong, so I'm after your guidance!! :-)
> 
> Essentially there has been a recent result of a consultation in the UK (GB) to expand wifi into 6Ghz
> *AND* to NOT require DFS on high 5Ghz channels.

I've looked through the 6 GHz statement. One thing I'm not clear on is
whether the decision is effective immediately or only once the relevant
regulatory documents have been ammended (as noted in section 6.3). I did
not find an updated IR 2030 at least, so I wonder if these changes
should wait for that.

> So in summary, the change you just made (sorry) can now be set to *NOT* need DFS in the high
> channels around 5.7Ghz. More details in the links below.

The document only seems to state that the DFS requirement is removed for
indoor use up to 200 mW EIRP. So this range may also need to have
NO-OUTDOOR added if DFS is removed. Hopefully when IR 2030 is updated
the restrictions will be clear.

> In particular one of the additional frequency ranges (6Ghz) has an intended use of indoor where it
> has large power outputs (and encouraged to use larger powers by request of Intel), but it is *ALSO*
> allowed to be used outdoor with very low power requirements (possibly it will later fall under the
> UK's allowance to use higher output power if you buy a £50 licence?). I've marked it as INDOOR-ONLY
> since that seems safest - I'm unclear how to mark something for dual use?

I don't think that's something we've ever done. The regdb can contain
two entries for the same range in a given country, I'm not sure how that
will be handled by the kernel though. I'll have to look at the code.

> These changes significantly expand the available 5Ghz space in the UK, so would be nice to get
> upstream for general use
> 
> 
> Notes:
> 
> https://www.ofcom.org.uk/__data/assets/pdf_file/0036/198927/6ghz-statement.pdf
> 
> https://www.ofcom.org.uk/__data/assets/pdf_file/0028/84970/ir-2030.pdf
> 
> Thanks if you might make this second change!
> 
> Ed W
> 
> 
> On 06/11/2020 21:44, Seth Forshee wrote:
> > Sorry for not responding sooner. I had started to look into this when
> > you sent the message, but I had to set it aside and then forgot to pick
> > it back up.
> 

> From ee0aad4566b206f313e92ab4ae98f786767892cd Mon Sep 17 00:00:00 2001
> From: root <root@twocubed.nippynetworks.lan>

Can this be changed so that the patch author is the same as the
information in the sign-off?

> Date: Thu, 17 Sep 2020 13:31:18 +0000
> Subject: [PATCH] Update regulatory rules for UK (GB)
> MIME-Version: 1.0
> Content-Type: text/plain; charset=UTF-8
> Content-Transfer-Encoding: 8bit
> 
> The IR-2030 document on p47 clarifies a difference for the UK on
> 5725-5850Mhz from the rest of the UK. Power levels are higher and it's
> possible to raise these further by purchasing a 50 GBP radio licence.
> 
> Since Jan 2020 Ofcom has solicited comments on further deregulating this
> band to bring it into global alignment. DFS requirements have been
> removed and a new band in the 6Ghz space has been made available with
> 250mW power levels (indoor, 25mW outdoor), also with no DFS requirement.
> 
> Signed-off-by: Ed Wildgoose <lists@wildgooses.com>
> ---
>  db.txt | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/db.txt b/db.txt
> index ac32483..cc5ffd0 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -588,13 +588,16 @@ country FR: DFS-ETSI
>  # GB: https://www.ofcom.org.uk/__data/assets/pdf_file/0019/136009/Ofcom-Information-Sheet-5-GHz-RLANs.pdf
>  # GB: https://www.ofcom.org.uk/__data/assets/pdf_file/0028/84970/ir-2030.pdf
>  # GB: https://www.ofcom.org.uk/__data/assets/pdf_file/0013/126121/Statement_Implementing-Ofcoms-decision-on-the-57-71GHz-band.pdf
> +# GB: https://www.ofcom.org.uk/__data/assets/pdf_file/0036/198927/6ghz-statement.pdf
>  country GB: DFS-ETSI
>  	(2400 - 2483.5 @ 40), (100 mW)
>  	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
>  	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
> -	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
> +	(5470 - 5730 @ 160), (500 mW), DFS, wmmrule=ETSI

This looks okay to me.

>  	# short range devices (ETSI EN 300 440-1)
> -	(5725 - 5875 @ 80), (25 mW)
> +	# See UK specific notes in ir-2030.pdf, p47
> +	(5725 - 5850 @ 80), (200 mW), AUTO-BW, wmmrule=ETSI

To echo what I said above, I'm unclear whether this change is in effect
yet, and based what I've seen so far I think it would need to include
NO-OUTDOOR.

> +	(5925 - 6425 @ 160), (250 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI

I'm also unclear on whether this change is in effect yet.

Thanks,
Seth

>  	# 60 GHz band channels 1-6
>  	(57000 - 71000 @ 2160), (40)
>  
> -- 
> 2.26.2
> 


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
