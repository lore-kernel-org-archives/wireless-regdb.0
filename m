Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C95EC83030
	for <wireless-regdb@archiver.kernel.org>; Tue,  8 Jul 2025 01:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PdAC96L5hPhEjo/RKW/zIqf6kTbQKsopFGkQP1KBlQE=; b=Dj/id0lmTIlu+ml2aQvSSYZwR7
	06mYwAago5++HMJWVgNIDAlgouZ+9Ah9ElfHBtRt/m2jfvXksTPanpdrrCabtugwwhGj+8pd1Eu6d
	e7MppDwcVJqO3OsN4I3zwOUIXSbEG9qkiV/B2ykPGcRdKgm6CAxChHJKPiGcqOQbUZ6g7DiIuNaE0
	NntT9/tdR+KTuN8RMlRduOjRMqyRKnRsVv72ZWNgAzUFNd+TR515HFeicNj5lENo0P7rTM1CDYoNF
	+g2Ut9Jh2fEmxm+ZkbW0kYelUb60gZ1aVuBRKfjncE5cAYfk2c002/tJfuAu0zbnXFEKBfeKCKnOH
	J57WJjRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYxTQ-000000040ck-2Xvv;
	Tue, 08 Jul 2025 01:50:20 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYxTO-000000040cJ-0qtQ
	for wireless-regdb@lists.infradead.org;
	Tue, 08 Jul 2025 01:50:19 +0000
Received: by mail-pg1-x534.google.com with SMTP id 41be03b00d2f7-b31c978688dso1976883a12.1
        for <wireless-regdb@lists.infradead.org>; Mon, 07 Jul 2025 18:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751939417; x=1752544217; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PdAC96L5hPhEjo/RKW/zIqf6kTbQKsopFGkQP1KBlQE=;
        b=aKrA02UIl1mr2hOkPmWhx+C1/P4jw89uxJ8U0c0v7tRXcEvOVTBg6sqMEJgghGV57j
         hs2uUI8QYZp2FJWDedOvcyS0eFgmsJu56/5fX6uNSYpe93qmPE4K9T7OMM1iAlPeob6g
         daa5wf6baWlxcjmN4b7F0/UoY7TRyh1qd8FFDIXmC266zQSyNuG3hSqu07xJU0mkDnjc
         RVcnEDkkGvLdDVxoih+GDRR7+k0qv8BCVVI+DdSvfaTDMAo2JzPOiW+X9rMCD7etPYzJ
         N2Bfne9gfRuURXA9tj9GgE/FYA1T+97e5CUJ9UG8csYYGGDxrtiTD4en4LMKSNOaV5La
         YA3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751939417; x=1752544217;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PdAC96L5hPhEjo/RKW/zIqf6kTbQKsopFGkQP1KBlQE=;
        b=dMmEsfhScWOmbgMXB7ZD1wLWIQCBjZrgABq+26qPqt0S79IG7Th3KmdteAJm+ud0II
         JZKPHJXatM1XvyiVAvct43Nx88MTaWm8c5xmlJZZhngY9MIIVRyR/0y8opzcplr3Cys7
         c3iwCa2xDKZbtFFzLMxhGv05IcTyaoREt6hpJ/U/+m1l6YEO4RMH5itGrmUbgKtcybx9
         wokzqgztScS6O301wPJbMwhykS6rnyk+SD3K5l0QQ9Em4oJAk0b1/ymtFOd0BizF3kRi
         HprJk6na13c5J4SS32liVnaemTbPOvMvNeh2bM0jx1VhEbrRIqG7BpnwBtGuy5nw1K49
         Jt3w==
X-Forwarded-Encrypted: i=1; AJvYcCXnAmtBCSQsUyHeI6Hlp6gDV89XSen4z6ZmSNvHtgwgZO9Vw/JaDYejBqDrVw+hrR8KHeX9N/MC6Bqs/WS59A==@lists.infradead.org
X-Gm-Message-State: AOJu0YwwJ7iNhLqkDx3QSUYMEcF5Uw/J6DBeaFB+uI0YW+DvK4I8pXmi
	cFGXNQvLuws2WHPB3Tw+fetgJ7UdbOEe/dPILEdDaov81Wfz/f0ArPfAYl1bFg==
X-Gm-Gg: ASbGncsZ7WABiJ0wFVLm9LaCxR8FTyIrtSRjK4u0r/s6JXBbZRIUqMUeybn35fYGA0Q
	BZOhzyUyvwrWSK6RHE56h5GbgoWhT9m9dig1LoD3I/gNfBmxeR8mw5RruvEk3uxEEKUzDXJZ+89
	SuQQI4WYmMXVVvu/djA+dz+rJqLG1PZkJCN8pO8qNr8pEk7NL1weGc2Oc1jQlWc8OqB0Z7g3LTW
	FrWhbKTD3dhx4aWgoAYgVA3GbfNqc7LhLqB6gHu5kFoX6nzMED/vleoLNQ6wM1DI1kh9v+mWHNh
	mzIrB/Zmlwt6i/dd3wsqIuXBBeWPCwE6uDTZVys5C7vsXi4/29gEeobZOR47LNpi3m3yzqn3Zor
	MLAmUwaXuIm5sbO0AeKMBQfvFiv+V3PR1h2+l2t8=
X-Google-Smtp-Source: AGHT+IF/z1jnbsLv7tyqMmw/efaMuzaXdewn/ISQLPUxeR3Dl7q+IybBu2CRmR56GD0bE6+DE9TI7Q==
X-Received: by 2002:a17:90b:4cc6:b0:2fe:85f0:e115 with SMTP id 98e67ed59e1d1-31c21dea2ecmr1310057a91.26.1751939416972;
        Mon, 07 Jul 2025 18:50:16 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-31c21b8f670sm652519a91.0.2025.07.07.18.50.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 18:50:16 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH v3] wireless-regdb: Update regulatory info for CEPT countries for 6GHz listed by WiFi Alliance
Date: Tue,  8 Jul 2025 09:50:05 +0800
Message-Id: <20250708015005.6470-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250707_185018_251426_D24458E9 
X-CRM114-Status: GOOD (  14.92  )
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

The regulations enabling 6GHz WiFi [1] of WiFi Alliance lists CEPT
countries including
 - Albania (AL)
 - Andorra (AD)
 - Austria (AT)
 - Belgium (BE)
 - Georgia (GE)
 - Iceland (IS)
 - Liechtenstein (LI)
 - Macedonia, The Former Yugoslav Republic of (MK)
 - Moldova, Republic of (MD)
 - Monaco (MC)
 - Montenegro (ME)
 - Norway (NO)
 - Switzerland (CH)
 - Türky (TR)
 - Ukraine (UA)
Add 6 GHz frequency entry if not being added yet.

The following are skipped as they do not have corresponding entries in
the database yet. Adding an entry just for 6 GHz would cause 2.4 GHz and
5 GHz bands from the world domain to stop working.
 - Faroe Islands (FO)
 - Gibraltar (GI)
 - Isle of Man (IM)
 - San Marino (SM)
 - Holy See (Vatican City State) (VA)

Links of all these countries are to point to ECC/DEC/(20)01 [2] [3], which
decision enters into force on 8 November 2024; preferred date for
implementation of this Decision shall be 8 May 2025.

 * LPI devices
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
[2] https://docdb.cept.org/implementation/16737
[3] https://docdb.cept.org/download/4685

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v3:
 - remove non-CEPT countries which WFA lists them, but not listed in [A1]
 - FO, GI and IM, having no database entries yet, are not listed in [A1],
   but they are territory of CEPT countries, so I still keep them in
   commit message.
 - [A1] https://www.cept.org/cept/membership-and-observers
v2:
 - reword for skipped countries
 - add [2][3] links to countries mentioned in commit messages.
   (suggested by ChenYu. Thanks!)
---
 db.txt | 55 +++++++++++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 53 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index cff2361237ac..12ac14766a69 100644
--- a/db.txt
+++ b/db.txt
@@ -34,6 +34,9 @@ country 00:
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
 # Harmonized CEPT countries: https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
+# Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
+#  https://docdb.cept.org/implementation/16737
+#  https://docdb.cept.org/download/4685
 country AD: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -41,6 +44,7 @@ country AD: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -73,6 +77,9 @@ country AI: DFS-ETSI
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
+# Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
+#  https://docdb.cept.org/implementation/16737
+#  https://docdb.cept.org/download/4685
 country AL: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -80,6 +87,7 @@ country AL: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 
 # Source:
 # 2.4 GHz https://www.psrc.am/contents/document/4749
@@ -120,6 +128,9 @@ country AS: DFS-FCC
 # Harmonized CEPT countries (February 2021): https://docdb.cept.org/download/25c41779-cd6e/Rec7003e.pdf
 # AT: https://www.rtr.at/TKP/was_wir_tun/telekommunikation/spectrum/bands/1997_bmvit-info-052010en.pdf
 # AT: acceptance https://www.ris.bka.gv.at/Dokumente/BgblAuth/BGBLA_2014_II_63/BGBLA_2014_II_63.pdfsig
+# Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
+#  https://docdb.cept.org/implementation/16737
+#  https://docdb.cept.org/download/4685
 country AT: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -220,6 +231,9 @@ country BD: DFS-JP
 # BE: https://www.ibpt.be/public/files/en/21761/B03-02_2.1_EN.pdf
 # BE: https://www.ibpt.be/public/files/en/21762/B03-03_2.1_EN.pdf
 # BE: https://www.ibpt.be/public/files/en/22165/B01-28_3.1_EN.pdf
+# Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
+#  https://docdb.cept.org/implementation/16737
+#  https://docdb.cept.org/download/4685
 country BE: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -391,6 +405,9 @@ country CF: DFS-FCC
 # CH: https://www.ofcomnet.ch/api/rir/1010/04
 # CH: https://www.ofcomnet.ch/api/rir/1008/12
 # CH: https://www.ofcomnet.ch/#/fatTable
+# Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
+#  https://docdb.cept.org/implementation/16737
+#  https://docdb.cept.org/download/4685
 country CH: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -738,10 +755,15 @@ country GD: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+# Source:
+# Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
+#  https://docdb.cept.org/implementation/16737
+#  https://docdb.cept.org/download/4685
 country GE: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (18), AUTO-BW
 	(5250 - 5330 @ 80), (18), DFS, AUTO-BW
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -957,7 +979,9 @@ country IR: DFS-ETSI
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # IS: https://www.pfs.is/library/Skrar/Tidnir-og-taekni/MHZ_21022019.pdf
-# CEPT ECC Decision (20)01 for 6GHz: https://docdb.cept.org/download/1448
+# Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
+#  https://docdb.cept.org/implementation/16737
+#  https://docdb.cept.org/download/4685
 country IS: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -1128,8 +1152,10 @@ country LC: DFS-ETSI
 # LI: https://www.ofcomnet.ch/api/rir/1010/04
 # LI: https://www.ofcomnet.ch/api/rir/1008/12
 # LI: https://www.ofcomnet.ch/#/fatTable
-# CEPT ECC Decision (20)01 for 6GHz: https://docdb.cept.org/download/1448
 # LI: https://www.ofcomnet.ch/api/rir/1010/11
+# Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
+#  https://docdb.cept.org/implementation/16737
+#  https://docdb.cept.org/download/4685
 country LI: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -1227,6 +1253,9 @@ country MA: DFS-ETSI
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
+# Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
+#  https://docdb.cept.org/implementation/16737
+#  https://docdb.cept.org/download/4685
 country MC: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -1234,6 +1263,7 @@ country MC: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 
 # Source:
 # http://www.cnfr.md/index.php?pag=sec&id=117&l=en
@@ -1243,6 +1273,9 @@ country MC: DFS-ETSI
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # https://www.legis.md/cautare/downloadpdf/134846
+# Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
+#  https://docdb.cept.org/implementation/16737
+#  https://docdb.cept.org/download/4685
 country MD: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -1259,6 +1292,9 @@ country MD: DFS-ETSI
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
+# Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
+#  https://docdb.cept.org/implementation/16737
+#  https://docdb.cept.org/download/4685
 country ME: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -1266,6 +1302,7 @@ country ME: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 
 country MF: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
@@ -1285,6 +1322,9 @@ country MH: DFS-FCC
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
+# Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
+#  https://docdb.cept.org/implementation/16737
+#  https://docdb.cept.org/download/4685
 country MK: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -1292,6 +1332,7 @@ country MK: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -1455,6 +1496,9 @@ country NL: DFS-ETSI
 # NO: https://eng.nkom.no/technical/temporary-licenses/mobile-videolink/wireless-cameras-mobile-video-links/_attachment/9947
 # NO: http://www.lovdata.no/dokument/SF/forskrift/2012-01-19-77
 # In addition to EU NO can use 5725–5795 MHz and 5815–5850 bands with limit of 4 W EIRP (with DFS and TPC)
+# Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
+#  https://docdb.cept.org/implementation/16737
+#  https://docdb.cept.org/download/4685
 country NO: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -1865,6 +1909,9 @@ country TN: DFS-ETSI
 # Source:
 # Technical Criteria for Radio Devices and Systems Excluded from Frequency Allocation, Sept 9, 2022
 # https://www.btk.gov.tr/uploads/pages/ftm-teknik-olcutler-ek-5.pdf
+# Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
+#  https://docdb.cept.org/implementation/16737
+#  https://docdb.cept.org/download/4685
 country TR: DFS-ETSI
 	(2400 - 2483.5 @ 40), (20)
 	(5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -1921,12 +1968,16 @@ country TZ: DFS-ETSI
 # 2.4 GHz band channels can be used outdoors when some requirements are met.
 # 5 GHz band channels must be used only indoors in some cases. They are neither
 # permitted nor denied outdoors in others.
+# Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
+#  https://docdb.cept.org/implementation/16737
+#  https://docdb.cept.org/download/4685
 country UA: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW), NO-OUTDOOR
 	(5150 - 5250 @ 80), (100 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
 	(5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
 	(5470 - 5725 @ 160), (100 mW), DFS, NO-OUTDOOR, wmmrule=ETSI
 	(5725 - 5850 @ 80), (100 mW), NO-OUTDOOR
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40 mW), NO-OUTDOOR
 
-- 
2.25.1


