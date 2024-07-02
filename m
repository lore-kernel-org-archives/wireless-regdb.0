Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 611CCC3065C
	for <wireless-regdb@archiver.kernel.org>; Tue,  2 Jul 2024 06:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XBd7dAll2Nu6iHiXQeAYznrI7xAx5uSUGnwOAPgGmxA=; b=xC1LnUPEYa4Vgxbs+DVKbrp8OL
	eN1ryaaFv3kPDdMv/jkgBV8ZQHct2UKmMftBUAcvWJzWMhpa2viL6hMW0ZkACsMMDb4O4r3tSSRfN
	0/6EBRgM4Ckaqex6Tg6qzF7j83Yof0bQgSmUJ0K0ha2nEwlwgkRJeUVifH7JI8M9tPeBl/IJuizRn
	2SjCmD4nh7CScuVR77REOi+NKVcPYL5u8kMfwfdBNgjo/B06gXfkOlbLvKDXFkj9jQoDR33rQUS9N
	dTO2YZHd7cXoLiNDb42o7adGki/ZyeBxCf+g/KOvNUj72zMATTF5ym4kWGoLGB5O/hIHTIa7X5Zdg
	M+S2S+Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOXMH-00000005lzZ-3OoA;
	Tue, 02 Jul 2024 06:51:21 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOXME-00000005lxC-1BjF
	for wireless-regdb@lists.infradead.org;
	Tue, 02 Jul 2024 06:51:20 +0000
Received: by mail-pg1-x52e.google.com with SMTP id 41be03b00d2f7-70df213542bso1956698a12.3
        for <wireless-regdb@lists.infradead.org>; Mon, 01 Jul 2024 23:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719903077; x=1720507877; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XBd7dAll2Nu6iHiXQeAYznrI7xAx5uSUGnwOAPgGmxA=;
        b=UVzjC43MRgulAAuTNDL2H1tV8ShI7DxOdv0i0Uho/Zqv4wY8CYc0GZo5Z3E9UyXOT9
         PjV21+mmf5QceDkoQFZipGQq0uZRQJHfc3idMFSFzqhMfGGDZvEiUe6ONwLJtATWWW79
         Ur3YXqiaeES1x5+F6zYtWn3lR2d5P4L/IYYYbOO9Y1S4IUQl4WCF5C2l/Ka1nPwqXP54
         mPn0lARegqlp40JJPAsWBMw67duopUH2afXjsXyf9uPzdX4G4CmBBWQFZagL8a9LQLPx
         3WVy4Icvtng+A0UulcaixWoO7zumIdf1qqOmEaPzfNityrpKlQEGhfZMGOPkI1fUnifd
         F+lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719903077; x=1720507877;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XBd7dAll2Nu6iHiXQeAYznrI7xAx5uSUGnwOAPgGmxA=;
        b=YM571hcEflGwg9u08lKcWhXecrSati8pyThHrhB9PoIMA3fRnSxoq8O4OxOCVgiwIg
         6864P/EzILY2osxcGr5LugDhzLB8n1GbThmkRKiZp7dhPHY/71LE/bTMTdaMqKgw0x4I
         dvhh61il585g8Az7MibSgFFt7FLvR2GNtcvc45APK56gHE7p9s5X5X3TfbtcUBuBnGNt
         58XPuasEM8w9DgS4prVdm5oVREfPwDQ1mGaOyiZQ7ujlDtQVe+KQ58dFKdldjNlJ7eiq
         aqR8vRNarj7GZR97GPRNYvZVYJpUIJDwZEXkaOzmNd+JF8inJomIHFAg3xfa1air938A
         V9Ng==
X-Forwarded-Encrypted: i=1; AJvYcCX+TlqIgMuwZMM2MREdSzu0xvSqTtMaY94xq5txjSCTdOeSZT899Uj75e2MDugHgdBvOdUvmBI4Q/A6UMb3SWumybB2pDHavzxzOoHmwe4OuVlL
X-Gm-Message-State: AOJu0YyiLHBdkGksG+5YW3Axa5Ubhas+gVYqoUNWKiJGaRD9ikQnQ/aJ
	6m8Me/MrwsPlilifayCEKod01kT5ENpp8OolECBG0hSrPCREX1+q
X-Google-Smtp-Source: AGHT+IFLIAIHWHA84fGAeTOfeYMuOWLMLrMvqzCelIg008rhM5G4SC9dftZnSAjJyxiiyL9rMk1kOQ==
X-Received: by 2002:a05:6a21:998b:b0:1be:c733:ab4d with SMTP id adf61e73a8af0-1bef61408f0mr8401821637.26.1719903076701;
        Mon, 01 Jul 2024 23:51:16 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-2c91d3bc5e7sm7976490a91.36.2024.07.01.23.51.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 23:51:16 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH v3 1/3] wireless-regdb: Update regulatory info for Jordan (JO) for 2022
Date: Tue,  2 Jul 2024 14:50:58 +0800
Message-Id: <20240702065100.13644-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_235118_376792_8D6A52DE 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
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

The Hashemite Kingdom of Jordan, Telecommunications Regulatory Authority
issued pursuant to the provisions of Articles (12A) and (22) of the
Telecommunications Law No. 31 of 1995, as amended. [1]

The effective radiated power (EIRP) of devices used in local radio computer
networks must not exceed the following values:

 - 2400-2483.5 MHz: 100 milliwatts (20 dBm)
 - 5150-5350 MHz: 200 milliwatts (23 dBm), (ETSI: 5250-5350 DFS)
 - 5470-5725 MHz: 1 watt (30 dBm), (ETSI: 27 dBm, indoor only, DFS)
 - 5725-5875 MHz: 200 mW (23 dBm), (ETSI: indoor only)
 - 5925-6425 MHz:
   * 25 milliwatts (14 dBm) (for outdoor and portable devices)
   * 200 milliwatts (23 dBm) (for devices operated indoors only)
 - 57-71 GHz: 10 W (40 dBm)

Follow ETSI EN 301 893 [2], which specifies reduced power limit of
20 and 27 dBm for the range 5150-5350 and 5470-5725 respectively for
devices that don't implement TPC; and classifies the 5470 - 5725 MHz and
5725 - 5875 MHz ranges as indoor use only; and DFS is required for bands
5250 - 5350 Mhz and 5470 - 5725 Mhz. (Add these rules followed rules of
[1] with "ETSI:" annotation)

[1] https://trc.gov.jo/EchoBusV3.0/SystemAssets/PDF/RSMD/cb9f9a83-43a6-4e66-8432-6e02ecaf465b_RLAN%20Arabic%20%20Final%20-%20clean%20with%2057-71%20GHz.pdf
[2] https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.01.01_60/en_301893v020101p.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v3:
  - DFS-ETSI
  - split frequency 5250 - 5350 as an individual range for DFS
v2:
  - Follow ETSI EN 301 893
  - add 57-71 GHz
---
 db.txt | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 61c46186919e..4d2ebe46172d 100644
--- a/db.txt
+++ b/db.txt
@@ -957,10 +957,17 @@ country JM: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
-country JO: DFS-JP
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (23)
-	(5735 - 5835 @ 80), (23)
+# Source:
+# https://trc.gov.jo/EchoBusV3.0/SystemAssets/PDF/RSMD/cb9f9a83-43a6-4e66-8432-6e02ecaf465b_RLAN%20Arabic%20%20Final%20-%20clean%20with%2057-71%20GHz.pdf
+# ETSI EN 301 893: https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.01.01_60/en_301893v020101p.pdf
+country JO: DFS-ETSI
+	(2400 - 2483.5 @ 40), (20)
+	(5150 - 5250 @ 80), (23), AUTO-BW
+	(5250 - 5350 @ 80), (23), DFS, AUTO-BW
+	(5470 - 5725 @ 80), (27), DFS, NO-OUTDOOR
+	(5725 - 5875 @ 80), (23), NO-OUTDOOR
+	(5925 - 6425 @ 320), (23), NO-OUTDOOR
+	(57000 - 71000 @ 2160), (40)
 
 # Source:
 # https://www.soumu.go.jp/main_content/000635492.pdf
-- 
2.25.1


