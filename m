Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from tuxdriver-1-pt.tunnel.tserv13.ash1.ipv6.he.net
 ([2001:470:7:9c9::2] helo=smtp.tuxdriver.com)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5L5n-0007gV-4A
 for wireless-regdb@lists.infradead.org; Tue, 12 Feb 2013 19:00:35 +0000
From: "John W. Linville" <linville@tuxdriver.com>
Date: Tue, 12 Feb 2013 13:57:41 -0500
Message-Id: <1360695461-4529-1-git-send-email-linville@tuxdriver.com>
Subject: [wireless-regdb] [PATCH] Add specific data for Serbia for the 2
 GHz and 5 GHz bands.
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
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org, "John W. Linville" <linville@tuxdriver.com>
List-ID: <wireless-regdb@lists.infradead.org>

From: "John W. Linville" <linville@tuxdriver.com>

Based on information provided by Ognjen Ikovic on 7 Feb 2013:

Message-ID:
<CAL1G+-FzSYfdQX36P_ri2sKtW_JwT66hvf5wV83gqvJOL1hMug@mail.gmail.com>

Signed-off-by: John W. Linville <linville@tuxdriver.com>
---
 db.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/db.txt b/db.txt
index a6b94b1..a61f40a 100644
--- a/db.txt
+++ b/db.txt
@@ -642,7 +642,13 @@ country RO: DFS-ETSI
         # 60 gHz band channels 1-4, ref: Etsi En 302 567
         (57240 - 65880 @ 2160), (N/A, 40), NO-OUTDOOR
 
+
+# Source:
+# http://www.ratel.rs/upload/documents/Plan_namene/Plan_namene-sl_glasnik.pdf
 country RS:
+	(2400 - 2483.5 @ 40), (N/A, 100 mW)
+	(5150 - 5350 @ 40), (N/A, 200 mW), NO-OUTDOOR
+	(5470 - 5725 @ 20), (3, 1 W), DFS
         # 60 gHz band channels 1-4, ref: Etsi En 302 567
         (57240 - 65880 @ 2160), (N/A, 40), NO-OUTDOOR
 
-- 
1.7.11.7


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

