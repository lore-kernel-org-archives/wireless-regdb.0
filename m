Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth01.qualcomm.com ([65.197.215.72])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XPAL5-0000Fb-4T
 for wireless-regdb@lists.infradead.org; Wed, 03 Sep 2014 13:11:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1409749868; x=1441285868;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=Ygtf3m9CO4pVkCLZaAkdlvBt/Ykhg83F9naFkZOTdB4=;
 b=Z5DrUC/vHeFFPs3cLST4HUYMV8o/Kns2WIIGUOP/5O1k000a+fPzZLeh
 ccx4kmdRFPrVaYRpg4+EUA2fU36fDl7moYP9YFwirrPIPSHn13gP1Iiq2
 rsDNFleACfWay0F01NiV6AAs8dRqyFcDM5YRDhoWFIfr7e3FlicyQFsYd Q=;
Date: Wed, 3 Sep 2014 16:10:39 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140903131039.GA15922@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH 03/12] wireless-regdb: Add Lesotho (LS)
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
http://lca.org.ls/images/documents/lesotho_national_frequency_allocation_plan.pdf

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/db.txt b/db.txt
index 1327e60..90ed48b 100644
--- a/db.txt
+++ b/db.txt
@@ -579,6 +579,14 @@ country LK: DFS-FCC
 	(5490 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+# Source:
+# http://lca.org.ls/images/documents/lesotho_national_frequency_allocation_plan.pdf
+country LS: DFS-ETSI
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
+
 country LT: DFS-ETSI
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

