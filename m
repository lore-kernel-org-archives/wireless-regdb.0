Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x233.google.com ([2607:f8b0:400e:c03::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY1r-0002x6-VA
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:08:12 +0000
Received: by mail-pa0-f51.google.com with SMTP id lf11so777448pab.10 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=imqMU/ouxACQMbh0QngFBMO9XYnmF5uc2NNpqwJ4JiM=;
 b=EN6rjsbVRNuPyMQnrYgTqxSDIL1XuQzhyWYBDgZKDVKWiFbt00wM1w7xwuiAEuWNHb
 oSnl6vUw5aGekiNQqPNSzZ3QwYp0Gc+/fLJHpSIEpPTu9Gva2XuBeHmMmwUw2Xk+1afJ
 Wsz3QVQAefsec2oxKeu6MPVqdYmxwKgfiEvbM3BMEF/MCk6rfwVAkvtRX5u8cbJ0w7/c
 gM34ioWmACe/MneFwo4b1/IXE3syfpoPafsQJAEN9fZz+dg6N5pwy2NvWG3vV0W7UMor
 3pJnn4oRI9tgcIB3lWn36ORDOvFJy2rAq26WpbjqyDdA3IKr1t4WP9TOiFM26D8Tit7Z 1YPA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:36 -0700
Message-Id: <1372899889-19183-41-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 40/53] wireless-regdb: enable VHT80 and
	VHT160 for JP
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

As per Michael Green we can enable VHT80 and VHT160 on
the enabled JP channels now. I've enabled them only for
the channels where either 80 MHz or 160 MHz actually fits
on the channel spacing for the band defined.

When passed to the kernel I have verified we get:

cfg80211: Regulatory domain changed to country: JP
cfg80211:   (start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
cfg80211:   (2402000 KHz - 2482000 KHz @ 40000 KHz), (N/A, 2000 mBm)
cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (N/A, 2000 mBm)
cfg80211:   (4910000 KHz - 4990000 KHz @ 40000 KHz), (N/A, 2300 mBm)
cfg80211:   (5030000 KHz - 5090000 KHz @ 40000 KHz), (N/A, 2300 mBm)
cfg80211:   (5170000 KHz - 5250000 KHz @ 80000 KHz), (N/A, 2000 mBm)
cfg80211:   (5250000 KHz - 5330000 KHz @ 80000 KHz), (N/A, 2000 mBm)
cfg80211:   (5490000 KHz - 5710000 KHz @ 160000 KHz), (N/A, 2300 mBm)

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index ead6646..63ee9b4 100644
--- a/db.txt
+++ b/db.txt
@@ -433,9 +433,9 @@ country JP:
 	(2474 - 2494 @ 20), (N/A, 20), NO-OFDM
 	(4910 - 4990 @ 40), (N/A, 23)
 	(5030 - 5090 @ 40), (N/A, 23)
-	(5170 - 5250 @ 40), (N/A, 20)
-	(5250 - 5330 @ 40), (N/A, 20), DFS
-	(5490 - 5710 @ 40), (N/A, 23), DFS
+	(5170 - 5250 @ 80), (N/A, 20)
+	(5250 - 5330 @ 80), (N/A, 20), DFS
+	(5490 - 5710 @ 160), (N/A, 23), DFS
 
 country JO:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

