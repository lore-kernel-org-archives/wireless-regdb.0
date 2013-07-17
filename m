Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x22f.google.com ([2607:f8b0:400e:c03::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHKl-0005qd-Uv
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:19:16 +0000
Received: by mail-pa0-f47.google.com with SMTP id kl14so1418612pab.6 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=RzWeY8FC2GdCJyu0fIRbMDb5g6VlLmyzhWwQLszuNMw=;
 b=SlJIgrRoySqGe4zsXZjFGhFbwvGXFz3SeR8N+4O4WVObm7s/FzmqzKQZaQxHFNVegD
 GfmbPZJg0+th3xkjIylQKLdhqZ3hBTBEhpHWuMWg1CTdFXzbEfYl1SC8hW3RoxkxLPby
 QyIXZhtR8i36dNT4zwNp1G+M6DMn/miL6W0xfMd469lz/fHn9Cc9d207wCnt3rjIGrjq
 8PPoUNksSvAfiouOYQKLZ0BKwiy5xZo6Mch8cDPDYxgEHrI91lfTasAz9rH32AI+jwU7
 67cRPeM94kXLHu3tF8az452SWqVg5vrl/ZbixUvJAPDqvqEtydFcrjjuiyeAsT/mNVJ7 o9hg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:17:50 -0700
Message-Id: <1374027522-18488-2-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 01/53] wireless-regdb: AU,
	Australia - enable VHT80
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
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>

This enables 80 MHz bandwidth usage on all 5 GHz
frequencies and updates the max EIRP. This also adds
a new DFS 5 GHz band: 5490 - 5710 MHz.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index c5861b8..0e7794e 100644
--- a/db.txt
+++ b/db.txt
@@ -53,9 +53,10 @@ country AT: DFS-ETSI
 
 country AU:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5170 - 5250 @ 40), (3, 23)
-	(5250 - 5330 @ 40), (3, 23), DFS
-	(5735 - 5835 @ 40), (3, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country AW:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

