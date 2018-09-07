Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
 :Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=giUBanwQ1QzqLto8GFvyq/oSb4kj3nj36cYiMH3gi8I=;
 b=vCz8y6mleWedm4
 lSSYhwoMjfH5pYa58+LdEo+p5CoHsfA3rrSLItdiDh4PlsQkZ6se3o88RceAT686R4OV2DHXPBGeM
 MSOgIKO0O3FvZo098qP1J1A8osbfeARmzoOIIV5onA/yG4ZaNcskRxF/Qhcu9sn70qrbkujoUEBAS
 CjyGx9X73Z4igt2N15748sA7o8YgxDzmCAAh0tdsCmMeFHKnCIKRZHgsqgth3v7YSLIDORFrauZ7O
 HLdTCIkSV4awP64Y0DCA1F41AMho5D9L14L5umhOcQdi3wO/RDU2STkhpGD1Fm8000Df+rKgA8JC5
 IqYWJsf3hfUU0qXnNo1A==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fyM3D-0007mD-Gc
 for wireless-regdb@lists.infradead.org; Fri, 07 Sep 2018 19:04:17 +0000
Received: from mail-yb1-f197.google.com ([209.85.219.197])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fyM31-0003da-Ve
 for wireless-regdb@lists.infradead.org; Fri, 07 Sep 2018 19:04:04 +0000
Received: by mail-yb1-f197.google.com with SMTP id d11-v6so6112119ybj.1 for
 <wireless-regdb@lists.infradead.org>; Fri, 07 Sep 2018 12:04:03 -0700 (PDT)
Date: Fri, 7 Sep 2018 14:04:00 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180907190400.GN4251@ubuntu-xps13>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [ANN] wireless-regdb: master-2018-09-07
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

A new release of wireless-regdb (master-2018-09-07) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2018.09.07.tar.gz

The short log of changes since the 2018-05-31 release is below.

Thanks,
Seth

---

Henrik Laxhuber (1):
      wireless-regdb: update regulatory rules for Switzerland (CH), and Liechtenstein (LI) on 5GHz

Jukka Pirinen (1):
      Update regulatory rules for Finland (FI) on 5GHz (SRD devices)

Seth Forshee (1):
      wireless-regdb: update regulatory database based on preceding changes

Xose Vazquez Perez (1):
      wireless-regdb: update source of info for CU and ES

bkil (1):
      wireless-regdb: update rules for Hungary (HU) on 2.4/5/60G, 5725-5875MHz


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

