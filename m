Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
 Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
 bh=3HGa2ZrDW0ODBp+3RxvyZJD9r8CHW44RqwvaQO2MDO8=;
 b=QNeJg6QMmBuYf5mTJ9Gxp7207v
 mLhzoCL7edGHZF8DsSQYf7oF7llmGvINO39v04xUs02Ut/MP7mkuP3KsqxKuvVXTtwGUifVLEi+pA
 4JrB6u0ZNd2I3uiiU/oVFnB5Jfw9ZBdKUPPv+bDwvuaXdPhOKLpQGkN6BhNudO+xtGq/J4+WZEeMy
 YDo+6nlaeQ/jtbNtU3jbf8r0q0HJ99FkZa8Lr+ubxL6jn/BkgfgDVYAof51PTZbLxv5gbdS+54h4u
 VnqgZe3wicPbVSKFF+SuAGpzAJAM9EJSF2+BfrMqLCMyL2sdwm0lqmIPsgNGtf3vMSHGSoQgbClA4
 h8V42hnQ==;
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fqzvg-0007Ot-5O
 for wireless-regdb@lists.infradead.org; Sat, 18 Aug 2018 12:02:06 +0000
Received: by mail-wr1-f66.google.com with SMTP id z96-v6so534484wrb.8 for
 <wireless-regdb@lists.infradead.org>; Sat, 18 Aug 2018 05:01:53 -0700 (PDT)
From: Henrik Laxhuber <henrik@laxhuber.com>
Message-ID: <d7dddf8e-b434-2492-3564-6f35b558d750@laxhuber.com>
Date: Sat, 18 Aug 2018 14:01:50 +0200
MIME-Version: 1.0
Content-Language: en-US
Subject: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Switzerland (CH), and Liechtenstein (LI) on 5GHz
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
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

[ My previous message didn't go through because I hadn't signed up to ]
[   the wireless-regdb mailing list; I apologise if anyone receives   ]
[                         this message twice                          ]

As far as I could tell, the regulatory information for Switzerland and
Liechtenstein did not match the information published by the national
regulator. I have gone ahead and updated the information according to
the 'National Frequency Allocation Strategy Table' [0] for both
countries.

On a somewhat related note, are there any plans to properly support TPC?
There are quite a few entries in the database where maximum transmission
power could be increased when TPC is in use. Being able to set a
different maximum antenna gain and/or EIRP when TCP is in use could be
helpful in these cases. I guess what's holding this back is lacking
driver support?

PS: Since [0] can be cumbersome to navigate, I am also providing the
direct links to the applicable tables. It's possible that these links
will rot:
5150 - 5350 MHz: [1]
5470 - 5725 MHz: [2]

[0] https://www.ofcomnet.ch/#/fatTable
[1] https://www.ofcomnet.ch/api/rir/1010/05
[2] https://www.ofcomnet.ch/api/rir/1010/04
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
