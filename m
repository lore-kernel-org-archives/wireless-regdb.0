Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth01.qualcomm.com ([65.197.215.72])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XPANR-0000ga-CU
 for wireless-regdb@lists.infradead.org; Wed, 03 Sep 2014 13:13:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1409750014; x=1441286014;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=AP7wB0QHvV+15sABEFGOB0U0e16PNYbLDdnrTc+N9iI=;
 b=TCcF5HRO8YnmLnmP/n3Bf6kFA3C7u6dO09ts/k2v7AquqTzv+xRvb5bF
 4rusooaVt6aPEZh/mIPDyy193yyFyrQCaPYXtJfxtX6gVqcfAiKfvOHnW
 IeNOsJMQAS+lWEJBCPBlgglKqtxM7tHO9gRmK0ec9cc4mpVR7ozYrmDac E=;
Date: Wed, 3 Sep 2014 16:13:07 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140903131307.GA16129@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH 04/12] wireless-regdb: Add Moldova (MD)
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

Source:
http://www.cnfr.md/index.php?pag=sec&id=117&l=en

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/db.txt b/db.txt
index 90ed48b..c1c70cc 100644
--- a/db.txt
+++ b/db.txt
@@ -623,6 +623,14 @@ country MA: DFS-ETSI
 	(5250 - 5330 @ 80), (20), DFS
 
 # Source:
+# http://www.cnfr.md/index.php?pag=sec&id=117&l=en
+country MD: DFS-ETSI
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
+
+# Source:
 # http://www.cept.org/files/1050/Tools%20and%20Services/EFIS%20-%20ECO%20Frequency%20Information%20System/National%20frequency%20tables/Montenegro%20NAFT%20-%202010.pdf
 country ME: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.9.1


-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

