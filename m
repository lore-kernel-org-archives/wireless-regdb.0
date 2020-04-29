Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
 :From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=RgI1PQGa46lywk89Hlgx1B8d35sc3JOzuTIQJWBVyno=;
 b=ji6MTiYzi3zqEB
 66d7lcdfNP6+P+tIWkzpW3/cE2ooqHOsZiOlpdowWRlYuFC8dUzOeZnDVWcIJ3Ha7XWopaPyTQEZA
 RQlS6pUgmhf228yyiZEgccdOUl262+L/3pg+MSpKxIXCsMPKcHma71PSiwOaZJ3+k3in0w4XGWjbV
 DWWQpsT69LHH+v1aGltF9xTvqJhCk6jbpdKkJv8Y4aANyVCY6bznEo7m15iAyXw6uFllZsdPtfSp+
 t1IzCl68R/YO3pFaNc7pSNWnUhCFPn1YT92uNvhrIEgGYMk6Ci/ciE6LtKr5tZXuzipjZUM23Dc9P
 dK86jFg89SJgpDCiWLdg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtqm-00029Z-NK
 for wireless-regdb@lists.infradead.org; Wed, 29 Apr 2020 21:02:38 +0000
Received: from mail-qt1-f198.google.com ([209.85.160.198])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1jTtqk-0007Av-9r
 for wireless-regdb@lists.infradead.org; Wed, 29 Apr 2020 21:02:34 +0000
Received: by mail-qt1-f198.google.com with SMTP id x24so4353293qta.4 for
 <wireless-regdb@lists.infradead.org>; Wed, 29 Apr 2020 14:02:34 -0700 (PDT)
From: Seth Forshee <seth.forshee@canonical.com>
Date: Wed, 29 Apr 2020 16:02:31 -0500
Message-Id: <20200429210231.212762-1-seth.forshee@canonical.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [ANN] wireless-regdb: master-2020-04-29
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

A new release of wireless-regdb (master-2020-04-29) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2020.04.29.tar.xz

The short log of changes since the master-2019-06-03 release is below.

Thanks,
Seth

---

Andrew Yong (1):
      wireless-regdb: Update regulatory rules for Singapore (SG)

Chaitanya Tata (1):
      GB: Extend to cover DMG channels 5 & 6

Chen-Yu Tsai (1):
      wireless-regdb: Extend 5470-5725 MHz range to 5730 MHz for Taiwan (TW)

Dmitry Tunin (1):
      wireless-regdb: Update regulatory rules for Russia (RU)

Emil Petersky (2):
      wireless-regdb: Fix ranges of EU countries as they are harmonized since 2014
      wireless-regdb: Harmonize ranges of CEPT countries (stand of July 2019)

Johannes Berg (1):
      regdb: fix compatibility with python2

Martin Willi (1):
      wireless-regdb: Fix overlapping ranges for Switzerland and Liechtenstein

Seth Forshee (2):
      wireless-regdb: Update regulatory rules for Indonesia (ID)
      wireless-regdb: update regulatory database based on preceding changes

bkil (1):
      wireless-regdb: update rules for US on 2.4/5G


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

