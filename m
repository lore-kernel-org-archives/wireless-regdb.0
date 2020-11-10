Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
 Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=Od757x7xF9V3FhnUaAR6Z6HW5pmyQ/JRMXNhxyiyXjk=;
 b=nuIfp16Hy8IizrdqnFaWi+KjA
 BvXSmA2ti/hN/5UfhtrVhe18P7Td643Zmqnf4cgS/ntpSN4fr9KrO0O3nv/VlBdxLv243pHtBfMnT
 PM5uGhDKc03w5DL38zE2FLb58DCArZtq9K3mU/CQRkZSfny+jo4TWIfYdBFembQogsn/PAnIr22SF
 D71ZxC4ZPHYD7sX1CZS3CcVYvuJVTthwQqLvAOpycytIzV61QqK4qHiDoap0g13LO9lVJQT/hCCDi
 j+coLV9/3d0aiPUwWq5XSEHhPutkNQQcbCQOTXurQ+3PLl468fgvV6TuVOV2Ql36NKpEfzajoB0I/
 z1ji1y0Ow==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcIfd-000192-QT
 for wireless-regdb@lists.infradead.org; Tue, 10 Nov 2020 01:42:07 +0000
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1kcIfc-00010P-MM
 for wireless-regdb@lists.infradead.org; Tue, 10 Nov 2020 01:42:04 +0000
Received: by mail-io1-f69.google.com with SMTP id c17so7094062iom.20 for
 <wireless-regdb@lists.infradead.org>; Mon, 09 Nov 2020 17:42:04 -0800 (PST)
Date: Mon, 9 Nov 2020 19:42:02 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20201110014202.GI6125@ubuntu-x1>
References: <20200528210607.16154-1-seth.forshee@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528210607.16154-1-seth.forshee@canonical.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: update regulatory
 rules for Egypt (EG)
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
Cc: Ahmed Kamal <email.ahmedkamal@googlemail.com>, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, May 28, 2020 at 04:06:07PM -0500, Seth Forshee wrote:
> Update the rules to the frequency ranges and power limits
> documented in [1], and update 5GHz rules to comply with
> EN 301 893.
> 
> [1] https://www.tra.gov.eg/en/industry/importing-of-equipment/Pages/Regulations-for-use-of-Wireless-Networks-Devices.aspx
> 
> Signed-off-by: Seth Forshee <seth.forshee@canonical.com>

Applied.

> ---
>  db.txt | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/db.txt b/db.txt
> index ac3248350956..699bce9fb9d8 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -516,10 +516,11 @@ country EE: DFS-ETSI
>  	# 60 GHz band channels 1-4 (ETSI EN 302 567)
>  	(57000 - 66000 @ 2160), (40)
>  
> +# https://www.tra.gov.eg/en/industry/importing-of-equipment/Pages/Regulations-for-use-of-Wireless-Networks-Devices.aspx
>  country EG: DFS-ETSI
> -	(2402 - 2482 @ 40), (20)
> -	(5170 - 5250 @ 40), (20)
> -	(5250 - 5330 @ 40), (20), DFS
> +	(2402 - 2483.5 @ 40), (20)
> +	(5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> +	(5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
>  
>  # ES as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
>  # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
> -- 
> 2.25.1
> 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

