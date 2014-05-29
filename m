Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth01.qualcomm.com ([65.197.215.72])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wq3Fm-0006Ne-Ug
 for wireless-regdb@lists.infradead.org; Thu, 29 May 2014 16:32:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1401381150; x=1432917150;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=OtkFoZcEsypYgnu9O4QTSfQKiR8oSF0wYHwyTY8BwfU=;
 b=FeUbBXKVY28jiHV2iA6bLIm7aKXYYHzyYX/c1d1krHAS8tOzomKjGeGV
 hsCmBmUM3yCO7EUMgNM3yxPJj3q5PZdVwc/d8E1J6gWPQOPVK8FdVvZFI
 SoCY9jqEIuKRkfaV7G5uxs0vHveRHDWWpUz5kx+uuY8M+MWht7iXCdwMS 8=;
Date: Thu, 29 May 2014 19:32:04 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140529163204.GA27929@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH 2/8] wireless-regdb: Add Burkina Faso (BF)
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

Source is QCA's regulatory team's efforts and correspondence with
Telecom agency (ARCE).

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/db.txt b/db.txt
index 50f1bc6..c957b1d 100644
--- a/db.txt
+++ b/db.txt
@@ -110,6 +110,13 @@ country BE: DFS-ETSI
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
+country BF: DFS-FCC
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (17)
+	(5250 - 5330 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
+	(5735 - 5835 @ 80), (30)
+
 country BG: DFS-ETSI
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

