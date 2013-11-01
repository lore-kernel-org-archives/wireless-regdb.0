Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x22e.google.com ([2a00:1450:400c:c00::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFCi-00007o-4I
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:56:01 +0000
Received: by mail-wg0-f46.google.com with SMTP id m15so3998043wgh.1 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=M/oXXs3OP4sUlq0t6HR3aLv121EA+OaV83ImhVEJbvU=;
 b=DBKZFSEA94lVpc22TdlLyvR0MqvYuvwpJgS2PcU00jkkCp0gilgPmwn45m3npp5QH+
 A/dxIFTH+ERt9iIrcLq+rukNbTwjded6qlVs/GJXqecTnmy30lgElaNGvXgWzmaN02j8
 I3Ery5gUD5eFmS6M+066UziMrWQNmTgnGoE8irXHgQJyvQTIZDdBwhHfJzyH1qpFL5bn
 AyPK9hC8ckh7hvSQWHK9U2a3F6UpULeZCqUjTweHb46oPyopPKEZEFjOU3Ms718o6Ss+
 dfrgei3rwfkEkmSOfJz9U6siPyAu/41RgEHNaFFN2//zYoTMMwhppe2yF+/Z6Hb3kNBU c1lw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:55:24 +0100
Message-Id: <1383314131-20774-2-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314131-20774-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314131-20774-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 1/8] wireless-regdb: consolidate
	passive-scan and no-ibss flags
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
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

These are used interchangeably so just do away
with the redundancy.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt     | 8 ++++----
 dbparse.py | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/db.txt b/db.txt
index d0d1a3f..b8ddb1b 100644
--- a/db.txt
+++ b/db.txt
@@ -2,14 +2,14 @@
 country 00:
 	(2402 - 2472 @ 40), (3, 20)
 	# Channel 12 - 13.
-	(2457 - 2482 @ 40), (3, 20), PASSIVE-SCAN, NO-IBSS
+	(2457 - 2482 @ 40), (3, 20), NO-IR
 	# Channel 14. Only JP enables this and for 802.11b only
-	(2474 - 2494 @ 20), (3, 20), PASSIVE-SCAN, NO-IBSS, NO-OFDM
+	(2474 - 2494 @ 20), (3, 20), NO-IR, NO-OFDM
 	# Channel 36 - 48
-	(5170 - 5250 @ 80), (3, 20), PASSIVE-SCAN, NO-IBSS
+	(5170 - 5250 @ 80), (3, 20), NO-IR
 	# NB: 5260 MHz - 5700 MHz requies DFS
 	# Channel 149 - 165
-	(5735 - 5835 @ 80), (3, 20), PASSIVE-SCAN, NO-IBSS
+	(5735 - 5835 @ 80), (3, 20), NO-IR
 	# IEEE 802.11ad (60GHz), channels 1..3
 	(57240 - 63720 @ 2160), (N/A, 0)
 
diff --git a/dbparse.py b/dbparse.py
index 32cbce9..29eb9d6 100755
--- a/dbparse.py
+++ b/dbparse.py
@@ -12,8 +12,8 @@ flag_definitions = {
     'DFS':		1<<4,
     'PTP-ONLY':		1<<5,
     'PTMP-ONLY':	1<<6,
-    'PASSIVE-SCAN':	1<<7,
-    'NO-IBSS':		1<<8,
+    'NO-IR':	        1<<7,
+    # hole at bit 8
     # hole at bit 9. FIXME: Where is NO-HT40 defined?
     'NO-HT40':		1<<10,
 }
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

