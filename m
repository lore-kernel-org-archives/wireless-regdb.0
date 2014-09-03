Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth01.qualcomm.com ([65.197.215.72])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XPAYy-0008KZ-8I
 for wireless-regdb@lists.infradead.org; Wed, 03 Sep 2014 13:25:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1409750729; x=1441286729;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=nrRaWogxwjX2501+FQs/Pf3rS0KyLMOiXQJcXNkyqiI=;
 b=oArtuPLj4E6grQPNMae6JWLWWyyADra3zIHyBdJdHaTwXED6iKaEo8yl
 unWaP76rqe/Afnbo1B4VEgBFA5+N6/jQbqD1gB323K4ovRfWEK9r9tPSh
 3t63PRdmkU/i5LyRLlfo0ShU37mC/CWK074MipKVK25d8J7KHsTYU6qzi k=;
Date: Wed, 3 Sep 2014 16:25:01 +0300
From: Jouni Malinen <jouni@qca.qualcomm.com>
Message-ID: <20140903132501.GA15621@jouni.qca.qualcomm.com>
References: <20140903131329.GA16147@jouni.qca.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140903131329.GA16147@jouni.qca.qualcomm.com>
Subject: [wireless-regdb] [PATCH v2 05/12] wireless-regdb: Update Saint
 Barthelemy (BL) regulatory rules
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
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

French Jurisdiction, follows ETSI rules per R&TTE Directive.

Signed-off-by: Jouni Malinen <jouni@qca.qualcomm.com>
---
 db.txt | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

v2: Looks like something did not exactly like the non-ASCII character in
the subject, so lets try with ASCII-only..


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

