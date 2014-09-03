Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine02.qualcomm.com ([199.106.114.251])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XPAPp-0002Ti-4q
 for wireless-regdb@lists.infradead.org; Wed, 03 Sep 2014 13:16:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1409750162; x=1441286162;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=VTPm0EwvO9eKVhScGdDT4AM367pSsRA17IaTiH4RzEM=;
 b=Vbt9c9sSoQ8IQ8Kp3I/fmdua1xZ+b2ECSDcAt0m9A3pDHP03sb7DkVyR
 q9K6qfOjBtpvrG5n2FlGAcBv2Te1hDgffB4wM5jLGw6e/82RIBzB7ncSL
 TEpTGh11fEGbFX5gzPeNBMQiro77HjI56VsRTfEUgQn1xl/m9l24lpCvj 4=;
Date: Wed, 3 Sep 2014 16:15:18 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140903131518.GA16219@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH 09/12] wireless-regdb: Add Saint Lucia
 (LC) regulatory rules
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

Source:
http://www.ntrc.org.lc/operational_structures.htm

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/db.txt b/db.txt
index 77b1773..2d0988a 100644
--- a/db.txt
+++ b/db.txt
@@ -576,6 +576,15 @@ country LB: DFS-FCC
 	(5490 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+# Source:
+# http://www.ntrc.org.lc/operational_structures.htm
+country LC: DFS-ETSI
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (30), DFS
+	(5735 - 5815 @ 80), (30)
+
 country LI: DFS-ETSI
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

