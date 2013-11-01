Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x22e.google.com ([2a00:1450:400c:c03::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFFP-0000Kt-Sv
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:58:48 +0000
Received: by mail-we0-f174.google.com with SMTP id u56so3984061wes.19 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=o/0ARWxlZDMJD5ILnbQDhLXran2uV5TUri42Cfpbnsw=;
 b=ME9EYy9xJDsM68G79bm4kR2NW/5x3W4KDsLDFK0Ss888HFbftr73eJFmRQo1fNmDrH
 32/vEtALabD2l6XOJCt5HM6FuS23PvDW4zlHerYjviSVekLRq2SiW0IdByGhrrh22GRf
 JC4McQSFhfvETNex5+IPf5mRKrizYfMEt+BPioYoU5A7sQxlw101Aw0XWnJvyb4r/gLP
 EjwFd+j1lw2scTbVZxhocegEIF2Em+ZEaWVVmpkmXRT3JFiWR1GWPdqGBTRneuv97/zl
 PvIdmd0ZGlxZlC3uvbB0dVfn5GP+ZqlivAE5Mf3TgDNL6FlVGt0V5gfdkYCFjPDeDztW Q8QQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:02 +0100
Message-Id: <1383314275-20960-13-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 12/65] wireless-regdb: enable VHT80 for CL
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
index 51841a2..552c95a 100644
--- a/db.txt
+++ b/db.txt
@@ -160,9 +160,9 @@ country CH: DFS-ETSI
 
 country CL: DFS-JP
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (20)
-	(5250 - 5330 @ 40), (20), DFS
-	(5735 - 5835 @ 40), (20)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5735 - 5835 @ 80), (20)
 
 country CN: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

