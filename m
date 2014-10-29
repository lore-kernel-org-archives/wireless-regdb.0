Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine01.qualcomm.com ([199.106.114.254])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xjal4-00008P-Pj
 for wireless-regdb@lists.infradead.org; Wed, 29 Oct 2014 21:26:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1414617982; x=1446153982;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=fYDI1ZXVZ/IS3TWXj0huxRTcJXxDJ6qebOp9JUmd0eE=;
 b=sf+Imm7X2uoL/sn/SzEI+mDYXTUOwxkkCQXYvJROYUb3lE+2Pbf2aFJ+
 VfmDU0KonSu6r/2/5/LKFLPD2bpUpzuO529hV6beqh4I1xu7lcq7//krQ
 7zD+N6B1/6E2cSR593pTIe2aQzCDlFaVdzu+vz/3v5QsLw0/Q+lDYtS9U w=;
From: Jouni Malinen <jouni@qca.qualcomm.com>
Date: Wed, 29 Oct 2014 23:25:43 +0200
Message-ID: <1414617944-29966-1-git-send-email-jouni@qca.qualcomm.com>
In-Reply-To: <1414617690-29786-1-git-send-email-jouni@qca.qualcomm.com>
References: <1414617690-29786-1-git-send-email-jouni@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH 6/7] wireless-regdb: Add 160 MHz channel
	bandwidth for Panama (PA)
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

This extends regulatory rules for Panama to allow 160 MHz VHT channels
to be used in 5.15-5.25 GHz, 5.25-5.35 GHz. Since the rules between
5.15-5.25 and 5.25-5.35 GHz ranges are different (e.g., DFS
requirement), the AUTO-BW flag needs to be used to allow the maximum
channel bandwidth to be determined automatically based on two rules.

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 0df4644..499cc1b 100644
--- a/db.txt
+++ b/db.txt
@@ -863,8 +863,8 @@ country OM: DFS-ETSI
 
 country PA: DFS-FCC
 	(2402 - 2472 @ 40), (30)
-	(5170 - 5250 @ 80), (17)
-	(5250 - 5330 @ 80), (23), DFS
+	(5170 - 5250 @ 80), (17), AUTO-BW
+	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
 	(5735 - 5835 @ 80), (30)
 
 country PE: DFS-FCC
-- 
1.9.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

