Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-io0-f181.google.com ([209.85.223.181])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zj6M6-0001YG-PE
 for wireless-regdb@lists.infradead.org; Mon, 05 Oct 2015 14:03:07 +0000
Received: by iofh134 with SMTP id h134so186550041iof.0 for
 <wireless-regdb@lists.infradead.org>; Mon, 05 Oct 2015 07:02:45 -0700 (PDT)
From: Seth Forshee <seth.forshee@canonical.com>
Date: Mon,  5 Oct 2015 09:02:02 -0500
Message-Id: <1444053722-33852-1-git-send-email-seth.forshee@canonical.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update ZA rules for
	5490-5710 MHz
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org
Cc: Seth Forshee <seth.forshee@canonical.com>, linux-wireless@vger.kernel.org, =?UTF-8?q?Karl=20M=C3=B6ller?= <karl@excors.net>
List-ID: <wireless-regdb@lists.infradead.org>

The Radio Frequency Spectrum Regulations 2015 [1] drops the
requirement for DFS and TPC in the 5490-5710 MHz range. Update
the database to remove DFS for this range and remove the 3dB drop
in the transmit power limit for TPC.

[1] http://www.ellipsis.co.za/wp-content/uploads/2014/12/Radio-Frequency-Spectrum-Regulations-2015.pdf

Cc: Karl Möller <karl@excors.net>
Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index d57ea84..721b081 100644
--- a/db.txt
+++ b/db.txt
@@ -1242,7 +1242,7 @@ country ZA: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
-	(5490 - 5710 @ 160), (27), DFS
+	(5490 - 5710 @ 160), (30)
 
 country ZW: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.9.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
