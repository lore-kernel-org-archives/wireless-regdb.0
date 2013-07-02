Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ye0-f202.google.com ([209.85.213.202])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uu4L2-0004aE-GP
 for wireless-regdb@lists.infradead.org; Tue, 02 Jul 2013 17:26:01 +0000
Received: by mail-ye0-f202.google.com with SMTP id r11so484497yen.1 for
 <wireless-regdb@lists.infradead.org>; Tue, 02 Jul 2013 10:25:38 -0700 (PDT)
From: Paul Stewart <pstew@chromium.org>
Date: Tue, 2 Jul 2013 10:20:33 -0700
Message-Id: <20130702172537.DC8F62006D3@clearcreek.mtv.corp.google.com>
Subject: [wireless-regdb] wireless-regdb: 5GHz rule for Indonesia regdomain
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
To: linville@tuxdriver.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Pursuant to
http://www.postel.go.id/content/ID/regulasi/standardisasi/kepdir/bwa%205,8%20ghz.pdf, provide a 5GHz rule for Indonesian regulatory domain.
---
 db.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/db.txt b/db.txt
index c5861b8..2c0dffd 100644
--- a/db.txt
+++ b/db.txt
@@ -377,6 +377,8 @@ country HU: DFS-ETSI
 
 country ID:
 	(2402 - 2482 @ 40), (N/A, 20)
+	# ref: http://www.postel.go.id/content/ID/regulasi/standardisasi/kepdir/bwa%205,8%20ghz.pdf
+	(5735 - 5815 @ 20), (N/A, 20)
 
 country IE: DFS-ETSI
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.8.3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

