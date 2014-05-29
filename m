Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth01.qualcomm.com ([65.197.215.72])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wq3GH-0006XU-3w
 for wireless-regdb@lists.infradead.org; Thu, 29 May 2014 16:33:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1401381181; x=1432917181;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=bMyCH3RXfqzZd5wC9kiOxICiYKoO8FEtbBUeiSFZIE4=;
 b=LZMOaDMMyrqerm4hGHEU7XtkS9Wzqj4kAYo7d2zygiYCei9VwV73vvKN
 MEJGG3lgbwn77/+h8rzqZqHNmCTkxJHEQx0D+5Z9WG18vTH4RxlEsom+F
 W0ezhFard591GrOdnswpkmarKZ/Hh5Z/jNhUI0VtCgPiDpuck5eJJuoc+ g=;
Date: Thu, 29 May 2014 19:32:35 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140529163235.GA27947@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH 3/8] wireless-regdb: Add Central African
 Republic (CF) regulatory rules
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

Source is QCA's regulatory team's efforts and
http://www.art-rca.org.

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/db.txt b/db.txt
index c957b1d..063cd44 100644
--- a/db.txt
+++ b/db.txt
@@ -177,6 +177,15 @@ country CA: DFS-FCC
 	(5490 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+# Source:
+# http://www.art-rca.org
+country CF: DFS-FCC
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 40), (17)
+	(5250 - 5330 @ 40), (24), DFS
+	(5490 - 5730 @ 40), (24), DFS
+	(5735 - 5835 @ 40), (30)
+
 country CH: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20)
-- 
1.9.1


-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

