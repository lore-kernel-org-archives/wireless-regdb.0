Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7815B1088E65
	for <wireless-regdb@archiver.kernel.org>; Thu, 19 Mar 2026 02:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=c7UzL6QGLhGmKpQzbDFFkiRj8Hy4paFdOUTt9ZLsBz4=; b=jKy2S8F1SzgCJZH26JNteHv7e7
	OVLx1Snsg0muq3jRMJv14UN4OiF3tftwHLnmRUcclvMCob5gp+MIpd7+9C14hOLzp8aaOHSL98m5V
	H9xB36ufErnv8YgKIj7d26Bvbr373BTfqyUWVvmRD3lL+wEWocpXcOQTHR+JoaN+PbwkiYhQsvNq4
	PfFYilmevg2junBADlhEac9VYWchXkWkKdMubTwg+29n5eF795IcFL/LmiGjX9q66cRX4ipDjQR7F
	N35A80VV3Cj4PYn1u9AV5NM89c1Bzp2fZGZ/vQWUSVMODehYOrs4uEYfibdpt3FH36j5IQ3kXT8v6
	CDKKIKgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w33FR-00000009lb6-0rOS;
	Thu, 19 Mar 2026 02:36:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w33FP-00000009laT-1D5X
	for wireless-regdb@bombadil.infradead.org;
	Thu, 19 Mar 2026 02:36:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=c7UzL6QGLhGmKpQzbDFFkiRj8Hy4paFdOUTt9ZLsBz4=; b=lZGsn5V9xooSfJgrLMV/eml8OQ
	XeVjmRpHYxrTOQCog/sL3xYaMpzCoPg7Etvpx9aAn2NZja/Z0L0oh1z6vGgKvX43HwDRK6Tlj6Jn5
	TMMmK2HzX5lo5KfLv9A58qUKHbjfJFA1293FI3aaMC0EKkySDHlqUFzNpUfpWYJJYrudtqNKg6suR
	h/fLpP/38phimEl/fpkbKiWGpbT88hCGiObNBNRI9W9gIqXLhn00/jgl1DdTP/gGdQ/cBXqmVNoZm
	oFFD5A+G2+/fC0dd5iiOCGubuVzoZAPxK4Ez4CkcqcoUP1tmhO7ikU/xlTGw0TMzVty5A61cAj+O5
	9eV2DxWA==;
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w33Es-0000000CaCM-2nlS
	for wireless-regdb@lists.infradead.org;
	Thu, 19 Mar 2026 02:36:26 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-2aecefc7503so1350455ad.1
        for <wireless-regdb@lists.infradead.org>; Wed, 18 Mar 2026 19:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773887756; x=1774492556; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=c7UzL6QGLhGmKpQzbDFFkiRj8Hy4paFdOUTt9ZLsBz4=;
        b=DRqI5r08emW/ufnOa686m9t1of/jsnq3dY7fbR3TrlRcEdEleCCBQcrgQltpvQJ2v/
         L5mo4zbmFIUo1/O115EtvC43RToh2VzymyZgXdEi1RCoOqvuczbLeGtE5A+vcn9oV6HG
         qBXVCUM6LgO3R/O0TJV+z9UldHkhIlJ4Bru7A7UQ0Lf8bdhyMV4XGiXYmPk7OMtDi8Iy
         +omGPnqTka1xe4h6yOJqiyXqDwzJuKt4/C+pQexBUJ8SymCrEzJNRxHOGuy147Aiwtps
         7iMk0pFAN8l1ZYeEKKovP1vnJldFZ/4hg4HMGddFCzjL0wvPB8c3O+l+KrEUu38BG1Yb
         jfDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773887756; x=1774492556;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c7UzL6QGLhGmKpQzbDFFkiRj8Hy4paFdOUTt9ZLsBz4=;
        b=CiTxBHfsRo6iK7V1vTrkOJEyTw+uffUPqAi02C2DnTYJeXG+GPaGeFhxsdkLyb1HOU
         I25DsJKYLYsmvIy3Abxbs/p1ZkIh54cnjo+8u83RnHEPnuAfWGSOR0KSBz94OsEhxSpn
         tCkG5yX6tRRAinYwXHE8RrijqlRkjzy7VweJjQEYrR3u+LBb/wfpJaf8QI2JC1jEtZ80
         2OITTRFVMx2lnBnGRKLNrMQAPjlZA9zmAJaUCDCBYBl98qatjuoJjQJK6+iCkibMPPq/
         ENtzolAEcSU3XMH1eZm78GXrQTQvmxiU9dFtjOqkiDC8J++5UVcWGBJUTJVKpijpRHnb
         gAbQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDsC+1tzJYe6t7HTSWjCEcnRQkIfdd/FingnJnJKPSBL8pX3S/E1L/eQHYjSekr+7Xh7GFTI0bHgWrnEqyqA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzsLIIuGbQn2gF1C5MVZus2L6YEGuRGaQViaDcTTfmOO3gp2nGo
	NpTeP01fnDqVeqTdxi/nZxmDfJ866T8Cjv4Smhlj2TFp/T+63N0C5iJu
X-Gm-Gg: ATEYQzxjMkXKOVvv5EYwG/ulPHBP13mOxpcf2T2FP1SVupwKq2FHUem0G7XaMuxRxw2
	YN2plGk753LhXEYZ7RO/H884VJ3TF2x4Vb/ua8bTISG0XjUd1zSm+peaJhhzSYTypQAIgnRmPOq
	2U11avHPSJxZ69s05WMGlO/bVMlMvrAGcD1HmrPlYftblA8qvJ0+Szq1Qp3HXXwPWSlX0tyCd30
	om5dnOI4kXg10trvp0c3yAT5JfhJjFsVMO3JrN4l3mhIm9Wcf7ky5FBKvKH8l1+9J7yokds7+AK
	LPyRe7DVUlae5CogUGH6VJoGAijv5ruPb55zpHN7z12nteUotCNwOpwF4+QMl8NqDNeKl3fIH2d
	U5jzNHaKEdaZ8yeBhKDjwBB8GPSVuzW/C0dsnk1GIp9A3J/2nTh4HFjP2GJJhccvD+ES3UHYL5q
	Ha/EhlK6iXMI3lkknte3i92XeaWErCci4sy13SJxQ+T46I838RURGs+vxOUgMlDuk=
X-Received: by 2002:a17:903:37c6:b0:2ab:2633:d981 with SMTP id d9443c01a7336-2b06e3e0441mr54309415ad.32.1773887755691;
        Wed, 18 Mar 2026 19:35:55 -0700 (PDT)
Received: from localhost.localdomain (61-216-20-61.hinet-ip.hinet.net. [61.216.20.61])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2b06e5f0e8dsm38596595ad.51.2026.03.18.19.35.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 19:35:55 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH v2] wireless-regdb: Add regulatory info for CEPT countries FO, GI, IM, SM and VA listed by WiFi Alliance
Date: Thu, 19 Mar 2026 10:35:38 +0800
Message-Id: <20260319023538.7707-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_023620_430866_B1563E10 
X-CRM114-Status: GOOD (  10.86  )
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

From: Ping-Ke Shih <pkshih@realtek.com>

In commit 5a8ced5ad313 ("wireless-regdb: Update regulatory info for CEPT
countries for 6GHz listed by WiFi Alliance"), the following are skipped as
they do not have corresponding entries in the database yet.

     - Faroe Islands (FO)
     - Gibraltar (GI)
     - Isle of Man (IM)
     - San Marino (SM)
     - Holy See (Vatican City State) (VA)

Look up the CEPT decisions [2], and add entries along with decisions [3],
[4] and [5] for 2/5/6 GHz regulations.

The 2 GHz band is now governed by ERC Recommendation 70-03 [6] with the
withdrawal of ERC Decision ERC/DEC/(01)07 by ECC Decision (11)05 [3].
By ERC Recommendation 70-03 annex 3 (WIDEBAND DATA TRANSMISSION SYSTEMS):

 * 2400-2483.5 MHz
   - 100 mW

The 5 GHz band by ECC Decision (04)08 [4]:

 * 5150-5250 MHz
   - 200 mW
   - Indoor use
 * 5250-5350 MHz
   - 200 mW (due to TPC required, -3dBm, 100 mW is adopted)
   - DFS, TPC
   - Indoor use
 * 5470-5725 MHz
   - 1 W (due to TPC required, -3dBm, 500 mW is adopted)
   - DFS, TPC
   - Indoor and outdoor use

The 6 GHz band by ECC Decision (20)01 [5]:

 * LPI devices (adopted)
   - 5945-6425 MHz
   - Restricted to indoor use only
   - Maximum mean e.i.r.p.: 23 dBm
   - Maximum mean e.i.r.p. density: 10 dBm/MHz
 * VLP devices
   - 5945-6425 MHz
   - Indoors and outdoors
   - Maximum mean e.i.r.p.: 14 dBm
   - Maximum mean e.i.r.p. density: 1 dBm/MHz

[1] https://www.wi-fi.org/regulations-enabling-6-ghz-wi-fi
[2] https://docdb.cept.org/document/category/ECC_Decisions?status=ACTIVE
[3] https://docdb.cept.org/download/1535
[4] https://docdb.cept.org/download/4501
[5] https://docdb.cept.org/download/4685
[6] https://docdb.cept.org/download/4916

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v2: 
 - rephrase commit message of 2GHz part
 - update ERC Recommendation 70-03 [6] link to the latest
   https://docdb.cept.org/download/4916
 - fix 2GHz freqnecy range starting from 2400MHz
---
 db.txt | 35 +++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/db.txt b/db.txt
index d54ef78e0da8..343b256063a9 100644
--- a/db.txt
+++ b/db.txt
@@ -731,6 +731,13 @@ country FM: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+country FO: DFS-ETSI
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
+	(5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW
+	(5470 - 5725 @ 160), (500 mW), DFS
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
+
 # FR as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
@@ -801,6 +808,13 @@ country GH: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+country GI: DFS-ETSI
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
+	(5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW
+	(5470 - 5725 @ 160), (500 mW), DFS
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
+
 country GL: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=ETSI
@@ -976,6 +990,13 @@ country IL: DFS-ETSI
 	(5725 - 5875 @ 80), (25 mW), AUTO-BW
 	(5945 - 6425 @ 320), (200 mW), NO-OUTDOOR
 
+country IM: DFS-ETSI
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
+	(5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW
+	(5470 - 5725 @ 160), (500 mW), DFS
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
+
 # Source:
 # https://dot.gov.in/spectrummanagement/delicensing-24-24835-ghz-band-gsr-45-e-5150-5350-ghz-gsr-46-e-and-5725-5875-ghz
 # https://dot.gov.in/spectrummanagement/license-exemption-5-ghz-gsr-1048e-dated-22102018
@@ -1855,6 +1876,13 @@ country SK: DFS-ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
+country SM: DFS-ETSI
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
+	(5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW
+	(5470 - 5725 @ 160), (500 mW), DFS
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
+
 # Source:
 # Regulation N° 2004-005 ART/DG/DRC/D.Rég
 country SN: DFS-FCC
@@ -2072,6 +2100,13 @@ country UZ: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 
+country VA: DFS-ETSI
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
+	(5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW
+	(5470 - 5725 @ 160), (500 mW), DFS
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
+
 # Source:
 # http://www.ntrc.vc/regulations/Jun_2006_Spectrum_Managment_Regulations.pdf
 country VC: DFS-ETSI
-- 
2.25.1


