Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth02.qualcomm.com ([65.197.215.38])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XhEFQ-0004AT-QU
 for wireless-regdb@lists.infradead.org; Thu, 23 Oct 2014 08:59:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1414054797; x=1445590797;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=mKo9FifSmBasj4lwY2/trjrbv/1Veo6tUzZe9r9wBzg=;
 b=fALSdtwU1LnEadu7WdfztX/39E471C1LAQuDctKGtAi4PXcTAD1WaCbp
 Rz2BFoqwN0bIPrW5O8Y9ly+TSViQa5Ha9yCU3r6ERq/DdR4KDoRWlktG2
 ngSpEt0ZBKsv4nYCbQbw3Xcvq5pzXnlXSZrOi5q9Uds5HO2JzA3yPtR+U I=;
Date: Thu, 23 Oct 2014 11:59:28 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20141023085928.GA2716@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH] wireless-regdb: Fix world roaming 160 MHz
	to use AUTO-BW
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

The cfg80211 reg.c implementation rejects rules that claim to have
maximum bandwidth that is larger than the full range. For cases that
need to merge two rules into a single one with extended maximum
bandwidth, AUTO-BW should be used instead.

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index f0e4312..1e5863f 100644
--- a/db.txt
+++ b/db.txt
@@ -6,9 +6,9 @@ country 00:
 	# Channel 14. Only JP enables this and for 802.11b only
 	(2474 - 2494 @ 20), (20), NO-IR, NO-OFDM
 	# Channel 36 - 48
-	(5170 - 5250 @ 160), (20), NO-IR
+	(5170 - 5250 @ 80), (20), NO-IR, AUTO-BW
 	# Channel 52 - 64
-	(5250 - 5330 @ 160), (20), NO-IR, DFS
+	(5250 - 5330 @ 80), (20), NO-IR, DFS, AUTO-BW
 	# Channel 100 - 144
 	(5490 - 5730 @ 160), (20), NO-IR, DFS
 	# Channel 149 - 165
-- 
1.9.1


-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

