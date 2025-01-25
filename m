Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE024C02181
	for <wireless-regdb@archiver.kernel.org>; Sat, 25 Jan 2025 02:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LwVtXUTYK1ScSLpLTzgFTxDOlPy01peny8w6WcaBsPk=; b=Y7O4NU53vsyvnvIB4mwaJkW8bM
	VtQI+YnQW3zW/DWort7jxrxTWmucG1bBbddGqzs8YMPKKKRRoNHJH6lUOBUbDf3LyA4WiCepoKFZq
	H14ZDU00lF3YpX/JmoWlvlT/gORjkZGlLNxzSUBDynEi3Q0tkPFSV4tOpuE81Ol1E8qNEjt3yK4j8
	MlMpmDlNEas3pnoucO4eXjNVE6Kzcv64sNMYDIgOHYrAsyUGQrb4wRtIK1vlrlRiHkpWBoIElibVM
	aVSy0Ff67lI0vNjMT8QKdZFn+FO0LrAX6oe/liW5QEa3VeO9GH6tZo9QSkKphApopR6uT9T7xzTkn
	8SQxBPRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbW5q-0000000FvRZ-2c57;
	Sat, 25 Jan 2025 02:40:18 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbUii-0000000Fqe1-0zhX
	for wireless-regdb@lists.infradead.org;
	Sat, 25 Jan 2025 01:12:22 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-436202dd730so18911165e9.2
        for <wireless-regdb@lists.infradead.org>; Fri, 24 Jan 2025 17:12:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=quartiq.de; s=google; t=1737767538; x=1738372338; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LwVtXUTYK1ScSLpLTzgFTxDOlPy01peny8w6WcaBsPk=;
        b=geG6ra5hlLdxgzE3TTVkJboafQLu/kzKydJPQsdG82DsT8Fqk4KCAfKhujBo6dKCZM
         SN0x7fvth9ZG1c1Oa5fgvIltL7gYf10Hlx/Q23/L28hvLyL+3AgxrC2AS0DHZRf7upBO
         Cj7/MXxNBxHSR3xqBvvTFeUcEQSSHA1Kur0pNxeDE+qikE10I+4jsUAQIr3SmNeyMuFp
         UYyh3Lhpku5+EUoRwdA+fMIA4BM68V+I/cOBfik3EveImOHjrLxZffIyb2wFTKJcBW71
         z23x6E+39Ue8JRkebBwBXRGNYM+NmiWFj/qCvd/XFu/11eeabNFyZ0UcgylOqti7kfHB
         bfiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737767538; x=1738372338;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LwVtXUTYK1ScSLpLTzgFTxDOlPy01peny8w6WcaBsPk=;
        b=tarM3j5wiqTZPKm0e63R4DVwGmw5OxZXFZoXaN+5Xd1yCeu9wLbWucKWoNMQrybcLe
         1iM4R+wl6Tf3I98cdetHzzPRPzhF5gZBtUs8nl9pwdhv9c56IIZrhcN5gUnLtuRFuLBA
         u0Si92fxSzlhrnncTRPq371VintKEdG2Ie/ajye1dSrHafI8FUVMlogJ2qlmffVNOFXe
         1QAM7Kaw7UR6udASfyW/dssI6IWtetKYlT9R+1zE9N6ZfPlwljLnOnQpvFZLcHC2UA6g
         o/swLVlZrcSwO9HJklLSOP9LPF0xzqks7gXHdwJ7Zjj+s2qUO6h8kJoOd9boxwJ1gWJK
         mvvw==
X-Gm-Message-State: AOJu0YzlVv60/Kw77R79aWOqtTCYfKw1cPUzIyWmI2l3Al5s0V2GAZlg
	KmbA/EY2IxVH9Nzew8WyTCuysS2V34eNB++fK9LugPgqTYxx9HR5HwdqgKJBRLD9NG2crn6QphD
	k
X-Gm-Gg: ASbGncu4eGFiDSrpqK04gf28cEAKsspZRSDKMv0BKcskshmHra0u4vboycYU9z+0Q6D
	mXjJIP7pxJcsCV931hRJ2jDvFU7s8Wnn+bkUZ37iOxM/Hh8CTzO3z+iszaBacbepM3aeQ6dbrRx
	2/wTi5ckr2vODuVgZcLXoMtMD/Kr5A3GfStidER1pWfZ212LCpXjCoFUmMYZOa39bMkqTDc28/X
	eSQxiT4RrMv/f/JJZm6K3SX+aL5lMpXxGpifv8dSQMgujlmJ8ch9xn9SYfkjJHImO6Q68RPsbXK
	F0+sJWTrdok=
X-Google-Smtp-Source: AGHT+IHBfPSLJD8qJkFYWneG6ny2qrpVZnoRj4Y+tzKHv7wmOsWznIRU9MSkQEKvul6Um92wqtpDbg==
X-Received: by 2002:a05:600c:1f86:b0:436:aaf:7eb9 with SMTP id 5b1f17b1804b1-43891439d5fmr267420175e9.20.1737767537997;
        Fri, 24 Jan 2025 17:12:17 -0800 (PST)
Received: from grouch.rj.joerdens.org ([2001:9e8:ae5:cb00:8562:3ae4:3d74:b0c3])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-438bd54c098sm44359985e9.31.2025.01.24.17.12.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jan 2025 17:12:17 -0800 (PST)
From: =?UTF-8?q?Robert=20J=C3=B6rdens?= <rj@quartiq.de>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org,
	=?UTF-8?q?Robert=20J=C3=B6rdens?= <rj@quartiq.de>
Subject: [PATCH] wireless-regdb: Permit 320 MHz bandwidth in 6 GHz band in ETSI/CEPT
Date: Sat, 25 Jan 2025 02:12:10 +0100
Message-ID: <20250125011210.56371-1-rj@quartiq.de>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250124_171220_291050_F6351387 
X-CRM114-Status: GOOD (  10.50  )
X-Mailman-Approved-At: Fri, 24 Jan 2025 18:40:18 -0800
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

This increases the allowed bandwidth from 160 to 320 MHz for the
5945-6425 MHz band to support 802.11be (Wi-Fi 7) EHT-320 for the
ETSI/CEPT harmonized countries (EU + CH/LI/NO and TR).

Previously the bandwidth limit was set to 160 MHz to match 802.11ax
(including the 6 GHz extension called Wi-Fi 6e). This limit is not
supported by the current regulatory documents and should be relaxed to
320 MHz.

The 802.11be (Wi-Fi 7) standard defines EHT-OFDMA for a 320 MHz
bandwidth. Devices (both AP and STA) supporting and using this are
widely available now. The "6 GHz" band starting at 5945 MHz is the prime
target for these wide channels. In the ETSI/CEPT harmonized countries
the 5945-6425 MHz range has been allocated to WLAN. It can contain one
320 MHz channel centered at channel 31 (6105 MHz) and one overlapping
channel at centered at 63 (6265 MHz).

Note that the supporting documents quoted currently do not have an upper
bandwidth limit:

EU: https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
    and https://docdb.cept.org/download/4577

Adoption by e.g.
DE: https://www.bundesnetzagentur.de/SharedDocs/Downloads/DE/Sachgebiete/Telekommunikation/Unternehmen_Institutionen/Frequenzen/Allgemeinzuteilungen/MobilfunkDectWlanCBFunk/vfg552021WLAN6GHz.pdf

CH and LI: https://www.ofcomnet.ch/api/rir/1010/11 (note the explicit empty bandwidth limit)
NO: https://lovdata.no/dokument/SF/forskrift/2012-01-19-77
TR: https://www.btk.gov.tr/uploads/pages/ftm-teknik-olcutler-ek-5.pdf

Note also that the EC mandate to the CEPT to investigate the upper
6425-7125 MHz band for future use explicitly confirms that there is now
(2024-12) one non-overlapping 320 MHz channel for 802.11be available in
the existing "mid-band" (i.e. 2.4, 5, and 6 GHz) allocations:
https://cept.org/files/6813/Mandate%20to%20CEPT%20upper%206%20GHz%20band.pdf
(page 3).

The 160 MHz limits for the 5 GHz and 2.4 GHz bands can remain since there
is no possible configuration for a 320 MHz channel there.

Signed-off-by: Robert Jördens <rj@quartiq.de>
---
 db.txt | 60 +++++++++++++++++++++++++++++-----------------------------
 1 file changed, 30 insertions(+), 30 deletions(-)

diff --git a/db.txt b/db.txt
index e282e3b..2badb01 100644
--- a/db.txt
+++ b/db.txt
@@ -125,7 +125,7 @@ country AT: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# 6 GHz band
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -225,7 +225,7 @@ country BE: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# 6 GHz band
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -276,7 +276,7 @@ country BG: DFS-ETSI
 	# I.43 of the List, BDS EN 300 440-2, BDS EN 300 440-1
 	(5725 - 5875 @ 80), (25 mW)
 	# WiFi 6E
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	# II.H03 of the List, BDS EN 302 567-2
 	(57000 - 66000 @ 2160), (40)
@@ -396,7 +396,7 @@ country CH: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# https://www.ofcomnet.ch/api/rir/1010/11
-	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (200 mW), NO-OUTDOOR, wmmrule=ETSI
 	# https://www.ofcomnet.ch/api/rir/1010/07
 	(57000 - 71000 @ 2160), (40)
 
@@ -487,7 +487,7 @@ country CY: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# 6 GHz band
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -507,7 +507,7 @@ country CZ: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# 6 GHz band
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -551,7 +551,7 @@ country DE: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# WiFi 6E
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -572,7 +572,7 @@ country DK: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# 6 GHz band
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -624,7 +624,7 @@ country EE: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# 6 GHz band
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -650,7 +650,7 @@ country ES: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# WiFi 6E
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -674,7 +674,7 @@ country FI: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# 6 GHz band
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -700,7 +700,7 @@ country FR: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# WiFi 6E low power indoor
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-6 (ETSI EN 302 567 v2.2.1)
 	(57000 - 71000 @ 2160), (40)
 
@@ -778,7 +778,7 @@ country GR: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# 6 GHz band
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -847,7 +847,7 @@ country HR: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# WiFi 6E
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -875,7 +875,7 @@ country HU: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# 6 GHz band
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -901,7 +901,7 @@ country IE: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# 6 GHz band
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -967,7 +967,7 @@ country IT: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# 6 GHz band
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -1153,7 +1153,7 @@ country LT: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# 6 GHz band
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -1172,7 +1172,7 @@ country LU: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# 6 GHz band
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -1191,7 +1191,7 @@ country LV: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# 6 GHz band
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -1333,7 +1333,7 @@ country MT: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# 6 GHz band
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -1424,7 +1424,7 @@ country NL: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# WiFi 6E
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -1444,7 +1444,7 @@ country NO: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# WiFi 6E
-	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (200 mW), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 71000 @ 2160), (40)
 
@@ -1549,7 +1549,7 @@ country PL: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# 6 GHz band
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -1581,7 +1581,7 @@ country PT: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# 6 GHz band
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -1631,7 +1631,7 @@ country RO: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# 6 GHz band
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -1693,7 +1693,7 @@ country SE: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# 6 GHz band
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -1738,7 +1738,7 @@ country SI: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# 6 GHz band
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -1759,7 +1759,7 @@ country SK: DFS-ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
 	# 6 GHz band
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
@@ -1847,7 +1847,7 @@ country TR: DFS-ETSI
 	(5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
 	(5250 - 5330 @ 80), (20), DFS, NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
 	(5470 - 5725 @ 160), (27), DFS, wmmrule=ETSI
-	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
-- 
2.45.2


