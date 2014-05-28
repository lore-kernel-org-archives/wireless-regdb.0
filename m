Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth01.qualcomm.com ([65.197.215.72])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WpZvE-0007H7-UH
 for wireless-regdb@lists.infradead.org; Wed, 28 May 2014 09:13:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1401268401; x=1432804401;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=zzqNI/b5M5kX9cetImxTEqwGEIYETOdVNGhC7Se58oY=;
 b=SroTGM2I1d/auzb0BLMOKvB7vBtsg49ZoP9LGOmsjpGn2Xcu1tdlDu5a
 sYlaaaFDknZX5hkyjLD38/RCkVhAGkHt0EsqIO4t+XEE1mrqOc2QazAQo
 9nVtQC7cx0GGIFcPLXnH95sfeIMgEa4F8KCmFok8VHJdEBwXcYv/E8ShF s=;
Date: Wed, 28 May 2014 12:12:52 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140528091252.GA14620@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH 3/9] wireless-regdb: Add Bhutan (BT)
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

Source: http://www.bicma.gov.bt/paper/publication/nrrpart4.pdf

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/db.txt b/db.txt
index 6435c54..df92842 100644
--- a/db.txt
+++ b/db.txt
@@ -145,6 +145,14 @@ country BR: DFS-FCC
 	(5490 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+# Source:
+# http://www.bicma.gov.bt/paper/publication/nrrpart4.pdf
+country BT: DFS-ETSI
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
+
 country BY: DFS-ETSI
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

