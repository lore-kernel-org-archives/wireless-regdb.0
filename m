Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x22d.google.com ([2607:f8b0:400e:c01::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WopVl-0002OM-Bp
 for wireless-regdb@lists.infradead.org; Mon, 26 May 2014 07:39:58 +0000
Received: by mail-pb0-f45.google.com with SMTP id um1so7315178pbc.18 for
 <wireless-regdb@lists.infradead.org>; Mon, 26 May 2014 00:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=from:to:cc:subject:date:message-id;
 bh=01+Q+mH8QR5jOAkIx3mSTHgC+0zCouqbFdAJv/ejsak=;
 b=XGOpeYgfEYZjYhmcp09UVdfkAxWhZbW6dC+l0a0jvmH4i/o7DmK2pLus9Npja8xWF3
 6mOXCacrPVN0uW4fB/mNOhrnQy4E9i5O0W3nAL3m7EnRok2ti+oOKuPKtCU0N19VlCDF
 YURw15fRiuL8ixXFRH05iiCdAm6c8wB/8ElvNoaS75HdrvyJRRC/lrbF2AR0lly6hr69
 Fr3jmwQlr+g/A5yPY/hmivBpS8cSsbwOgwDUYg8d00clYazsGz2X/tlW75e3Ea5giHoP
 M9bvL9IRiJlWvf1/2wPHo9JNY2Imt6dafCMWNLPckbUW/W/9hfoM/5lEq+fZmQ1DB+dJ GfTA==
From: chaitanya.mgit@gmail.com
Date: Mon, 26 May 2014 13:09:22 +0530
Message-Id: <1401089962-10720-1-git-send-email-chaitanya.mgit@gmail.com>
Subject: [wireless-regdb] [regdb] Add support to parse 2000mW tx power
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: linville@tuxdriver.com, mcgrof@gmail.com
Cc: Chaitanya T K <chaitanya.mgit@gmail.com>, linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

 CC [M]  net/wireless/wext-sme.o
 CC [M]  net/wireless/regdb.o
net/wireless/regdb.c:1130:1: error: Unknown undeclared here (not in
a function)
net/wireless/regdb.c:1130:9: error: expected } before power
make[2]: *** [net/wireless/regdb.o] Error 1
make[1]: *** [net/wireless] Error 2
make: *** [net] Error 2

Reported-By: John Walker <john@x109.net>
Signed-off-by: Chaitanya T K <chaitanya.mgit@gmail.com>
---
 net/wireless/genregdb.awk |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/wireless/genregdb.awk b/net/wireless/genregdb.awk
index 4119833..0f2b53a 100644
--- a/net/wireless/genregdb.awk
+++ b/net/wireless/genregdb.awk
@@ -74,7 +74,7 @@ function parse_reg_rule()
 			power = 23
 		} else if (power == 500) {
 			power = 27
-		} else if (power == 1000) {
+		} else if ((power == 1000) || (power == 2000)) {
 			power = 30
 		} else {
 			print "Unknown power value in database!"

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

