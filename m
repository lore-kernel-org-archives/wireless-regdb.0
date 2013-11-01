Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFG2-0000XL-W7
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:27 +0000
Received: by mail-wi0-f174.google.com with SMTP id cb5so1112766wib.1 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:59:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=PSGWCOqvRFkr+XOnPn3qta6K9YQZaffTj/FNPjAM3zY=;
 b=F1+00dIAiGhelXtPN3YACeJdC6RhW0DUkrDP1s9XQoi2JEMlKZdTLgRpJJJLOzOcZn
 x0+nn3sEXp0CDSWUKNfrpQxOhbR/VS7JszIaeOh+n1xUHzgaVwfQZ5+wH5aDk41JRF4R
 tnVNBKawdmr9YUqtUhDHVMIX3gmai2TKirKi5d8EA0RqfhwOvG1ep+HbFso+1RlsRMuV
 NM9BMKGtTeDwBGObhGz450ds6sc7U9XnX9odpja3/hjstJx+lIR1bDvLXr2lwy3bq5uP
 3hVFXPRhLFdOMc98R8yLHrrxGHaeAdP5ZsReLxL5MZoDngpIZ/p7r9yEx9Ka/kKacF+m hSPw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:21 +0100
Message-Id: <1383314275-20960-32-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 31/65] wireless-regdb: enable VHT80 for MK
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
index d537298..478329c 100644
--- a/db.txt
+++ b/db.txt
@@ -530,9 +530,9 @@ country MO:
 
 country MK: DFS-ETSI
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

