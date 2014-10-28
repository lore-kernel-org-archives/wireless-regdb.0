Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth01.qualcomm.com ([65.197.215.72])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xj4IO-00045j-0s
 for wireless-regdb@lists.infradead.org; Tue, 28 Oct 2014 10:46:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1414493195; x=1446029195;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=Tc68ab5vUfYaYj61i7T01FhyPI3FVuieQ4uS1dj2ZMM=;
 b=Ci/DhBqjeBi/NMm54d5Zn8KZPW2pSQqW2iQDsbWUJbxyz/Kc7bBlLZHs
 Y2vwr1NTWJ50nsPLVGtZwDdPYvIYPJxJ5pcNqqa53NU74DrtIUv692MeF
 oyTsell5QQTKWKcSZg7mNAciIUZfIktesuLxw5+5VQphGuunBKwev34rd 4=;
From: Jouni Malinen <jouni@qca.qualcomm.com>
Date: Tue, 28 Oct 2014 12:43:07 +0200
Message-ID: <1414492987-16118-14-git-send-email-jouni@qca.qualcomm.com>
In-Reply-To: <1414492987-16118-1-git-send-email-jouni@qca.qualcomm.com>
References: <1414492175-13830-1-git-send-email-jouni@qca.qualcomm.com>
 <1414492987-16118-1-git-send-email-jouni@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH 21/21] wireless-regdb: Add regulatory
 rules for Mayotte (YT)
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
 db.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/db.txt b/db.txt
index 292dbac..2a54da8 100644
--- a/db.txt
+++ b/db.txt
@@ -1195,6 +1195,12 @@ country WF: DFS-ETSI
 country YE:
 	(2402 - 2482 @ 40), (20)
 
+country YT: DFS-ETSI
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (20), AUTO-BW
+	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
+	(5490 - 5710 @ 160), (27), DFS
+
 country ZA: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20), AUTO-BW
-- 
1.9.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

