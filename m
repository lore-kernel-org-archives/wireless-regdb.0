Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from wolverine02.qualcomm.com ([199.106.114.251])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wq3Jv-0000OJ-EU
 for wireless-regdb@lists.infradead.org; Thu, 29 May 2014 16:36:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1401381407; x=1432917407;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=FauafAjhk+Go90dZz9VPAe8ildmmjlsIL6gVVOJwzMg=;
 b=ONqc3uN803yZnitocayry1yBivPd+0vvUlKnEq27uH6CL9G7jZIR6Hcg
 szXWTBoVkPipJDxVCVDcGCpUd5YqRqM/RcpkmuETOOPMz8zQh34dTY70K
 xm640Khq+n6L/mgYThQqf7h7XiY55N/qbjMIcNVNqAARW2HXEMkMp1gbj E=;
Date: Thu, 29 May 2014 19:36:21 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140529163621.GA28020@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb]
 =?utf-8?q?=5BPATCH_7/8=5D_wireless-regdb=3A_Add_?=
 =?utf-8?q?C=C3=B4te__d=27Ivoire_=28CI=29_regulatory_rules?=
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
ministry. ATCI.CI

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/db.txt b/db.txt
index 83a3af4..769826c 100644
--- a/db.txt
+++ b/db.txt
@@ -194,6 +194,13 @@ country CH: DFS-ETSI
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
+country CI: DFS-FCC
+	(2402 - 2482 @ 40), (20)
+	(5170 - 5250 @ 80), (17)
+	(5250 - 5330 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
+	(5735 - 5835 @ 80), (30)
+
 country CL: DFS-JP
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

