Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x22a.google.com ([2a00:1450:400c:c05::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZP9dY-0001lJ-P7
 for wireless-regdb@lists.infradead.org; Tue, 11 Aug 2015 13:30:41 +0000
Received: by wicja10 with SMTP id ja10so75348999wic.1 for
 <wireless-regdb@lists.infradead.org>; Tue, 11 Aug 2015 06:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=from:to:cc:subject:date:message-id:mime-version:content-type
 :content-transfer-encoding;
 bh=ZVKd2ZTyK7yEBv+iyF9SahgiWvFCHfnSr2nSvBvaxpU=;
 b=k3QbeJVJZImw6KxW1ZCF3dD5hGiY8eLpHz4WfHRMhl4KDJpFbTLcz93Oy/FHDqMYRC
 TpTQu23Dfuxn88eHzLBRquip2TjziZ+2hiyg9AEoeZZaPu+Gux60wfsjTRV3fyDazaPH
 dX9XLLFHK/8BiA5YCSZ3LAp8h/V9Bp1v2n/gAdhHdFoKAZXFDa5xqOmAFgpxkbqfDvCu
 CxDCYG/7YqjghW012nqpAiT+5T6ouTJ6FRYuVr7w3THl+vFr+fzzZi9WWR4EPmNQ8ZsW
 ETR7a2PJYdgDOYOdPBb0VHrmd7tGPq8/TL/fZPGGGDIcF2vnuPk1RlBJ/noUQI7XCrH+ 3Lug==
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
Date: Tue, 11 Aug 2015 15:29:55 +0200
Message-Id: <1439299795-17359-1-git-send-email-xose.vazquez@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: add 2.4GHz regulatory
	rules for Cuba (CU)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
Cc: linux-wireless@vger.kernel.org, Seth Forshee <seth.forshee@canonical.com>, Xose Vazquez Perez <xose.vazquez@gmail.com>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Resolución 127, 2011 - Reglamento Banda 2,4 GHz.:
http://www.mincom.gob.cu/sites/default/files/marcoregulatorio/R%20127-11%20Reglamento%20banda%202,4%20GHz.pdf

Cc: Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
Signed-off-by: Xose Vazquez Perez <xose.vazquez@gmail.com>
---
 db.txt | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/db.txt b/db.txt
index 982db34..2edbf90 100644
--- a/db.txt
+++ b/db.txt
@@ -275,6 +275,13 @@ country CR: DFS-FCC
 	(5490 - 5730 @ 20), (24), DFS
 	(5735 - 5835 @ 20), (30)
 
+# http://www.mincom.gob.cu/?q=marcoregulatorio
+# - Redes Informáticas
+# Resolución 127, 2011 - Reglamento Banda 2,4 GHz.
+country CU: DFS-FCC
+	(2400 - 2456 @ 40), (200 mW)
+	(2456 - 2483.5 @ 40), (200 mW)
+
 country CX: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (24), AUTO-BW
-- 
2.4.3

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
