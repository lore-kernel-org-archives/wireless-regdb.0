Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine02.qualcomm.com ([199.106.114.251])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XPAQq-0002k4-Nu
 for wireless-regdb@lists.infradead.org; Wed, 03 Sep 2014 13:17:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1409750226; x=1441286226;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=NVk0/m02LkUGp6mgz21dhgCvzJ1cc/n42/TDW+VcjXM=;
 b=u8SHVsY0psLrzDMT9lZXil1TRyPfomE1Y9j/gEGALfb1H0EzTazZPr6U
 G5x8ZynegyKT/cXS3L+ttqndanBdAvxFKjENdYWoBjAsD8/R4cOElt6PH
 joCTmMJaLNMlCNE9YPcV5krW+9UFsuBkeBCOdK4HN9BB/Woip6LkV7Vw9 c=;
Date: Wed, 3 Sep 2014 16:16:38 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140903131604.GA16255@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH 11/12] wireless-regdb: Add Turks and
 Caicos (TC) regulatory rules
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
http://www.telecommission.tc/Spectrum-plan20110324-101210.html

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/db.txt b/db.txt
index 2d60241..fab91f2 100644
--- a/db.txt
+++ b/db.txt
@@ -906,6 +906,15 @@ country SV: DFS-FCC
 country SY:
 	(2402 - 2482 @ 40), (20)
 
+# Source:
+# http://www.telecommission.tc/Spectrum-plan20110324-101210.html
+country TC: DFS-FCC
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (24)
+	(5250 - 5330 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
+	(5735 - 5835 @ 80), (30)
+
 country TD: DFS-ETSI
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

