Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=/UqEhyiJJiiYuB5D2bBX0JRBnKDL4ncxV4BnC9k0BDE=;
 b=j0n/kUVLkXBoRJ
 u82YH7JpAUPe3Ii3Bz72YJQqSftycgREoDiYCCWcC8S3c9FkdG7IAwa2ZF1yWmxAeLF2iejjaYsO2
 sFuAyRh49YOAnXHWRtPyzs+tU0ZSXFRHEFBoqoy8bzLqYFi88zHhi2z3PKOV+3v0bxnvg9nx7lwzd
 CwUIHz43XyjGKDxCfIK68oRZNeodhRt4T9o/SGYDpgtVPdUFLSMkuDx7BOX9Dvh7BO3R6+wQR2tF0
 q7pey0+jBu3j2cPEMDsHvtMqr1ilSebrElm4Ams4N4IwXw1e18ICTgvC6r3TzUgLfD53pPiAqkltr
 LRDMSWvWk/elZV2kFpUQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fG8c7-0005pT-8w
 for wireless-regdb@lists.infradead.org; Tue, 08 May 2018 19:49:34 +0000
Received: from mail-io0-f200.google.com ([209.85.223.200])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fG8bu-0004yV-Dd
 for wireless-regdb@lists.infradead.org; Tue, 08 May 2018 19:49:18 +0000
Received: by mail-io0-f200.google.com with SMTP id g5-v6so26330542ioc.4 for
 <wireless-regdb@lists.infradead.org>; Tue, 08 May 2018 12:49:18 -0700 (PDT)
Date: Tue, 8 May 2018 14:49:15 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180508194915.GA3375@ubuntu-xps13>
References: <1525363103-8620-1-git-send-email-haim.dreyfuss@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1525363103-8620-1-git-send-email-haim.dreyfuss@intel.com>
Subject: Re: [wireless-regdb] [PATCH v2 1/2] wireless-regdb: Add wmm rule
 for EEA and EFTA countries
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
To: Haim Dreyfuss <haim.dreyfuss@intel.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, johannes.berg@intel.com
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, May 03, 2018 at 06:58:22PM +0300, Haim Dreyfuss wrote:
> The ETSI EN 301 893 v211 (2017-05) standard defines a new channel
> access mechanism that all devices (WLAN and LAA) need to comply with.
> In previous versions the device was allowed by ETSI to implement
> 802.11 channel access mechanism based on a set of priority classes
> which are taken from 802.11.
> According to the new standard there might be some exception
> which require the EEA and the EFTA countries, which adhere
> ETSI rules, to follow more restrictive rules.
> In order to comply with the new standard introduced by ETSI, add
> wmmrule global item with the new ETSI channel mechanism rules.
> Also add wmmrule flag to EEA and EFTA countries.
> 
> Signed-off-by: Haim Dreyfuss <haim.dreyfuss@intel.com>

That's looking better. I did some light testing and nothing blew up with
4.15 or 4.17.

Applied both patches, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

