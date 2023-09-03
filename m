Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:Cc
 :To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=Jy1JPkIIpoYaqQWGwP9eb7KG5g+U4Mf+8oAa28M+ndk=;
 b=Lnwsv+JDqBEe4f
 fLeF//OiROgzdchryoTmjjOF/vwJqSMyhTKG66ieVEL7EvCdl1Jzk3sBxamDuiQXWKJLYuNX5lEg0
 AkhILRo5D9sXhPtXppIzek/rmwyuBzc02TXMmZlgf+unl/BiXxBtWstXDjT1zsWeJLHK2/mUos9M7
 9aaelCmRPOHJ9JS6plwWsyUxNuKWffoEoD63cxxvij8EtQE5jGXmgldnKE07UrELMqWzK3j7BEDuk
 n7B+UGSKo+rsWVir8A7mrcFkcYBWGVOAON6TkQH9R5oxlOD+RZk0cU6elPfNpmVDXDWMZrJrYR18O
 /LyrxWrZUjXpyupCMD0w==;
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qckDm-002Jac-1k
	for wireless-regdb@lists.infradead.org;
	Sun, 03 Sep 2023 10:20:48 +0000
Received: by mail-pg1-x52d.google.com with SMTP id
 41be03b00d2f7-56b2e689968so107358a12.0 for
 <wireless-regdb@lists.infradead.org>; Sun, 03 Sep 2023 03:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ndoo.sg; s=google;
 t=1693736445; x=1694341245; darn=lists.infradead.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=6XXDs+jljXJa177mWNIN+D05m6VZztSbnyEvLxch/Pg=;
 b=fjarDzlXV297pew3L1RFtUXMgHPjfHverXfQqORxmpYgzwWVxkHrKjF3mYM6j0h3l9
 4mE+UywpzlQb5nJOGkg9OpkJDqUEixTL9QqZXzoIajuOhAaQCFNcosU6TgK7kCPnUuZd
 x2xBI5QMEAYixCDOCRN3DPhTtcQiy4uhRgOIw=
From: Andrew Yong <me@ndoo.sg>
Date: Sun,  3 Sep 2023 18:20:22 +0800
Message-ID: <20230903102022.11186-1-me@ndoo.sg>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
 for Singapore (SG) for September 2023
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org, Andrew Yong <me@ndoo.sg>
List-ID: <wireless-regdb@lists.infradead.org>

 - Update regulatory rules for September 2023 IMDA TS SRD [1]
 - Enable 5945 - 6425 MHz (Wi-Fi 6E) band per legislation
 - Switch units from dBm to mW to match values listed in legislation
 - Allow AUTO-BW between 5470 - 5850 MHz to permit additional 160 MHz BW options

[1] https://www.imda.gov.sg/-/media/imda/files/regulation-licensing-and-consultations/ict-standards/telecommunication-standards/radio-comms/imdatssrd.pdf

Signed-off-by: Andrew Yong <me@ndoo.sg>
---
 db.txt | 34 ++++++++++++++++++----------------
 1 file changed, 18 insertions(+), 16 deletions(-)

diff --git a/db.txt b/db.txt
index fdc2c13..cbe1a88 100644
--- a/db.txt
+++ b/db.txt
@@ -1584,25 +1584,27 @@ country SE: DFS-ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
-# https://www.imda.gov.sg/-/media/Imda/Files/Regulation-Licensing-and-Consultations/ICT-Standards/Telecommunication-Standards/Radio-Comms/IMDATSSRD.pdf
-# IMDA TS SRD, Issue 1 Revision 1, April 2019, subsequently "IMDA TS SRD"
-# 2400 - 2483.5 MHz: IMDA TS SRD, Table 1 (25); ANSI C63.10-2013 and FCC Part 15 Section 15.247 or EN 300 328
-# 5150 - 5350 MHz: IMDA TS SRD, Table 1 (29); FCC Part 15 Section 15.407 (1) 5.15-5.25 GHz (2) 5.25-5.35 GHz; EN 301 893
-# 5470 - 5725 MHz: IMDA TS SRD, Table 1 (30); FCC Part 15 Section 15.407 (2) 5.47-5.725 GHz; EN 301 893
-# 5725 - 5850 MHz: IMDA TS SRD, Table 1 (27); FCC Part 15 Section 15.247; FCC Part 15 Section 15.407 (3) 5.725-5.85 GHz
-# 57000 - 66000 MHz: IMDA TS SRD, Table 1 (31); ETSI EN 302 567
-# Note: 27dBm for 5470-5725MHz bands is 3dBm reduction per FCC Part 15 Section 15.407 (2) 5.47-5.725 GHz; EN 301 893 as referenced by IMDA TS SRD
+# https://www.imda.gov.sg/-/media/imda/files/regulation-licensing-and-consultations/ict-standards/telecommunication-standards/radio-comms/imdatssrd.pdf
+# IMDA TS SRD, Issue 1 Revision 3, Sep 2023, subsequently "IMDA TS SRD"
+# 2400 - 2483.5 MHz: IMDA TS SRD, Table 1 Sub-band 32e
+# 5150 - 5350 MHz: IMDA TS SRD, Table 1 Sub-band 33a
+# 5470 - 5725 MHz: IMDA TS SRD, Table 1 Sub-band 34
+# 5725 - 5850 MHz: IMDA TS SRD, Table 1 Sub-band 35
+# 5945 - 6425 MHz: IMDA TS SRD, Table 1 Sub-band 45b
+# 57000 - 66000 MHz: IMDA TS SRD, Table 1 Sub-band 40
+# Note: 500mW for 5470-5725MHz bands per FCC Part 15 Section 15.407 (2) 5.47-5.725 GHz as referenced by IMDA TS SRD
 #  AU and BG regulatory domains use the same interpretation of cited FCC and ETSI standards
-# Note: The transmit power for 5250-5350MHz bands can be raised by 3dBm when TPC is implemented: IMDA TS SRD Table 1 (29)
-# Note: The transmit power for 5470-5725MHz bands can be raised by 3dBm when TPC is implemented: IMDA TS SRD Table 1 (30)
+# Note: The transmit power for 5250-5350MHz bands can be raised by 3dBm when TPC is implemented: IMDA TS SRD, Table 1 Sub-band 33a
+# Note: The transmit power for 5470-5725MHz bands can be raised by 3dBm when TPC is implemented: IMDA TS SRD Table 1 Sub-band 34
 
 country SG: DFS-FCC
-	(2400 - 2483.5 @ 40), (23)
-	(5150 - 5250 @ 80), (23), AUTO-BW
-	(5250 - 5350 @ 80), (20), DFS, AUTO-BW
-	(5470 - 5725 @ 160), (27), DFS
-	(5725 - 5850 @ 80), (30)
-	(57000 - 66000 @ 2160), (40)
+	(2400 - 2483.5 @ 40), (200 mW)
+	(5150 - 5250 @ 80), (200 mW), AUTO-BW
+	(5250 - 5350 @ 80), (100 mW), DFS, AUTO-BW
+	(5470 - 5725 @ 160), (500 mW), DFS, AUTO-BW
+	(5725 - 5850 @ 80), (1000 mW), AUTO-BW
+	(5945 - 6425 @ 320), (250 mW), NO-OUTDOOR
+	(57000 - 66000 @ 2160), (10000 mW)
 
 # SI as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
-- 
2.41.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

