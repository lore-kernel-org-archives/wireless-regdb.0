Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x22c.google.com ([2a00:1450:400c:c00::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcH8a-0003S8-7G
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 15:59:53 +0000
Received: by mail-wg0-f44.google.com with SMTP id n12so4216101wgh.23 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 08:59:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=sender:from:to:cc:subject:date:message-id;
 bh=2Yuq5MUVhnr1I/xglf7iu7N/tqn54gByUkfTmOpPBlU=;
 b=ITzaDbcM0aCo2pwGK4DWsgw5O3WR/ncrBJfQYB6j8xca8MqilBxwtjJND47lej+tgE
 9Bxtue7hDuBUgUClakfKtDltIFmUZwzMY35nzlWhtBPum2dv3jEguJNBK58Cs0CSb0Pg
 aMkUdIwsX7y9nbAZRQ53+imZpkK//gfxg5afNv6DlvNz+FxhAZwnYMxzoMxCE1llwp99
 bQPF42hLWSfi8yy30DHmY0eymvsP96Ycgz4S8c98XubiU+u+BFpS7i2fCCFAhlk2CUMv
 pjIM6T9beOns+b30vJ8PMX9ZEIjLXhlkTsz+HxT9TyZ+VZl5Rp3zvmRC9a0RqZ1XP4jm 3ToQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 16:59:24 +0100
Message-Id: <1383321564-25138-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH v2 15/23] wireless-regdb: update BG's
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: linville@tuxdriver.com
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

This reduces the 5 GHz max EIRP to 20, enables VHT80
and removes the last 5 GHz DFS frequency range.

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---

I had forgotten to remove the 5 GHz frequency range.

 db.txt | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index de2e94e..09a0164 100644
--- a/db.txt
+++ b/db.txt
@@ -103,9 +103,8 @@ country BE: DFS-ETSI
 
 country BG: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (23)
-	(5250 - 5290 @ 40), (23), DFS
-	(5490 - 5710 @ 40), (30), DFS
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

