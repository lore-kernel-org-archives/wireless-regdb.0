Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth01.qualcomm.com ([65.197.215.72])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wq3Go-0006hz-8r
 for wireless-regdb@lists.infradead.org; Thu, 29 May 2014 16:33:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1401381214; x=1432917214;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=VCj1tr/V455fXd39O549wGxT/S6yi/aVW1NeItGX21w=;
 b=bty3HjonjoFjZ8Vmu8gTp9FnS+OBsw1DWWjWwoVVUddLUA0Q6qrI/nAe
 Zv3v5UnmSNdho4ENS1+D8+G9QSYKgcwGNHieR1F9Mg0fHNgdjRolNFGX1
 9unpUHzUU0B5PfyIAVSNAqDH56NvgOKQBydQMdHR21XsR2r5/W/308min s=;
Date: Thu, 29 May 2014 19:33:08 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140529163308.GA27966@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH 4/8] wireless-regdb: Add Micronesia (FM)
 and Palau (PW) regulatory rules
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

FCC has jurisdiction over public use of radio spectrum in all U.S.
territories.

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/db.txt b/db.txt
index 063cd44..f85a622 100644
--- a/db.txt
+++ b/db.txt
@@ -325,6 +325,13 @@ country FI: DFS-ETSI
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
+country FM: DFS-FCC
+	(2402 - 2472 @ 40), (30)
+	(5170 - 5250 @ 80), (24)
+	(5250 - 5330 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
+	(5735 - 5835 @ 80), (30)
+
 country FR: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20)
@@ -730,6 +737,13 @@ country PR: DFS-FCC
 	(5490 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+country PW: DFS-FCC
+	(2402 - 2472 @ 40), (30)
+	(5170 - 5250 @ 80), (24)
+	(5250 - 5330 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
+	(5735 - 5835 @ 80), (30)
+
 country QA: DFS-JP
 	(2402 - 2482 @ 40), (20)
 	(5735 - 5835 @ 80), (30)
-- 
1.9.1


-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

