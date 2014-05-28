Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth02.qualcomm.com ([65.197.215.38])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WpZwj-0007ft-Sa
 for wireless-regdb@lists.infradead.org; Wed, 28 May 2014 09:14:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1401268493; x=1432804493;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=vb630dbjQSkqc3ASPa2b3dttzCd0enBsVBgrIBY3gjI=;
 b=xlIW5gzI3S5Wf/iVyVd+s32OclVnQOM3SNl2JArf1Cq1Z0JMAOERGMAr
 ib0s1YW7vq6TxMOhpl7oKhQFf9T0O9x9+X1JMLO9uM0+hgu4ecIEpRa2c
 N2neNCIq1N+35+NC4q8olBm+YqZyFgr5UenrPhUJzJVLW5GdFmnksZC9/ o=;
Date: Wed, 28 May 2014 12:14:26 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140528091426.GA14657@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH 5/9] wireless-regdb: Add Montenegro (ME)
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
http://www.cept.org/files/1050/Tools%20and%20Services/EFIS%20-%20ECO%20Frequency%20Information%20System/National%20frequency%20tables/Montenegro%20NAFT%20-%202010.pdf

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/db.txt b/db.txt
index fe27301..6621681 100644
--- a/db.txt
+++ b/db.txt
@@ -556,6 +556,14 @@ country MA: DFS-ETSI
 	(5170 - 5250 @ 80), (20)
 	(5250 - 5330 @ 80), (20), DFS
 
+# Source:
+# http://www.cept.org/files/1050/Tools%20and%20Services/EFIS%20-%20ECO%20Frequency%20Information%20System/National%20frequency%20tables/Montenegro%20NAFT%20-%202010.pdf
+country ME: DFS-ETSI
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

