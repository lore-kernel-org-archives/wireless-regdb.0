Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine02.qualcomm.com ([199.106.114.251])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YzKIG-00071G-Vd
 for wireless-regdb@lists.infradead.org; Mon, 01 Jun 2015 07:37:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1433144278; x=1464680278;
 h=from:cc:to:subject:date:message-id;
 bh=Whq6OnhB0nY6gkzpilcH8c8wD40ih8I18pJ1AOhqfyk=;
 b=dNDrK69J2v4+WbC1JFFfVsFicY2iVfEoND+f2sOfubRP5fUX8G0HZcO0
 i5zhniQLqqx7GjqMT7xeWbXTD3NgriUL+dkY/KpaNOwy4zsIvGJvGjZ1/
 S6pEz6R3Hgs2WcgS5hC5+B+zYWDOSxn0FGq6M82LNxXLUCa58qZu+lSfn s=;
From: Vladimir Kondratiev <QCA_vkondrat@QCA.qualcomm.com>
Date: Mon,  1 Jun 2015 10:37:26 +0300
Message-Id: <1433144246-18214-1-git-send-email-qca_vkondrat@qca.qualcomm.com>
Subject: [wireless-regdb] [PATCH] wireless-regdb: Add 60GHz regulatory
 rules for Japan (JP)
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
To: "John W . Linville" <linville@tuxdriver.com>
Cc: Vladimir Kondratiev <QCA_vkondrat@QCA.qualcomm.com>, linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Source is ARIB STD-T74, available at:
http://www.arib.or.jp/english/html/overview/doc/1-STD-T74v1_1.pdf

Signed-off-by: Vladimir Kondratiev <qca_vkondrat@qca.qualcomm.com>
---
 db.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/db.txt b/db.txt
index df7f7b1..7157ae8 100644
--- a/db.txt
+++ b/db.txt
@@ -584,6 +584,9 @@ country JP: DFS-JP
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (23), DFS
+	# 60 gHz band channels 2-4 at 10mW,
+	# ref: http://www.arib.or.jp/english/html/overview/doc/1-STD-T74v1_1.pdf
+	(59000 - 66000 @ 2160), (10 mW)
 
 country KE: DFS-JP
 	(2402 - 2482 @ 40), (20)
-- 
2.1.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

