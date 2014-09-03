Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth02.qualcomm.com ([65.197.215.38])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XPARC-0002qY-7y
 for wireless-regdb@lists.infradead.org; Wed, 03 Sep 2014 13:17:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1409750246; x=1441286246;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=iHPyNEY50RYZ4zTWYmlwvNxPl+Xovx4UU+ejJ1h5RbE=;
 b=uJGV1z0OST5HNJRSCpH7qm9NHoLYOsVF3Tuf92H2MxkdHmROKFPIvr3U
 OoBBsqgzPokApIxXyEBHeSw0a9SyVTkdwDIWgz3OLTYo7RCdXnub5cgzI
 riAmM7w6U5iHmdI4RSh+IMHWLRbzkEz+DIl0VxaK/MgzarNMSppQua71h k=;
Date: Wed, 3 Sep 2014 16:17:00 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140903131700.GA16284@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH 12/12] wireless-regdb: Add Wallis and
 Futuna (WF) regulatory rules
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

French Jurisdiction, follows ETSI rules per R&TTE Directive.

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/db.txt b/db.txt
index fab91f2..757040b 100644
--- a/db.txt
+++ b/db.txt
@@ -1034,6 +1034,12 @@ country VU: DFS-FCC
 	(5490 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+country WF: DFS-ETSI
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
+
 country YE:
 	(2402 - 2482 @ 40), (20)
 
-- 
1.9.1


-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

