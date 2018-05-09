Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
 :Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=QHhJVll2XyBj9Yx2AnqXWzsiRvKIc38+aw6xormQW60=;
 b=qNheh6SQG3PCMd
 rVVWY29Lz5GQRVBlWkL8jZw7vBDZY6REbdsZE11P+6n/5rkmNJ8AHWioZD5M5K6v7SuHLH+WEvb9t
 LXQAjFtDEbQQL+DsjGSD/TZrX+JYLafc2gjxWhI+sxQt7KOi7DKIWI4ybbFHrUHtXszxRtRXvoBgM
 lxVMdDfjiEu3Iqjn3GNgHcr5cgJ35mKuAzJwjuQTbjskaMSvOhq2/W+FzAwzxK8i927QD+OKTvp80
 Hy9oVDQ0izEo/y63m6SIZMh3g/Dc9e1KtLwkyUCu3XbYPuWaLAs/hOQJxD1sm6ORfudeMWOEi5q2N
 AQXt0YWkqP78QOW4f0fA==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fGPxN-00089F-Ve
 for wireless-regdb@lists.infradead.org; Wed, 09 May 2018 14:20:42 +0000
Received: from mail-it0-f69.google.com ([209.85.214.69])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fGPxB-0003vo-Pg
 for wireless-regdb@lists.infradead.org; Wed, 09 May 2018 14:20:25 +0000
Received: by mail-it0-f69.google.com with SMTP id c137-v6so10832886ith.3
 for <wireless-regdb@lists.infradead.org>; Wed, 09 May 2018 07:20:25 -0700
 (PDT)
Date: Wed, 9 May 2018 09:20:22 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180509142022.GB3375@ubuntu-xps13>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [ANN] wireless-regdb: master-2018-05-09
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

A new release of wireless-regdb (master-2018-05-09) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2018.05.09.tar.gz

The short log of changes since the 2017-12-23 release is below.

Thanks,
Seth

---

Haim Dreyfuss (2):
      wireless-regdb: Add wmm rule for EEA and EFTA countries
      wireless-regdb: Parse wmm rule data

Matthias Schiffer (2):
      wireless-regdb: do not rely on sorting of dict keys in conversion scripts
      wireless-regdb: make scripts compatible with Python 3

Seth Forshee (2):
      wireless-regdb: Update rules for QA and add 5 GHz and 60 GHz rules
      wireless-regdb: update regulatory database based on preceding changes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

