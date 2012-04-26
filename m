Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine02.qualcomm.com ([199.106.114.251])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SNMGJ-0001oT-Ox
 for wireless-regdb@lists.infradead.org; Thu, 26 Apr 2012 10:49:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=rmanohar@qca.qualcomm.com;
 q=dns/txt; s=qcdkim; t=1335437363; x=1366973363;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=gyRJI9BvQgBMCIOZBLDf6tT267RKGpWNNFHB/E6H1iw=;
 b=KJvHl/TBZh8vu+PostK32rwbe1l95Wxf6Yue0+V2GVbHxQfLDWjr10UN
 Q33xlsRuhS+BO4uSXi0vyJGUv7ukpNXgu+KdJa8ZfH97piAo42jD9kVOu
 r3CyUsgwzgizPq9ColLR9DXXZW8TjUJuTcBuOsuXqaZWowd0MT17dfbhE 4=;
From: Rajkumar Manoharan <rmanohar@qca.qualcomm.com>
Date: Thu, 26 Apr 2012 16:20:14 +0530
Message-ID: <1335437414-3421-1-git-send-email-rmanohar@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: add Rwanda (RW)
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
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: linville@tuxdriver.com
Cc: wireless-regdb@lists.infradead.org, Rajkumar Manoharan <rmanohar@qca.qualcomm.com>
List-ID: <wireless-regdb@lists.infradead.org>

Add support to country Rwanda with APL1_WORLD.

Signed-off-by: Rajkumar Manoharan <rmanohar@qca.qualcomm.com>
---
 db.txt |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/db.txt b/db.txt
index 23b85a3..4c54543 100644
--- a/db.txt
+++ b/db.txt
@@ -580,6 +580,10 @@ country RU:
 	(2402 - 2482 @ 40), (N/A, 20)
 	(5735 - 5835 @ 20), (N/A, 30)
 
+country RW:
+	(2402 - 2482 @ 40), (N/A, 20)
+	(5735 - 5835 @ 40), (N/A, 30)
+
 country SA:
 	(2402 - 2482 @ 40), (N/A, 20)
 	(5170 - 5250 @ 20), (3, 23)
-- 
1.7.10


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

