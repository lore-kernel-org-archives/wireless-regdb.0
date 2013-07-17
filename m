Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x236.google.com ([2607:f8b0:400e:c02::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHOW-0006KY-Ui
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:23:09 +0000
Received: by mail-pd0-f182.google.com with SMTP id r10so1315138pdi.27 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=xyiX6Dy6itTEnqXYl+wbwyPkBZL85zMgqjgIb280m6A=;
 b=X9ejUVXvLjZvaS/CHgdpr7CCNWhB5NJDEz9CGqnPAA9q/phxgstyjPJbkxtVtaBhf1
 ABLhq5zLtNjGjfUf5L0kWX7I7d1woPxsLbhFmdIto/smtkANfy/0+mrEnXDaeVoHmv+v
 rgtciGMZ6wmrXorqES7cmXO+U4DAyuolzL1wOrSE1f/FwSNfMHGeqb8RfonEtawtoPnE
 dK99K5EfukAbXMME/JRC+yeWrstspOof1Ww+x696wlwxZiFynknZB3zhYNkYQuZV2Ag4
 eIM6aPyLolB/8GULEXkx67zbjon0bzd9sVBVX9hM64/TWkjSVfQ6xDkGgCOStyblST0r DAwA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:18:37 -0700
Message-Id: <1374027522-18488-49-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 48/53] wireless-regdb: KR,
	Republic of Korea - enable VHT80
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

This enables 80 MHz bandwidth usage for 5 GHz.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 0815e6e..530c687 100644
--- a/db.txt
+++ b/db.txt
@@ -462,10 +462,10 @@ country KP:
 
 country KR:
 	(2402 - 2482 @ 20), (N/A, 20)
-	(5170 - 5250 @ 20), (3, 20)
-	(5250 - 5330 @ 20), (3, 20), DFS
-	(5490 - 5630 @ 20), (3, 30), DFS
-	(5735 - 5815 @ 20), (3, 30)
+	(5170 - 5250 @ 80), (3, 20)
+	(5250 - 5330 @ 80), (3, 20), DFS
+	(5490 - 5630 @ 80), (3, 30), DFS
+	(5735 - 5815 @ 80), (3, 30)
 
 country KW:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

