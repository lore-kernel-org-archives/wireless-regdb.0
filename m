Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x22a.google.com ([2607:f8b0:400e:c02::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHOg-0006La-Is
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:23:18 +0000
Received: by mail-pd0-f170.google.com with SMTP id x11so1311572pdj.15 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:22:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=ychJopc5teezUcBGMr3YRfMzRd0VhciTGmEsR07A4qc=;
 b=nvPQa7TxqTrS41r2PXW5CXvL2d4bad3/pSy1YCsHK0NgKH8fkyOr3PsNRIB0E403ha
 muN6cEQrz/LECyZVKb9z6ow7/YCj2Jrm6ioA8/mDTmRgStln57p+Y3BYieM2R3c9jHpO
 rystACRuv+yTzI8pl9uhJBMaFnWeXshgKTnZeUhcUQr/0rfHOd4e1nwB04DJ8jXhRTkQ
 Oz2ffoRjQv39Ym0XK7cyuAdcCs6uVdXtX4FloFj35216JwA5+OYZPOox9EA7d4zIIyC0
 rsKCk5zra1XxPqqfmQ2ceEbxfBNDihtB3hujGF9aHdnHyQU6yOAMyvlkdA8B9FRvL7Ul e3iA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:18:38 -0700
Message-Id: <1374027522-18488-50-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 49/53] wireless-regdb: TW,
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

Note VHT80 for 5290 is not enabled as its use would require
usage of two bands with different parameters.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 530c687..0a4b56f 100644
--- a/db.txt
+++ b/db.txt
@@ -730,7 +730,8 @@ country SY:
 country TW:
 	(2402 - 2472 @ 40), (3, 27)
 	(5270 - 5330 @ 40), (3, 17), DFS
-	(5735 - 5815 @ 40), (3, 30)
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

