Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from smtp.csie.ntu.edu.tw ([140.112.30.61])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zj8QK-0001zl-Nq
 for wireless-regdb@lists.infradead.org; Mon, 05 Oct 2015 16:15:37 +0000
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue,  6 Oct 2015 00:14:58 +0800
Message-Id: <1444061698-16384-6-git-send-email-wens@csie.org>
In-Reply-To: <1444061698-16384-1-git-send-email-wens@csie.org>
References: <1444061698-16384-1-git-send-email-wens@csie.org>
Subject: [wireless-regdb] [PATCH v4 5/5] wireless-regdb: Update 5 GHz rules
	for Taiwan (TW) to follow US
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
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: seth.forshee@canonical.com
Cc: linux-wireless@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Following the amendment of FCC part 15E and U-NII regulations effective
2014/06/02, and the opening up of 5150 ~ 5250 MHz and 5600 ~ 5650 MHz
spectrum in Taiwan, vendors have asked whether Taiwan's regulations
would be updated to match the new FCC rules, when this would happen,
and what to do in the interim.

The NCC, Taiwan's regulatory body has officially replied that new
amendments are under way, and the goal is to match the FCC rules.
Until the amendments come through, vendors are free to test and
submit applications using the new FCC rules for transmission power
limits and DFS requirements, though unintended / unwanted emissions
must still conform to the current standard, LP0002. [1][2]

This has been confirmed via a phone call to the NCC.

[1] http://www.rheintech.com/our-blog/item/585-taiwan-ncc-opens-5150-5250-mhz-for-wireless-devices
[2] Proposal #10312260 (p.6, Chinese),
    http://www.etc.org.tw/_library/K00/%E9%9B%BB%E4%BF%A1%E7%B5%82%E7%AB%AF%E8%A8%AD%E5%82%99%E5%AF%A9%E9%A9%97/1031223_nccqa56.pdf

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 db.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index cea78d8..4409516 100644
--- a/db.txt
+++ b/db.txt
@@ -1125,11 +1125,11 @@ country TT: DFS-FCC
 # LP0002 Low-power Radio-frequency Devices Technical Regulations / 28 Jun 2011:
 #   http://www.ncc.gov.tw/english/show_file.aspx?table_name=news&file_sn=681
 #   (section 3.10.1, 4.7)
-country TW: DFS-JP
+country TW: DFS-FCC
 	(2400 - 2483.5 @ 40), (30)
 	# Follow US 5.15 ~ 5.25 GHz: 30 dBm for master mode, 23 dBm for clients
 	(5150 - 5250 @ 80), (23), AUTO-BW
-	(5250 - 5350 @ 80), (17), DFS, AUTO-BW
+	(5250 - 5350 @ 80), (23), DFS, AUTO-BW
 	(5470 - 5725 @ 160), (23), DFS
 	(5725 - 5850 @ 80), (30)
  
-- 
2.5.3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

