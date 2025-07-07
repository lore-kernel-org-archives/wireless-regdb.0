Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C01B7C83030
	for <wireless-regdb@archiver.kernel.org>; Mon,  7 Jul 2025 04:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ohtq7g5R1VXhHqfKXAcKsUruCLq4bxY77nlB5kZruNc=; b=yW28M7yECImAT1Lzzsnl3rbEel
	hKI6mYytIcqARmxLZGU7T0IyPmMSzGCvkpgSYg6YEf3DObU/zz3RtvGX0DivaRbqH2fg6lqhg/4Su
	peCkGiazC7Gzxzov52JzIqfnUwckOyHDgqm9MpGpGrE8xeLoQrccGlgyfeN6XwnH9YNCnhntNlHbm
	YQ/+V0wa/TqDpzkzAP5Zlsy5sbZuGk8Gcq+IiHc2lZwR9S3aS9Z2+wRt9UVkcNE9p6LNZ5t1NtELz
	VRnVU2zsANv9QjiagNXoXemcsmW9/Qn2xBvZ+xBUTRKa0MmXE3VJ0fjMp1SLS/WGsCmP3qmf7uCa+
	eRK9qo9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYdaD-00000001Nhe-3nVj;
	Mon, 07 Jul 2025 04:36:01 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYdaB-00000001Ngt-3t8t
	for wireless-regdb@lists.infradead.org;
	Mon, 07 Jul 2025 04:36:01 +0000
Received: by mail-pg1-x52e.google.com with SMTP id 41be03b00d2f7-b0b2d0b2843so1680577a12.2
        for <wireless-regdb@lists.infradead.org>; Sun, 06 Jul 2025 21:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751862959; x=1752467759; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ohtq7g5R1VXhHqfKXAcKsUruCLq4bxY77nlB5kZruNc=;
        b=iBCZCndJAIUDGR3yekn7v9d9cgL12ZQooZOuMa5pVg1jmgH2AaSaWsCTHzmy3lJgs8
         hxWWy6s7edjXfJs0n3kbNROPVNeA92xZnvDVJ//TnLwJ5kqgqdxNgz+OMDgt+OhBcgiC
         guLaHucniD8J9ys8lpKT6zLlbC3aKHebANFJO9f+m7Wh9gl9x/T22e6tsF7HnBDikGiZ
         pzz+b9pVa8df/FL9PI38D72ZypscgJiKKOMbqCUNb67r4G5G6UKILngR/3ZfssSmKyWh
         m/P6uWvXpF4tEiktiyl/yagSLoJ0862bwnOYi+WTFPYnv9IUg6Upa986B+woaWcME32P
         QBBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751862959; x=1752467759;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ohtq7g5R1VXhHqfKXAcKsUruCLq4bxY77nlB5kZruNc=;
        b=D3x/YY+UKXLSD7apXUaQjEMugQodfPPRh7LHP1F2GPSd9qalWOnW0+FNikNbFPD4Mr
         VLxtSWRSWjxlvVXcZRa2vCM0Nv2D6Fs1YYpnnBWVCt25ZktD2n5aSqEkxHOV9Z6yaE15
         /fiGWoMtBgT8mczK9skLPFvCtqlhmEDvaxSIRm7+p5cI0kECo8NhA4RZjU2vZvVCqj7E
         keIC5GLh/oL8DiTskKVSq1a2mwj50R59xt37+mVlzeGbbDD/3TntDnePa7N8lofKJ5pV
         5/40R7+1PWTRfsTnz8MJu11G1Lcij2GzCMvVCIZJANucT4RWpHGzTsBDBYDpLsJFhAQi
         LyXQ==
X-Forwarded-Encrypted: i=1; AJvYcCXgVOXi/+oLFCR8hvRqyww3kCS0mIXSHLUxii429UciHUQvSdQh/qfVRjFZDIVwVtH9hSSoLGCsgB64D6d4nA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzIP78HErJuefx3lg2Dg/YxQaVrxsrDkkKI9OD92/dLPiAgjNje
	wz0PgfM9pt7MKiqbnDfZN78h78XGh5tkPrULnQqKcmwRIidNTSiaiZQm
X-Gm-Gg: ASbGncs1KYAyuytd6R8gzzff7BaVPrNBLKqKTli7OtwA9P5I4TlpKI7Gx2lHBXDqay3
	c8G1eHkqSlnNTTvTCFwF0sJrpplQG1Yun6hFFHnBWfNr3pMRHXPESY1Oh6y62ZEicBCq8h2Nzem
	T5o2z4YiaA2T83fV+nBrhn63Whrz7DJ26dJWjJPLtWyetm/oFftcr2alOdEO1yNz6kLgJLEKTfv
	DwdW15sCfBoKTcCSR7d4IhIakFf3dAzjnRyJXjSxEswqPK6QkniWydbYC8QDap6x4wb5hnGF1uy
	vAcsDK+aaJmTeQT/WeWWDXEKmA105D7VbTcURPxOaBJfVrMWZcRP+BLNQZaolZj80gMpCzY2VJQ
	BJPbFjZVIePve1Yvn9w0IVQmzs3qUyAn6qUMa
X-Google-Smtp-Source: AGHT+IGy3WnZIevcAIEpAeGGGIgtPWxrK+s3EP/0XR7KwH6oy/u83aAQjhluXIMHhB2UVgebjykdFQ==
X-Received: by 2002:a17:90b:57d0:b0:30e:5c7f:5d26 with SMTP id 98e67ed59e1d1-31aba8d28a3mr10327971a91.24.1751862958713;
        Sun, 06 Jul 2025 21:35:58 -0700 (PDT)
Received: from localhost.localdomain (125-231-129-141.dynamic-ip.hinet.net. [125.231.129.141])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-23c8455b966sm73379315ad.101.2025.07.06.21.35.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jul 2025 21:35:58 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH v2] wireless-regdb: Update regulatory info for CEPT countries for 6GHz listed by WiFi Alliance
Date: Mon,  7 Jul 2025 12:35:47 +0800
Message-Id: <20250707043547.5740-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250706_213559_973981_EFCCA60E 
X-CRM114-Status: GOOD (  13.50  )
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
 - Belarus (BY)
 - Belgium (BE)
 - Georgia (GE)
 - Iceland (IS)
 - Liechtenstein (LI)
 - Macedonia, The Former Yugoslav Republic of (MK)
 - Moldova, Republic of (MD)
 - Monaco (MC)
 - Montenegro (ME)
 - Norway (NO)
 - Russian Federation (RU)
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
v2:
 - reword for skipped countries
 - add [2][3] links to countries mentioned in commit messages.
   (suggested by ChenYu. Thanks!)
---
 db.txt | 60 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 58 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index ed841fe42cd3..568cae03a85c 100644
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
@@ -350,11 +364,16 @@ country BT: DFS-ETSI
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
 
+# Source:
+# Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
+#  https://docdb.cept.org/implementation/16737
+#  https://docdb.cept.org/download/4685
 country BY: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 
 country BZ: DFS-JP
 	(2402 - 2482 @ 40), (30)
@@ -391,6 +410,9 @@ country CF: DFS-FCC
 # CH: https://www.ofcomnet.ch/api/rir/1010/04
 # CH: https://www.ofcomnet.ch/api/rir/1008/12
 # CH: https://www.ofcomnet.ch/#/fatTable
+# Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
+#  https://docdb.cept.org/implementation/16737
+#  https://docdb.cept.org/download/4685
 country CH: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -738,10 +760,15 @@ country GD: DFS-FCC
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
 
@@ -959,7 +986,9 @@ country IR: DFS-ETSI
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
@@ -1130,8 +1159,10 @@ country LC: DFS-ETSI
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
@@ -1229,6 +1260,9 @@ country MA: DFS-ETSI
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
+# Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
+#  https://docdb.cept.org/implementation/16737
+#  https://docdb.cept.org/download/4685
 country MC: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -1236,6 +1270,7 @@ country MC: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 
 # Source:
 # http://www.cnfr.md/index.php?pag=sec&id=117&l=en
@@ -1245,6 +1280,9 @@ country MC: DFS-ETSI
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # https://www.legis.md/cautare/downloadpdf/134846
+# Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
+#  https://docdb.cept.org/implementation/16737
+#  https://docdb.cept.org/download/4685
 country MD: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -1261,6 +1299,9 @@ country MD: DFS-ETSI
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
+# Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
+#  https://docdb.cept.org/implementation/16737
+#  https://docdb.cept.org/download/4685
 country ME: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -1268,6 +1309,7 @@ country ME: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 
 country MF: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
@@ -1287,6 +1329,9 @@ country MH: DFS-FCC
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
+# Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
+#  https://docdb.cept.org/implementation/16737
+#  https://docdb.cept.org/download/4685
 country MK: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -1294,6 +1339,7 @@ country MK: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -1457,6 +1503,9 @@ country NL: DFS-ETSI
 # NO: https://eng.nkom.no/technical/temporary-licenses/mobile-videolink/wireless-cameras-mobile-video-links/_attachment/9947
 # NO: http://www.lovdata.no/dokument/SF/forskrift/2012-01-19-77
 # In addition to EU NO can use 5725–5795 MHz and 5815–5850 bands with limit of 4 W EIRP (with DFS and TPC)
+# Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
+#  https://docdb.cept.org/implementation/16737
+#  https://docdb.cept.org/download/4685
 country NO: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -1867,6 +1916,9 @@ country TN: DFS-ETSI
 # Source:
 # Technical Criteria for Radio Devices and Systems Excluded from Frequency Allocation, Sept 9, 2022
 # https://www.btk.gov.tr/uploads/pages/ftm-teknik-olcutler-ek-5.pdf
+# Harmonized CEPT countries for 6 GHz (ECC Decision (20)01)
+#  https://docdb.cept.org/implementation/16737
+#  https://docdb.cept.org/download/4685
 country TR: DFS-ETSI
 	(2400 - 2483.5 @ 40), (20)
 	(5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -1923,12 +1975,16 @@ country TZ: DFS-ETSI
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


