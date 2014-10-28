Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine02.qualcomm.com ([199.106.114.251])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xj47q-0008Cj-ET
 for wireless-regdb@lists.infradead.org; Tue, 28 Oct 2014 10:35:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1414492544; x=1446028544;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=9hwvledWRmMuXX2S+ozA6UgxdyxHz9JyAxmkMsqpBsE=;
 b=pGca7kBrgIAtzdTT/gaQuubNbjCmsJWqmrUXV69aAXGNy3ejG1lNEoOn
 xxif214pfqZkGBmZpY7OeNNPqqdGyNdg36/j4Il4z1SiYxiEkIYRVhWKv
 957V3tsl1Y9ZluRqf7l+cnx1le8FYWV5+vVXECs3pbusYTxtENnvbjNL5 Y=;
From: Jouni Malinen <jouni@qca.qualcomm.com>
Date: Tue, 28 Oct 2014 12:29:17 +0200
Message-ID: <1414492175-13830-3-git-send-email-jouni@qca.qualcomm.com>
In-Reply-To: <1414492175-13830-1-git-send-email-jouni@qca.qualcomm.com>
References: <1414492175-13830-1-git-send-email-jouni@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH 03/21] wireless-regdb: Add regulatory
 rules for The Bahamas (BS)
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
index 7a0b0dc..11c8716 100644
--- a/db.txt
+++ b/db.txt
@@ -181,6 +181,13 @@ country BR: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+country BS: DFS-FCC
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (24), AUTO-BW
+	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
+	(5490 - 5730 @ 160), (24), DFS
+	(5735 - 5835 @ 80), (30)
+
 # Source:
 # http://www.bicma.gov.bt/paper/publication/nrrpart4.pdf
 country BT: DFS-ETSI
-- 
1.9.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

