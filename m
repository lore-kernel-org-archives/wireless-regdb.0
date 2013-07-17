Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x235.google.com ([2607:f8b0:400e:c02::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHLZ-0005vP-JT
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:20:05 +0000
Received: by mail-pd0-f181.google.com with SMTP id 14so1303245pdj.26 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=UeT/V/WE5ZG5+Fq1JYUzi0pJ6Mmj9+lLgQEc2tch95g=;
 b=vFSqADL4J9C3ftFi1P31vH84iEqYon2MP7prmZF3kVXT845G4KRFTy5E162axA+qYq
 9QVkahLvkZG3CxbkishGG4X4LBQzaMigMPfGcQTRJ/m3Fq88LbxeEulxvOkAcWMoxz8n
 son9qKoHyhJRX6bhW/r4xzNVHG2fkviIQrU9WYKvqasHFibhTJO4uB/IS3z4MAqAL3Da
 gzMvBv03lysIisjbtGDrqQ5jz1VPFJsCzHUegxQtOWX1382Jzo/TVQgmwr4qcZxrzg2y
 2s77eK40euudEJSvpxi+GoV1PFyHXlKfUJyrD1Vm/daEJO0dFS/oSocUoWyVRYREcF2G 2MRg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:18:00 -0700
Message-Id: <1374027522-18488-12-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 11/53] wireless-regdb: PH,
	Philippines - enable VHT80
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

This enables 80 MHz bandwidth usage the existing only
5 GHz band but also adds 3 other new 5 GHz bands with
80 MHz bandwidth support.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 00e5993..c37c3d6 100644
--- a/db.txt
+++ b/db.txt
@@ -610,7 +610,10 @@ country PG:
 
 country PH:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5735 - 5835 @ 40), (N/A, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country PK:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

