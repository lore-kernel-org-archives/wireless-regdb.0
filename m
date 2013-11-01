Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x22f.google.com ([2a00:1450:400c:c03::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFGT-0000dU-CF
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:54 +0000
Received: by mail-we0-f175.google.com with SMTP id t61so3932726wes.6 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:59:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=T1ukbSKEywwZsuZl4U/9SFf5tYROQqTDpj3hfv2hSnI=;
 b=eKklfZ852gtvbtTUxFfkoqIRglvmJ7efP5bYRjq+l9P7AjS/27vGbC7e9y6L2egHUX
 g+wfDkTL8lIa5XZXIqcIHiojt7aXQA544oJofvh3piMKBtrOCBbCak9FhNmcJv7nSNhh
 tvKuI5FYj1XvDVqqf7Y4BmPA0j/3wCzry0HfdnXj+3p1ttpD2OZbfPeDs6oPffFnacwu
 3xy+KpvipLH9hKrhqPnZ+Psvp4nEWSRxJvwmRz28UCpe/dCx3wSQAT4QEGADQupEJSFT
 YgqqIWiDHHBf1iGAM4KOnS5vxqaGhLiG7+f+z4G0gk+dInOpAz+SfeDSzrOGcnOc667J gsBw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:32 +0100
Message-Id: <1383314275-20960-43-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 42/65] wireless-regdb: enable VHT80 for GT
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
index 26c5900..0c9dc2c 100644
--- a/db.txt
+++ b/db.txt
@@ -327,10 +327,10 @@ country GL: DFS-ETSI
 	(5490 - 5710 @ 80), (27), DFS
 
 country GT: DFS-FCC
-	(2402 - 2472 @ 40), (27)
-	(5170 - 5250 @ 40), (17)
-	(5250 - 5330 @ 40), (23), DFS
-	(5735 - 5835 @ 40), (30)
+	(2402 - 2472 @ 40), (30)
+	(5170 - 5250 @ 80), (17)
+	(5250 - 5330 @ 80), (23), DFS
+	(5735 - 5835 @ 80), (30)
 
 country GU: DFS-FCC
 	(2402 - 2472 @ 40), (27)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

