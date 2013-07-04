Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x232.google.com ([2607:f8b0:400e:c01::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuXzX-0002gD-UJ
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:05:48 +0000
Received: by mail-pb0-f50.google.com with SMTP id wz7so664921pbc.37 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=w3dWrQr92eKPj21BTTAUZZqYVMcl6aolBHnJ7xbx9uE=;
 b=UXAFiNdhhWr2q1+qP18gTZUuSv3/VzyFY6nbzIMZRwMTN8nMfZSH202w7I1qdVpSo0
 MhG0+VP4nof7aMiO705DbGQEeL8d1YUsjuut02oWEBqLxhKlKneazPkM0DHuqPq3lLm4
 KJX1dh3+61pNyq7+42lrrS9KeeXyU81p6DWeHuGcnfQP/1doL9ZAPNAdOk3haOMXdCie
 K5ZgSJw6sA2SB/81QD8qrFx12Gir0gvPJ+3reca0ZNmhlC5UFWPC3ymNGDtIGZGqYsXN
 Oajl3hQ3WWuGTzwliWPksP/vS12izoIjaM9RGdyr/bLShAze4FPgnRhFGjghKG45SlJ+ 1ETw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:03 -0700
Message-Id: <1372899889-19183-8-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 07/53] wireless-regdb: CO,
	Colombia - enable VHT80
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
index b82b255..6d7a762 100644
--- a/db.txt
+++ b/db.txt
@@ -172,9 +172,10 @@ country CN:
 
 country CO:
 	(2402 - 2472 @ 40), (3, 27)
-	(5170 - 5250 @ 40), (3, 17)
-	(5250 - 5330 @ 40), (3, 23), DFS
-	(5735 - 5835 @ 40), (3, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country CR:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

