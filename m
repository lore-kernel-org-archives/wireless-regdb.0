Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x236.google.com ([2a00:1450:400c:c00::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFKt-0001BG-Si
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:04:28 +0000
Received: by mail-wg0-f54.google.com with SMTP id c11so4144225wgh.9 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=PfhJE6t6E/bJxmp++wi0D+uMxUDyAIsIeZXx66Q9rzY=;
 b=x0hImgcipPc1608d9dsKVCy+AT5esYzgWXv4KTBbYQYKq1UOuJW0OPx9ut2LrMzS6/
 GotR3BmhmaGajtgleHHSpf71nIYuRbJLjX9I7VQF0PfSJCbgPt1LgzVSenG+FE68aB7d
 bgJlGavBrpF43cWLCbEcNXwPzTYLrbciogYkHGu2FM/59l6knSVB7BjGWtbKHDDyQdM7
 httZcm71r76HJrCsjlQIm7gD+95+bbniS9YJOqJ9tR425sLBKaqEGbqYAAg/Ye8WVG7D
 1EIn4BavxBS9+PdbhK/Ia3eAr1sLCuvqmW7qIj6KK8qLf5W6yWmlCmiDsmjlDSUC7vey 8AMw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 15:03:10 +0100
Message-Id: <1383314598-21240-16-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 15/23] wireless-regdb: update BG's
	regulatory rules
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

This reduces the 5 GHz max EIRP to 20, enables VHT80
and removes the last 5 GHz DFS frequency range.

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index de2e94e..f26fd1d 100644
--- a/db.txt
+++ b/db.txt
@@ -103,8 +103,8 @@ country BE: DFS-ETSI
 
 country BG: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (23)
-	(5250 - 5290 @ 40), (23), DFS
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
 	(5490 - 5710 @ 40), (30), DFS
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

