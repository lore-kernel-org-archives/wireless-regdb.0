Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x22a.google.com ([2607:f8b0:400e:c03::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY2a-00032H-Pn
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:08:57 +0000
Received: by mail-pa0-f42.google.com with SMTP id rl6so779092pac.15 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:08:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=jwM5ZJtf+ZzOmU9xOzoNahm4VjI8c1XeEWaNECuYKnM=;
 b=gLzMBJFR2qe5Z8QZdAIk0xSdC+8uL3U4KgMawU8UETUZYQfg0/OpdbG5jd3i2yqce6
 PYa6iaAYHMi50XwzSYa5IGhPT7sBIBkPHY/fRMEMjBg7n4mpx7xBFZaD1oChs2BPs12i
 3tI0vX8UNMyr/53XQDI7mPLlVKOOUrGQsCuG4w3nZEc/xqpBam62xDADHyD0q+Q+rqq0
 x6TTdMQOf2pmHaweW998n+ybngpIXTQI64AB0dKWZE3U6tHkNxr/CU7xVCvcg/W2yqtC
 Me8y1Z3IXKsi07ISiton2IgXWTcpEQb9M3LuO3/q1c/p9Ezik9xjgRczLmJQcQfCbNTL dJ7Q==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:46 -0700
Message-Id: <1372899889-19183-51-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 50/53] wireless-regdb: enable VHT80 when
	world roaming
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

For VHT, the wider bandwidths (up to 160 MHz) need
to be allowed. Since world roaming only covers the
case of connecting to an AP, it can be opened up
there, we will rely on the AP to know the local
regulations.

Based on a patch by Johannes Berg for upstream Linux.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 7b1e6e8..767aee3 100644
--- a/db.txt
+++ b/db.txt
@@ -6,10 +6,10 @@ country 00:
 	# Channel 14. Only JP enables this and for 802.11b only
 	(2474 - 2494 @ 20), (3, 20), PASSIVE-SCAN, NO-IBSS, NO-OFDM
 	# Channel 36 - 48
-	(5170 - 5250 @ 40), (3, 20), PASSIVE-SCAN, NO-IBSS
+	(5170 - 5250 @ 80), (3, 20), PASSIVE-SCAN, NO-IBSS
 	# NB: 5260 MHz - 5700 MHz requies DFS
 	# Channel 149 - 165
-	(5735 - 5835 @ 40), (3, 20), PASSIVE-SCAN, NO-IBSS
+	(5735 - 5835 @ 80), (3, 20), PASSIVE-SCAN, NO-IBSS
 
 
 country AD:
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

