Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
 :Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=jxZ5/QCPSijEKd/WET2EGqIgZb5YrXN3/WD4YY9uHNQ=;
 b=pms4Z5bchF/lXD
 9xc6a+VqdjXiQE0/4ZdqiSCgaT+8dGHiumLuYpdmplLxyfcDT63HZbp4Nse0J88d2zpHCc4Vbff8F
 /q/mYssOS5jEDV3NfVeNqRBJ4FMdX7GN/dDo2/R6jnkEGxBufsJhKMdrGwI47WTVMo+nEXJp5Oq/h
 DDa+PtQAFwSuKnXX9UZENgFMOqpxW5HvXAFuPsDYI3Mq9oaBO7T7a11Z/TJ/BfGaBU0IoOBh6WZQ1
 3QmfNj6wOImPTF1/ku9xWzmB3E5kTYVR8/kGOD1K2Cy0Xxraa3baX3PoH43RArZlkqHqpzhxwrrf/
 pD2hO+IWIkL2isscmerQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fOPDM-0003PE-0I
 for wireless-regdb@lists.infradead.org; Thu, 31 May 2018 15:10:11 +0000
Received: from mail-io0-f200.google.com ([209.85.223.200])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fOPD8-0003bY-Dx
 for wireless-regdb@lists.infradead.org; Thu, 31 May 2018 15:09:54 +0000
Received: by mail-io0-f200.google.com with SMTP id n24-v6so16985496ioh.12
 for <wireless-regdb@lists.infradead.org>; Thu, 31 May 2018 08:09:54 -0700
 (PDT)
Date: Thu, 31 May 2018 10:09:50 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180531150950.GI3401@ubuntu-xps13>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [ANN] wireless-regdb: master-2018-05-31
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
Cc: linux-wireless@vger.kernel.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

A new release of wireless-regdb (master-2018-05-31) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2018.05.31.tar.gz

The short log of changes since the 2018-05-09 release is below.

Thanks,
Seth

---

Seth Forshee (6):
      wireless-regdb: Add 5725-5875 MHz rule for France (FR)
      wireless-regdb: Update rules for Panama (PA) and add 60 GHz rule
      wireless-regdb: Fix comparison of WmmRule with NoneType in python 3
      wireless-regdb: Fix iteration in create_wmms() for python 3
      wireless-regdb: Fix power limit in 5725-5785 GHz rule for France
      wireless-regdb: update regulatory database based on preceding changes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

