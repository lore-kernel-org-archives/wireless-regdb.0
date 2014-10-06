Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth01.qualcomm.com ([65.197.215.72])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xb99Q-0007Zx-Rz
 for wireless-regdb@lists.infradead.org; Mon, 06 Oct 2014 14:20:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1412605237; x=1444141237;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=3qigtivFoL4cYnw2B0y2nlPGSVUYqcgVrBMjxMoZc64=;
 b=CVxyH6t7xA0Aic1lsCTUFCBjDwVHuqZ2MYirxz7cAbiLqXkn4xueLkWB
 +gbq2ryjOcf9FO4IXBWWEtLQ3g7RNryA/fCR+tTy8rVRb1gye6LuBLyym
 KTy4NvYb/FpPEDikk+cjuHesTCf4IPbdsiLsOQiIjVjJUe1YOcJdlFlcD s=;
Date: Mon, 6 Oct 2014 17:19:39 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20141006141939.GA14053@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update Bolivia (BO)
	regulatory rules
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

http://www.att.gob.bo/
National Frequency table 2012 PNF 8_11_12

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 5bd9388..a08f19c 100644
--- a/db.txt
+++ b/db.txt
@@ -151,7 +151,8 @@ country BN: DFS-JP
 	(5735 - 5835 @ 80), (20)
 
 country BO: DFS-JP
-	(2402 - 2482 @ 40), (30)
+	(2402 - 2482 @ 40), (20)
+	(5250 - 5330 @ 80), (30), DFS
 	(5735 - 5835 @ 80), (30)
 
 country BR: DFS-FCC
-- 
1.9.1


-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

