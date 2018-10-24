Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
 :Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=HrMdD32lyNpxKbcfGyHCZdJrgqxI0VX1/gVc1R0By0E=;
 b=A2PkAh+IAabRwp
 CO7qN6niJgKPXhRwFs/ukxs3EJ3GiRqRH7+BiWZotOwR3oT1/CxneLJBQcNSSUuRvxuBTkKch8zbq
 3RjBC6IS8NwOi2kEGDH249FdqLrY9RsNuli4UNhB01xl7zbMgYTHtz2DceGG/eYhE9lekwqXzRPXJ
 ZUkHpOe8LaWPyzK0uWSyAEP+VbPD3MA3fhvzbLLlQRF/Xmlenhj+DJKClh+hr7DQm5dxeXIlu8y4c
 biQOGMvknJf/cF9hJfOifHsPKTNiA/bkKY9qPb/tgD1T8q3y/gC1XQ4Smk9gHd8hwF8km4V5XCjqI
 n1IvqBanXitXT62jhHuw==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gFKC0-0000JE-40
 for wireless-regdb@lists.infradead.org; Wed, 24 Oct 2018 14:31:29 +0000
Received: from mail-pf1-f198.google.com ([209.85.210.198])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1gFKBo-0004uR-BX
 for wireless-regdb@lists.infradead.org; Wed, 24 Oct 2018 14:31:16 +0000
Received: by mail-pf1-f198.google.com with SMTP id p89-v6so3649097pfj.12
 for <wireless-regdb@lists.infradead.org>; Wed, 24 Oct 2018 07:31:16 -0700
 (PDT)
Date: Wed, 24 Oct 2018 08:31:12 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20181024143112.GD8750@ubuntu-xps13>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [ANN] wireless-regdb: master-2018-10-24
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

A new release of wireless-regdb (master-2018-10-24) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2018.10.24.tar.gz

The short log of changes since the 2018-09-07 release is below.

Thanks,
Seth

---

Hauke Mehrtens (1):
      wireless-regdb: remove dependency to python attr

Seth Forshee (1):
      wireless-regdb: update regulatory database based on preceding changes

Sven Eckelmann (2):
      wireless-regdb: Sync FR with ETSI EN 301 893 V2.1.1 (2017-05)
      wireless-regdb: Sync DE with ETSI EN 301 893 V2.1.1 (2017-05)

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

