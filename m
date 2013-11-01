Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x22f.google.com ([2a00:1450:400c:c03::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFGY-0000fM-C6
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:58 +0000
Received: by mail-we0-f175.google.com with SMTP id t61so4063727wes.34 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dmm8i7qUn19TMY3LESgQW+7ENYskcFVxprpGI9aILKA=;
 b=bxHnFlPntMKExtaGynW9CSjl/4yIzMgdKU0SCS9yznu6y6m9dly5UkWZtdIDZWqKt0
 q01fYi02j4JKFypl1g5dh1KQJro/gl9PvRQXBvM5qK4JgeClBJmzCQVMuPxmLVnzVC/L
 qIDF/adrPDcW9jLh3ugMth3Je5GypzEuh9OM7hUjtk5eTvRW+xW8RAKsiE9mCbMpE/H2
 hx+FtCFz79EXU0FZ9GuhQA7GdirisWAPKL4LtEO/Tiil7vZg4OY7FlSJWIdf7YzwM9UH
 OwdFKdrdUZvXTIxD7p8wxwHxvDKv986573gQ9CaMDwXD7MYdF0KErWpQbjKL9QTnq85R +CWA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:35 +0100
Message-Id: <1383314275-20960-46-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 45/65] wireless-regdb: enable VHT80 for UY
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
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

This:

  o Enables VHT80 on all 5 GHz frequency ranges

  o Increases max EIRP from 20 dBm to 24 dBm for
    the 5 GHz DFS frequency ranges

  o Extends the second 5 GHz DFS frequency range
    by 20 MHz

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index cbbbe18..50307eb 100644
--- a/db.txt
+++ b/db.txt
@@ -782,10 +782,10 @@ country US: DFS-FCC
 
 country UY: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (17)
-	(5250 - 5330 @ 40), (20), DFS
-	(5490 - 5710 @ 40), (20), DFS
-	(5735 - 5835 @ 40), (30)
+	(5170 - 5250 @ 80), (17)
+	(5250 - 5330 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
+	(5735 - 5835 @ 80), (30)
 
 country UZ: DFS-FCC
 	(2402 - 2472 @ 40), (30)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

