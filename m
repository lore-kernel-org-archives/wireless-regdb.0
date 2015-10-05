Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from smtp.csie.ntu.edu.tw ([140.112.30.61])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zj8Qh-000282-4Q
 for wireless-regdb@lists.infradead.org; Mon, 05 Oct 2015 16:16:00 +0000
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue,  6 Oct 2015 00:14:56 +0800
Message-Id: <1444061698-16384-4-git-send-email-wens@csie.org>
In-Reply-To: <1444061698-16384-1-git-send-email-wens@csie.org>
References: <1444061698-16384-1-git-send-email-wens@csie.org>
Subject: [wireless-regdb] [PATCH v4 3/5] wireless-regdb: Update 5GHz rules
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: seth.forshee@canonical.com
Cc: linux-wireless@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

The FCC increased the maximum conducted transmission power for the
U-NII-1 (5150 ~ 5250 MHz) band to 30 dBm or 1 W for master devices
and 24 dBm or 250 mW for mobile/portable
devices.

Since 250 mW is slightly lower than 24 dBm, set the power limit to
a conservative value of 23 dBm.

Effective 6/2/2014.

See FCC KDB 905462 D06.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 db.txt | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index f6607bc..ee6eaad 100644
--- a/db.txt
+++ b/db.txt
@@ -1159,7 +1159,8 @@ country UG: DFS-FCC
 
 country US: DFS-FCC
 	(2402 - 2472 @ 40), (30)
-	(5170 - 5250 @ 80), (17), AUTO-BW
+	# 5.15 ~ 5.25 GHz: 30 dBm for master mode, 23 dBm for clients
+	(5170 - 5250 @ 80), (23), AUTO-BW
 	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
 	(5490 - 5730 @ 160), (23), DFS
 	(5735 - 5835 @ 80), (30)
-- 
2.5.3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

