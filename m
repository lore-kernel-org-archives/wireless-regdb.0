Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
 Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
 bh=RYK7gTkxOIAXLG7LXPefKRe2fyieOzZHFuTr2dqTFbw=;
 b=F2SI5zMdZIqF9IOL05g2sxPRwW
 Lwn2Z8r77XOsmWqV9+tNqnqgNMIAv98v0HrXR7iq8N+MRnOY/PDBk35ehkAcpi0CQzKKYfAJ5p1Ea
 ONQ+OlwNv0e6Uixuuv6iCtrACAdmGMHG2PWPQRg1X1ZMvLq5BRiqXusXf5SjHhDofC18vONkbtF0N
 wA99V82pkqtfitA7PGVcBLECa+lQfQOah83iOfZfor551PnriDoHFXDXV8HbI6F3ckT3sQlVjURGi
 ME0x5IOJnLdEPDqEoudPYsFIGntw3kMCt6z84e+yC80CcIZjqhRtc0vpTEwcLZ9hD3bkBAS4FgnIT
 EYOG9ynA==;
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fxv2P-0006Qn-0l
 for wireless-regdb@lists.infradead.org; Thu, 06 Sep 2018 14:13:40 +0000
Received: by mail-wr1-f67.google.com with SMTP id v16-v6so11555174wro.11
 for <wireless-regdb@lists.infradead.org>; Thu, 06 Sep 2018 07:13:26 -0700
 (PDT)
From: Henrik Laxhuber <henrik@laxhuber.com>
Message-ID: <2441d0ea-b862-9675-9342-356606d9228d@laxhuber.com>
Date: Thu, 6 Sep 2018 16:13:22 +0200
MIME-Version: 1.0
Content-Language: en-US
Subject: [wireless-regdb] [PATCH] wireless-regdb: update regulatory rules
 for Switzerland (CH), and Liechtenstein (LI) on 5GHz
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: seth.forshee@canonical.com
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Update to reflect the current data published in the 'National Frequency
Allocation Strategy Table' [0] for Switzerland and Liechtenstein, which
at the time of writing points to the documents [1] and [2].

[0] https://www.ofcomnet.ch/#/fatTable
[1] https://www.ofcomnet.ch/api/rir/1010/05
[2] https://www.ofcomnet.ch/api/rir/1010/04

Signed-off-by: Henrik Laxhuber <henrik@laxhuber.com>
---
  db.txt | 19 +++++++++++++++----
  1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 8cf7dee..69cea85 100644
--- a/db.txt
+++ b/db.txt
@@ -265,10 +265,14 @@ country CF: DFS-FCC
      (5490 - 5730 @ 40), (24), DFS
      (5735 - 5835 @ 40), (30)

+# Source:
+# https://www.ofcomnet.ch/#/fatTable
+# Note that the maximum transmitter power can be doubled for 
5250-5710MHz if
+# transmitter power control is in use: 5250-5330@23db, 5490-5710@30db
  country CH: DFS-ETSI
      (2402 - 2482 @ 40), (20)
-    (5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=ETSI
-    (5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
+    (5170 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+    (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
      (5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
      # 60 GHz band channels 1-4, ref: Etsi En 302 567
      (57000 - 66000 @ 2160), (40)
@@ -743,11 +747,18 @@ country LC: DFS-ETSI
      (5490 - 5710 @ 160), (30), DFS
      (5735 - 5815 @ 80), (30)

+
+# Source:
+# https://www.ofcomnet.ch/#/fatTable
+# Note that the maximum transmitter power can be doubled for 
5250-5710MHz if
+# transmitter power control is in use: 5250-5330@23db, 5490-5710@30db
  country LI: DFS-ETSI
      (2402 - 2482 @ 40), (20)
-    (5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=ETSI
-    (5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
+    (5170 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+    (5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
      (5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
+    # 60 GHz band channels 1-4, ref: Etsi En 302 567
+    (57000 - 66000 @ 2160), (40)

  country LK: DFS-FCC
      (2402 - 2482 @ 40), (20)
-- 
2.18.0

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
