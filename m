Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth02.qualcomm.com ([65.197.215.38])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XjahE-0004sf-G5
 for wireless-regdb@lists.infradead.org; Wed, 29 Oct 2014 21:22:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1414617744; x=1446153744;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=yACFASql3uWe+qrn+eqv3UeFc6b8zTP2NeWcUFUP9S8=;
 b=C0B40tb12gUq98fnsEoJBaMFqxnbhSGFY1DrO2+IStpx7a6iJt0Ej8Ne
 Us9DN+3j60n/pICCg4c8TrcEiAtwr5PU+X7ZRx1B5QHUyq3Z13cdaOJ6A
 QLE7JNAskaLLw3p8kspMKDAQJc8aBm5B5WnEyXiOZQSXfgwnONVTVqM8f 0=;
From: Jouni Malinen <jouni@qca.qualcomm.com>
Date: Wed, 29 Oct 2014 23:21:26 +0200
Message-ID: <1414617690-29786-3-git-send-email-jouni@qca.qualcomm.com>
In-Reply-To: <1414617690-29786-1-git-send-email-jouni@qca.qualcomm.com>
References: <1414617690-29786-1-git-send-email-jouni@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH 3/7] wireless-regdb: Add 160 MHz channel
	bandwidth for Dominica (DM)
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

This extends regulatory rules for Dominica to allow 160 MHz
VHT channels to be used in 5.15-5.25 GHz, 5.25-5.35 GHz. Since the rules
between 5.15-5.25 and 5.25-5.35 GHz ranges are different (e.g., DFS
requirement), the AUTO-BW flag needs to be used to allow the maximum
channel bandwidth to be determined automatically based on two rules.

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 999bc5f..d527b54 100644
--- a/db.txt
+++ b/db.txt
@@ -331,8 +331,8 @@ country DK: DFS-ETSI
 # http://www.ntrcdom.org/index.php?option=com_content&view=category&layout=blog&id=10&Itemid=55
 country DM: DFS-FCC
 	(2402 - 2472 @ 40), (30)
-	(5170 - 5250 @ 80), (17)
-	(5250 - 5330 @ 80), (23), DFS
+	(5170 - 5250 @ 80), (17), AUTO-BW
+	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
 	(5735 - 5835 @ 80), (30)
 
 country DO: DFS-FCC
-- 
1.9.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

