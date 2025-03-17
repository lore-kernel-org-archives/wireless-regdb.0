Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92448C282EC
	for <wireless-regdb@archiver.kernel.org>; Mon, 17 Mar 2025 07:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=t29HzaKRSqHIYvX0OJiY1Qg30Z8JxfxKsZVt8Nfytqw=; b=b9EPjlDgsehLP8+ztF7OxZFZqB
	hsd3gDDI+peiUDWa/78CZzGnbNFRT5vgSEKaQJibWi1+6KOiIdHRk94xNkJA5oKpbnC0R41kdKQjs
	8/6BoUZ+UdtY0gZhYuzCn1+GvuTCQNCLlGvU3r7H7+5YFN3XAtDcG3kmNaG4SzUDNJ+5p9zoCcxnb
	xkvrlRl28bKg5WaL1tKKb7cbGGol4UCJtEZmJJrk1CumM7bJLvkUF+4uiUCdT5ENmDiYF1mfnX04/
	0SHKl0NXE/lXRPZEXjrCVIRwhB/yNkWDWQZkRF7OWQhC8mSam92Ec7qd90vZ12UVD1hG+xmkQPC0f
	hQ9Wzsug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu4xS-00000001ang-07af;
	Mon, 17 Mar 2025 07:32:22 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu4w5-00000001aWs-217K
	for wireless-regdb@lists.infradead.org;
	Mon, 17 Mar 2025 07:31:03 +0000
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-301493f461eso1826155a91.3
        for <wireless-regdb@lists.infradead.org>; Mon, 17 Mar 2025 00:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742196656; x=1742801456; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=t29HzaKRSqHIYvX0OJiY1Qg30Z8JxfxKsZVt8Nfytqw=;
        b=dtzjqnnpF5x8WaakJbfXPSLGFQkL1/FL9cgiTl3U7LzLpZK7KAyd3yq1qN18H4Zp0h
         +kdZ1ju2rdMRtlhcNF24S+WRBSRBjEYIUjk02uvsg3pMZSslOXrZb3J13zdcbSnfflt+
         GGnkl0oCCfMOgyBCFGrwaTxvLSIJ6X6rSv6WQo47pr4mPtu6lD+rWfYHmj3TmsxNnlu3
         jWKW3WzprCFim43B0nQIAnmdLdVEX1NS0LopwW1C6ByGeQoYQEacExiratkaZtCikeRY
         6E+xKMVy4Kz7u+Fvg6QY1aqAtoMZ4vL6tLhkVjnCCK6EcumBZSUufclvBm4OBchOOELa
         6jng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742196656; x=1742801456;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t29HzaKRSqHIYvX0OJiY1Qg30Z8JxfxKsZVt8Nfytqw=;
        b=Je34AiLRo64h5jnW4mD5n0pN9nS1VmfxaNM8FfBpra0y3XIGTiv0rbIPwfzDprN0ED
         0fyPlY0s4rOHaMgV+/95mldDOGRiulNaknGeiqiZXuPYwbV+2wefkqpn9QHUTlrDuhxS
         V/agF8eJuvCBrA0v7Tvd+ixeuIyfs0C/EQeKLWzQ1nfAdSgkMXrg7du1HhbeS20chCB7
         be8Qv6Fyb2Tn6Cf4m8SohPd7KxXEWQcS/+l59jz9+tLaWVOoziHzU2ChyoJPaI2VJaDs
         19Fo/PozO8Sn/+DgQsNIKRfDmWqpP2GIK++3RuP/TBDRQiCM+Pbp/wPl96cJPF25mtwh
         ec4A==
X-Forwarded-Encrypted: i=1; AJvYcCU2ocNgXRvBgJRZR9OHHG3NR4h9yiuYUFJZEZedYuqLJ7fNvuqPpn7xtr8LGTN92sOoK6t3x/Ou/9DNnFXA8w==@lists.infradead.org
X-Gm-Message-State: AOJu0YyvlTdJ27xeWQHjwRdGreUqMw1KiLxFRwr7l4vkCOcXIMKBlSom
	Kb26jw4b6/q1CddAj4M6kDaxOlgPKz1ksvor11oOJ3k7eUCNci9G
X-Gm-Gg: ASbGncsSn8xhbT1pPYbRyEb+l15nsaZG6GZUoYOU1/Mka8x2n0BP5tMw+u3N+IXT5Jp
	sMqt71bMdGMVUSmYhAPOQLgSuvQI09LNGOr/jitPH3F1juLLpLyn5aupoS8WVncvWuN8obC+fN+
	kM02kcwNNW7kY91qbFhzK5yiO00YtCy59LprOdKN2y4smgAr/eqU4nJLykC0YMJ7sXfOVJapKSm
	NsBHMsylW167iKs0Bku08nZLhKBhDPkTAU4M+nhjy/afA8CSecSKG9oDr07dMPCe8yNH91luWSo
	nQdLZ1eYg8DO97/ZGYP1CN6NG5vD1YlFbfaF+BRYLvahc9eNecV9K9s3SIGbR945uDl3mvv6dLV
	5EdSfPsT8Lc8=
X-Google-Smtp-Source: AGHT+IHbY5LOdF3RdUrhqKXGjw4w1qBGqYmHSNLGHK44fc9TZihR7Z+Rd5d4LVyZ5qx47/UHmQuLWw==
X-Received: by 2002:a17:90b:134d:b0:2ee:bbe0:98c6 with SMTP id 98e67ed59e1d1-30151c798d5mr14245736a91.8.1742196655741;
        Mon, 17 Mar 2025 00:30:55 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-301539ed03fsm5338372a91.16.2025.03.17.00.30.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 00:30:55 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH] wireless-regdb: Update regulatory info for Indonesia (ID) for 2025
Date: Mon, 17 Mar 2025 15:30:40 +0800
Message-Id: <20250317073040.8726-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_003057_528786_2C137BCE 
X-CRM114-Status: UNSURE (   7.12  )
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

Indonesia. Ministry of Communication and Information released Regulation
of the Minister of Communication and Digital Number 2 of 2025 concerning
Amendments to the Regulation of the Minister of Communication and
Informatics Number 2 of 2023 concerning the Use of Radio Frequency
Spectrum Based on Class Permits.

According to type 1 access (using RLAN for end user needs) of Radio Local
Area Network (RLAN) section:

* 2400 - 2483.5 MHz
  - 500 mW (27 dBm)
  - 40 MHz bandwidth
  - Indoor only
* 5150 - 5250 MHz
  - 200 mW (23 dBm)
  - 80 MHz bandwidth
  - Indoor only; prohibited to be placed outdoors
* 5250 - 5350 MHz
  - 200 mW (23 dBm)
  - 80 MHz bandwidth
  - Indoor only; prohibited to be placed outdoors
* 5150 - 5350 MHz
  - 200 mW (23 dBm)
  - 160 MHz bandwidth
  - Indoor only; prohibited to be placed outdoors
  (Since 5150 - 5250 and 5250 - 5350 MHz are the same, use this entry with
   160 MHz bandwidth)
* 5725 - 5825 MHz
  - 200 mW (23 dBm)
  - 80 MHz bandwidth
  - Indoor only
* 5925 - 6425 MHz
  - LPI
    * 200 mW (23 dBm)
    * 320 MHz bandwidth
    * Indoor only; prohibited to be placed outdoors
    (adopted)
  - VLP
    * 25 mW (14 dBm)
    * 320 MHz bandwidth
    * Indoor and outdoor
* 57 - 64 GHz
  - 10 Watt (40 dBm)
  - 2.16 GHz bandwidth
  - Indoor only

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 803f1bc5405f..e331d4f763e3 100644
--- a/db.txt
+++ b/db.txt
@@ -882,11 +882,15 @@ country HU: DFS-ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
-country ID: DFS-JP
-	# ref: https://jdih.kominfo.go.id/produk_hukum/view/id/676/t/peraturan+menteri+komunikasi+dan+informatika+nomor+1+tahun+2019+tanggal+24+april+2019
+# Source:
+# https://jdih.kominfo.go.id/produk_hukum/view/id/676/t/peraturan+menteri+komunikasi+dan+informatika+nomor+1+tahun+2019+tanggal+24+april+2019
+# https://jdih.komdigi.go.id/produk_hukum/view/id/949/t/peraturan+menteri+komunikasi+dan+digital+nomor+2+tahun+2025
+country ID:
 	(2400 - 2483.5 @ 40), (500 mW), NO-OUTDOOR
-	(5150 - 5350 @ 80), (200 mW), NO-OUTDOOR
+	(5150 - 5350 @ 160), (200 mW), NO-OUTDOOR
 	(5725 - 5825 @ 80), (200 mW), NO-OUTDOOR
+	(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
+	(57000 - 64000 @ 2160), (10000 mW), NO-OUTDOOR
 
 # IE as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
-- 
2.25.1


