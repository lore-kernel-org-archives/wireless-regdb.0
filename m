Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x231.google.com ([2607:f8b0:400e:c03::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY9K-0003P9-G2
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:15:54 +0000
Received: by mail-pa0-f49.google.com with SMTP id ld11so780081pab.22 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=AGH4bHcgSOqgr+CMk61arEpYBolJ7PS63rMS/XlGRB8=;
 b=uEqqu+iGm1db9qPkgSxjjHsPp1Sz1ss0qm6Iz2lC5YNXFGePxHHWb+jfcBlFHedB7p
 6zbtjblKPOiPWxgzU++mfL18GfAFtr2X8TaU+GlYykPLG6W3WVQvMdM0TBTGb1mFkexM
 3PSoez/OUKqHN4z+YH4XzLahTDpYW3OnRvIZVda/a5R1XPMLgjIlfaptaM09jYyLwXwz
 Ldz7xkKOJvo2Gp5kTT2c+nlet4CDKVE+7rECgbxgGLHPzC33vLo/pU0VG5jRR0GQRzI3
 K5qPF2M77yBEoi3DLXDECwiQjN1ZmmEAQW61RAp307223UUknlc2tlg3sAAD6YsSIBbO 1PoA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:35 -0700
Message-Id: <1372899889-19183-40-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 39/53] wireless-regdb: CN,
	China - enable VHT80
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
To: linville@tuxdriver.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>

This enable 80 MHz on the 5 GHz band.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 4f2d4e7..ead6646 100644
--- a/db.txt
+++ b/db.txt
@@ -164,7 +164,7 @@ country CL:
 
 country CN:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5735 - 5835 @ 40), (N/A, 30)
+	(5735 - 5835 @ 80), (N/A, 30)
 	# 60 gHz band channels 1,4: 28dBm, channels 2,3: 44dBm
 	# ref: http://www.miit.gov.cn/n11293472/n11505629/n11506593/n11960250/n11960606/n11960700/n12330791.files/n12330790.pdf
 	(57240 - 59400 @ 2160), (N/A, 28)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

