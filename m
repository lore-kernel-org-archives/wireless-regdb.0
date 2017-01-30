Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine01.qualcomm.com ([199.106.114.254])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cYAln-0008Oj-ME
 for wireless-regdb@lists.infradead.org; Mon, 30 Jan 2017 12:09:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1485778155; x=1517314155;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=kUhsIVma3QgKURCydMaKCPWQwua4jrNMAbKQdOivIqA=;
 b=Pk7Dkquon80jzMPklF/4qXy8yL7UmTDhNjptH4CWExZf9pKx7fHsSDEC
 2ruoNTSJoNvlYze/fhNHqgNzU4BpjMzYTvOyFaZcWzgNNVRbtPB0eulCx
 quUOepHGjB/Nf23aXq1rHgf9bb+39Rr095lQ382VqBdoffFO7hLKTqtLl Y=;
From: Jouni Malinen <jouni@qca.qualcomm.com>
Date: Mon, 30 Jan 2017 14:08:32 +0200
Message-ID: <1485778112-11236-1-git-send-email-jouni@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Remove DFS requirement
 for India (IN)
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

The "Indoor Use of low power wireless equipment in the frequency band 5
GHz (Exemption from Licensing Requirement) Rules, 2005" notification by
Ministry of Communications and Information Technology (Wireless Planning
and Coordination Wing) (New Delhi, the 28th January 2005) does not
mandate use of DFS, so remove the DFS flag from the 5250-5330 MHz band
in India.

In addition, increase the TX power limit to 23 dBm to match the 200 mW
maximum mentioned in the same notification. Also use the exact ranges
from that notification and enable use of 160 MHz channels in the
5150-5350 MHz band.

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 7964cfb..05108e0 100644
--- a/db.txt
+++ b/db.txt
@@ -580,11 +580,10 @@ country IL: DFS-ETSI
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
 	(5250 - 5350 @ 80), (200 mW), NO-OUTDOOR, DFS, AUTO-BW
 
-country IN: DFS-JP
+country IN:
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
-	(5735 - 5835 @ 80), (20)
+	(5150 - 5350 @ 160), (23)
+	(5725 - 5875 @ 80), (23)
 
 country IR: DFS-JP
 	(2402 - 2482 @ 40), (20)
-- 
2.7.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

