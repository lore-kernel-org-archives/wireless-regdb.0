Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth01.qualcomm.com ([65.197.215.72])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WpZzA-0000lo-9h
 for wireless-regdb@lists.infradead.org; Wed, 28 May 2014 09:17:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1401268645; x=1432804645;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=+GKoCiPkwAowdmkHeQDsQ77iHP/8lbQtFlpRe7qCYEs=;
 b=TWIElSEr2J1eBXbL+JD9DG7/QtLTnhK4//W1pHkcrUom6rFQCYqcqkLD
 hcyrZd6tZve4ECnQwodiyBAXfNRe+C8U3Na6gNKpn9K3FH4RmTJJR2XYf
 F7W/RTNQFmxf20w0qRtDO9XzAyQBO2GNQxhqRPsI/iCfaUMt45IjzI+xr g=;
Date: Wed, 28 May 2014 12:16:58 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140528091658.GA14748@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH 9/9] wireless-regdb: Update Venezuela (VE)
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
Official Gazette (Gaceta Oficial) concerning Unlicensed transmitter use
(10 June 2013)
http://www.conatel.gob.ve/

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 9864027..2854eec 100644
--- a/db.txt
+++ b/db.txt
@@ -874,9 +874,13 @@ country UZ: DFS-ETSI
 	(5170 - 5250 @ 80), (20)
 	(5250 - 5330 @ 80), (20), DFS
 
+# Source:
+# Official Gazette (Gaceta Oficial) concerning Unlicensed transmitter use
+# (10 June 2013)
+# http://www.conatel.gob.ve/
 country VE: DFS-FCC
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (17)
+	(2402 - 2482 @ 40), (30)
+	(5170 - 5250 @ 80), (23)
 	(5250 - 5330 @ 80), (23), DFS
 	(5735 - 5835 @ 80), (30)
 
-- 
1.9.1


-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

