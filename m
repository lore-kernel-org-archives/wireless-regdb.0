Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth02.qualcomm.com ([65.197.215.38])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xj42y-0005Li-2S
 for wireless-regdb@lists.infradead.org; Tue, 28 Oct 2014 10:30:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1414492240; x=1446028240;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=iUFfbhvmXC5x2/6yvIAWflhJ8MFOWzefb0o5Vsxa0zI=;
 b=bXL1SylKilny5BxUsVCkgrcMR2Q7hcOYKH09eLmRnUu3k4sIf0/+0Ij8
 sSYZiTgxt/QJ/X63po0aQ09qjemsm/cXKlN6k9eor7EHhKJ4xydt9iloj
 3cX9RJn5QxPocjr7FJDAjOeSDyxMMjpePn5eVAZshs9YADt5zeH+EM6TZ Q=;
From: Jouni Malinen <jouni@qca.qualcomm.com>
Date: Tue, 28 Oct 2014 12:29:15 +0200
Message-ID: <1414492175-13830-1-git-send-email-jouni@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH 01/21] wireless-regdb: Add regulatory
 rules for American Samoa (AS)
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
To: "John W. Linville" <linville@tuxdriver.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Source is QCA's regulatory team's efforts.

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/db.txt b/db.txt
index 43afa5c..be24c73 100644
--- a/db.txt
+++ b/db.txt
@@ -70,6 +70,13 @@ country AR: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+country AS: DFS-FCC
+	(2402 - 2472 @ 40), (30)
+	(5170 - 5250 @ 80), (24), AUTO-BW
+	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
+	(5490 - 5730 @ 160), (24), DFS
+	(5735 - 5835 @ 80), (30)
+
 country AT: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20), AUTO-BW
-- 
1.9.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

