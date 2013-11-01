Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x234.google.com ([2a00:1450:400c:c05::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFGt-0000kM-QE
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:00:20 +0000
Received: by mail-wi0-f180.google.com with SMTP id ey11so1110740wid.13 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Au1hGcIunmBmMvERZCnla6ip/rNiLUhYfG1DWbynVos=;
 b=eC+4jPebWDOUF3+gmqZbXlUELnn7i5wKf3Wv2MPBuUHU3xUW7vUtOrCLYjr+abGDqa
 KqR+2CTNUu28xpwdI6pqBe7/Pkwr7bMw5IzD43bnDBLrbBkpvQrjd2yzJMPiep/xYxo2
 vDcuARL3bl8Io7mDdplVlpCkG5o+y4PbBrcb2XiwIrKriLZmBuX9SUXhglqQEazWP5M/
 /yHEQifHXOwuTp/X9G/t2d8LXl9nGrp7fpxvZESmFOkYOiZ0AEmYLIGcheIPDm0Y23Jl
 gAh4lqROjdv4SpB0QKCWwXbPdSbR3ZTQvwmZ0xX6aFxZdTrvxjJJjJDMRwtWhtEa9/wW AL2Q==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:43 +0100
Message-Id: <1383314275-20960-54-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 53/65] wireless-regdb: extend 5 GHz range
	for AE
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
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 91e8871..10a7194 100644
--- a/db.txt
+++ b/db.txt
@@ -22,7 +22,7 @@ country AE: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17)
 	(5250 - 5330 @ 80), (24), DFS
-	(5490 - 5710 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
 country AL: DFS-ETSI
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

