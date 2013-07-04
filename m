Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x233.google.com ([2607:f8b0:400e:c01::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY2V-00031z-Sb
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:08:52 +0000
Received: by mail-pb0-f51.google.com with SMTP id um15so672149pbc.10 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=m+Px3oDfQWXBET4cJ5wX9usJ3oobJPIo1eZYZ5u0nr4=;
 b=H2Ue1InoQ0arddch5XkdV/N67m4tbndI1suRIvZPAxhuJ5YO6x5/jisNPgBjwGFeTU
 W9belQMY7NPvY/G1/nr5UFCAz0Exhv+GaWgbudGUYnGvuUZ4GCIA/yeTs3mozZmwBll3
 iZF38JyuunPK0H4KvJBGBlESksC7FmM0GTygm3UCRQfHOeESWIcwhRpCtY2lSATplEcT
 Cw8ICi+9cXu8zd3Dcmd1AFZ89BLQeQCWGkpFDMXR/w3j0U3kb3AD6t5o9kw1viA/+2DD
 fIkxleN9VfPatgMXvBeOixkXUut/YmdxRN9XfZnEIzflfi8jpofM4/g6VMX9G0CxVTAm jXHA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:45 -0700
Message-Id: <1372899889-19183-50-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 49/53] wireless-regdb: TW,
	Taiwan - enable VHT80
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

This enables 80 MHz bandwidth usage and enables a new
5 GHz band:

  * 5490 - 5710 MHz

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 9765ad8..7b1e6e8 100644
--- a/db.txt
+++ b/db.txt
@@ -729,8 +729,9 @@ country SY:
 
 country TW:
 	(2402 - 2472 @ 40), (3, 27)
-	(5270 - 5330 @ 40), (3, 17), DFS
-	(5735 - 5815 @ 40), (3, 30)
+	(5270 - 5330 @ 80), (3, 17), DFS
+	(5490 - 5710 @ 80), (3, 30), DFS
+	(5735 - 5815 @ 80), (3, 30)
 
 country TH:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

