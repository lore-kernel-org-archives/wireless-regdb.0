Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth02.qualcomm.com ([65.197.215.38])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZjBC8-0006Kz-FH
 for wireless-regdb@lists.infradead.org; Mon, 05 Oct 2015 19:13:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1444072388; x=1475608388;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=hjWtH281p4/Nsu9aCdQyf5H3NTbsV2FGrDWDnoKPCy4=;
 b=eHdaiD/xvhERUI7CDoHymksFz6C14lqLU5y0DH2x5SukAUod3N3BnhTs
 6yWSgVdb+eI4gQ1WhEPMSFMiOOnU+NPYK7y6x6y4aTcK6Ft62VBjJ+hVS
 GLZJ0R0/JWfvxXHikHWvwDA8v0RxT14Z8xa1phGGb39h6mp/hup84YWmv w=;
From: Jouni Malinen <jouni@qca.qualcomm.com>
Date: Mon, 5 Oct 2015 22:11:57 +0300
Message-ID: <1444072321-20728-1-git-send-email-jouni@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH 1/5] wireless-regdb: Add 160 MHz channel
	bandwidth for Greenland (GL)
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

This extends regulatory rules for Greenland to allow 160 MHz VHT
channels. This was missed in the earlier set of patches that added 160
MHz for large number of countries.

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index d57ea84..226057e 100644
--- a/db.txt
+++ b/db.txt
@@ -455,9 +455,9 @@ country GH: DFS-FCC
 
 country GL: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20)
-	(5250 - 5330 @ 80), (20), DFS
-	(5490 - 5710 @ 80), (27), DFS
+	(5170 - 5250 @ 80), (20), AUTO-BW
+	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
+	(5490 - 5710 @ 160), (27), DFS
 
 country GP: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.9.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

