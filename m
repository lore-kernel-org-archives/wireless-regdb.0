Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth02.qualcomm.com ([65.197.215.38])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wq3Hk-00078C-Dh
 for wireless-regdb@lists.infradead.org; Thu, 29 May 2014 16:34:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1401381272; x=1432917272;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=B9yXQAUv7fMbkdu+bzf+NIwHcW4sFF5hlYYD+BmjDjY=;
 b=o4IFzKZRYiHgdlZZmCyBl1bpZVd0zztkqR20ie1RODgihKE2GobSiu7a
 JU+8DGnf83N3G7WMGhnHY9LCAUoTpMLDe4f8oYbfxmjVSb31W96g11h1U
 4IWUjw/SMfpDkzT/wZuA2GZJ4gHFPD79FX/IvQiengAjFZQM3YwT92cJ1 A=;
Date: Thu, 29 May 2014 19:34:06 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140529163406.GA28002@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH 6/8] wireless-regdb: Add Vanuatu (VU)
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
http://www.trr.vu/attachments/category/130/GURL_for_Short-range_Radiocommunication_Devices2.pdf

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/db.txt b/db.txt
index 219d3a6..83a3af4 100644
--- a/db.txt
+++ b/db.txt
@@ -937,6 +937,15 @@ country VN: DFS-FCC
 	(5490 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+# Source:
+# http://www.trr.vu/attachments/category/130/GURL_for_Short-range_Radiocommunication_Devices2.pdf
+country VU: DFS-FCC
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (17)
+	(5250 - 5330 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
+	(5735 - 5835 @ 80), (30)
+
 country YE:
 	(2402 - 2482 @ 40), (20)
 
-- 
1.9.1


-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

