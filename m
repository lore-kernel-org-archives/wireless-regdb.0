Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x22b.google.com ([2a00:1450:400c:c03::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFGz-0000lE-Qq
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:00:26 +0000
Received: by mail-we0-f171.google.com with SMTP id t60so3973171wes.16 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=e0W7ls4jWgU99LV//02NdusLKfsw1UtHwBP98SwNCQQ=;
 b=IJXs2r5dtaNVBhuIWRIQ2dy/v07ROSHz6YZnumMlpXAvRfcsiZ8bkwjJsIEtQBhXio
 ZjDCW6ZLwa5IFX+72e+0GwjGFnz3PM1OT8oKfARm/zdATTtI6FOFl2ex1WWasZCjJ0Mm
 rMdrYWCfgV4UraF4nIl93FzikVHsmYhE7Fek65pvFmbjtecPSH1q7L9tEn78g4CRbtt+
 OmtI0URzYG6MRWOQnE+6pd2FESh1hytouTksIfeWp8UMrzg8KnEqhzDB9ifIyvhCsP1y
 OX4fY/s7xo9YNd1KxHjQIqDq+dV+opWKmuO7+t9dNsfJ6vzlZC5cxfoFYK9MuITTrfsv 0HBQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:45 +0100
Message-Id: <1383314275-20960-56-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 55/65] wireless-regdb: extend 5 GHz range
	for BR
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
index 70b0b9d..6d20e1f 100644
--- a/db.txt
+++ b/db.txt
@@ -134,7 +134,7 @@ country BR: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17)
 	(5250 - 5330 @ 80), (24), DFS
-	(5490 - 5710 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
 country BY: DFS-ETSI
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

