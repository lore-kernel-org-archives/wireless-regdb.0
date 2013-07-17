Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x232.google.com ([2607:f8b0:400e:c02::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHLf-0005vf-I5
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:20:12 +0000
Received: by mail-pd0-f178.google.com with SMTP id w11so1305824pde.37 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=FNS+aTKz8F42ezWYi7lLsmxZet9BDn7lBpV9zhrJH0k=;
 b=EFQ3R8W7UtEzra6Qgm2benWaUZIlG9c4RPsTI/aQiMyaGrsw/gR2RzxJgeBs0QoQi4
 mXAiHw3VlUvdox8f2XhmUxnqFlTj9SsL0if7awvHdq18vbly4ishxr8NHgfCFUk/c+4h
 kP8liIkVJRFSGQlYVXxPZNVFz4kuZHqQBPuV2jkmz2WiOnjrBvD2z9OAHG2JjcdheRR4
 NHCy3ekp4xXXstS5Bo+Hem29AXhY4/MTb3JcNjkapDVBm8Iz7g7KvjAlTqtsMIA8o2c6
 4F1Xl/xQGEEN9o/asoUAHmscpxwkroS6KIrutXeuq27+ipz7WGNMjJlZAczqVgXLoJC0 HIwQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:18:01 -0700
Message-Id: <1374027522-18488-13-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 12/53] wireless-regdb: PR,
	Puerto Rico - enable VHT80
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

PR is a proper ISO 3166 alpha2 code for Puerto Rico,
an unincorporated territory of the United States.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index c37c3d6..867b070 100644
--- a/db.txt
+++ b/db.txt
@@ -637,9 +637,10 @@ country PT: DFS-ETSI
 
 country PR:
 	(2402 - 2472 @ 40), (3, 27)
-	(5170 - 5250 @ 40), (3, 17)
-	(5250 - 5330 @ 40), (3, 23), DFS
-	(5735 - 5835 @ 40), (3, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country QA:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

