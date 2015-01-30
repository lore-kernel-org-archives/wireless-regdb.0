Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x236.google.com ([2a00:1450:4010:c04::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YHHDL-0005mA-Bt
 for wireless-regdb@lists.infradead.org; Fri, 30 Jan 2015 19:26:48 +0000
Received: by mail-lb0-f182.google.com with SMTP id l4so37894446lbv.13 for
 <wireless-regdb@lists.infradead.org>; Fri, 30 Jan 2015 11:26:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:from:date:message-id:subject:to:cc:content-type;
 bh=1vRZVQAADwNCd9jfCY3N124fIReWHnBw9svcBcWL4vM=;
 b=Dz+7YRx2hPCJIHhgUZ1KvhxTKKrVdD+wadFhvQMf8mjC4/WlSoj5BxSsaXKW398K14
 G1F6ajocTSYJrjuFvfvIeG5wO7MpQixrqScIXUgddbD3bhWQxUBPUaeZXChcIYf3WGGG
 WKFu1JJuW7bkfz57kehh0YL5WULnxqFMJz7Hg8F2vYtWjD2pl+i92D9ssbA2qMdv9QRF
 A7ROzxvxtlI8fZd7bh0YBqc5/yd+UMlS8lXZMX9AOdtMrx9NpaCZetp690ADLV9TdLmt
 8LiZdDHwSIEDsTuJKt0/UrQAou9rYBfKM2Nf+PtqM/L/SiPNzDdxoKF5pZGzadu4GKTW 3JZg==
MIME-Version: 1.0
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri, 30 Jan 2015 11:26:02 -0800
Message-ID: <CAB=NE6UM-=ARNqwyxk0a_qve+9Ndk1znsm+FjfXq+xenCkTvCQ@mail.gmail.com>
Subject: [wireless-regdb] [ANN] crda-3.18 released
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
To: linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
Cc: Seth Forshee <seth.forshee@canonical.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

A new release of CRDA has been released, this might be the last since
we have some ideas of how to just shift this functionality directly
into the kernel and in the future may not need any userspace tool
other than to help debug stuff perhaps. The major thing here is
trusting Seth's new key as he is now the maintainer of the
wireless-regdb. Other than this it also add AUTO-BW rule support,
parse/print of CAC on db2rd, and fixes a compile error. This release
goes signed with my new PGP key.

Thanks to all who have contributed. There release page for CRDA:

http://drvbp1.linux-foundation.org/~mcgrof/rel-html/crda/

The v3.18 release:

http://kernel.org/pub/software/network/crda/crda-3.18.tar.xz

The wireless-regdb release page:

http://drvbp1.linux-foundation.org/~mcgrof/rel-html/wireless-regdb/

As announced by Seth, the new wireless-regdb is:

http://kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2015.01.30.tar.xz

The shortlog of this CRDA v3.18 release:

mcgrof@garbanzo ~/devel/crda (git::master)$ git shortlog v3.13..v3.18
Janusz Dziedzic (4):
      crda: sync with latest nl80211.h
      crda: add AUTO-BW rule flag support
      crda: simplify text parsing for country/rules
      crda: db2rd, parse/print CAC time

John W. Linville (1):
      crda: Add DESTDIR support in install-libreg* rules in Makefile

Krishna Chaitanya (1):
      crda: Fix the linking order to avoid compilation error

Luis R. Rodriguez (1):
      crda: document contribution process using the DCO

Seth Forshee (1):
      crda: Trust regulatory.bin from Seth Forshee

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

