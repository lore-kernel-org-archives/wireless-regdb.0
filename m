Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine02.qualcomm.com ([199.106.114.251])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wq3HJ-0006vf-V7
 for wireless-regdb@lists.infradead.org; Thu, 29 May 2014 16:34:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1401381245; x=1432917245;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=dsycbYnZcBzmUKgkGV5CjTBxLosQw1Q6Dqg1kdYZENA=;
 b=Dd6Ojo8KQ6mnaeND60oRWBsEWJwr724LdjPVVilBHbX58p80nmPkqi+s
 +DzdGjGd8U0bUDj5HXS998aFg4fBDszF1SztpXgyMcc34zdFPtTelVv+y
 32JfhLjYmyzkf6j/4OxpcgrSQUTIhRZSuxisEzzKITn5hnb8YTIsCtxOy 0=;
Date: Thu, 29 May 2014 19:33:38 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140529163338.GA27984@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH 5/8] wireless-regdb: Add Senegal (SN)
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
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: "John W. Linville" <linville@tuxdriver.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Source:
Regulation N° 2004-005 ART/DG/DRC/D.Rég

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/db.txt b/db.txt
index f85a622..219d3a6 100644
--- a/db.txt
+++ b/db.txt
@@ -817,6 +817,15 @@ country SK: DFS-ETSI
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
+# Source:
+# Regulation N° 2004-005 ART/DG/DRC/D.Rég
+country SN: DFS-FCC
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (17)
+	(5250 - 5330 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
+	(5735 - 5835 @ 80), (30)
+
 country SV: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17)
-- 
1.9.1


-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
