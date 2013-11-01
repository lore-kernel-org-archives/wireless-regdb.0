Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x235.google.com ([2a00:1450:400c:c03::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFGU-0000eB-0k
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:54 +0000
Received: by mail-we0-f181.google.com with SMTP id t60so4070269wes.12 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=l+HBMcVnK7XP8FUYjvCAASSFQpZ+ouhABhnD3AmB+hI=;
 b=mGcJ0a/UNl+EimsxhuffM6axL6kgV8OzCdo5Fez7BPbiAevmQWJCmzs35kFYGLhBMI
 ryKa7M7IlfS0vhS7HzFg9yz7ckRyAqTwyt6Tb+qjpERlDzgKcbyQgaBAAKqAL8a1azSz
 QDiEWMAGnq6rKMJy0lU2JBQ6dcN/tYKXBN5PadB7lraUrqGzeP8X+a8ZS72SIu2uk9MG
 tLljqGb88ht/kfRAlSLN6aAiTwTvyPn5TWw2RdKkx3IklDV0xyN6obNkWdfbuWZE6/G0
 Cs+s2M0gEKXTsGYeNQk68A4LKrIVvwn96qHp3CpR7B4QUt9UVr8/sKwjtHDieYWllP5V IPmA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:33 +0100
Message-Id: <1383314275-20960-44-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 43/65] wireless-regdb: enable VHT80 for UZ
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

This:

  o Increases max EIRP from 27 dBm to 30 dBm on the 2.4 GHz
    band

  o Enables VHT80 for all 5 GHz frequency ranges

  o Increase max EIRP from 20 dBm to 24 dBm on the 5 GHz
    DFS frequency ranges

  o Extends the second 5 GHz DFS frequency range by 20 MHz

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 0c9dc2c..b423b77 100644
--- a/db.txt
+++ b/db.txt
@@ -788,11 +788,11 @@ country UY: DFS-FCC
 	(5735 - 5835 @ 40), (30)
 
 country UZ: DFS-FCC
-	(2402 - 2472 @ 40), (27)
-	(5170 - 5250 @ 40), (17)
-	(5250 - 5330 @ 40), (20), DFS
-	(5490 - 5710 @ 40), (20), DFS
-	(5735 - 5835 @ 40), (30)
+	(2402 - 2472 @ 40), (30)
+	(5170 - 5250 @ 80), (17)
+	(5250 - 5330 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
+	(5735 - 5835 @ 80), (30)
 
 country VE: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

