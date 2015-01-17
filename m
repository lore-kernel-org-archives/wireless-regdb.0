Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-vc0-f172.google.com ([209.85.220.172])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YCKHS-0007X9-UH
 for wireless-regdb@lists.infradead.org; Sat, 17 Jan 2015 03:42:35 +0000
Received: by mail-vc0-f172.google.com with SMTP id hq11so7847658vcb.3 for
 <wireless-regdb@lists.infradead.org>; Fri, 16 Jan 2015 19:42:12 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 16 Jan 2015 19:42:12 -0800
Message-ID: <CALf=PEbVwhqoV2-aXsNDJNB+wHrJm=ZNx6cYedjt7hu6UPJENg@mail.gmail.com>
From: Daiwei Li <daiweili@suitabletech.com>
Subject: [wireless-regdb] [PATCH] wireless-regdb: Add back regulatory rules
	for US
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
To: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

Hello,

We've found that our devices can't seem to operate on certain
frequencies (e.g. 5660MHz) being used by access points like the Apple
Airport Extreme and Asus RT-AC68U. I did a git bisect and found that
31dc1c5eca29d039ac8f26340defe44bd7e497c1 removed that band amongst
others. A more recent [1] FCC source implies that these frequencies
should be usable with DFS.

Does anyone know the source for the commit that removed these frequencies from?

Below is a patch that adds back these frequencies:
-------------------------------------------------------------------------------------
wireless-regdb: Add back regulatory rules for US

The FCC approved UNII devices operating in the
5470 - 5725MHz range with radar detection and DFS
capabilities. See the [1] source for details.

[1] https://apps.fcc.gov/oetcf/kdb/forms/FTSSearchResultPage.cfm?id=41732&switch=P

Signed-off-by: Daiwei Li <daiweili@suitabletech.com>
---
 db.txt |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/db.txt b/db.txt
index df7f7b1..ca619a9 100644
--- a/db.txt
+++ b/db.txt
@@ -1125,6 +1125,8 @@ country US: DFS-FCC
        (2402 - 2472 @ 40), (30)
        (5170 - 5250 @ 80), (17), AUTO-BW
        (5250 - 5330 @ 80), (23), DFS, AUTO-BW
+       (5490 - 5600 @ 80), (23), DFS, AUTO-BW
+       (5650 - 5710 @ 40), (23), DFS, AUTO-BW
        (5735 - 5835 @ 80), (30)
        # 60g band
        # reference: http://cfr.regstoday.com/47cfr15.aspx#47_CFR_15p255
--

Thanks,
Daiwei

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

