Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x22e.google.com ([2607:f8b0:400e:c02::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHME-0005z5-R3
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:20:47 +0000
Received: by mail-pd0-f174.google.com with SMTP id 10so1300285pdc.5 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:20:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=35ujA0rrw11eY7X/D7BxlaEigEjoqr/Ft/yAYRo0MnE=;
 b=UfYDoyVM1IZDjVse4OStbwowqLV2viQhgOOakTi6fBLavRtvVh7a2j68YiE2oXTP/m
 cwfaKUq5qp9JNYjjKapL3rMCRyrelicuCCtvGXUkhonAKVLp7VALIKJ98nVSIDlkZtGM
 scst641uKOc3C9qiA/5stSysBB3JhRr2inOXFU1palwOLwHVuahKCSyLzfLl7fsIgmnv
 GZsW0rPoWXOU9ab2VKEVUSV2wNNcfq/OXDGMl3onz/3C8gSgttRCAo3ZSaUR08HsVNQO
 WdyZ9CZNymXmiQCk6VLxFA+CcYq+qNLk0CnvMkTJEQyyEBEoh0FK2yFBBlMOx87W7CVk I2SQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:18:07 -0700
Message-Id: <1374027522-18488-19-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 18/53] wireless-regdb: VN,
	Vietnam - enable VHT80
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
frequencies and update the max EIRP. This also adds
two new 5 GHz bands:

  * 5490 - 5710 MHz
  * 5735 - 5835 MHz

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index f714982..47bfc95 100644
--- a/db.txt
+++ b/db.txt
@@ -796,8 +796,10 @@ country VE:
 
 country VN:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5170 - 5250 @ 40), (N/A, 20)
-	(5250 - 5330 @ 40), (N/A, 20), DFS
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country YE:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

