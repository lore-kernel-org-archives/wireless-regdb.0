Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wm0-x236.google.com ([2a00:1450:400c:c09::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1atX4U-000310-3c
 for wireless-regdb@lists.infradead.org; Fri, 22 Apr 2016 09:08:19 +0000
Received: by mail-wm0-x236.google.com with SMTP id n3so16597913wmn.0 for
 <wireless-regdb@lists.infradead.org>; Fri, 22 Apr 2016 02:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cUslfg3NLH3/FPWwWW84+OBrCEoXQxztsDgKPIaK6r8=;
 b=atIG0ld38r/LAK6UwqLEEvmfpkPxWyJEfub0AdO6U05x3mLa6kqKm6PZs3gFeFlg4Q
 a5YbaKA735Y3eix6vZB53PBGxVJRKT5bC4yhopw+CTqDgKarjvbl6PX/2/UTYKl7yQw7
 b8hSYblU2WJVAX39klPbGJkxFnm39yl7OVrh8o2xKD5xyeaDKbsv3c6khMt52zo8Gicu
 1ObI2QJswpgxYHhOEbERdCy6sID0mWOEeNdeosT/Zv3TP8euV5fTnPncg3y1/6g93PjN
 0xvXEqPlLI5ymb0lafB6GT1/47lXgT0i5Z4Zgr45RH2E3nPBVukl4p6Pgh8MJ3mzubac Gs3g==
From: Petko Bordjukov <bordjukov@gmail.com>
Date: Fri, 22 Apr 2016 12:07:50 +0300
Message-Id: <1461316070-32666-1-git-send-email-bordjukov@gmail.com>
In-Reply-To: <1461258158-16699-1-git-send-email-bordjukov@gmail.com>
References: <1461258158-16699-1-git-send-email-bordjukov@gmail.com>
Subject: [wireless-regdb] [PATCH v3] Update the regulatory rules for
	Bulgaria (BG)
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
 db.txt | 29 +++++++++++++++++++++--------
 1 file changed, 21 insertions(+), 8 deletions(-)

diff --git a/db.txt b/db.txt
index e9ba21a..19b9417 100644
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
+	# Wideband data transmission systems (WDTS) in the 2.4GHz ISM band, ref:
+	# I.22 of the List, BDS EN 300 328
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW
+	# 5 GHz Radio Local Area Networks (RLANs), ref:
+	# II.H01 of the List, BDS EN 301 893
+	(5170 - 5250 @ 80), (23), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
+	# II.H01 of the List, I.54 from the List, BDS EN 301 893
 	(5490 - 5710 @ 160), (27), DFS
-	# 5 GHz Short Range Devices, ref:
-	# Etsi EN 300 440-1
-	# Etsi EN 300 440-2
-	# http://crc.bg/files/_bg/Spisak_2015.pdf
-	# http://crc.bg/files/_bg/Pravila_2015_resh24.pdf
+	# Short range devices (SRDs) in the 5725-5875 MHz frequency range, ref:
+	# I.43 of the List, BDS EN 300 440-2, BDS EN 300 440-1
 	(5725 - 5875 @ 80), (14)
-	# 60 GHz band channels 1-4, ref: Etsi En 302 567
-	(57000 - 66000 @ 2160), (40)
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

