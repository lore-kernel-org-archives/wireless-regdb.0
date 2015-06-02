Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth01.qualcomm.com ([65.197.215.72])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YzmoI-0000IT-Cd
 for wireless-regdb@lists.infradead.org; Tue, 02 Jun 2015 14:04:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1433253894; x=1464789894;
 h=from:cc:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZYlMwTr9144gjujgDOekWUw3ivwRayUhlnPkmXMgk+c=;
 b=FwZTnVtjPCp+5QJ+EEdVAw0gNptgrjT8f36NSGLH3QZNEBQO7VB+SY2G
 rpIgBotyM4BodytNHZXwC/OkNPY0wk1QC4eAKy8t5UNDKUK1BlzWXvC3G
 2M8SHFm3fpz8bsDsBKRrfEqywj7J+LYNCXoa1+jQZyLFQlmtLT+c20/P9 I=;
From: Vladimir Kondratiev <QCA_vkondrat@QCA.qualcomm.com>
Date: Tue,  2 Jun 2015 17:04:09 +0300
Message-Id: <1433253849-5494-1-git-send-email-qca_vkondrat@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Add 60GHz regulatory
 rules for Russia (RU)
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
To: "John W . Linville" <linville@tuxdriver.com>
Cc: Vladimir Kondratiev <QCA_vkondrat@QCA.qualcomm.com>, linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Source is document named
Changes to NLA 124_Order №129_22042015.pdf

Signed-off-by: Vladimir Kondratiev <qca_vkondrat@qca.qualcomm.com>
---
 db.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/db.txt b/db.txt
index f361030..79dac92 100644
--- a/db.txt
+++ b/db.txt
@@ -978,6 +978,8 @@ country RU: DFS-ETSI
 	(5250 - 5330 @ 80), (20), DFS
 	(5650 - 5730 @ 80), (30), DFS
 	(5735 - 5835 @ 80), (30)
+	# 60 GHz band channels 1-4, ref: Changes to NLA 124_Order №129_22042015.pdf
+	(57000 - 66000 @ 2160), (40)
 
 country RW: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-- 
2.1.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
