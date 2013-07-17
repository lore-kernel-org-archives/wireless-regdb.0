Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x22b.google.com ([2607:f8b0:400e:c02::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHL5-0005rU-8u
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:19:35 +0000
Received: by mail-pd0-f171.google.com with SMTP id y14so1297069pdi.2 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=Q3KQpdgm7NM0arQ75/yDQppZolnkmSjzcR6tMfa+OBY=;
 b=UJEQlLRs4GjfoHYvt6kxefcxplsDjvStDT+xYlmfUvrwNM3f/sQJiTSzNxbzoMNDD/
 y9zZq57gT9AW5YcbnUmbU9lIB4771YLbdypxTOqQCmb7rnGWkNefZebIuxDrr7kXC/sw
 f3D0NMXqyx5c5YYiRtDina4uczpb4rxtY1ZJpNUF4TCGP9ZLNlc3iR+JJKhcfcJsPMhW
 imzaG2tY/W15KPw5y3j5CozlAJtQEbkS1kQiJUJghWJ4wWbrykwElyek5CC1ydRlDPyg
 B42e1hA6AceIALRwDl5LJyb0xXVADCMfgwsSymFyGXi/ekhtJ7dNmzAAziB0P9WvsBAH cWfA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:17:54 -0700
Message-Id: <1374027522-18488-6-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 05/53] wireless-regdb: NZ,
	New Zealand - enable VHT80
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
5 GHz bands, decreases the max EIRP on the first
5 GHz band and adds a new band 5490 - 5710 MHz.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index bb846af..1f16aff 100644
--- a/db.txt
+++ b/db.txt
@@ -574,9 +574,10 @@ country NP:
 
 country NZ:
 	(2402 - 2482 @ 40), (N/A, 30)
-	(5170 - 5250 @ 20), (3, 23)
-	(5250 - 5330 @ 20), (3, 23), DFS
-	(5735 - 5835 @ 20), (3, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country OM:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

