Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zm4N1-0000PX-6i
 for wireless-regdb@lists.infradead.org; Tue, 13 Oct 2015 18:32:20 +0000
Received: by wicge5 with SMTP id ge5so70550446wic.0 for
 <wireless-regdb@lists.infradead.org>; Tue, 13 Oct 2015 11:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=from:to:cc:subject:date:message-id;
 bh=Rc1hojBqzwqpPiJXiaX9C2RderLfq0K/Ub32zNIhMH8=;
 b=jmAWtS2LZyhIO01RYoue/H6y5Z4SqblmOLWKGTls5+3zB2i0EPk4X4rNcTGwut9GVT
 tEDnHBE+CaHKbEkUzRHPm8qzzEs+WI/2hPTugKWjOgtulo6ONaCQQ1UXAiTlaUhKl3aM
 Sj404XrlMe2p24hgY8Wj/ygIkwNwi4ITTNksdGcKOk9ep9n6p8sPuzHgDs2r8FthmG9G
 H9z+xbDZ0j2/YsH3PktiHCtOSYhmInaKPyGU216ZPSfaheJVjyjsy6JWq0/TSZNWLbUD
 HcFFbDrbcvc0sA93EGQaVf5f93qoeZWCG/H1rPWU42JLZbb8qs9c0f9nroZ13NBTLGWR xX5w==
From: Andrej Vlasic <andrej.vlasic0@gmail.com>
Date: Tue, 13 Oct 2015 20:31:24 +0200
Message-Id: <1444761084-4399-1-git-send-email-andrej.vlasic0@gmail.com>
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
	for Croatia (HR)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: seth.forshee@canonical.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, Andrej Vlasic <andrej.vlasic0@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

Update frequency allocation rules to mach data from table [1].

Also increase allowed power limit for range 5150-5250 Mhz to 200mW.

[1] http://tablice.hakom.hr:8280/vis?lang=en

Signed-off-by: Andrej Vlasic <andrej.vlasic0@gmail.com>
---
 db.txt | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index d57ea84..3b36616 100644
--- a/db.txt
+++ b/db.txt
@@ -504,11 +504,17 @@ country HN: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+# Data from table of frequency allocations: http://tablice.hakom.hr:8280/vis?lang=en
+# For 5ghz range see http://www.hakom.hr/UserDocsImages/op%C4%87e%20dozvole%20prosinac%202009.g/Opca_dozvola_85.pdf
+# and http://www.hakom.hr/UserDocsImages/op%C4%87e%20dozvole%20prosinac%202009.g/Opca_dozvola_86.pdf
+# and http://www.hakom.hr/UserDocsImages/op%C4%87e%20dozvole%20prosinac%202009.g/Opca_dozvola_87.pdf
+# TPC devices on range 5250-5350 can use 200mW, and 1W on range 5470-5725.
+
 country HR: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
-	(5490 - 5710 @ 160), (27), DFS
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
+	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW
+	(5470 - 5725 @ 160), (500 mW), DFS
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
-- 
2.6.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

