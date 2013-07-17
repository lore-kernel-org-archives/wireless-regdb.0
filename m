Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x230.google.com ([2607:f8b0:400e:c03::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHLs-0005xJ-RG
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:20:25 +0000
Received: by mail-pa0-f48.google.com with SMTP id kp12so1406984pab.7 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=auYqSALTgPBEykAwc6JoR8QF3Qh5eggg6FP1ixZVGio=;
 b=06YYZbZDyAYFQGAUdsGbf8LEIynD3+pGj1ESdn89Q0KeIlk7pyAa+QLG/E2O8OjREc
 pNzq2XA28MLS2IHDWkBSO/2xlzJFmWArYcR0c/aBCX3ayK93MpcV/ZWcarDzmoldDtql
 gT4hMcDMp2P96334te4XzV1zOOqUuGu7pCFlnCN9sRPBb6uL4Ivw2nl1QQzO0AIcD4GS
 V0bIEWEpRirFrWQhjVaqI+ZD+ORtoekszEsv2XL3uXXJeldPJgHbu9HyR+vgxr7mIixn
 fXuNKQMWNjCKCDFlXXW4foaQcvZR0YcIVUGIJ2KrA85XYe89l9McyXW9w6fIyd2LLzzp KfpA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:18:03 -0700
Message-Id: <1374027522-18488-15-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 14/53] wireless-regdb: SG,
	Singapore - enable VHT80
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
frequencies and update the max EIRP. This also adds
a new DFS 5 GHz band: 5490 - 5710 MHz.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 8e7fe8d..9043a3c 100644
--- a/db.txt
+++ b/db.txt
@@ -689,9 +689,10 @@ country SE: DFS-ETSI
 
 country SG:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5170 - 5250 @ 40), (N/A, 20)
-	(5250 - 5330 @ 40), (N/A, 20), DFS
-	(5735 - 5835 @ 40), (N/A, 20)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country SI: DFS-ETSI
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

