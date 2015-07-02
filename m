Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-yk0-x22b.google.com ([2607:f8b0:4002:c07::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZAXIU-0004HN-MZ
 for wireless-regdb@lists.infradead.org; Thu, 02 Jul 2015 05:44:32 +0000
Received: by ykdv136 with SMTP id v136so59485567ykd.0 for
 <wireless-regdb@lists.infradead.org>; Wed, 01 Jul 2015 22:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=20120113; h=mime-version:date:message-id:subject:from:to:cc:content-type
 :content-transfer-encoding;
 bh=B+nMzhM6Qc+hpXduMWbTxiWLFnVSHzWxo2p8WElFr/A=;
 b=T8GXxAL1lGJLfQX+92hSJ37+XhNrHJTouGWQtPHHbGjAUQL7K+uX/k+FI0oxKZs3I7
 iehUBOvnNi3AqRLyIgRzkSfgpl7jYS2Ap5I4n+zcUFTL4Kw5fD5gFvDVXkYne9wuET91
 cZQRmYxMfhCfQIYMV0Lwi1wpfWdylx6FZd5gLUaAOLTfNI8sdQWLfrGH1b/iXYJMcIRD
 jUYLwm1aHgFxlU8db5xjKQjMmEThczvk4Q8MmDISQvYXMwwX9LmeSc20svF5HJBsMqj1
 YXzLfQW0AuCJ69aRGVrJrF+WjDFwqpwQnGQ+/4HDBs0MTDO0aridwvyZCvQIl4Ih79xs hvCA==
MIME-Version: 1.0
Date: Wed, 1 Jul 2015 22:44:09 -0700
Message-ID: <CAHr=Vq=hJr6WUQgFXftMSG2zYgwtCXgoTaXBzRfM8-kQa2-K2w@mail.gmail.com>
From: Wei Zhong <wzhong@google.com>
Subject: [wireless-regdb] wireless-regdb: update CA rules for 5600 - 5650
 mHz
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: seth.forshee@canonical.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

commit 2fef4cad8a1bd9cbbf178e59a1b3ca672b057095
Author: Wei Zhong <wzhong@google.com>
Date:   Wed Jul 1 22:39:09 2015 -0700

    wireless-regdb: update CA rules for 5600 - 5650 mHz

    Related regulation:
    http://www.ic.gc.ca/eic/site/smt-gst.nsf/eng/sf10971.html#s6.2.3

    Frequency Bands 5470-5600 MHz and 5650-5725 MHz
    Until further notice, devices subject to this section [i.e. Wifi device
    supporting 5 GHz bands] shall not be capable of transmitting in the band
    5600-5650 MHz. This restriction is for the protection of Environment
    Canada’s weather radars operating in this band.

diff --git a/db.txt b/db.txt
index 809cd3c..da0cfad 100644
--- a/db.txt
+++ b/db.txt
@@ -216,7 +216,8 @@ country CA: DFS-FCC
        (2402 - 2472 @ 40), (30)
        (5170 - 5250 @ 80), (17), AUTO-BW
        (5250 - 5330 @ 80), (24), DFS, AUTO-BW
-       (5490 - 5730 @ 160), (24), DFS
+       (5490 - 5600 @ 80), (24), DFS
+       (5650 - 5730 @ 40), (24), DFS
        (5735 - 5835 @ 80), (30)

 # Source:

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
