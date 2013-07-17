Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x230.google.com ([2607:f8b0:400e:c03::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHP0-0006NE-Kz
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:23:39 +0000
Received: by mail-pa0-f48.google.com with SMTP id kp12so1416762pab.21 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=eF+B/hVj8vuPoOe5vtC71A9Nw6b1nZghVzeXbyZCrXw=;
 b=xnf5bB79eE+YXHvhGLjqHwbNg9o1qc211t+3dvMnqYSMqiHafjRIqQXKQ7pxrof7AQ
 FIVFEYHdESdZvp+RQ5kNhp5zYnuHyEajX8g7AKd8C5J+y+Pyvrg0uIGVw/vu7TyzM2cN
 2wDobXx6DJIkF0FCJq+PlWN3ZBkWN1hLqSVSRHS9MZZPj4Q6cYq5m4lKNhyBEPkK9P38
 Ynj+L5hQhkb4sKQq/yhZZGqWNfakLy+Dct2Qg3gyQe2Gn8bQrN8qBjfYZUnOahx9IJ6V
 eipxhSGOrA25GM9/msnFj21HrQwBjH6VRAvFvhPsQe7nOoqA5lwefb+xWxhSjptKS2v7 RBZA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:18:42 -0700
Message-Id: <1374027522-18488-54-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 53/53] wireless-regdb: EC,
	Ecauador - enable VHT80
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
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>

This enables 80 MHz bandwidth usage for Ecuador,
updates the max EIRP and adds a new 5 GHz band:

* 5490 - 5710

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 1470772..811eb5c 100644
--- a/db.txt
+++ b/db.txt
@@ -256,9 +256,10 @@ country DZ:
 
 country EC:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5170 - 5250 @ 20), (3, 17)
-	(5250 - 5330 @ 20), (3, 23), DFS
-	(5735 - 5835 @ 20), (3, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country EE: DFS-ETSI
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

