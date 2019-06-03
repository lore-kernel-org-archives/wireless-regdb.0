Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
 :Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=BKM76E1/w2bt67TRPIx2ecpUTS4usAmTRgxQ2XtT4hU=;
 b=oONmf1rP3CgnjX
 1i3nmSZICiiM7L3/Y/G0lEASudn6pfQi1m9e3SlwDG2OeWbnX/EUaxCedry4uQhkw6eXcMIjNWtCx
 hWnYhCwt7eDt2tXGlCFAeBLsjwg7Ru32d2RgbNbb6y3pTqH+I00N9qzCBFv8rxRGBezcEzJ1wrPl7
 GcL9CMyfVgG/MYR0xsfTAor9Bo7tNO2BjA2P9jMjmuHU6luvo3OofI6C/ixJvPxyr7chQNcriM2Qp
 rEMdxfGMcu38nPxZHazCoG7s3lSW7JoQU569yEedbeH5UO7EHccgzY92d5bL3j0CwzYSWSsRdd7oU
 T9mw+/8R7K+4hLdeQQqA==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXuqe-0007Cg-Ut
 for wireless-regdb@lists.infradead.org; Mon, 03 Jun 2019 21:50:34 +0000
Received: from mail-it1-f197.google.com ([209.85.166.197])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1hXuqb-0007Ey-Tk
 for wireless-regdb@lists.infradead.org; Mon, 03 Jun 2019 21:50:30 +0000
Received: by mail-it1-f197.google.com with SMTP id 12so1813500itj.1 for
 <wireless-regdb@lists.infradead.org>; Mon, 03 Jun 2019 14:50:29 -0700 (PDT)
Date: Mon, 3 Jun 2019 16:50:27 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20190603215027.GH4357@ubuntu-xps13>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [ANN] wireless-regdb: master-2019-06-03
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

A new release of wireless-regdb (master-2019-06-03) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2019.06.03.tar.gz

The short log of changes since the 2019-03-01 release is below.

Thanks,
Seth

---

Peter Oh (1):
      wireless-regdb: Update regulatory rules for South Korea

Seth Forshee (2):
      wireless-regdb: Expand 60 GHz band for Japan to 57-66 GHz
      wireless-regdb: update regulatory database based on preceding changes

Vladimir Koutny (1):
      wireless-regdb: Update regulatory rules for Japan (JP) on 5GHz

Xose Vazquez Perez (2):
      wireless-regdb: update source of information for ES
      wireless-regdb: update source of information for CU


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

