Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=wXEg89cHT2cQPr0Tx+51rAc2XayLIkhApYEGV3TVwJo=;
 b=Eg0VM7EAr0ktLB
 2UYPVkUSaRcZMLj4cCU+pKcX5vHn1vAfIZ8XCMhFoMJ1tcxDbXRXlh8AAyLUPlGin5JehEBIjgd0b
 50Wgaz1LpQQXUBoBM3OongmM4ew6chti8p+iLtk0Plb1/xFsuCkOH6Ik2Gijse0I/QaWje8MAqB09
 rOtqTawSNqKlzVY5XVTHSAWs2Cw7T320dO4dKfpbFj9cbfeI/dCnR+Jx9Gl2TbNCeWE3zTHbk5LrL
 Mes1ep4tYG47Eo7BFxzgkgl0qXZOl37y9o1mfvkIQG0WYNWYin7bcZXlGLVOyxzkDD7+rHD6mk3T7
 QItetP0/6EynmI9O4uxw==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXueD-0001zE-Az
 for wireless-regdb@lists.infradead.org; Mon, 03 Jun 2019 21:37:42 +0000
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1hXueB-0001wS-Tx
 for wireless-regdb@lists.infradead.org; Mon, 03 Jun 2019 21:37:40 +0000
Received: by mail-io1-f69.google.com with SMTP id s83so14860638iod.13 for
 <wireless-regdb@lists.infradead.org>; Mon, 03 Jun 2019 14:37:39 -0700 (PDT)
Date: Mon, 3 Jun 2019 16:37:36 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20190603213736.GG4357@ubuntu-xps13>
References: <20190515132617.12852-1-seth.forshee@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515132617.12852-1-seth.forshee@canonical.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Expand 60 GHz band
 for Japan to 57-66 GHz
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

On Wed, May 15, 2019 at 08:26:17AM -0500, Seth Forshee wrote:
> The official documents are not feely available, but based on
> summaries such as [1] and numerous third-party resources the 60
> GHz band in Japan has been 57-66 GHz for some time now. Update
> our rules accordingly.
> 
> [1] https://webstore.arib.or.jp/en/products/detail.php?product_id=288
> 
> Signed-off-by: Seth Forshee <seth.forshee@canonical.com>

Applied.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

