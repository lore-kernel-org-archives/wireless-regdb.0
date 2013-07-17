Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x231.google.com ([2607:f8b0:400e:c03::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHKv-0005rO-CV
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:19:26 +0000
Received: by mail-pa0-f49.google.com with SMTP id ld11so1409078pab.8 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=rtU5ImVKdxhZLKfhkLkwXx8dDMlRmz4F2kL1HH3tlXA=;
 b=WkqpjETukhXC0uTkw6vKYC+Y7ZZP25A4y0XSUv68S4HKmA3h/X+imywuuPoCofizZQ
 DGVxgi05j2oIwBOOASvpt8BouaUTJikUYwm1wWzsaQAXQ2n9OOwp9mLpUO45HAMEuIeh
 SbMudAzgn55RiHA2N2ki1+1M7V5L5hXai93kq8aLdGLn9D7jmvFRECKGJciMEpH1KA9I
 dilU+JHVDP8YnSlc6K/U4bAlB29qzDFWkwJojjrcCFulYc1HZdziG57X3m/SDPjvXZxm
 xyBPBpVLs703OrBroE0hRgDXhkgx1B+jBj3RN7outo9Kfqu97RA8F/R6bgetvEiXyG+m FXEg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:17:53 -0700
Message-Id: <1374027522-18488-5-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 04/53] wireless-regdb: HK,
	Hong Kong - enable VHT80
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

This enables 80 MHz bandwidth usage on all 5 GHz
frequencies and increases the max EIRP on two
5 GHz bands.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 37a13c6..bb846af 100644
--- a/db.txt
+++ b/db.txt
@@ -349,10 +349,10 @@ country HN:
 
 country HK:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5170 - 5250 @ 40), (3, 17)
-	(5250 - 5330 @ 40), (3, 20), DFS
-	(5490 - 5710 @ 40), (3, 20), DFS
-	(5735 - 5835 @ 40), (3, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country HR: DFS-ETSI
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

