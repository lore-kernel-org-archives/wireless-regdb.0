Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x232.google.com ([2a00:1450:400c:c00::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFG7-0000Xx-VN
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:32 +0000
Received: by mail-wg0-f50.google.com with SMTP id n12so4108615wgh.29 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kkt5MEbv1NFPEoFlV4zr9F7fYDhSd3W1cZXD2TXX6hs=;
 b=vv9v9m/KRJyl1JDQquJ3juG5dgLfnJk9WWwanB3Mod74RZPsd6851bm1fbcrYLwgHC
 lLikdKuZXJi0kfccQGQ+KjcXERTlNeD+zVnTpbYB1Gju+C53yFWSeHNUPd5ZJ4mbVVze
 g8AJQYWNpFLP6W+F+H1hqGOsFof57xMNDm1Y9ou0Ys3oKD6uJDeYQ5kM/8X+0Btpafgb
 SFyg1BmncdAlCkkek9gQ7oIpTodiVaYGqVeMzpawQfJw5MCOwASyGdm+4r2ZQs6+uyTy
 G9ZMJVq3+hMPlc43sN/PBLWsk4iX5qLVtCUpAFcnILlpnQv8QjLk5mRozyaNkP2Xj2QC zIfg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:22 +0100
Message-Id: <1383314275-20960-33-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 32/65] wireless-regdb: enable VHT80 for MT
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
index 478329c..27975b2 100644
--- a/db.txt
+++ b/db.txt
@@ -538,9 +538,9 @@ country MK: DFS-ETSI
 
 country MT: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (20)
-	(5250 - 5330 @ 40), (20), DFS
-	(5490 - 5710 @ 40), (27), DFS
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

