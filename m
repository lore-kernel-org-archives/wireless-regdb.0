Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x231.google.com ([2607:f8b0:400e:c03::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHKv-0005rI-CW
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:19:25 +0000
Received: by mail-pa0-f49.google.com with SMTP id ld11so1408074pab.36 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=Cf4ceZdRCbWnlONqoJAybjPYQ1d8fdGEXq+5ojgrtI4=;
 b=KN1v2WVesfa9uNJyTvm6ZAqYhHhKL7GTX10eJZHP9KBiGWQ4QAkXbJFtnHr2xzwDYA
 JYkmEV2xa4cw9zor3KEmdAXM3lxb6QGb2V9L5heq+GHTQDh6PlnJcm8TrmXT8mLHPFDP
 MsYws7AW8UvsbnudTTwxWTyrq2Na08Rfs6ygA5ycxjbdpukHdS4Rvo6ppevp/33HfrIb
 3ePCSH4pms/kxWZIHXO7WGdY2CUjpxLLgN8gPIguFkhyWZkTUXIVaN8We28AioG1UCO2
 ypSA/P9F2MC0jn9mQtopQpUJ4PgX8v6i3foVJVEi8QzQh60d2CZ2kD1BWjqzfFF+/FRC Qabg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:17:52 -0700
Message-Id: <1374027522-18488-4-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 03/53] wireless-regdb: CA,
	Canada - enable VHT80
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
index a6c23bd..37a13c6 100644
--- a/db.txt
+++ b/db.txt
@@ -142,10 +142,10 @@ country BZ:
 
 country CA:
 	(2402 - 2472 @ 40), (3, 27)
-	(5170 - 5250 @ 40), (3, 17)
-	(5250 - 5330 @ 40), (3, 20), DFS
-	(5490 - 5710 @ 40), (3, 20), DFS
-	(5735 - 5835 @ 40), (3, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country CH: DFS-ETSI
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

