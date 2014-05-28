Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine02.qualcomm.com ([199.106.114.251])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WpZvp-0007SH-AK
 for wireless-regdb@lists.infradead.org; Wed, 28 May 2014 09:13:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1401268437; x=1432804437;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=IhONnmdRvcTM9CN2oBQ6Vz2pkP+2tIt2HwXkwluhvCo=;
 b=i4WbmmWQnULpGsybEmw5lht5Lnn2SRW4qaYydurHx7djCO8xGQ1lDlEW
 Ism6wKxWWCA8hl0S9nc3uB07PLmbTfWJTzBlGfRHBHEWmt/1xTXspgubh
 FNIGzVlcxhfMKmuYh1c3DFaheCSHDy5tXSwkq2r/OW5IR4p2VIq3ymMGc A=;
Date: Wed, 28 May 2014 12:13:30 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140528091330.GA14638@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH 4/9] wireless-regdb: Add Mauritania (MR)
	regulatory rules
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

Source:
http://www.are.mr/pdfs/telec_freq_TNAbf_2010.pdf

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/db.txt b/db.txt
index df92842..fe27301 100644
--- a/db.txt
+++ b/db.txt
@@ -570,6 +570,14 @@ country MK: DFS-ETSI
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
+# Source:
+# http://www.are.mr/pdfs/telec_freq_TNAbf_2010.pdf
+country MR: DFS-ETSI
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
+
 country MT: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20)
-- 
1.9.1


-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

