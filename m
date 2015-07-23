Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from smtp.csie.ntu.edu.tw ([140.112.30.61])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZI7GM-0003XM-Si
 for wireless-regdb@lists.infradead.org; Thu, 23 Jul 2015 03:33:40 +0000
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 23 Jul 2015 11:32:56 +0800
Message-Id: <1437622380-4154-2-git-send-email-wens@csie.org>
In-Reply-To: <1437622380-4154-1-git-send-email-wens@csie.org>
References: <1437622380-4154-1-git-send-email-wens@csie.org>
Subject: [wireless-regdb] [PATCH v2 1/5] wireless-regdb: Update U-NII-2c
	(5470 ~ 5725 MHz) rules for Taiwan (TW)
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
frequency allocation rules [1] on 2014/11/17, allowing usage of 5600 ~
5650 MHz, previously allocated to weather radars, to U-NII applications
with DFS support.

Also, the technical regulations [2] show that for 5470 ~ 5725 MHz U-NII
applications, the peak transmit power shall not exceed the lesser of
250 mW (slightly less than 24 dBm) or 11 dBm + 10log B, where B is the
26dB emission bandwidth in MHz. This is slightly more than 23 dBm for
20 MHz channels.

This patch updates both. Also add links to the two documents into the
database.

[1] http://www.motc.gov.tw/websitedowndoc?file=post/201411171137330.doc&filedisplay=Table+of+radio+frequency+allocation.doc
[2] http://www.ncc.gov.tw/english/show_file.aspx?table_name=news&file_sn=681

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 db.txt | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 982db34..5114557 100644
--- a/db.txt
+++ b/db.txt
@@ -1118,11 +1118,17 @@ country TT: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+# Source:
+# Table of Frequency Allocations of Republic of China (Taiwan) / Nov 2014:
+#   http://www.motc.gov.tw/websitedowndoc?file=post/201411171137330.doc& \
+#      filedisplay=Table+of+radio+frequency+allocation.doc
+# LP0002 Low-power Radio-frequency Devices Technical Regulations / 28 Jun 2011:
+#   http://www.ncc.gov.tw/english/show_file.aspx?table_name=news&file_sn=681
+#   (section 3.10.1, 4.7)
 country TW: DFS-JP
 	(2402 - 2472 @ 40), (30)
 	(5270 - 5330 @ 40), (17), DFS
-	(5490 - 5590 @ 80), (30), DFS
-	(5650 - 5710 @ 40), (30), DFS
+	(5470 - 5725 @ 160), (23), DFS
 	(5735 - 5835 @ 80), (30)
  
 country TZ:
-- 
2.1.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

