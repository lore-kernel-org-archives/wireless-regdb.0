Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine01.qualcomm.com ([199.106.114.254])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XPAO1-0000oC-7c
 for wireless-regdb@lists.infradead.org; Wed, 03 Sep 2014 13:14:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1409750049; x=1441286049;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=MF6YzliqNPyYB0GN9mqYYnUgx0ZzjYFu+OkWx7Kf+p8=;
 b=qLfdfKXndZyps9gQ1akAvEhgCI/oCVtSpDpX3Gbq5BPCMDb7372FaRxw
 +fWkWg1pDje0QVX1oSjlDnU0d3QT9KbEFraH7HoPRKNEZuXT874lONbIv
 wDyHr9hapMqYTawX6vj9rN1c0NcTXutbtMmEYAbQb29/z0qYBWUjngjZ2 0=;
Date: Wed, 3 Sep 2014 16:13:29 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140903131329.GA16147@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH
 05/12]=?UTF-8?q?wireless-regdb:=20Update=20Saint=20Barth?=
 =?UTF-8?q?=C3=A9lemy=20(BL)=20regulatory=20rules?=
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

French Jurisdiction, follows ETSI rules per R&TTE Directive.

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index c1c70cc..980b193 100644
--- a/db.txt
+++ b/db.txt
@@ -138,10 +138,11 @@ country BH: DFS-JP
 	(5250 - 5330 @ 80), (20), DFS
 	(5735 - 5835 @ 80), (20)
 
-country BL:
+country BL: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (18)
-	(5250 - 5330 @ 40), (18), DFS
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
 
 country BN: DFS-JP
 	(2402 - 2482 @ 40), (20)
-- 
1.9.1


-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

