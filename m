Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine02.qualcomm.com ([199.106.114.251])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XjalB-00008a-L3
 for wireless-regdb@lists.infradead.org; Wed, 29 Oct 2014 21:26:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1414617989; x=1446153989;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=Yu8TKvtMhv9ngIPv03rba73RWLN7wT2mU/HqYYAHIrU=;
 b=nSpiTxhV1piHvWc9swlUp4PFylAnFQbqNwSLJ0N79EvzgK5/JGTBJuVo
 LmL1Fdt/jq67kSwN5ypy83ZT6j9cNYumXU+GY9Vb4jwvNarVYoxutm8dd
 /+nvM3Clsm+u8NZcsMTMT4E9WY/0dnBJ0UYwh68fTNAdqQEPUSsXak9jL Y=;
From: Jouni Malinen <jouni@qca.qualcomm.com>
Date: Wed, 29 Oct 2014 23:25:44 +0200
Message-ID: <1414617944-29966-2-git-send-email-jouni@qca.qualcomm.com>
In-Reply-To: <1414617944-29966-1-git-send-email-jouni@qca.qualcomm.com>
References: <1414617690-29786-1-git-send-email-jouni@qca.qualcomm.com>
 <1414617944-29966-1-git-send-email-jouni@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH 7/7] wireless-regdb: Add 160 MHz channel
	bandwidth for Venezuela (VE)
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

This extends regulatory rules for Venezuela to allow 160 MHz VHT channels
to be used in 5.15-5.25 GHz, 5.25-5.35 GHz. Since the rules between
5.15-5.25 and 5.25-5.35 GHz ranges are different (e.g., DFS
requirement), the AUTO-BW flag needs to be used to allow the maximum
channel bandwidth to be determined automatically based on two rules.

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 499cc1b..c7854c2 100644
--- a/db.txt
+++ b/db.txt
@@ -1159,8 +1159,8 @@ country VC: DFS-ETSI
 # http://www.conatel.gob.ve/
 country VE: DFS-FCC
 	(2402 - 2482 @ 40), (30)
-	(5170 - 5250 @ 80), (23)
-	(5250 - 5330 @ 80), (23), DFS
+	(5170 - 5250 @ 80), (23), AUTO-BW
+	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
 	(5735 - 5835 @ 80), (30)
 
 country VI: DFS-FCC
-- 
1.9.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

