Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth01.qualcomm.com ([65.197.215.72])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WpZxd-0000Rb-4F
 for wireless-regdb@lists.infradead.org; Wed, 28 May 2014 09:15:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1401268550; x=1432804550;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=9MZXanw6Vs38ILg+ZPGuFijO5kYFdvkXbfn4rrxLKrw=;
 b=bPoBi/X/7zkRMViEUZz41CoxGIEmbSAilRKAtMk4doWFttKKVQgqNa9t
 5DV2d0dyPBJbJMZl8dpUwCNXrZYcEthpJhKAYhfQE6PEbzuAhyUvpqnic
 fVBsbdwnJuzN/G+8nbW3tgzoFFC9xpdBzF1ttTLzCT6S8nfGVZhUe/BXd 0=;
Date: Wed, 28 May 2014 12:15:22 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140528091522.GA14693@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH 7/9] wireless-regdb: Add Chad (TD)
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

Source is QCA's regulatory team's efforts and correspondence with
regulator: http://otrt.td [L'Office Tchadien de Régulation des
Télécommunications (OTRT)].

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/db.txt b/db.txt
index 887902e..b06fb2b 100644
--- a/db.txt
+++ b/db.txt
@@ -785,6 +785,12 @@ country SV: DFS-FCC
 country SY:
 	(2402 - 2482 @ 40), (20)
 
+country TD: DFS-ETSI
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
+
 country TG: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 40), (20)
-- 
1.9.1


-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
