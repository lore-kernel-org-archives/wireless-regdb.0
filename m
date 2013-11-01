Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x22a.google.com ([2a00:1450:400c:c00::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFGK-0000b8-U2
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:45 +0000
Received: by mail-wg0-f42.google.com with SMTP id n12so1063256wgh.3 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=36fizoI45xyFTBNJXb2TBrSeibmEJSQDrWecvFrG5Vo=;
 b=FDPkv8Te2j7nNeEGsfkOBbA6k6jBlgncyZJVc5R2CGo11O/P8DBqUzLLN0axk4AobF
 WmFElr4zUIC29aJQ5Gj7NMN2XrkVcrul4bo0yZy6TYGb92oA754NsqioPVxMYnDniKHM
 xC11tvlaxo/IkM14eNOL2DmCFZ3ipgmO9g8JpofjaONSQ0cSljvqgGbzV5Ftp6SFBbFB
 Q08+DfGDD/QNcgW1b+7OrFt77OQR108cCbHuWDLnkSZz+4jWh7t3OWGbFvFHWsg+oTfx
 1dNFDeeif4ew+F8e1Bq96igYzv7G6+oWf0OZg9DK+ixhUxW8WDASr7qkMT9s0gWiQ+P3 ChMg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:28 +0100
Message-Id: <1383314275-20960-39-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 38/65] wireless-regdb: enable VHT80 for SV
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
index b64d7a7..c35d06d 100644
--- a/db.txt
+++ b/db.txt
@@ -715,9 +715,9 @@ country SK: DFS-ETSI
 
 country SV: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 20), (17)
-	(5250 - 5330 @ 20), (23), DFS
-	(5735 - 5835 @ 20), (30)
+	(5170 - 5250 @ 80), (17)
+	(5250 - 5330 @ 80), (23), DFS
+	(5735 - 5835 @ 80), (30)
 
 country SY:
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

