Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x236.google.com ([2607:f8b0:400e:c02::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHOI-0006I5-9M
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:22:55 +0000
Received: by mail-pd0-f182.google.com with SMTP id r10so1308169pdi.41 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=mR2DFquXlB1aF6agA9giQr+PjJ8dX9yStLIbEsSIlrM=;
 b=X3QLnzh36hziDfF9KP6IzY/AWqUcJ2zP3bgLQbZM0UV4JB3n/Rsr2sJTfTBmY/Baty
 aOk7e/9HbY0DCo5PpjuTVwd5HUXYlr1db6GEtTk7yukczxjUj6iIF9bhES5+5FG5Z6zv
 M1y0yqBdviRDxnD/HeQyMcBm8WsgEih3V8Atz1Ez7AkdSgAJElTwEj2rv8v7XhXgFoZ3
 6oiuQeNIQOINgkTndMdUFUhUkMP3IOmbDmJOq0YHjeA9UXeZJWlJJglLJyF8m3XToE6A
 O54SXYSIK+WVIJuIgV2Wo4zm69uOsz8uPWcatwiqEFayj/N0zYLbI+FbxlSOqtu0Q1E9 MQqQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:18:33 -0700
Message-Id: <1374027522-18488-45-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 44/53] wireless-regdb: KW,
	Kuwait - enable VHT80
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

This enables 80 MHz bandwidth usage on 5 GHz.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 0dc6767..acb9358 100644
--- a/db.txt
+++ b/db.txt
@@ -469,8 +469,8 @@ country KR:
 
 country KW:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5170 - 5250 @ 40), (N/A, 20)
-	(5250 - 5330 @ 40), (N/A, 20), DFS
+	(5170 - 5250 @ 80), (N/A, 20)
+	(5250 - 5330 @ 80), (N/A, 20), DFS
 
 country KZ:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

