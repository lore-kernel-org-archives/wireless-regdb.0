Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine01.qualcomm.com ([199.106.114.254])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wq3Kg-0000yy-G2
 for wireless-regdb@lists.infradead.org; Thu, 29 May 2014 16:37:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1401381454; x=1432917454;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=yVqdVWPcwKQACoCs2f2PG4RUpItZG8PEYZlurgJEOMo=;
 b=ipB1ej8CtFiD/7aMBkeDmVT6KlxGCKEm7H0zBgAUMHtpXHH9PaGlwgmR
 R2l5+50pJBBNskH2rxLbwUGXnPQ/B/w5C9PQj5R9bjIPqHt7jDvVQdSc6
 /JQw4JD04VFGo9qY6pVsGTNsC2XRcqEePP6DSHX1/X7Dga2M996C3Sked Y=;
Date: Thu, 29 May 2014 19:37:06 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140529163706.GA28051@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH 8/8] wireless-regdb: Update Haiti (HT)
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

Source is QCA's regulatory team's efforts and email confirmation from
ministry. 2.4 & 5 GHz limits and RF channels used in Haiti are same as
FCC. Conseil National des Telecommunications

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 769826c..31e8394 100644
--- a/db.txt
+++ b/db.txt
@@ -429,11 +429,12 @@ country HR: DFS-ETSI
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
-country HT: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20)
-	(5250 - 5330 @ 80), (20), DFS
-	(5490 - 5710 @ 80), (27), DFS
+country HT: DFS-FCC
+	(2402 - 2472 @ 40), (30)
+	(5170 - 5250 @ 80), (24)
+	(5250 - 5330 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
+	(5735 - 5835 @ 80), (30)
 
 country HU: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.9.1


-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

