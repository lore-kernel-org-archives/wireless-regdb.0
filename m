Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine02.qualcomm.com ([199.106.114.251])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WpZx9-0007kA-MG
 for wireless-regdb@lists.infradead.org; Wed, 28 May 2014 09:15:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1401268519; x=1432804519;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=kBPTk28P09hIRqtx2lL0+HQQjWarXMLTTb9MAn1hvow=;
 b=FIfUCMvRwuLLbJUJGkwx0z2BOARQF5l28lHHB7to6IXYT2fxbcYk2jaN
 mWytIvEirItOs1uoGKMhpXjR4qmhD9w7dEoNXgy0zQnX4ZzJvFo0rS5aP
 4KBcGXFv4cjd5uERPpOr3mhV98x4hqh1w+AiVsAyRclOh621t8puLaWWl 4=;
Date: Wed, 28 May 2014 12:14:53 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140528091453.GA14675@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH 6/9] wireless-regdb: Add Togo (TG)
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

Source is QCA's regulatory team's efforts and correspondence with
Telecom agency (ARTP).

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/db.txt b/db.txt
index 6621681..887902e 100644
--- a/db.txt
+++ b/db.txt
@@ -785,6 +785,12 @@ country SV: DFS-FCC
 country SY:
 	(2402 - 2482 @ 40), (20)
 
+country TG: DFS-ETSI
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 40), (20)
+	(5250 - 5330 @ 40), (20), DFS
+	(5490 - 5710 @ 40), (27), DFS
+
 country TW: DFS-JP
 	(2402 - 2472 @ 40), (30)
 	(5270 - 5330 @ 40), (17), DFS
-- 
1.9.1


-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

