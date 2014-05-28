Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth01.qualcomm.com ([65.197.215.72])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WpZyL-0000YY-Ja
 for wireless-regdb@lists.infradead.org; Wed, 28 May 2014 09:16:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1401268594; x=1432804594;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=MyaBpmF2QsIGjspAH08xRh8XelmeF1/w+ALDzvur2vo=;
 b=VsBBY7qSDFmpyY2/qv2Ia/iiq/wkqDGROTCkXz3eqHkGPc1As4FCkzbh
 +8wEOVr3QU09TwDqrn1jm6BiH1lYryBTekpPRpQ5XkNXsDPksusTkhDXX
 moeITey+YJjdY6z6REs6TE3ede/C51QOw2ZcvwG65lVKBRikb2Mc9SITQ M=;
Date: Wed, 28 May 2014 12:16:07 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140528091607.GA14718@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH 8/9] wireless-regdb: Add Guyana (GY)
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

Source is QCA's regulatory team's efforts and email confirmation from
ministry that spectrum rules are based upon FCC 15.247 for bands
2400-2483.5 MHz and 5725-5850 MHz. NFMU.Gov.GY

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/db.txt b/db.txt
index b06fb2b..9864027 100644
--- a/db.txt
+++ b/db.txt
@@ -366,6 +366,10 @@ country GU: DFS-FCC
 	(5490 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+country GY:
+	(2402 - 2482 @ 40), (30)
+	(5735 - 5835 @ 80), (30)
+
 country HN: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17)
-- 
1.9.1


-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

