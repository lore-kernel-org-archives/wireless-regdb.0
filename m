Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine01.qualcomm.com ([199.106.114.254])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xb98G-0006Qt-SV
 for wireless-regdb@lists.infradead.org; Mon, 06 Oct 2014 14:19:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1412605164; x=1444141164;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=eRnafsqb1In/Cmg7EVC7J63BVYehXb+WzzxjqeVtIMY=;
 b=Utiv1m+ydG2H9LuLnAypfNUQR/6iT0A1GPoLN2NUrI9moqUbM6BQTkh8
 9ZhME2meQwz+F93bYQN+DV3wtgahOvbDOK0sCcnTy7xaXWe+MBCoJ8Unb
 2O9Qz5cH1aT68YFOJDj4yPKNzrixJ068BcZ2IuxhgnBC3oeq190sCsqd4 8=;
Date: Mon, 6 Oct 2014 17:18:57 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20141006141857.GA14035@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH] wireless-regdb: Add Marshall Islands (MH)
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

1986 compact of free association with the U.S.
Marshall Islands follow U.S. Spectrum rules.

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/db.txt b/db.txt
index 757040b..5bd9388 100644
--- a/db.txt
+++ b/db.txt
@@ -669,6 +669,13 @@ country MO:
 	(5250 - 5330 @ 40), (23), DFS
 	(5735 - 5835 @ 40), (30)
 
+country MH: DFS-FCC
+	(2402 - 2472 @ 40), (30)
+	(5170 - 5250 @ 80), (24)
+	(5250 - 5330 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
+	(5735 - 5835 @ 80), (30)
+
 country MK: DFS-ETSI
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

