Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x235.google.com ([2a00:1450:400c:c00::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFGA-0000Yd-BN
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:34 +0000
Received: by mail-wg0-f53.google.com with SMTP id y10so4083024wgg.20 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4GPWkawrkubvZjywoeJF9QGpaQSiCtM2ifXdLKhzGcQ=;
 b=TTn+LSHFisMjv+tyn1GXQ9tXST66kRXrJv+WcbSNOYcsN3xcms0zX0y3/7GxneQXPr
 LvaFObKhOU9PsA6pKJ19vsaGea6/C63sbEjkE5GoKreeJUKEsfFiWYuhDpMyFk35mMe0
 YlDHNp530pWhvE0IXAAyHSniMS/yoJfwkEx9D69vDP3qL0FON7I1MwKOzaTzwl0fjrpu
 1Qe/xVCcsvOIvxvBcXShHZubzgQYPliGb6bsNcm/iDZ/fx7XTFc6ok5ZwrOjEkmnaPWT
 CTn7g5oY40tt1xrdX9Q8pW/vgzmQEhjhGlDFW0iFZqTAJQZou03T5D9ZW2fNZy2G6DVL qkiQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:23 +0100
Message-Id: <1383314275-20960-34-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 33/65] wireless-regdb: enable VHT80 for KH
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
index 27975b2..186bcb0 100644
--- a/db.txt
+++ b/db.txt
@@ -445,9 +445,9 @@ country KE: DFS-JP
 
 country KH: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (20)
-	(5250 - 5330 @ 40), (20), DFS
-	(5490 - 5710 @ 40), (27), DFS
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
 
 country KP: DFS-JP
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

