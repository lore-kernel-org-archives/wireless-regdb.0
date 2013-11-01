Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x22c.google.com ([2a00:1450:400c:c05::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFFG-0000JA-G9
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:58:39 +0000
Received: by mail-wi0-f172.google.com with SMTP id ez12so1106681wid.11 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OdUowggAeKdGHSOBPLbSTkKsc4ERGvF0fOirQZb+foY=;
 b=DxINL4HDKFwEdH3dk4qdpC19a9hYE+47n2zP3Mimm3mtm6YCYGkk/AuMrmLxzE4FpV
 K4N4KY56BPOP2HwfQzSBppn46a7VSrW8yY4Yj8Gof9p4uyyKrZcuuMU4i36/NJ/7Pm1V
 UAhSmnjztNaSvxm5TAAJWiriKBK6qCQu6kc83ZCv+7EyuSU66R+mimYAI9dfYEeFO8fx
 mDus8WXvRYWsjJmtTRJWyxqF6fM+0T4mhOr0tw3iKJk00hFKJIs3ylM9IIMKw3ng+V4h
 Dzr9NPm4tqvaQ8+7oW620jhrBfDSIeBZpgaekYsU5uEzmHOUNiocEgFC1yhaO9Fq5nPU CGgQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:56:58 +0100
Message-Id: <1383314275-20960-9-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 08/65] wireless-regdb: enable VHT80 for BH
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
index f49d8f4..ef0a155 100644
--- a/db.txt
+++ b/db.txt
@@ -107,9 +107,9 @@ country BG: DFS-ETSI
 
 country BH: DFS-JP
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 20), (20)
-	(5250 - 5330 @ 20), (20), DFS
-	(5735 - 5835 @ 20), (20)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5735 - 5835 @ 80), (20)
 
 country BL:
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

