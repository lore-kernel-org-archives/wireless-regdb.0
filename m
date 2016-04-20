Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wm0-x235.google.com ([2a00:1450:400c:c09::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1asgFy-0001NO-5j
 for wireless-regdb@lists.infradead.org; Wed, 20 Apr 2016 00:44:39 +0000
Received: by mail-wm0-x235.google.com with SMTP id n3so56233018wmn.0 for
 <wireless-regdb@lists.infradead.org>; Tue, 19 Apr 2016 17:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5CJFCQXS5Y08I4hbrGEOECPB9d8XXBkEA2rJlI3+0b8=;
 b=CryZ3uY3Y/GU38aNIXlBDb/4ybR8ofP/2HQ3XAW+N8Y2ushMF/Wk4YDwlzc0WGELbL
 rYshWjzZ/92Nzxhlr+kcN5KDiE0wNKWe6cEP/otlgWNMSCp1fOGPhoSEEZc/nN9RW2yt
 ey+HXPnV+o5ZgsELBfdI6YKJlmrNH0PVbsAYUHaJcbKFXhrWiezEOA5+YdHJ9pK+5KBN
 UEprJPDQHA17WvIkxSQssphnncbO1vji0rRCeVzHlyJhMjHSnTctm+EuwpmXCoxDNLbo
 AT0amWaJuCvw6sCVLBjl9ot9DILp/tW6P/heE9GYR6nB2/Tl0+5hVT76rZgWvrjPTD96 AebA==
From: Petko Bordjukov <bordjukov@gmail.com>
Date: Wed, 20 Apr 2016 03:44:03 +0300
Message-Id: <1461113043-30102-2-git-send-email-bordjukov@gmail.com>
In-Reply-To: <1461113043-30102-1-git-send-email-bordjukov@gmail.com>
References: <1461113043-30102-1-git-send-email-bordjukov@gmail.com>
Subject: [wireless-regdb] [PATCH] Update the regulatory rules for Bulgaria
	(BG)
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
To: wireless-regdb@lists.infradead.org
Cc: bordjukov@gmail.com
List-ID: <wireless-regdb@lists.infradead.org>

Make sure the rules reflect exatly the contents of the List of Radio
Equipment That Uses Harmonized Within the European Union Bands and
Electronic Communications Terminal Equipment[1] and add proper
references.

[1] http://www.crc.bg/files/_bg/Spisak_2015.pdf

Signed-off-by: Petko Bordjukov <bordjukov@gmail.com>
---
 db.txt | 37 +++++++++++++++++++++++++------------
 1 file changed, 25 insertions(+), 12 deletions(-)

diff --git a/db.txt b/db.txt
index e9ba21a..5d2fdf5 100644
--- a/db.txt
+++ b/db.txt
@@ -136,19 +136,32 @@ country BF: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+# Bulgarian rules as defined by the Communications Regulation Commission in the
+# following documents:
+#
+# Rules for carrying out electronic communications through radio equipment using
+# radio spectrum, which does not need to be individually assigned (the Rules):
+# http://www.crc.bg/files/_bg/Pravila_09_06_2015.pdf
+#
+# List of radio equipment that uses harmonized within the European Union bands
+# and electronic communications terminal equipment (the List):
+# http://www.crc.bg/files/_bg/Spisak_2015.pdf
 country BG: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
-	(5490 - 5710 @ 160), (27), DFS
-	# 5 GHz Short Range Devices, ref:
-	# Etsi EN 300 440-1
-	# Etsi EN 300 440-2
-	# http://crc.bg/files/_bg/Spisak_2015.pdf
-	# http://crc.bg/files/_bg/Pravila_2015_resh24.pdf
-	(5725 - 5875 @ 80), (14)
-	# 60 GHz band channels 1-4, ref: Etsi En 302 567
-	(57000 - 66000 @ 2160), (40)
+	# Wideband data transmission systems (WDTS) in the 2.4GHz ISM band, ref:
+	# I.22 of the List, BDS EN 300 328
+	(2402 - 2482 @ 40), (100 mW)
+	# 5 GHz Radio Local Area Networks (RLANs), ref:
+	# II.H01 of the List, BDS EN 301 893
+	(5170 - 5250 @ 80), (200 mW), AUTO-BW
+	(5250 - 5330 @ 80), (200 mW), DFS, AUTO-BW
+	# I.54 of the List, BDS EN 301 893
+	(5490 - 5710 @ 160), (1000 mW), DFS
+	# Short range devices (SRDs) in the 5725-5875 MHz frequency range, ref:
+	# I.43 of the List, BDS EN 300 440-2
+	(5725 - 5875 @ 80), (25 mW)
+	# 60 GHz Multiple-Gigabit RLAN Systems, ref:
+	# II.H03 of the List, BDS EN 302 567-2
+	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
 
 country BH: DFS-JP
 	(2402 - 2482 @ 40), (20)
-- 
2.8.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

