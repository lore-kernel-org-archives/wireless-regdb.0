Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine02.qualcomm.com ([199.106.114.251])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xj4GE-0002Tp-Jj
 for wireless-regdb@lists.infradead.org; Tue, 28 Oct 2014 10:44:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1414493064; x=1446029064;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=YDbRTwwaib5btJTiQ4fQ2HE3ihZJ/wpMCae7mcWZnEA=;
 b=CCsiG0s2dCsL3Nd7N1CBcPMtzZOl2BJzV8HFVudOTeuRWURrYEF3D0OW
 j/5iOkW6vZz3nU/fc4JX/ngjuk8JQj2TbAvswnYoyRIajFaI7/vEsBIPq
 BqOY1JsFffVsZOSaulrJCGKJFItHgkHeV4ooRi/cYOrnK/57b1+8IyNle 0=;
From: Jouni Malinen <jouni@qca.qualcomm.com>
Date: Tue, 28 Oct 2014 12:42:54 +0200
Message-ID: <1414492987-16118-1-git-send-email-jouni@qca.qualcomm.com>
In-Reply-To: <1414492175-13830-1-git-send-email-jouni@qca.qualcomm.com>
References: <1414492175-13830-1-git-send-email-jouni@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH 08/21] wireless-regdb: Add regulatory
 rules	for Cayman Islands (KY)
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
index 4ecfcf3..6d8abd1 100644
--- a/db.txt
+++ b/db.txt
@@ -625,6 +625,13 @@ country KW: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 
+country KY: DFS-FCC
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (24), AUTO-BW
+	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
+	(5490 - 5730 @ 160), (24), DFS
+	(5735 - 5835 @ 80), (30)
+
 country KZ:
 	(2402 - 2482 @ 40), (20)
 
-- 
1.9.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

