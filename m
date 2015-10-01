Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from smtp.csie.ntu.edu.tw ([140.112.30.61])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZhXor-0005yX-0a
 for wireless-regdb@lists.infradead.org; Thu, 01 Oct 2015 06:58:22 +0000
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu,  1 Oct 2015 14:57:44 +0800
Message-Id: <1443682667-29814-3-git-send-email-wens@csie.org>
In-Reply-To: <1443682667-29814-1-git-send-email-wens@csie.org>
References: <1443682667-29814-1-git-send-email-wens@csie.org>
Subject: [wireless-regdb] [PATCH v3 2/5] wireless-regdb: Update regulatory
	rule boundary frequencies for Taiwan (TW)
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

Taiwan's frequency allocation rules [1] list the following frequency
ranges available for low power RF devices:

  - 2400 ~ 2483.5 MHz
  - 5150 ~ 5250 MHz
  - 5250 ~ 5350 MHz
  - 5470 ~ 5725 MHz
  - 5725 ~ 5850 MHz

Update the rules to match. Since 5250 ~ 5350 MHz is wide enough for
VHT80, and there are no regulations against it, enable it as well.

[1] http://www.motc.gov.tw/websitedowndoc?file=post/201411171137330.doc&filedisplay=Table+of+radio+frequency+allocation.doc
[2] http://www.ncc.gov.tw/english/show_file.aspx?table_name=news&file_sn=681

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 db.txt | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index e081634..f6607bc 100644
--- a/db.txt
+++ b/db.txt
@@ -1126,10 +1126,10 @@ country TT: DFS-FCC
 #   http://www.ncc.gov.tw/english/show_file.aspx?table_name=news&file_sn=681
 #   (section 3.10.1, 4.7)
 country TW: DFS-JP
-	(2402 - 2472 @ 40), (30)
-	(5270 - 5330 @ 40), (17), DFS
+	(2400 - 2483.5 @ 40), (30)
+	(5250 - 5350 @ 80), (17), DFS
 	(5470 - 5725 @ 160), (23), DFS
-	(5735 - 5835 @ 80), (30)
+	(5725 - 5850 @ 80), (30)
  
 country TZ:
 	(2402 - 2482 @ 40), (20)
-- 
2.5.3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

