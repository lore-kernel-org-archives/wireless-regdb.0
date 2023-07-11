Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=BbpBPGVKcvKsT50XLhQd8tLs0zFQW9jeEoimFljkUxk=;
 b=Z9qqZQR9bciaJm
 1NqdPBuw/KK3aTj3o1Vt6XCgaob9EErT2TZTKK0GSYvrK5pPfYBnrvpDmH/LoGtDgX9UdZVaekZJV
 BPcptVVeOQyOzalj1dAXFsV+t+t2hB7QHFgmbATX5OsGTFEiWMHwsTcRncps9XF2tenj8+KD4Xabu
 rq5mAg/VJnOjRpeuKHTaeVhpVsts2Woe2sAACcvWVwo/GKy/lCJCpYyLiWYJ9wU9j6SFOuOLqJUVj
 3uAkui3H5DJj+Tyb6rf92RlsXV00xjrzINa9m6RoG/S8TuPBDYTMMx9050aaQfqKb8kn8Pf9qTHkT
 ZKuPGtDe14uKvrIef2hA==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJFSt-00FH8h-2S
	for wireless-regdb@lists.infradead.org;
	Tue, 11 Jul 2023 15:39:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689089986;
	bh=hh+zSKH52avPICY47P3W5frjtrDy6rqfe9rDpzZTvrk=;
	h=From:To:Cc:Subject:Date:From;
	b=YJVj7RhbFKX0Vj7r+Q64NTHjwhqLVJBTID8M9CincxguddVuEdON4llIZCXjlA1+E
	 0/71oWs/njsZ+H1rWomsx90aH+dKNXLsBF/TQedDoZkka8CaYIJ1GcaBbgra1Swh+T
	 wlJ+qZBjZk0y7e28JQbrntL39hwEedSyxesJ5B0smh2IUHwMwiAvkecTel2HUSb9nB
	 URBmZ05BcaatwjMu6WJnoe0ANu7XppR1GGUohWgrB2npZoooj+jQUL27k5s4WxUY+f
	 PiCfCo93ObM1QZtKjwzUDo9LxghiorURtft8A3hbq/5+YTT6PbSt60HoyAWqCiP0qL
	 ihn2sdSM3ycdQ==
From: Seth Forshee <sforshee@kernel.org>
Date: Tue, 11 Jul 2023 10:39:45 -0500
Message-ID: <20230711153945.1004817-1-sforshee@kernel.org>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
 for Egypt (EG) from March 2022 guidelines
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
To: wireless-regdb@lists.infradead.org
Cc: Mohammed Ismail <m.ismael@gmail.com>, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

The radio spectrum guidelines document from March 2022 [1] contains no
restriction on outdoor operation and allows use of 57-66 GHz.

[1] https://www.tra.gov.eg/wp-content/uploads/2022/03/EGY-NTRA-March-2022-SRD_English_Final.pdf

Signed-off-by: Seth Forshee <sforshee@kernel.org>
---
 db.txt | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index ef4e60972d8a..f6121326a9b0 100644
--- a/db.txt
+++ b/db.txt
@@ -575,11 +575,12 @@ country EE: DFS-ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
-# https://www.tra.gov.eg/en/industry/importing-of-equipment/Pages/Regulations-for-use-of-Wireless-Networks-Devices.aspx
+# https://www.tra.gov.eg/wp-content/uploads/2022/03/EGY-NTRA-March-2022-SRD_English_Final.pdf
 country EG: DFS-ETSI
 	(2402 - 2483.5 @ 40), (20)
-	(5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
-	(5250 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
+	(5150 - 5250 @ 80), (23), AUTO-BW, wmmrule=ETSI
+	(5250 - 5350 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
+	(57000 - 66000 @ 2160), (40)
 
 # ES as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
-- 
2.41.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

