Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x230.google.com ([2a00:1450:400c:c03::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFH4-0000mU-BB
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:00:30 +0000
Received: by mail-we0-f176.google.com with SMTP id w62so3961662wes.21 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lxRx2w2ksg0p1PqByLyaZOKcwqptldKbf7JyCG8SQ2s=;
 b=kUj+D9xyUJTdlBQx2xHt/Qh+PVGD4nT4Kk23c0AOslMhazjbnKB4j9dmmFFEhMVP2y
 6Rm19zXDRZM/nT9c8toyochoXi8IGwZnqBUaUJ9dCYHmRg3L/2CquE02T5bF5N1cLQSE
 HDCzwLtpNYBu5boAHK3yOxxqcz/IA/RpqW1Jn1PMfjn6Uo5BkzHHRLwDlOhSJzlLxLCK
 onPgIQfGnbzbJCJdw4q+SpIpOPKggMGlGNl1VjAnm1b+8y6E3F+q5hPHSkj8p2InIW0k
 Z1XbP+o7EUJCPIm+z9SzAOkYsBvrxazBPt1a8m67V3AAvV73n1YweA6bjNJkyKCaCVEF EnuQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:47 +0100
Message-Id: <1383314275-20960-58-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 57/65] wireless-regdb: extend 5 GHz range
	for EC
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

This extends the 5 GHz DFS frequency range.

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 3eb782c..1131900 100644
--- a/db.txt
+++ b/db.txt
@@ -259,7 +259,7 @@ country EC: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17)
 	(5250 - 5330 @ 80), (24), DFS
-	(5490 - 5710 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
 country EE: DFS-ETSI
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

