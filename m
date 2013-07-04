Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x235.google.com ([2607:f8b0:400e:c03::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY2i-00036u-UB
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:09:05 +0000
Received: by mail-pa0-f53.google.com with SMTP id tj12so778678pac.12 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=z+sq9eLIBeeENkqr+pKhp8A1Dy7r+0nRi7Q5nWQ98yY=;
 b=GCA4m7uqW8vO9Dbyrz/ff+bbCwS/99qQrv9mcEK+46nsg/MLX7vN/y0voUFkQz6A3Y
 En2ZZi+c8A5AVdE6uA6NNy46iEaBWD5lOWUA5GVWA8dkNnnHp8KcaF/dp5s7/J470KZK
 6XJ+QUEZNHaZ0Xz6Ahj7GciH6hWW+60Oco4LoB/bRRtoZFb/cx8PJ5udE46jRu7Y4w9b
 AP7rWMP76ErtG7boVc6/fVgFhqHG7jWiI0r5dBNOPD8ma3ZQ7GoUbUKAGM0+nAduWFCx
 Quf8vIV1vrFDZt9IBJyDuHAmDJbjFsD1I7gOGQnbK4SstAGtNKfty9zoO60as0iZ/NYf 9Cfw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:48 -0700
Message-Id: <1372899889-19183-53-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 52/53] wireless-regdb: CR,
	Costa Rica - enable VHT80
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

This enables 80 MHz bandwidth usage for Costa Rica,
updates the max EIRP and adds a new 5 GHz band:

  * 5490 - 5710

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index b4f9ffa..43a062f 100644
--- a/db.txt
+++ b/db.txt
@@ -182,9 +182,10 @@ country CO:
 
 country CR:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5170 - 5250 @ 20), (3, 17)
-	(5250 - 5330 @ 20), (3, 23), DFS
-	(5735 - 5835 @ 20), (3, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country CS:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

