Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x22c.google.com ([2607:f8b0:400e:c01::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHM2-0005yK-2l
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:20:34 +0000
Received: by mail-pb0-f44.google.com with SMTP id uo1so1347135pbc.3 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=FtEyV8qCvbfXazBL1g++tbD6y29Qs7aTx2Sxho2iKGw=;
 b=xL9fgScGIE2gYVtCh+myQuBiV8uU1oTnQvwQ7K2cP9tgPzlcce/kcIlqbIeo0sJixa
 E8tZSgw2n7ZIO2rcF3PiZ/pH0XgGdvnjr8pG17yaUzr0OYef3qREdTJJqFhg+ock4bV/
 /4KEf2pzvPUsysEO4y8fNqguRpr+EXS0iJXrNCGAYNcUWcBsmQzfjW8e1wrRflI2CsyH
 RUPpe6L5aLT/1k3ro9YGD3CtDYugJJPZAPTuGkrORNqK9S8F+EU0KuNRMtxWmxIxe1eg
 YHQi8XqFIjLHt2NDmgb3kPPdjGnVb8rv/C1J9V4xvSLDqIlEarvHA30KdIuCzRNA5rMf yd3g==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:18:05 -0700
Message-Id: <1374027522-18488-17-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 16/53] wireless-regdb: TH,
	Thailand - enable VHT80
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

This enables 80 MHz bandwidth usage on all 5 GHz
frequencies and update the max EIRP.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 4475019..84214b0 100644
--- a/db.txt
+++ b/db.txt
@@ -726,10 +726,10 @@ country TW:
 
 country TH:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5170 - 5250 @ 40), (3, 17)
-	(5250 - 5330 @ 40), (3, 20), DFS
-	(5490 - 5710 @ 40), (3, 20), DFS
-	(5735 - 5835 @ 40), (3, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country TT:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

