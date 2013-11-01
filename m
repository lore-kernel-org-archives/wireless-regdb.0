Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x22a.google.com ([2a00:1450:400c:c05::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFF9-0000Im-FC
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:58:32 +0000
Received: by mail-wi0-f170.google.com with SMTP id ex4so1194930wid.3 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=htXz8KXK0MUKx1Xv196n8LU3ekHtRAVaGbLmDckSveM=;
 b=YDfmvMZ3I1N+/BJPdH4Q1260FHJvfZQ72gYpdY6eIsKfAqK3cZV9p6c+1xlGbLorMt
 0AbNL8KrGgS12I8IvUgWXFzsc9X253WsCv99IvwsfEPrpvaBSdxFFIQRCEcdO+iIjd8S
 bJ4RwlEwpMvx8o9AQZY6/vQVBVxXgQFfBSchtkQjHF/ksiZ/UQguOU6jkIgKQ+sjMmLc
 CAXCrUkrr1gRpmfDEQ6xxKF9mfqCwAAyH1Y5CkSerxe09cEYe41G52i3KFr53iY/aqAP
 K4UYqHes6VXc5eTdzJhfx3xKukGMyWT8MhgG9tIoCGXEfI48WcazlBGtoV/Po1F6Fx8Z 5heQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:56:54 +0100
Message-Id: <1383314275-20960-5-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 04/65] wireless-regdb: enable VHT80 for AW
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
index 5ef95ee..993b8f1 100644
--- a/db.txt
+++ b/db.txt
@@ -63,9 +63,9 @@ country AU:
 
 country AW: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (20)
-	(5250 - 5330 @ 40), (20), DFS
-	(5490 - 5710 @ 40), (27), DFS
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
 
 country AZ: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

