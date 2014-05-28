Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine02.qualcomm.com ([199.106.114.251])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WpZqg-0003s5-U3
 for wireless-regdb@lists.infradead.org; Wed, 28 May 2014 09:08:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1401268118; x=1432804118;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=O7JaeDW5IEs6/DzK8V4uOrQVct8tlR0KtHvVOwAwpRA=;
 b=xv/Gj7Qmrx+SAhM4eNO8xh8Jxe1atlGZidzzei3y3f7U5GpUD3QRdUXJ
 fjCpyDgA7hmtxh77xjNX/8hdAj2C5EAmJ0eEqpUJQK4ZCjuK0LMYk2hPF
 r3Q3Tjpy8EDqL53nqjUl3K1q7hn9LJiuFd3FON/hk1YEqPVYo2rGJLtgH c=;
Date: Wed, 28 May 2014 12:02:26 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140528090226.GA14266@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH 1/9] wireless-regdb: Update Uzbekistan
 (UZ) regulatory rules
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
To: "John W. Linville" <linville@tuxdriver.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Source: http://cemc.uz/article/1976/

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/db.txt b/db.txt
index 8e83e0c..be552d0 100644
--- a/db.txt
+++ b/db.txt
@@ -821,12 +821,12 @@ country UY: DFS-FCC
 	(5490 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
-country UZ: DFS-FCC
-	(2402 - 2472 @ 40), (30)
-	(5170 - 5250 @ 80), (17)
-	(5250 - 5330 @ 80), (24), DFS
-	(5490 - 5730 @ 80), (24), DFS
-	(5735 - 5835 @ 80), (30)
+# Source:
+# http://cemc.uz/article/1976/
+country UZ: DFS-ETSI
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
 
 country VE: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-- 
1.9.1


-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

