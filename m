Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine02.qualcomm.com ([199.106.114.251])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XPALA-0000Ev-JH
 for wireless-regdb@lists.infradead.org; Wed, 03 Sep 2014 13:11:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1409749874; x=1441285874;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=NebosiuXWvgqwR4rGIEOeXEmr0pZ0nU8Kvou4ICALQM=;
 b=aXyDr3DKHz7I3CI6j8Z24ad6nTMkQ8aEoss4sub2pMjLeTvcTuJcbbGr
 FFhUB1kn1nsWz1JzLqImknIaC8bhiea8LQdLXFy5TTKgf4gIIzY1i8QC4
 MnZUgiQdXq3dbLJbyUHOHXi1YjT5/3PzXDa+/D/9LJJjJN5BiM2kyVkGT U=;
Date: Wed, 3 Sep 2014 16:10:17 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140903131017.GA15904@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH 02/12] wireless-regdb: Add Dominica (DM)
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
http://www.ntrcdom.org/index.php?option=com_content&view=category&layout=blog&id=10&Itemid=55

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/db.txt b/db.txt
index 8b00c19..1327e60 100644
--- a/db.txt
+++ b/db.txt
@@ -292,6 +292,14 @@ country DK: DFS-ETSI
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
+# Source:
+# http://www.ntrcdom.org/index.php?option=com_content&view=category&layout=blog&id=10&Itemid=55
+country DM: DFS-FCC
+	(2402 - 2472 @ 40), (30)
+	(5170 - 5250 @ 80), (17)
+	(5250 - 5330 @ 80), (23), DFS
+	(5735 - 5835 @ 80), (30)
+
 country DO: DFS-FCC
 	(2402 - 2472 @ 40), (30)
 	(5170 - 5250 @ 80), (17)
-- 
1.9.1


-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

