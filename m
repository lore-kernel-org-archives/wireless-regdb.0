Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x22e.google.com ([2a00:1450:400c:c00::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFKW-00016a-Qf
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:04:05 +0000
Received: by mail-wg0-f46.google.com with SMTP id m15so4020971wgh.13 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6wQv4rMbsXkBAyZCzzPUqDTA3my7cb5xFAKW6LmZlyk=;
 b=C7wh1JgylpTHSFHioPnbdY9CSliu1ovPQjoF/Hl+awQYsZ/lhQmr/W9wbBrAN0R/U5
 QtLynszM69dGnlfD6GNoJgrtSRbyo3OwLJfmzLx8IZiz1h/pzdC18Dvd0XZP+djXPH3T
 xjsng3tYt1LO9olyS0KUGgznWI+q7+zGunJ/RtJEDAWIOm8rkbN5J8DFNZPMoV7+KSiu
 oszFtxQJRJ32uWPT41hPHpY2Em72DhUTTvBGWG/dcT7IGgF5GK4KmMVsRkkRgDgOG7wE
 niCUFhXLiCKyiLa//buzF5t7yrTCtu3SQTimWiMOTQeT8UADtdlqBfHb/viV92M4ekoG zujQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 15:03:00 +0100
Message-Id: <1383314598-21240-6-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 05/23] wireless-regdb: update MC's 5 GHz
	rules
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

This:

  o increase the max EIRP from 18 dBm to 20 dBm
    on the existing 5 GHz frequency ranges
  o enables VHT80
  o adds a new 5 GHz DFS frequency range

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index c788681..b8aa9d9 100644
--- a/db.txt
+++ b/db.txt
@@ -528,8 +528,9 @@ country LV: DFS-ETSI
 
 country MC: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (18)
-	(5250 - 5330 @ 40), (18), DFS
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
 
 country MA: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

