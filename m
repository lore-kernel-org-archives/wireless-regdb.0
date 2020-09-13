Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To:From:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
 bh=KKDBlKrBiszjKkZZl7rxqiJnQbDw1+yKgNKdoC3yHPA=;
 b=Xfu3vlVz1E8GdEgariuoNydLq9
 3K9C6J8FlexUytWA7/2nXWKEYVG3CuG1Zcius2N5InWThSH2xCb+IGj9E1xnogyI5pjX9YgGMYRKF
 j64MgOOuIQd/k4gth4gdGYvnwn4Qb0cDCtR5IQ43YAQkQ/+g6yb+sCWXFP2ZBAweOOz3uzg5Vpo0p
 u5/KqBy46rtEJRb5Wc1L1+mpBVwJ1Fl7ZFJFlKJte1Kk1bC1uq1XVepBDAt6OJOEMSFMmu0j9Az6c
 sMN0mXkCcdyrYvfXoE5lhv7pC5RSS8WZuF+6SBeZ8ww0D+nOynSNhg6Z9nWYlEerNZ+v60FG6yAHI
 ek7VT1mw==;
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHVhG-0004X0-IO
 for wireless-regdb@lists.infradead.org; Sun, 13 Sep 2020 17:21:52 +0000
Received: by mail-ej1-x62c.google.com with SMTP id r7so19924661ejs.11 for
 <wireless-regdb@lists.infradead.org>; Sun, 13 Sep 2020 10:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sartura-hr.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pTI9rYYZOz9x7GGfK504gbdxl6ZS8e9EmqJVB1GyVzM=;
 b=ZLmsqdLZ8/vwSVlDu7ApqDOZQdruO932aMzys003ysncsdQ5KHAHXBBW/PF/t9I5rg
 3cBEuuv2RcbQE7bRIvI6P3r3AMhAKBF8nkOQRySrZyyAusGf0/jk6wEoVl7zya9YlL5+
 cUNj3Ge2+0TWDqkv9YQnDTghqEugnl7cPvZrGqRXcv3H9xyeXOYLr8bzE7yP0DmFKkVm
 NwuRPU57GaS9YUs5uSwi0trB55KfhD7TpgHKLwK0xWJqdwfdPimp46VoJUw/5dLbyRJq
 k/0Z8ONs5G8pciI4sB5WHngrEu62JfMN53Lj+/RULpRECoWPSXqGomk2gYIJwR638VRI
 OtOQ==
From: Robert Marko <robert.marko@sartura.hr>
Date: Sun, 13 Sep 2020 19:21:40 +0200
Message-Id: <20200913172140.66439-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
 for Croatia (HR)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: seth.forshee@canonical.com, wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
Cc: Robert Marko <robert.marko@sartura.hr>, Luka Perkov <luka.perkov@sartura.hr>
List-ID: <wireless-regdb@lists.infradead.org>

Croatian Regulatory Authority for Network Industries (HAKOM) has
updated the general licenses OD-85 and OD-86 with the new OD-85a
and OD-86a versions.

These introuduce the following changes:
* Outdoor usage for 5150-5250 and 5250-5350 MHz ranges is permitted
* 5150-5250 MHz range TPC requirment was dropped and power output raised to 200mW

OD-85a: https://www.hakom.hr/UserDocsImages/op%C4%87e%20dozvole%20prosinac%202009.g/Opca_dozvola_85a.pdf
OD-86a: https://www.hakom.hr/UserDocsImages/op%C4%87e%20dozvole%20prosinac%202009.g/Opca_dozvola_86a.pdf

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Cc: Luka Perkov <luka.perkov@sartura.hr>
---
 db.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index ac32483..52d0fab 100644
--- a/db.txt
+++ b/db.txt
@@ -693,8 +693,8 @@ country HR: DFS-ETSI
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # HR: http://tablice.hakom.hr:8080/vis?lang=en
 	(2400 - 2483.5 @ 40), (100 mW)
-	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
-	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
+	(5150 - 5250 @ 80), (200 mW), AUTO-BW, wmmrule=ETSI
+	(5250 - 5350 @ 80), (200 mW), DFS, AUTO-BW, wmmrule=ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
-- 
2.26.2


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

