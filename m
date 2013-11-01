Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x232.google.com ([2a00:1450:400c:c03::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFFc-0000NK-B7
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:00 +0000
Received: by mail-we0-f178.google.com with SMTP id q59so3938275wes.23 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2oUEEzjFe9HVbeN1gpLwtXng6OvDtUSwqpR2/EO/sKg=;
 b=fH+tAi5E784qqE3WY8nmlaQXIy2jeZjivkE5pakHdvudtw18wrYwlwasfGYo17JDQy
 N3LLeJC3w0cRbRK/UGsBprKkV5ddWMnHyU+tiNOuKqi2jjM9nh/PJbKLN5PAbgjiov9z
 om5up4AnL21SqKI9Zb3BGc3bhnBc67wV3KYLIxo86QtbRuACgVz1MbwOEJXULg7RWY8n
 tTahXeKf+4fLBFfYmN23rOW5Buxk5PIYUbKSoBZ9n0DmlGvBLcXMOUI3xWqnG/Xrsi7m
 FLU+xMw+/fYwXFXL7WSEolPQb7x/bYpGVKVdChKxUCAfsxp4GwRjeSK56q/PGhv7Tj5l b7rw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:07 +0100
Message-Id: <1383314275-20960-18-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 17/65] wireless-regdb: enable VHT80 for HN
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

This also increases the max EIRP from 20 dBm to 24 dBm for
the 5 GHz DFS frequency ranges. Also extend the 5 GHz
DFS frequency range by 20 MHz.

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 2f43aa9..d020532 100644
--- a/db.txt
+++ b/db.txt
@@ -341,10 +341,10 @@ country GU: DFS-FCC
 
 country HN: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (17)
-	(5250 - 5330 @ 40), (20), DFS
-	(5490 - 5710 @ 40), (20), DFS
-	(5735 - 5835 @ 40), (30)
+	(5170 - 5250 @ 80), (17)
+	(5250 - 5330 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
+	(5735 - 5835 @ 80), (30)
 
 country HK:
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

