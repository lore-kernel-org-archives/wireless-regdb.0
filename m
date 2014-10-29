Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine01.qualcomm.com ([199.106.114.254])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xjah6-0004cz-3i
 for wireless-regdb@lists.infradead.org; Wed, 29 Oct 2014 21:22:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1414617736; x=1446153736;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=NHLWCAc3AQEyDZ2rri02eMrNu1iLe2jmQ9lR+CAheVo=;
 b=AnH5cuF7n/i2+RKkTysa844tF+XBpwiT2tPf8PrJhBsFs2lIHiR5nRG+
 NSnFZiEOTejE0HOf1yJd2pUT/KRsKf1oxGPgicaZq0qwnC6rNMF5xNBBJ
 kNckl+x+8UgecsuD6eCf71PX9vGboZ424nimFE1qW7UdY5YAAuuig07sD E=;
From: Jouni Malinen <jouni@qca.qualcomm.com>
Date: Wed, 29 Oct 2014 23:21:24 +0200
Message-ID: <1414617690-29786-1-git-send-email-jouni@qca.qualcomm.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH 1/7] wireless-regdb: Add 160 MHz channel
	bandwidth for Barbados (BB)
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

This extends regulatory rules for Barbados to allow 160 MHz VHT channels
to be used in 5.15-5.25 GHz, 5.25-5.35 GHz. Since the rules between
5.15-5.25 and 5.25-5.35 GHz ranges are different (e.g., DFS
requirement), the AUTO-BW flag needs to be used to allow the maximum
channel bandwidth to be determined automatically based on two rules.

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 2a54da8..8d43f45 100644
--- a/db.txt
+++ b/db.txt
@@ -113,8 +113,8 @@ country BA: DFS-ETSI
 
 country BB: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (23)
-	(5250 - 5330 @ 80), (23), DFS
+	(5170 - 5250 @ 80), (23), AUTO-BW
+	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
 	(5735 - 5835 @ 80), (30)
 
 country BD: DFS-JP
-- 
1.9.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

