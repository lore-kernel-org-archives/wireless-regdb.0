Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine01.qualcomm.com ([199.106.114.254])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YEcnK-00015g-4F
 for wireless-regdb@lists.infradead.org; Fri, 23 Jan 2015 11:52:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1422013979; x=1453549979;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=VSzLAKvnrTqWaQQuveq4OqNtBRxbqlJX5ehwfQVRmuU=;
 b=qf6l8AtKAifA9bHGJobR0HkcJub9AqLSLbjhnQHuYGuQonu6V4Akk+VG
 /SgrvnO9SP/T+fXjaX+5V7NAO7ZcpOU0z+KpGPlitEUIOmvBWH1v2THz2
 36eqgFRTjzuZf0oSI+wH3sP+nMbHpoB3aF307xW4QB6mpDXGQUfPC/V9Y s=;
From: Jouni Malinen <jouni@qca.qualcomm.com>
Date: Fri, 23 Jan 2015 13:51:59 +0200
Message-ID: <1422013920-9779-2-git-send-email-jouni@qca.qualcomm.com>
In-Reply-To: <1422013920-9779-1-git-send-email-jouni@qca.qualcomm.com>
References: <1422013920-9779-1-git-send-email-jouni@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Add regulatory rules for
	Samoa (WS)
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
 db.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/db.txt b/db.txt
index 85b4bb4..cfd81bf 100644
--- a/db.txt
+++ b/db.txt
@@ -1201,6 +1201,12 @@ country WF: DFS-ETSI
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
 
+country WS: DFS-ETSI
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 40), (20)
+	(5250 - 5330 @ 40), (20), DFS
+	(5490 - 5710 @ 40), (27), DFS
+
 country YE:
 	(2402 - 2482 @ 40), (20)
 
-- 
1.9.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

