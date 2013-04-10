Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-f170.google.com ([209.85.192.170])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPpM0-0005fv-79
 for wireless-regdb@lists.infradead.org; Wed, 10 Apr 2013 07:22:02 +0000
Received: by mail-pd0-f170.google.com with SMTP id 10so111521pdi.29 for
 <wireless-regdb@lists.infradead.org>; Wed, 10 Apr 2013 00:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=x-received:sender:from:to:cc:subject:date:message-id:x-mailer;
 bh=VNt3t/45zalLGAlnTTmkGMOjn6mNh07va0SmmKYuZOk=;
 b=f9T2ZidIfahFhykcG4+KYUQtlgLxRzXHomaVhAYEeserqTYJMJJzxahBvdDOBk191n
 xjXY/sClP4AJ45TqUuQEkMRmmVC3FIBh9SZWsrNk74FMqqhxICB7k7wOBhFFTMH/QnPk
 elcRiBoZMmK6lLlm1x4Wr7isHXaqehsRTjPdYTnBlmjd7okJdEsAmBg2RI3JDgI61Bq6
 aaFQPRkd9eIy7xragcLPUGSKRQ08l08Vsqfu7B736n58Q4rsQQjVAg2IdWqlZesExAtV
 DCzXlRtvkTig2iPAnDT+S2cW0wHTtrUbbeqeUEpRQio3At74Yg6DWArEkZnmT+tbxgta 5Itg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed, 10 Apr 2013 00:21:50 -0700
Message-Id: <1365578510-4665-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH] wireless-regdb: enable VHT80 and VHT160
	for JP
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
Cc: wireless-regdb@lists.infradead.org, kandala@qca.qualcomm.com, "Luis R.
 Rodriguez" <mcgrof@do-not-panic.com>, linux-wireless@vger.kernel.org, qca_vkondrat@qca.qualcomm.com, green@qca.qualcomm.com, yunsenw@qca.qualcomm.com
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

Cc: Vladimir Kondratiev <qca_vkondrat@qca.qualcomm.com>
Cc: Yunsen Wang <yunsenw@qca.qualcomm.com>
Cc: wireless-regdb@lists.infradead.org
Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index c878b27..22c975c 100644
--- a/db.txt
+++ b/db.txt
@@ -431,9 +431,9 @@ country JP:
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

