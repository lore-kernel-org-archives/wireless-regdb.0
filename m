Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x22a.google.com ([2a00:1450:400c:c03::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFFR-0000LP-Uy
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:58:50 +0000
Received: by mail-we0-f170.google.com with SMTP id u57so4035106wes.15 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=eSbE/3O+cHzJ3asPgEaK+3BTHVl0Iz9wPtypF3JhZcg=;
 b=ZHxLWFNyzzTvun3Znjkx099Oh+Jiu6w5fbgjbKfiwSe+fgzAmEx9hntbjYG9uTjEki
 NSIT3s2Ol2fDEZJ+Q2VytJg9MCjoHXdMmJ8oz8J/kKleqihYJQoyO5glK8KIT821mvOk
 HlTOCNHQC/BWLVkpIFMYkVq4nikCRqESkpKTg72lft/0oCOWQaTFH7oXNooLyMzTs/ip
 K6lp8ggS8aHE4CfFRguI0j9xp2gmFeqV3Ume3VEO6MdrZMFQ+vKB97P/3hQRhS4KS75W
 CA0XX6NAacht6A5BxKBPia/R8ddG9jVBG98EmppyHEedaHC5gTWdOgpBQ3kWy2PHFhVE 8qHA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:03 +0100
Message-Id: <1383314275-20960-14-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 13/65] wireless-regdb: enable VHT80 for CY
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
index 552c95a..b77fc0b 100644
--- a/db.txt
+++ b/db.txt
@@ -189,9 +189,9 @@ country CR: DFS-FCC
 
 country CY: DFS-ETSI
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

