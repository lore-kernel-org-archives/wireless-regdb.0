Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth01.qualcomm.com ([65.197.215.72])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YEcn2-00014P-NY
 for wireless-regdb@lists.infradead.org; Fri, 23 Jan 2015 11:52:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1422013961; x=1453549961;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=nL5ZeGzlWY9vXLh2nRyZTypOfImkWlsPujcSWhf++js=;
 b=e6p5JLQVV/Apd+HyehRD+ARTS6NVDmVJDmGY6QHe4vu81469bWtzj1GD
 BTqCJ8b/rCWeOkPqy9q1zFgTDd/EBqmwv5DWEudC/Vqkdj4Nq7uGblAbf
 SZC6AB3wVAP8amDuy2IypDr/qpJjjE5hIVgdOtdZWksEj8w8DuTOJUP6t 8=;
From: Jouni Malinen <jouni@qca.qualcomm.com>
Date: Fri, 23 Jan 2015 13:51:58 +0200
Message-ID: <1422013920-9779-1-git-send-email-jouni@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Add regulatory rules for
	Nigeria (NG)
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Source is QCA's regulatory team's efforts.

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/db.txt b/db.txt
index ae8a216..3ea53ec 100644
--- a/db.txt
+++ b/db.txt
@@ -812,6 +812,11 @@ country MY: DFS-FCC
 	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
 	(5735 - 5835 @ 80), (30)
 
+country NG: DFS-ETSI
+	(2402 - 2482 @ 40), (20)
+	(5250 - 5330 @ 80), (30), DFS
+	(5735 - 5835 @ 80), (30)
+
 country NI: DFS-FCC
 	(2402 - 2472 @ 40), (30)
 	(5170 - 5250 @ 80), (24), AUTO-BW
-- 
1.9.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

