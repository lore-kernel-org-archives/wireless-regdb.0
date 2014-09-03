Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth02.qualcomm.com ([65.197.215.38])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XPAPw-0002VC-W2
 for wireless-regdb@lists.infradead.org; Wed, 03 Sep 2014 13:16:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1409750169; x=1441286169;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=3tHO0ht3r34afcHEBqu+cqs4a9bxUhURiqT7o1BPpLw=;
 b=Y+qDgH00d9e1bnzmrI6bgD2dIWtAYUOIkZata31wSshsemrWomdozdQx
 zHcZuh1ajWqGBKy+XzCQilX6Rt3oE7NqozXl23NbWdxwDQUs3SlQ+n9ii
 oMzHsxaikSJlqger3j7l4JafbPkWG7LIHAOlaFpnlN/biJWgQQk6UFz9n 4=;
Date: Wed, 3 Sep 2014 16:15:42 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140903131542.GA16237@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH 10/12] wireless-regdb: Add Saint Vincent
 and the Grenadines (VC) regulatory rules
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
http://www.ntrc.vc/regulations/Jun_2006_Spectrum_Managment_Regulations.pdf

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/db.txt b/db.txt
index 2d0988a..2d60241 100644
--- a/db.txt
+++ b/db.txt
@@ -992,6 +992,14 @@ country UZ: DFS-ETSI
 	(5250 - 5330 @ 80), (20), DFS
 
 # Source:
+# http://www.ntrc.vc/regulations/Jun_2006_Spectrum_Managment_Regulations.pdf
+country VC: DFS-ETSI
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
+
+# Source:
 # Official Gazette (Gaceta Oficial) concerning Unlicensed transmitter use
 # (10 June 2013)
 # http://www.conatel.gob.ve/
-- 
1.9.1


-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

