Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth02.qualcomm.com ([65.197.215.38])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XPAKI-0007N7-Jp
 for wireless-regdb@lists.infradead.org; Wed, 03 Sep 2014 13:10:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1409749818; x=1441285818;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=D0OmAmEXhwVxDrhauUSfmjkh8KZ0aQiANMEb4NJNtug=;
 b=Zi7C2hXUPG2p0JZVe5mUoKCRbZpE487j+rbCGxc2k/+8CPfNnauq/b2b
 mNsXqg+uY7XHN0maiadpSZDaJLfSre8T7zCspbjU1K3R0o80mAsI1xP14
 3TILzMr08IVSbN4/snK+y4DZc0zbb8Y/O4j4vyEl8aOypAO5yiYqMBq0B U=;
Date: Wed, 3 Sep 2014 16:09:50 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140903130950.GA15886@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH 01/12] wireless-regdb: Add Anguilla (AI)
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

Source:
http://pucanguilla.org/Downloads/January2005-Anguilla%20Table%20of%20Allocations.pdf

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/db.txt b/db.txt
index 3d15930..8b00c19 100644
--- a/db.txt
+++ b/db.txt
@@ -34,6 +34,14 @@ country AF: DFS-ETSI
 	(5250 - 5330 @ 80), (20), DFS
 	(5490 - 5710 @ 80), (27), DFS
 
+# Source:
+# http://pucanguilla.org/Downloads/January2005-Anguilla%20Table%20of%20Allocations.pdf
+country AI: DFS-ETSI
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
+
 country AL: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20.00)
-- 
1.9.1


-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

