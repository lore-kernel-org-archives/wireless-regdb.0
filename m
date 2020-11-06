Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
 Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=yTzZTzsmgxTXwUOMxVKKDVnOMFOWjgoSwdczDXy1kfU=;
 b=j0f09ymoH2gDfDvyevnciompd
 hCiSzBfOvbgmP7QBDDq+xxKHIySCPSocCCin4Yc3N7FB2UOwfttoN4mhDsdQWnlVpbjWVm4N1q+UH
 k6QNQgefHvDkudmtjN+4kC+Rn/XxZ+t/VcRxaGKOuyS7tcJ34pOCiFG1ANAtPGuZ+IMqRp2KqPUVo
 2Uk7areQE2qY9yohHRgwJ/b7IkNu9YWxKjsMx21yi4d7O5l3v/tXZAXjLnLqyGAHb+Gh5R9zMDZm5
 yV05V/LSd+IzbP2B9JaRIs4Pkf2x1rQtKEIqf6+ZfoK5/2T6pAGQe8ljuKB0OIpXbWKM+usCPjXBK
 DnuPtTfvQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb9XQ-0006dI-Gh
 for wireless-regdb@lists.infradead.org; Fri, 06 Nov 2020 21:44:54 +0000
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1kb9XN-0001Ce-SM
 for wireless-regdb@lists.infradead.org; Fri, 06 Nov 2020 21:44:50 +0000
Received: by mail-io1-f71.google.com with SMTP id x17so2090458ioa.11 for
 <wireless-regdb@lists.infradead.org>; Fri, 06 Nov 2020 13:44:49 -0800 (PST)
Date: Fri, 6 Nov 2020 15:44:46 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20201106214446.GG6125@ubuntu-x1>
References: <4d07581c-a3be-a3c6-bf32-7007eb45d541@wildgooses.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4d07581c-a3be-a3c6-bf32-7007eb45d541@wildgooses.com>
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

Sorry for not responding sooner. I had started to look into this when
you sent the message, but I had to set it aside and then forgot to pick
it back up.

On Thu, Jul 02, 2020 at 08:50:41PM +0100, Ed W wrote:
> Hi, I think that the wireless regdb for GB domain can be corrected:
> 
> According to Ofcom, in 2017 the rules were updated for the 5725-5850Ghz
> range to allow a power output of 200mW (the max power output is much higher
> still for fixed wireless where a £50 licence is purchased)
> 
> Reference to the latest Ofcom document is here (IR-2030):
> 
> https://www.ofcom.org.uk/__data/assets/pdf_file/0028/84970/ir-2030.pdf
> 
> 
> My reading of this is that DFS is currently required and I *assume* also the
> wmm would be the same as the rest of the range. I'm not sure if this rule
> needs an AUTO-BW?

AUTO-BW doesn't make sense here, however it does look like the 5470 -
5725 rule could be expanded to 5730 to allow channel 144 to be used.

I agree that it looks like DFS is required, and also TPC which will
require us to use 100 mW as the max EIRP. Afaik the wmmrule doesn't
apply to the 5.8 GHz band, so I think that isn't required.

I'll send out a patch soon with these updates.

Thanks,
Seth

> (Note also that Ofcom opened a proposal to remove the DFS requirement on
> this frequency band (and to add new 5Ghz bands). Results of this are due
> later in 2020.)
> 
> 
> Therefore I think that the db.txt should say:
> 
> 
> |
> 
> country GB: DFS-ETSI
> ...
> 
> 	# Reference (IR-2030)
> 	(5725 - 5875 @ 80), (200 mW), DFS, AUTO-BW, wmmrule=ETSI
> 
> |
> 
> |Could someone appropriate please check this and update upstream.|
> 
> |
> |
> 
> |Thanks|
> 
> |Ed W
> |
> 
> ||
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
