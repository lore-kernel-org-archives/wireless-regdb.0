Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from smtp.csie.ntu.edu.tw ([140.112.30.61])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zj8QL-0001zk-U9
 for wireless-regdb@lists.infradead.org; Mon, 05 Oct 2015 16:15:38 +0000
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue,  6 Oct 2015 00:14:57 +0800
Message-Id: <1444061698-16384-5-git-send-email-wens@csie.org>
In-Reply-To: <1444061698-16384-1-git-send-email-wens@csie.org>
References: <1444061698-16384-1-git-send-email-wens@csie.org>
Subject: [wireless-regdb] [PATCH v4 4/5] wireless-regdb: Add U-NII-1 (5150
 ~ 5250 MHz) band for Taiwan (TW)
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

Taiwan's Ministry of Transportation and Communications revised its
frequency allocation rules [1] on 2014/11/17, opening up 5150 ~ 5250
MHz to U-NII applications.

Taiwan's regulatory body, NCC, officially stated [3][4] that until
the technical regulatory standard [2] are updated to cover this part
of the spectrum, FCC rules (part 15E, 15.407, effective 2014/06/02)
shall serve in its place.

Also add AUTO-BW to this and the next (5250 ~ 5350 MHz) rule, so the
system can actually use VHT160 channels spanning these two rules.

[1] http://www.motc.gov.tw/websitedowndoc?file=post/201411171137330.doc&filedisplay=Table+of+radio+frequency+allocation.doc
[2] http://www.ncc.gov.tw/english/show_file.aspx?table_name=news&file_sn=681
[3] http://www.rheintech.com/our-blog/item/585-taiwan-ncc-opens-5150-5250-mhz-for-wireless-devices
[4] Proposal #10312260 (p.6, Chinese),
    http://www.etc.org.tw/_library/K00/%E9%9B%BB%E4%BF%A1%E7%B5%82%E7%AB%AF%E8%A8%AD%E5%82%99%E5%AF%A9%E9%A9%97/1031223_nccqa56.pdf

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 db.txt | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index ee6eaad..cea78d8 100644
--- a/db.txt
+++ b/db.txt
@@ -1127,7 +1127,9 @@ country TT: DFS-FCC
 #   (section 3.10.1, 4.7)
 country TW: DFS-JP
 	(2400 - 2483.5 @ 40), (30)
-	(5250 - 5350 @ 80), (17), DFS
+	# Follow US 5.15 ~ 5.25 GHz: 30 dBm for master mode, 23 dBm for clients
+	(5150 - 5250 @ 80), (23), AUTO-BW
+	(5250 - 5350 @ 80), (17), DFS, AUTO-BW
 	(5470 - 5725 @ 160), (23), DFS
 	(5725 - 5850 @ 80), (30)
  
-- 
2.5.3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

