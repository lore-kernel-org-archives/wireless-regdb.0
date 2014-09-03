Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth02.qualcomm.com ([65.197.215.38])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XPAOL-0000sK-Gd
 for wireless-regdb@lists.infradead.org; Wed, 03 Sep 2014 13:14:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1409750069; x=1441286069;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=Id0bYPSys13WVtR+kzOC93feNpcFUTEqs9f0NUq4Vo0=;
 b=uf2oTfaDkcjkx5q0r/gbtYOQYQjyPo1/5qKfFpAI6VSAvnJun2RJdRzk
 he+bSDl6UPRKqvP/jvA1pePhGFLmoHmVyXSmlSccoJo4o7JxLkbbuGY7J
 GjlG5+vKQ82hddyMP8ITrn2CVdI7lYLvfC1kFSqy+yqGayuYaXxCqQ8bI A=;
Date: Wed, 3 Sep 2014 16:14:03 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140903131403.GA16165@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH 06/12] wireless-regdb: Add Saint Martin
 (French part) (MF) regulatory rules
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
index 980b193..7f842f3 100644
--- a/db.txt
+++ b/db.txt
@@ -639,6 +639,12 @@ country ME: DFS-ETSI
 	(5250 - 5330 @ 80), (20), DFS
 	(5490 - 5710 @ 80), (27), DFS
 
+country MF: DFS-ETSI
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
+
 country MO:
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 40), (23)
-- 
1.9.1


-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

