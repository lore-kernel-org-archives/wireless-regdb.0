Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
 :From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=sOVu6rpPmUGOTrkt+6+c53zP+L27aie0uCQgQ6nJTSo=;
 b=NavcBBF0kznnUS
 41lkB0P6i930dLyXMc1ATYo+rn7eF52KYyV00Bl6kf7BSFx8nosyA93O/7fPJGtBFf8JRIxi3mmub
 4e1uZpqiQCOKjjCurGdE5wRb1uWdX6lD4BU51DKMBxAgGgp0kBK2rp1402zDpgmKn+GWKrJgYNqDf
 LL0tlCuJc+haA+teg3VrWAG22okdH6PZX6+i9jSYKWhwzcYh7XOP6NBqTDD3jPjRWltB6wtJT0bbz
 cxlI9uswNnLRxZLo1ac0xPQoFhtfkNqkJS5GoNMe0sm92FgbLWNbbN8/M04jtbHoogHjkAjgBXgEl
 i5gsG3UWQOSE0rzXgEDQ==;
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGLxp-0005IC-5Y
 for wireless-regdb@lists.infradead.org; Mon, 23 Mar 2020 12:13:54 +0000
Received: by mail-pl1-x643.google.com with SMTP id x1so1820553plm.4 for
 <wireless-regdb@lists.infradead.org>; Mon, 23 Mar 2020 05:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ndoo.sg; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PI/Hs35zupNyj4wCQ4EfTAQuIsQMhWoViq+8hZkz1HE=;
 b=OSpT/l27qa+fYFmDFnmzdzbw1RJ6Ao18nNNNqm5zyWYRVArcfSB2Hc9J4zi6EHuPpm
 gODNeb72hU9arka3zb5q5xTUOvSW2D9ogGHWppTt7c8QnEHLXXUswX5W2VWUpe7+FsY0
 FbE8yd7FnKZ+Us9yZjdpNaUh0Ge4MsqIKGp7g=
From: Andrew Yong <me@ndoo.sg>
Date: Mon, 23 Mar 2020 12:11:47 +0000
Message-Id: <20200323121147.6582-1-me@ndoo.sg>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory rules
 for Singapore (SG)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org
Cc: Andrew Yong <me@ndoo.sg>
List-ID: <wireless-regdb@lists.infradead.org>

Add 802.11ad 60GHz band:
https://www.imda.gov.sg/-/media/Imda/Files/Regulation-Licensing-and-Consultations/ICT-Standards/Telecommunication-Standards/Radio-Comms/IMDATSSRD.pdf
Changes to IDA TS SRD, Issue 1 Rev 4, Jul 09 - Table 1 (31):
"The band 57 - 66 GHz at <=10W (e.i.r.p) is an additional frequency allocation for Wireless LAN / broadband access applications."

Harmonize 5470-5725MHz band non-TPC transmit power with other FCC Part 15 Section 15.407 and EN 301 893 domains (AU, BG)

Signed-off-by: Andrew Yong <me@ndoo.sg>
---
 db.txt | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/db.txt b/db.txt
index 9c4b447..1290733 100644
--- a/db.txt
+++ b/db.txt
@@ -1385,17 +1385,25 @@ country SE: DFS-ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
-# Source
-# https://www.imda.gov.sg/~/media/imda/files/regulation%20licensing%20and%20consultations/ict%20standards/telecommunication%20standards/radio-comms/imdatssrd.pdf?la=en
-# page 12-14
-# The EIRP for 5250 – 5350 can be increased by 3dB if TPC is implemented.
+# https://www.imda.gov.sg/-/media/Imda/Files/Regulation-Licensing-and-Consultations/ICT-Standards/Telecommunication-Standards/Radio-Comms/IMDATSSRD.pdf
+# IMDA TS SRD, Issue 1 Revision 1, April 2019, subsequently "IMDA TS SRD"
+# 2400 - 2483.5 MHz: IMDA TS SRD, Table 1 (25); ANSI C63.10-2013 and FCC Part 15 Section 15.247 or EN 300 328
+# 5150 - 5350 MHz: IMDA TS SRD, Table 1 (29); FCC Part 15 Section 15.407 (1) 5.15-5.25 GHz (2) 5.25-5.35 GHz; EN 301 893
+# 5470 - 5725 MHz: IMDA TS SRD, Table 1 (30); FCC Part 15 Section 15.407 (2) 5.47-5.725 GHz; EN 301 893
+# 5725 - 5850 MHz: IMDA TS SRD, Table 1 (27); FCC Part 15 Section 15.247; FCC Part 15 Section 15.407 (3) 5.725-5.85 GHz
+# 57000 - 66000 MHz: IMDA TS SRD, Table 1 (31); ETSI EN 302 567
+# Note: 27dBm for 5470-5725MHz bands is 3dBm reduction per FCC Part 15 Section 15.407 (2) 5.47-5.725 GHz; EN 301 893 as referenced by IMDA TS SRD
+#  AU and BG regulatory domains use the same interpretation of cited FCC and ETSI standards
+# Note: The transmit power for 5150-5350MHz bands can be raised by 3dBm when TPC is implemented: IMDA TS SRD Table 1 (29)
+# Note: The transmit power for 5470-5725MHz bands can be raised by 3dBm when TPC is implemented: IMDA TS SRD Table 1 (30)
+
 country SG: DFS-FCC
 	(2400 - 2483.5 @ 40), (23)
-	(5150 - 5250 @ 80), (23), AUTO-BW
+	(5150 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5350 @ 80), (20), DFS, AUTO-BW
-	# 5470 - 5725 is only allowed when TPC is implemented
-	# (5470 - 5725 @ 160), (30), DFS
+	(5470 - 5725 @ 160), (27), DFS
 	(5725 - 5850 @ 80), (30)
+	(57000 - 66000 @ 2160), (40)
 
 # SI as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
-- 
2.20.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
