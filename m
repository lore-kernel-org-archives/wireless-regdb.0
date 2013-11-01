Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-f171.google.com ([209.85.212.171])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFFd-0000Om-OM
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:02 +0000
Received: by mail-wi0-f171.google.com with SMTP id f4so1103850wiw.16 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=RGXGh67nJ+z+t56+QhfUWbNUBjQaX7IkuJnGVziTkls=;
 b=MlRWqRM3cOc3JSiJ+9EdUNz7/4nT7nCJmAIht10PuSRcdI3S+C85ClGffiJvyjNYkN
 t1C3OHsRq/dkp7Ln4I8KCEnsBmEcn4y6o8pYsj9oXLC3QQgnff1gXZb0FuFwrltHeWGL
 PxJ+s/RCkWqMxzmkzxQtNQn59y1c31UIkw2ECggffmthBthiJDQqWq4a1wWNcNOHN3ZF
 eISMqaLi9K2RAz+h3CQ7M+DyZSWmUPahmjylv/w2zBgAamDLuPesW8zF/lFQ7OgA8IPu
 vN02DEsSgNjYHoQBcWRQKbwWfewAK9Mf6+91iv9c1nVSi7kErdEKnpQY1tkZ9QHRDR35 9d2Q==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:08 +0100
Message-Id: <1383314275-20960-19-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 18/65] wireless-regdb: enable VHT80 for HR
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
index d020532..9f2fd2a 100644
--- a/db.txt
+++ b/db.txt
@@ -355,9 +355,9 @@ country HK:
 
 country HR: DFS-ETSI
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

