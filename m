Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth02.qualcomm.com ([65.197.215.38])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XPAPF-0001uq-K1
 for wireless-regdb@lists.infradead.org; Wed, 03 Sep 2014 13:15:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1409750125; x=1441286125;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=1BKXMpFEzG3VnwS2M6enFqZlXrgWLbXh5is/gV321GM=;
 b=E/0w+MoSPIa/Nvrr/pja1L7diCVoJ027T1D/UD3X3eBwZygfAVsj/nm7
 w0irbR0WRBFjp4TvU9Ef5HLPERTtBxwF0MMpDL8svRJ0is+or/nw+pgsS
 x+X7AmasZzRY8J6xn523PAfwL6cJ573nF2l3ApMLpQqKJPA6qsFH3kEUU U=;
Date: Wed, 3 Sep 2014 16:14:58 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140903131458.GA16201@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH 08/12] wireless-regdb: Add Saint Kitts and
 Nevis (KN) regulatory rules
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
http://ntrc.kn/?page_id=7

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/db.txt b/db.txt
index 7e34611..77b1773 100644
--- a/db.txt
+++ b/db.txt
@@ -538,6 +538,15 @@ country KH: DFS-ETSI
 	(5250 - 5330 @ 80), (20), DFS
 	(5490 - 5710 @ 80), (27), DFS
 
+# Source
+# http://ntrc.kn/?page_id=7
+country KN: DFS-ETSI
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (30), DFS
+	(5735 - 5815 @ 80), (30)
+
 country KP: DFS-JP
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

