Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x234.google.com ([2a00:1450:400c:c03::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFKO-00015z-4q
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:03:56 +0000
Received: by mail-we0-f180.google.com with SMTP id q59so3985840wes.39 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Kvk+jK59VhcmKhKdecqIiZ6FTVX0d4I+ftqS0LgcWB0=;
 b=GMrgJPgDGKvRYp8GI5NaMae6I/cyXqIci2TaxuJ1PT5xmzwy6FhY3DDgfhB3m/KGMj
 ZwqGC5w+IAOXz7uav1X0kZtPNwW3598wh0hP2r0a0WGpXfQJn5+5Yxp1MGMrIiz2fofm
 9tF//1jB91GF3YOgTVTfOnoGgglkZbwODu0IlDYXtzwZIWsI7zO+F9X475oj1A9kjUkV
 iEMFuE+SchJSaihTls1r51C3mbucV1WvvQ1nBkEObbPQwUyLf5wIgJ/6ikNASs1889BW
 b+7zkcIzHwWcFWebwtN3bUXwNYUHjWgdXOdl66j91qjoA0TY9toMr/AAeZhXlt/8G6oF mRfg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 15:02:56 +0100
Message-Id: <1383314598-21240-2-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 01/23] wireless-regdb: update BN's 5 GHz
	rules
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

Enables VHT80 but reduces the max EIRP on the last
5 GHz band from 30 dBm to 20 dBm.

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 591bdab..3c03886 100644
--- a/db.txt
+++ b/db.txt
@@ -122,9 +122,9 @@ country BL:
 
 country BN: DFS-JP
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (20)
-	(5250 - 5330 @ 40), (20), DFS
-	(5735 - 5835 @ 40), (30)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5735 - 5835 @ 80), (20)
 
 country BO: DFS-JP
 	(2402 - 2482 @ 40), (30)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

