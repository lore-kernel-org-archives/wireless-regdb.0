Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x22d.google.com ([2a00:1450:400c:c05::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YqVLQ-0002B8-9S
 for wireless-regdb@lists.infradead.org; Thu, 07 May 2015 23:36:45 +0000
Received: by wiun10 with SMTP id n10so9120461wiu.1 for
 <wireless-regdb@lists.infradead.org>; Thu, 07 May 2015 16:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=from:to:cc:subject:date:message-id;
 bh=HeM0pRKutPvzZ5rM2E/ejfhPip/SWBjCtLjdYvAjIzU=;
 b=mI1bDJLJimpNgcGMEHIBP+jBp+bzAYtTn16jy2txHSWaMNA9QSvUILSozgQlXv8m3w
 O6ygx0cuHsvav4Kt41TwQ44zSPgYR81MioCK86rf77uWjagdMPoNbuRj9tqICc31AWRK
 IvlJbMKq8O7eGeupjJGwNW3+FjoRSAmT0XmLZHdWlt+GTBy93vy5H5MlMuEfid+6KVOK
 QeaKNE60v1pozWAM56X0jo096TvYJCiXap+f/HXFG5/S9tn/dN05QFn1fWAl/Qotjh0D
 Jpc6jyEwwIvVRV/CVooGRRuqeJcVx6hgDmDzRi1ggGdWzzkvoMIr7qmaOSqgUmUEoRY/ fEqA==
From: Petko Bordjukov <bordjukov@gmail.com>
Date: Fri,  8 May 2015 02:36:05 +0300
Message-Id: <1431041765-27166-1-git-send-email-bordjukov@gmail.com>
Subject: [wireless-regdb] [PATCH] wireless-regdb: update BG rules for 5725
 - 5875 mHz
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
Cc: Petko Bordjukov <bordjukov@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

The ETSI EN 300 440-1 and EN 300 440-2 standards mandate the use of the
5725mHz - 5875mHz band as follows:

Application - Generic use
Maximum Radiated Power - 25mW

The Bulgarian Communications Regulations Commission has made the
decision to harmonise its regulations for this band with the EU
regulations [1], [2].

Based on this data, introduce the 5725mHz - 5875mHz band for the BG
regulatory domain.

[1] http://crc.bg/files/_bg/Spisak_2015.pdf
[2] http://crc.bg/files/_bg/Pravila_2015_resh24.pdf

Signed-off-by: Petko Bordjukov <bordjukov@gmail.com>
---
 db.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/db.txt b/db.txt
index ad2acf5..daa84f9 100644
--- a/db.txt
+++ b/db.txt
@@ -141,6 +141,12 @@ country BG: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+        # 5 gHz Short Range Devices, ref:
+        # Etsi EN 300 440-1
+        # Etsi EN 300 440-2
+        # http://crc.bg/files/_bg/Spisak_2015.pdf
+        # http://crc.bg/files/_bg/Pravila_2015_resh24.pdf
+        (5725 - 5875 @ 80), (14)
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
-- 
2.4.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

