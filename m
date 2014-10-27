Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine02.qualcomm.com ([199.106.114.251])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XijNz-0005oz-1z
 for wireless-regdb@lists.infradead.org; Mon, 27 Oct 2014 12:27:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1414412819; x=1445948819;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=6b2/SNpIJWIY4gZYhjqssDYpXFQdjoXarlT6ZYigo8o=;
 b=ZQU6e906UkKmqJp2axV7rhOrEKe3TLHn7Vec+tttHaA1Tl+E5JWV3ENz
 kDQFGU9UokhKpUaDGHqTCIKb+hM8TBgtNCGo9fLvrT8Wu6pK5akK+30Jz
 5KGLBo+FqwY7NojgRUkKrMOHbPGid/4+l6C4CjoZSRdMUnVVQ7P7igs61 Y=;
Date: Mon, 27 Oct 2014 14:26:13 +0200
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20141027122613.GA12840@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH] wireless-regdb: Add 160 MHz channel
	bandwidth for China (CN)
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

This extends regulatory rules for China to allow 160 MHz VHT channels to
be used in 5.15-5.25 GHz, 5.25-5.35 GHz. Since the rules between
5.15-5.25 and 5.25-5.35 GHz ranges are different (e.g., DFS
requirement), the AUTO-BW flag needs to be used to allow the maximum
channel bandwidth to be determined automatically based on two rules.

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index b58cc8d..1df0b4c 100644
--- a/db.txt
+++ b/db.txt
@@ -223,8 +223,8 @@ country CL: DFS-JP
 
 country CN: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (23)
-	(5250 - 5330 @ 80), (23), DFS
+	(5170 - 5250 @ 80), (23), AUTO-BW
+	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
 	(5735 - 5835 @ 80), (30)
 	# 60 gHz band channels 1,4: 28dBm, channels 2,3: 44dBm
 	# ref: http://www.miit.gov.cn/n11293472/n11505629/n11506593/n11960250/n11960606/n11960700/n12330791.files/n12330790.pdf
-- 
1.9.1


-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

