Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFG2-0000X5-W6
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:27 +0000
Received: by mail-wi0-f174.google.com with SMTP id cb5so1110783wib.7 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zxRl4eBQoisooJ5brOOPqYczwAqpDeP0k5IWNYNKhYc=;
 b=Agsx5P8cZOSOJfVkBSKjJVGyDI0Q88gOhXNXgHkRsl2V47jdMeB38Byo7ABp+eeHe4
 XuYXUoG+Fsu2iKvq9GYaSrXmbpXmDoWMkfpWhvHOwJC2wm1YVV+qoIskzSq6WzPx2IsX
 HITPy+fN5CbJikLFQiqc7C4MXCkPI40UgGwNhMGrJqbq0lYna2ECMcbnvt3KJZPoQplU
 kL483yuc0rx8yQdcCnz+lyUJsN6GMmNVysCQyyjkIxuTkqhba5n9XmYDY5gz6xTCUgb7
 F+YRVs9mrGUVLXTA/MAYplO1VFluhDTk9BvNiCYuCy6cDf6IBLHBlAtEIqO5JV0pupF8 /sZg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:20 +0100
Message-Id: <1383314275-20960-31-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 30/65] wireless-regdb: enable VHT80 for LV
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
index c84624f..d537298 100644
--- a/db.txt
+++ b/db.txt
@@ -506,9 +506,9 @@ country LU: DFS-ETSI
 
 country LV: DFS-ETSI
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

