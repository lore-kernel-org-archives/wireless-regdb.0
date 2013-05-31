Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x22d.google.com ([2607:f8b0:400e:c01::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEpR-0005d5-IT
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:12:29 +0000
Received: by mail-pb0-f45.google.com with SMTP id mc17so1400288pbc.4 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=pnFZ3p3TA+XQ/XJ8r/QUd2bZtp+yFpyrNfJKhohDwU4=;
 b=pcNCxBBMkL4qAbTnSlvlO0nm4JvbJ0GPsBnxvFtoZae/uSSHoO+pk4wdUD14hwIaJS
 GY1wwCcMPrhz8dlJp0SFDVYzfS/eDk8FTs2ArXkTVTvpQyHqis0Dwga23yAPb8/NUz3u
 ftoNg5z40IVZ84vtUVAlsx7fKn28mfsFDi7tnIzBBNNEqShmeOXOr8TTtA2K5CZYXBHZ
 ceNJ4vGdab+r8rDk+dL/VZQdV8reLaHPQc/3tEK97q17apNyh4/M5FNjGcMxyKY5dFfI
 8Q+EYSHJwrGc1wg9agey+R/qzYPKjBTZi5HG2DKCN9fvZDo8k1p/ANcp4V3BECjzBoj0 iJ9Q==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:23 -0700
Message-Id: <1369966169-23640-35-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 34/40] crda: clarify intersect.c only
	computes an intersection
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
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>

World regulatory domains should deal with passive scan
flags to account for gaps in the frequency spectrum that
some countries do not rely on but some APs / Cell towers
could be relied upon for determining location.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 intersect.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/intersect.c b/intersect.c
index bc1e63e..baca5f1 100644
--- a/intersect.c
+++ b/intersect.c
@@ -7,7 +7,7 @@
 #include "reglib.h"
 
 /* Intersects regulatory domains, this will skip any regulatory marked with
- * an alpha2 of '00', which is used to indicate a regulatory domain */
+ * an alpha2 of '00', which is used to indicate a world regulatory domain */
 
 int main(int argc, char **argv)
 {
@@ -67,7 +67,7 @@ int main(int argc, char **argv)
 		free(prev_rd_intsct);
 
 	/* Tada! */
-	printf("== World regulatory domain: ==\n");
+	printf("Intersected regulatory domain:\n");
 	reglib_print_regdom(rd_intsct);
 
 	free(rd_intsct);
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

