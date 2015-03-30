Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine01.qualcomm.com ([199.106.114.254])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YcWyd-0003AH-Jm
 for wireless-regdb@lists.infradead.org; Mon, 30 Mar 2015 10:31:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1427711487; x=1459247487;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=hIDbC5zVL7sra2Idlprsgb81VJiDWVHhMDVneaXj0WQ=;
 b=Ig8bIHh63+/wX6yqtf0g2KzkLeCd/OPWS4M6HbjVDYBL5Gp8GbtB3fNy
 S7sNMpNwnd2dzJa6nrdicrQD/UyqGzOgi8ElLt0mIQ2NJGniL942ob7Na
 YA/EeH5h+AC2XmAx5leFDVaZFD3P+PWNKE5C1MRNV2eQvjPus8Ffx9GdU U=;
From: Jouni Malinen <jouni@qca.qualcomm.com>
Date: Mon, 30 Mar 2015 13:30:41 +0300
Message-ID: <1427711441-4998-1-git-send-email-jouni@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Add regulatory rules for
	Maldives (MV)
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Source:
http://www.cam.gov.mv/docs/tech_standards/TAM-TS-100-2004-WLAN.pdf

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/db.txt b/db.txt
index 317bfb1..ad2acf5 100644
--- a/db.txt
+++ b/db.txt
@@ -794,6 +794,14 @@ country MU: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+# Source:
+# http://www.cam.gov.mv/docs/tech_standards/TAM-TS-100-2004-WLAN.pdf
+country MV: DFS-ETSI
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), AUTO-BW
+	(5250 - 5350 @ 80), (100 mW), DFS, AUTO-BW
+	(5725 - 5850 @ 80), (100 mW)
+
 country MW: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20), AUTO-BW
-- 
1.9.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

