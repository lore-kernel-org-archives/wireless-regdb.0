Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x235.google.com ([2a00:1450:400c:c03::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFF3-0000Ib-E8
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:58:26 +0000
Received: by mail-we0-f181.google.com with SMTP id t60so4068484wes.12 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XrGRMA8wn5eveYmLS0GwWVshvNgByZBAlmAQoeG+9/s=;
 b=l9RwL7bga/BjJFggLNHPxA+nW0K35Nx0+rPKs9vlzK/UU+HEWB2R3JEqW/XJ92xwta
 nArA9mVIYkMzSD8mJPDaUKCySRdWF3jiVWKaI7svM1U8edmyK5OY67Ln6ODPJbJtylpI
 70/xg2qSO6IfQ7sy1F/4H9vYZeRLKJTKU7WdMNCG8a9MwBPYTBsmvDhQNMkPyEIWzsdi
 88ZUGY8u9hF0mkE5533YUNUn/yvt3ZhPWyAU3puuAsAtmU0cyiQnC17Ixwe/0S0PFmz7
 +KewvdjoCoSvdtyEt4+RxFT1E7IfJsm/v/bOidAbkoRlkOIYuvyW0rVTt0w+z7WK3NAN V41g==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:56:53 +0100
Message-Id: <1383314275-20960-4-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 03/65] wireless-regdb: enable VHT80 for AN
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

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index d08281f..5ef95ee 100644
--- a/db.txt
+++ b/db.txt
@@ -35,9 +35,9 @@ country AM: DFS-ETSI
 
 country AN: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (20)
-	(5250 - 5330 @ 40), (20), DFS
-	(5490 - 5710 @ 40), (27), DFS
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
 
 country AR: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

