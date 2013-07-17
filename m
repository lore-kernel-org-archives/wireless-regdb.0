Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x234.google.com ([2607:f8b0:400e:c03::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHKq-0005r8-8Y
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:19:20 +0000
Received: by mail-pa0-f52.google.com with SMTP id kq14so314783pab.11 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=QqAIMd8KVqDPD1Xi8xq0CVP7qX7gGZEfqhpW1ZjGY40=;
 b=RNV2m80EaCN+8/8Xecqz1vZA8z38SRRgzpcGtYlaTJLsSvqgaPyt0sH9qdGVcPmePA
 Testmp8Up/9aIqfC7iTqdCB50ics99xX64++a6CeDyWhmkiHpN1GdTYBkNeGDm3CJgUw
 /ZJY35+X5MkT2e4O4ZDNvhIW466Sv/UumvWgNX7W6GCnVJthXs4RpFHM0dvm7Ke/xabP
 6PzxKL4AdUaHDsLJabJVesDp8XqorPCbU4vlg5EjVI36wIabUW5R2s2Cah6R1tqq+HWh
 cG9FqexpVr6HOnJIRZ6bitVeDs/zSFZ7NQJKdu2RuwOlXXwV3viCRavINizLflf0LDyn +rTw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:17:51 -0700
Message-Id: <1374027522-18488-3-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 02/53] wireless-regdb: BR,
	Brazil - enable VHT80
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
frequencies and increases the max EIRP on two
5 GHz bands.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 0e7794e..a6c23bd 100644
--- a/db.txt
+++ b/db.txt
@@ -125,10 +125,10 @@ country BO:
 
 country BR:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5170 - 5250 @ 40), (3, 17)
-	(5250 - 5330 @ 40), (3, 20), DFS
-	(5490 - 5710 @ 40), (3, 20), DFS
-	(5735 - 5835 @ 40), (3, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country BY:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

