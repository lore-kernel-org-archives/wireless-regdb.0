Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x229.google.com ([2607:f8b0:400e:c03::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHLl-0005wD-1u
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:20:17 +0000
Received: by mail-pa0-f41.google.com with SMTP id bj3so1429740pad.0 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=BEY2bcO/q0Ittxnsm5TrrxNV7aOeZrR8rp0PKFB50BY=;
 b=qwHO+x3TMSceC7cJXQnfCHRapp2wudjWvtRUtp7jBFIl0+3ZqNKOncD0yRi6hb5sc9
 gnygJqqVYqHYQLq5fCAzDKFo61H8zObqgpErBwrBUMmPIqGmkGDCWwAJpVjfX3dfrqE9
 qVft6c6BjU+TtyeyXoWRZqf1+/DXRrEYt3G9amuryq6oPsyzAbH0UHaAd8X+hUkDgQ7E
 L8kyJLpm0NeVDBHA3HmPOzGVHIST+A2xxfnp3HtZlLgeZ0mMsSTcBJV1B6w85owWDgcO
 hu9QluTL7mfkmK9GDybEg7ArzYnvVpAI3+GSpMfCiJMCVbu8EryJVN9fUfU8wLsOIi1N tHYA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:18:02 -0700
Message-Id: <1374027522-18488-14-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 13/53] wireless-regdb: SA,
	Saudi Arabia - enable VHT80
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
a new DFS 5 GHz band: 5490 - 5710 MHz.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 867b070..8e7fe8d 100644
--- a/db.txt
+++ b/db.txt
@@ -674,9 +674,10 @@ country RW:
 
 country SA:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5170 - 5250 @ 20), (3, 23)
-	(5250 - 5330 @ 20), (3, 23), DFS
-	(5735 - 5835 @ 20), (3, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country SE: DFS-ETSI
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

