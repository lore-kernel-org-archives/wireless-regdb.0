Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x22c.google.com ([2a00:1450:400c:c05::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFGR-0000dC-Fu
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:52 +0000
Received: by mail-wi0-f172.google.com with SMTP id ez12so1105568wid.17 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Q/PK1ees7fHdS9Y+ZHGbfa67TqoPOO2Ls2TZlewmn3s=;
 b=0lDCiq4LPhqdgaVjxP1ug0CkvKd5YF+WVQhiB+DR+P2sWlwa+NPyk5xEmNP7wLFRpC
 hSM2ZrNWDUOWi8EU0iwsstFBlFAP2GhXtudosC1oiQZ2WpIxgir1nPVzVllNVnzirsn2
 L/ATbwjNkObnRckoSURu3D+iW05qTVzFyfGlGpovLBewDZ5czXxMkKetxaewJJ4+XcYh
 YOE9agH5ndkegLPI6UeI7vgdbimW4ot7i1rpOPRdWtchQN7Z9VusmxikYRzecritkmgT
 1GfDxQf1Qkh+9PwY+d2TtnJWwrjgmXZHmdtLQS1/NBCkCI8+PsGRj8rAeEoEsOzb0+DB 683A==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:31 +0100
Message-Id: <1383314275-20960-42-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 41/65] wireless-regdb: enable VHT80 for DO
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

Also increase the 2.4 GHz max EIRP.

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index db1b850..26c5900 100644
--- a/db.txt
+++ b/db.txt
@@ -238,10 +238,10 @@ country DK: DFS-ETSI
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
 country DO: DFS-FCC
-	(2402 - 2472 @ 40), (27)
-	(5170 - 5250 @ 40), (17)
-	(5250 - 5330 @ 40), (23), DFS
-	(5735 - 5835 @ 40), (30)
+	(2402 - 2472 @ 40), (30)
+	(5170 - 5250 @ 80), (17)
+	(5250 - 5330 @ 80), (23), DFS
+	(5735 - 5835 @ 80), (30)
 
 country DZ: DFS-JP
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

