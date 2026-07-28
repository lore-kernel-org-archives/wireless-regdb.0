Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A361DC53219
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 Jul 2026 09:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Kb5i5gfsSdU/hrinxOzwBYGMmupVqjtyFV+LdjKZPHQ=; b=W+mOkhfRadDusA5fTtE/jSFIFL
	8UU1whYCDOlJfNJq//vrk1Yh3GQMYpfFyY/QA6oLDpq8Pt9VqcohBr+2dNk4ZCrdm6TnLkaJVJJaI
	VBBbxS+ZFPQreEyVDNMYLgsFkCYzvPmQLUbBBgx/fEOAE91ubmkfcpTxFk3Js6no5OMeBD3RhDirn
	TzWERGUVeirftN4is0ppk+c1LXd+3NjlJnpmFubjBgIiQQTdf/Tzn4WoDTH8y5h8GNwp+c6fmzo+q
	5ByqGp95N0DBS58pdG6hniIHdA4nToGBfpPh+LwfUByMUtbaqkB7w27E8NAjpq3wyoHCSj6cqFnpW
	0+Pmwnow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woeNa-00000004rpx-1ohx;
	Tue, 28 Jul 2026 09:45:42 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woeNX-00000004rpJ-3D1W
	for wireless-regdb@lists.infradead.org;
	Tue, 28 Jul 2026 09:45:41 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-49557167508so34468425e9.1
        for <wireless-regdb@lists.infradead.org>; Tue, 28 Jul 2026 02:45:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785231938; x=1785836738; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Kb5i5gfsSdU/hrinxOzwBYGMmupVqjtyFV+LdjKZPHQ=;
        b=XE6KX+Xvb07NRry9sX7Eh6b3fWCd+jbC0Y/TyK25bH5ssEA+vDw+QvMPp3E369kvX2
         FCofzqvvHjKRHzaFlccIt1OAVPmtTNTZ5SDp3BeXvzTxcADvhVA/p1LlNhkEiSvQ7WTj
         TR8aJHN4uIOwh0INkPeco2EID2V2ruYXzRIANPt9oHMAXgpCWuJPnciD9MCGf9rsTD05
         Z/ck7K7/HXr/FrajfPIl/8EtEqWfaUuXCgeTmfMNf6oOoyJE/gzFZUFD7s+lDxVldQu7
         3kAu9wNOZ27xpnnmF7usIVD4pQoviqa6tmk7oXv8LYleuZqTWHBjuNe7Px2kjqMbXKyd
         KB7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785231938; x=1785836738;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Kb5i5gfsSdU/hrinxOzwBYGMmupVqjtyFV+LdjKZPHQ=;
        b=VQhl7cU46iJ+rn0ElClqUtIisBH1YJYrUa84fWQZ52MeFMQpMyoIvJLZH9e4ExjvzY
         54uuT4CFDJuwyg5OoHLmBwFc24TPvnmf8QcW9cYw/VruYD9B5oTdTXLl/YE3IVBN35XV
         4/goRA0EQ/VUlAZSvd534gJ9cwil1gw9TIhI61oJpuIl42a2auEO7WcGyRtxRjx+yke9
         mIQdvtcASxUW4WJl3W4SsSFOxFsbtCy0EyhI/tTBWNBGjmAuODT44mJV3fNf++O02SY0
         8hJbHl11CMVGFEStF8tjgyMmVYtiOZ9KTKYN1+gmBOO4GF4k+RfXS9+d/1a5e2xgtjGd
         1yVQ==
X-Gm-Message-State: AOJu0YzE0hH1D+0JDB8Ukh8lYEIkloqAuGBRP1xVBdFiwpM6QYOVBC0E
	ctcJijjp0kMFB0UpDWqBT5vI0eDyDZjmJHx8h/2ujPamESSuljB5cxFDUNVhyamG
X-Gm-Gg: AR+sD13qajvDP4lAATZupn5vizfogjAHWpGYMP8ZUuVQLFtclhRNren9/mo0RQqRvEH
	owLKoOZlUpLFWGj0zM1aKMlKqOpMxpqsfVDuOozT1KiVfW5igrSEI/PIa97Dm4ZZ2gX07rfCMje
	5CRO3Nq+OL0NkhWpZWhX3GuWQMNRaPrO57x6W/BpN8k8DEWD5v+x3+9Qpf1RH6ZevmCpJY35Lwy
	na/q3A11+oeoQsaG3W2r+nI6rl6C+f5I17OVXi4xcmz7sPh5armZAGu4mEZbeoTX9pCw3M3anDX
	PsMWNMndooRYW/3Bo8xlcQevZQ46QTDQJ//QRnKDoT3WLG+7cz2TR9HvmGiLIilAH4NyVpaSWAS
	vZDw8V3S4EmK2wOQWsNvQRycLppXktHukYRoY6FI6B60x7zL8CNpiePeN66yWvZ4rhqPg3BGUtA
	IXtI9zbPNAerLMFgwUoyygcTKtiw==
X-Received: by 2002:a05:600c:154b:b0:495:5eca:f9b3 with SMTP id 5b1f17b1804b1-496c6574846mr17292475e9.26.1785231937751;
        Tue, 28 Jul 2026 02:45:37 -0700 (PDT)
Received: from localhost ([102.128.173.0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-496c45bb2e7sm68010725e9.7.2026.07.28.02.45.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2026 02:45:37 -0700 (PDT)
From: Louis Kotze <loukot@gmail.com>
To: wireless-regdb@lists.infradead.org
Cc: wens@kernel.org,
	Louis Kotze <loukot@gmail.com>
Subject: [PATCH v2] wireless-regdb: Update 2.4 and 5 GHz rules for South Africa (ZA)
Date: Tue, 28 Jul 2026 11:45:34 +0200
Message-ID: <20260728094534.3749420-1-loukot@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_024539_831334_7C517EF8 
X-CRM114-Status: GOOD (  12.49  )
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

ICASA has substituted Annexure B of the Radio Frequency Spectrum
Regulations in full twice since South Africa's 5 GHz rules were last
touched. The operative table is Notice 1822, Government Gazette 48643
of 18 May 2023. Notice 1822 section 1 recites the chain itself:

  Notice 279, Gazette 38641, 30 March 2015 (original Annexure B)
  Notice 386, Gazette 38754, 30 April 2015
  Notice 781, Gazette 40436, 22 November 2016
  Notice 737, Gazette 45690, 21 December 2021 (substitutes in full)
  Notice 1822, Gazette 48643, 18 May 2023 (substitutes in full)

The 6 GHz row already cites this notice, added in b7bced8
("wireless-regdb: Update regulatory rules for South Africa (ZA) on
6GHz"). The 2.4 and 5 GHz rows were not revisited then and still
reflect the 2015 table. The operative table reads:

  2400-2483.5 MHz: 100 mW e.i.r.p., WBDTS, SANS 300 328
  5150-5250 MHz: 23 dBm e.i.r.p., WAS/RLAN, SANS 301 893
  5250-5350 MHz: 23 dBm e.i.r.p., WAS/RLAN, SANS 301 893
  5470-5725 MHz: 30 dBm e.i.r.p., WAS/RLAN, SANS 301 893
  5725-5875 MHz: 25 mW e.i.r.p., non-specific SRD, SANS 300 440

All three WAS/RLAN rows list ECC/DEC/(04)08 under "Additional
Requirements". That decision restricts 5150-5350 MHz to indoor use and
requires DFS and TPC on 5250-5350 MHz and 5470-5725 MHz, but not on
5150-5250 MHz.

This reverses 99ebbaa ("wireless-regdb: Update ZA rules for 5490-5710
MHz"), which dropped DFS and the TPC deduction from that range in 2015
on the strength of the Radio Frequency Spectrum Regulations 2015, the
instrument current at the time. ICASA has since restated both
requirements, and rejected an industry objection to TPC in the reasons
document accompanying Notice 737:

  "TPC and DFS are not new requirements as they have always been
  requirements within the prescribed performance standard SANS 301 893"

Changes:

- Add DFS to 5470-5725 MHz. The entry currently permits 1 W across
  5490-5710 MHz with no radar detection, in a band where ICASA
  requires it.

- Add NO-OUTDOOR to 5150-5250 and 5250-5350 MHz, per the Notice 737
  reasons document section 6.6(c): "based on numerous interference
  complaints caused by the unauthorized outdoor deployment, the
  Authority maintained the position allowing only indoor deployment in
  those bands".

- Raise 5150-5250 MHz from 20 to 23 dBm. Same document: "the Authority
  updated the power limit to 23 dBm in accordance with the prescribed
  performance standard SANS 301 893".

- Lower 5470-5725 MHz from 30 to 27 dBm and keep 5250-5350 MHz at
  20 dBm, taking the figure that applies without TPC. The three
  resulting values match DE, FR, IE and NL, which carry 200 mW, 100 mW
  and 500 mW for these bands under the same ECC decision.

- Align the 5 GHz band edges with the gazetted limits: 5170 to 5150,
  5330 to 5350, 5490 to 5470, 5710 to 5725. This yields no additional
  channel at any width; channel 144 still does not fit, needing
  5730 MHz where ZA authorises 5725 MHz.

- Align the 2.4 GHz band edges the same way: 2402 to 2400, 2482 to
  2483.5. The gazetted row is 2400-2483.5 MHz at 100 mW e.i.r.p. for
  wideband data transmission systems under SANS 300 328, so the power
  is unchanged at 20 dBm and only the edges move. This yields no
  additional channel either: channel 13 occupies 2462-2482 MHz and
  already fits, and channel 14 would need 2494 MHz. DE, FR, IE and NL
  carry the same 2400-2483.5 MHz range.

- Add the 5725-5875 MHz non-specific SRD row at 25 mW, as in DE, FR,
  IE and NL.

For a device this makes channels 149 to 173 available at 14 dBm, adds
one 80 MHz channel at centre 155, gains 3 dB on channels 36 to 48, and
costs 3 dB plus radar gating on channels 100 to 140. No channel is
lost, and the 160 MHz picture is unchanged.

The 6 GHz row is untouched.

Reference:
  Notice 1822 of 2023, Government Gazette 48643, 18 May 2023
  https://www.gov.za/sites/default/files/gcis_document/202305/48643gon1822.pdf

Signed-off-by: Louis Kotze <loukot@gmail.com>
---
v2:
- Align the 2.4 GHz band edges as well, 2402-2482 to 2400-2483.5, per
  Chen-Yu's review. The gazetted row is 2400-2483.5 MHz at 100 mW, so
  the power stays at 20 dBm and no channel is added.
- Retitle accordingly, the patch is no longer 5 GHz only.

v1: https://lore.kernel.org/wireless-regdb/20260727090002.357376-1-loukot@gmail.com/

 db.txt | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 72f7900..e6a154f 100644
--- a/db.txt
+++ b/db.txt
@@ -2189,10 +2189,11 @@ country YT: DFS-ETSI
 
 # Source: https://www.gov.za/sites/default/files/gcis_document/202305/48643gon1822.pdf
 country ZA: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
-	(5490 - 5710 @ 160), (30)
+	(2400 - 2483.5 @ 40), (20)
+	(5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
+	(5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW
+	(5470 - 5725 @ 160), (27), DFS
+	(5725 - 5875 @ 80), (25 mW)
 	(5925 - 6425 @ 320), (23), NO-OUTDOOR
 
 country ZW: DFS-ETSI
-- 
2.55.0


