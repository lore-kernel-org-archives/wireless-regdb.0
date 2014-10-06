Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine01.qualcomm.com ([199.106.114.254])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XbBBt-0004yJ-5i
 for wireless-regdb@lists.infradead.org; Mon, 06 Oct 2014 16:31:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1412613077; x=1444149077;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=1EDOAIYGgq5rCd+4Q5PefZFUGGmkjlnh6zp6URZl83I=;
 b=ObBanD2fSnXP4655K6bcyApV251HCXk1cM4dSA6z+4MwYEZ2VBG2QDZp
 jEX2qhk+kukU5zavEsPPhXQ0gt3T9DaNCFJqnM4Wkardv5iQTmv2rF7KJ
 WQJ4Azq/Nr9I58TmUuQ18YZY6bi17fB47ZLme9fS/PI9uvgQjyfsWDgkZ 8=;
Date: Mon, 6 Oct 2014 19:30:48 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20141006163048.GA17083@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [PATCH] wireless-regdb: Add Andorra (AD)
 regulatory rules for 2.4 GHz and 5 GHz
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

This adds ETSI rules for 2.4 GHz and 5 GHz bands in Andorra to address
the confusing 60 GHz band only situation.

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/db.txt b/db.txt
index 4d467d1..8cc62ae 100644
--- a/db.txt
+++ b/db.txt
@@ -18,6 +18,10 @@ country 00:
 
 
 country AD:
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
-- 
1.9.1


-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

