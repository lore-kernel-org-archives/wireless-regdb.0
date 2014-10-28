Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth02.qualcomm.com ([65.197.215.38])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xj4HT-0003jL-1m
 for wireless-regdb@lists.infradead.org; Tue, 28 Oct 2014 10:45:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1414493139; x=1446029139;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=lqvIQlqUEqSKnhr7hxmNIXfcLdQQetaNbo5bW6uKYgc=;
 b=YiXEKy3FFfPcflgkyf8XogeCQGjSjXXFmV5I4b+UQ8eYbPRvTIKZ3o9U
 40VWZvHI6psyJ5Dc3YdMRAWBSpnB35ZplrdCzqn3Glv02HIUOHPtg49a2
 fiWYyi0poIxmSyU1nfM3Uu8u5gNuXKAS9pbYiO/xmMPPJnw5+eGdx4GDZ U=;
From: Jouni Malinen <jouni@qca.qualcomm.com>
Date: Tue, 28 Oct 2014 12:43:00 +0200
Message-ID: <1414492987-16118-7-git-send-email-jouni@qca.qualcomm.com>
In-Reply-To: <1414492987-16118-1-git-send-email-jouni@qca.qualcomm.com>
References: <1414492175-13830-1-git-send-email-jouni@qca.qualcomm.com>
 <1414492987-16118-1-git-send-email-jouni@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH 14/21] wireless-regdb: Add regulatory
 rules for Nicaragua (NI)
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
index 7319579..1c9e307 100644
--- a/db.txt
+++ b/db.txt
@@ -812,6 +812,13 @@ country MX: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+country NI: DFS-FCC
+	(2402 - 2472 @ 40), (30)
+	(5170 - 5250 @ 80), (24), AUTO-BW
+	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
+	(5490 - 5730 @ 160), (24), DFS
+	(5735 - 5835 @ 80), (30)
+
 country NL: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20), NO-OUTDOOR, AUTO-BW
-- 
1.9.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

