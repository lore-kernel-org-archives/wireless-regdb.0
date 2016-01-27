Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wm0-x244.google.com ([2a00:1450:400c:c09::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aOMr1-0003fC-H8
 for wireless-regdb@lists.infradead.org; Wed, 27 Jan 2016 09:57:36 +0000
Received: by mail-wm0-x244.google.com with SMTP id r129so2308792wmr.0 for
 <wireless-regdb@lists.infradead.org>; Wed, 27 Jan 2016 01:57:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=from:to:cc:subject:date:message-id:mime-version:content-type
 :content-transfer-encoding;
 bh=vSj71Nq3FLge9pckDoE44jSLjCCTSVorQGZ2yXG0Edo=;
 b=j4HBVTm6A1a87S4e5Stqs8mvol+MfrXjsBjT0VX7TDMk9mbdI64jih/DiABfJV5ulB
 8nAhgkdOwke3oWvxWTf0VX5famWuepD7cEMiZ3MagoLB0ABTts/B0v1jHWs31a4WqQzF
 Lxkr07d6Bs6zM9RyoE80EbI7ztikCIrERJlNlZrNySmYr5004OHyQL0KNxIkyUfrfkI1
 J3CVkoPj5eP9SL55XECEaqogWO51CSSZup1tRI/yzRZjMk3mnlNZtM01ucXeAhCnbvJq
 dAErOFqWYXcKseuBS+v7V6y2ozWeSsMp27evm8lfUXN00QpaxB8PF0JoUdz7QN/Q6h6A yHyQ==
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
Date: Wed, 27 Jan 2016 10:56:33 +0100
Message-Id: <1453888593-7705-1-git-send-email-xose.vazquez@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH v2] wireless-regdb: add 2.4GHz regulatory
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
 db.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/db.txt b/db.txt
index 13cc7ad..e9ba21a 100644
--- a/db.txt
+++ b/db.txt
@@ -275,6 +275,12 @@ country CR: DFS-FCC
 	(5490 - 5730 @ 20), (24), DFS
 	(5735 - 5835 @ 20), (30)
 
+# http://www.mincom.gob.cu/?q=marcoregulatorio
+# - Redes Informáticas
+# Resolución 127, 2011 - Reglamento Banda 2,4 GHz.
+country CU: DFS-FCC
+	(2400 - 2483.5 @ 40), (200 mW)
+
 country CX: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (24), AUTO-BW
-- 
2.5.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
