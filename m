Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x22f.google.com ([2a00:1450:400c:c03::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFFL-0000JX-9f
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:58:43 +0000
Received: by mail-we0-f175.google.com with SMTP id t61so4062063wes.34 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1C4HzcgjuGaI12od2fWHgQSdCFd3WNZAjcAUzuAIyL0=;
 b=FBZ65bu3ZkD4RdkBZdW6WZYJMgD/h4thwfQi9c24DvuJMcEz+1oR8ty1nYjBAGy4De
 iJUK8huOcWDYmIEH73GGhZ86bf/p/JfRcyccieDtwe3KLnqKGyMXqbREehewCpKL3815
 rh13hvBOK/flWUnvKjuCOPWUYzqMTU+AT5d+o/UzSf8EEEDJfpwr10aTcQT6OdzbL5kT
 U/O/WF/ZIyDF8GwQWLcqSCDySx+eWYTgOZmnW76KgRxAGfg+Gmi1POpOv2zNC8MnAPF4
 PS+zD8TE8AUzhypRfiuNIJSqOD7qrDvT5pMCJwd1QW9mKlqpeOPJoIW4lpo1aZT2bV2e 8yYg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:00 +0100
Message-Id: <1383314275-20960-11-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 10/65] wireless-regdb: enable VHT80 for BY
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
index 572d34f..5bdb532 100644
--- a/db.txt
+++ b/db.txt
@@ -135,9 +135,9 @@ country BR: DFS-FCC
 
 country BY: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (20)
-	(5250 - 5330 @ 40), (20), DFS
-	(5490 - 5710 @ 40), (27), DFS
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
 
 country BZ: DFS-JP
 	(2402 - 2482 @ 40), (30)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

