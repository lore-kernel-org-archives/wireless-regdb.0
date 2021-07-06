Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=ib7PokcmQV/HyLEMYM5ZmDFidRdVUqnXUmAlmbh52NQ=;
 b=oVf7cZ/zrKqhsj
 IsYMTfb5vEhk9uHcUv/stBaum3CdR3JQ1exu5fkkNorxFvaAHCDXBnBITiyLb7TV8tmr97HdF5nMJ
 6ggg3A6oM79nZ/S0ZEuwjY2ExUb1SdECbrBIhq2hJ8D/DGuIs7pG6JJUG6Cnq366ET+s0xtuUoaOp
 BAvfx0ot8Z9dy4DsD8luXzea3o3L43rShvoO016cT14zvdLPcJcAqK5NK1winPkQ/xR7Fz+a7B5Th
 zLiQr9iZusbctLsmixh4xyrIVrlxJN+HdsspsNSHy9ffN3yQpc62Gipq7GyepEWgjj5YanEQRuzhj
 lr31IKgGsZJrFykJt53Q==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0nlY-00CFI1-PG
 for wireless-regdb@lists.infradead.org; Tue, 06 Jul 2021 16:17:46 +0000
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by youngberry.canonical.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <seth.forshee@canonical.com>) id 1m0nlW-0002y6-Cw
 for wireless-regdb@lists.infradead.org; Tue, 06 Jul 2021 16:17:42 +0000
Received: by mail-il1-f198.google.com with SMTP id
 a7-20020a9233070000b02901edc50cdfdcso12885405ilf.19 for
 <wireless-regdb@lists.infradead.org>; Tue, 06 Jul 2021 09:17:42 -0700 (PDT)
Date: Tue, 6 Jul 2021 11:17:39 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <YOSCI2bhylSuW8GH@ubuntu-x1>
References: <20210608141341.86462-1-seth.forshee@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210608141341.86462-1-seth.forshee@canonical.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: update 5725-5850 MHz
 rule for GB
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
Cc: mj888@mail.co.uk, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Jun 08, 2021 at 09:13:41AM -0500, Seth Forshee wrote:
> Based on the latest IR 2030 update [1], update this range to cover
> 5725-5850 MHz rather than 5725-5875 MHz, increase the max EIRP to
> 200 mW, remove the DFS requirement, and add NO-OUTDOOR.
> 
> [1] https://www.ofcom.org.uk/__data/assets/pdf_file/0028/84970/ir-2030.pdf
> 
> Signed-off-by: Seth Forshee <seth.forshee@canonical.com>

Applied.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

