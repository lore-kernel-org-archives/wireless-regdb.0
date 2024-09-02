Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7E8FCD342C
	for <wireless-regdb@archiver.kernel.org>; Mon,  2 Sep 2024 08:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=84j4YMkhuQUAVc1wW3fOXD/EApkWAkLNT4JxFhRqqb4=; b=Yg9KoDrJw/unTBRCCTZeyglBKJ
	xA3sSyid7ijrrpaYu9JXb9q5RFIJPa1uv9Zk8j+Ddy2QRc3eOE5dsesDB9eotBU/20I5SjpaqZ7YJ
	szJugQcP5Bo683Bd1tmfBIxWHu2p/PKm/I8wmDOtmA1SskRb8pKHglRfgJfu6QIyTEw8kZV6Vxp0W
	vCtc+dfaEQ9/8m/l9We67YYULQeuTcYDMMvhDqCaxVsNSAg1e0U93tslRyhUBzbxn29iXYzBf7G4k
	8RA/kVhd9LGAttkj6bRYrV/b+vi6XoFHoqbAqUQfxEVJYOWP09sqvhBqJQ2hJZ63k3FmoeTj+ecnC
	VWaP7pDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl2O9-0000000DUe5-36A3;
	Mon, 02 Sep 2024 08:26:17 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl2LL-0000000DTx2-31GZ
	for wireless-regdb@lists.infradead.org;
	Mon, 02 Sep 2024 08:23:26 +0000
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-70f5cd2fa39so2757412a34.0
        for <wireless-regdb@lists.infradead.org>; Mon, 02 Sep 2024 01:23:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725265402; x=1725870202; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=84j4YMkhuQUAVc1wW3fOXD/EApkWAkLNT4JxFhRqqb4=;
        b=O1MWVePFRkqqTmYztTpkkmJv3AZcq/dV6ZuMVZEdDr7MdUNAcqKpwuO/lm6cSZ+k2L
         iLy3eW8hjCz1KBAv0LCbh9LnVJeNGZG6hAtF7GQCcVcGZ/HI59drzFlwPOI2Z9Wsdf/m
         0P6zwyf39lumMjxG4w3radMk+vgge7AlAtnwNLdhQkjJXCKJi7b8Uvinqrhf2lVwPTkM
         h3A75SIh6OMw7ZFTYPPNi4TXcIJhnCE5UPSyvN1+Hx8baAEykx94c2RbdPaOHVzHtNGK
         u31CzEghHTq8HlwSxAKCXB2J/4eAudZgNRIcU5k7abclQeKQHUTeUfB2SXjkpqceRqlw
         /pDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725265402; x=1725870202;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=84j4YMkhuQUAVc1wW3fOXD/EApkWAkLNT4JxFhRqqb4=;
        b=SKrF6ZIgYyIf1g2tt+srWLmEb3JTIkaCAK27quGxVUxlKqy9Q9CpCCBaYFyWZZaka0
         Y6r5zNlbV94pMrzfJt5O67ci9w8Bsc2xKhmWiThpBamepZ+xm45DZ4cDRB+ETSAM32LP
         94C2D1Q/kMvkWd6R55p6RBbpptwEJwPplhYp4GGA8XCkYOthd9S0+cSpK3vZ931a9BuS
         UZydyCM8JJBfwErhQcvqH55sXs9ZlnXDznhWEpsDRly3TK6FC2JNLMD7KEZsT5qJOoiP
         aVSWDCmVg/T4RgZa3cYtOx0pN1C0JfkgdEKbgjEqS/6zRLDxY9iIK7px/DVQlO8SC8uu
         8dJA==
X-Forwarded-Encrypted: i=1; AJvYcCXgSPzoqCUFTPxYitXtX5eWqsunb5K4lHtk6J6BRRSyAzSzxUc5cu1YmchyHL0o/pnt5BaDKP4gphPqfyT9RQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxw1Iuzi3nW1+1IbBi3XOHkqSrkaTSL+xRsVV57pozGrUHboxqs
	ViOOcv35e6/uwebyz09/6oAXVMA9DkU3VvbyHMHKbgYxF9+DBK81xdowEqfT
X-Google-Smtp-Source: AGHT+IEFwMd5epcXDZ+7M9zkHUkM5fgXkEJmRe1kLMRfUEkn61o/GYQXg2YkStsHT759VfTReL3SLg==
X-Received: by 2002:a05:6359:4585:b0:1ac:f577:db25 with SMTP id e5c5f4694b2df-1b7ef5fd4b4mr971764555d.6.1725265401452;
        Mon, 02 Sep 2024 01:23:21 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-715e56d8827sm6376370b3a.161.2024.09.02.01.23.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 01:23:21 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH v2 1/4] wireless-regdb: Update regulatory info for Serbia (SR) for 2024
Date: Mon,  2 Sep 2024 16:23:01 +0800
Message-Id: <20240902082304.52326-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_012323_799722_F491C52D 
X-CRM114-Status: UNSURE (   8.68  )
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

Serbia government released radio frequency range on February 5, 2024 [1].
Based on Article 100, paragraph 5 of the Law on Electronic Communications
and Article 17, paragraph 1 and Article 42, paragraph 1 of the Law on
Government.

 * 2400 - 2483.5 MHz
   - reference [1] page 114-115, section 2400 MHz - 2450 MHz, 8th row
     * EN 302 328
       - 20 dBm
 * 5150 - 5350 MHz
   - reference [1] page 120-121, section 5150 MHz - 5250 MHz, 8th row
     reference [1] page 121,     section 5250 MHz - 5255 MHz, 8th row
     reference [1] page 121,     section 5255 MHz - 5350 MHz, 8th row
     * EN 301 893
       - 23 dBM (Without TPC)
       - 5250 - 5350 MHz, DFS
 * 5470 - 5725 MHz
   - reference [1] page 122,     section 5470 MHz - 5570 MHz, 8th row
     reference [1] page 122,     section 5570 MHz - 5650 MHz, 6th row
     reference [1] page 123,     section 5650 MHz - 5725 MHz, 8th row
     * EN 301 893
       - 27 dBm (Without TPC)
       - 5470 - 5725 MHz, DFS
 * 5925 - 6425 MHz
   - reference [1] page 124,     section 5925 MHz - 6700 MHz, 6th row
     * EN 303 687
       - 23 dBm, LPI

[1] https://www.ratel.rs/uploads/documents/empire_plugin/Uredba%20o%20utvrdjivanju%20Plana%20namene%20radiofrekvencijskih%20opsega.pdf
[2] EN 302 328 https://www.etsi.org/deliver/etsi_en/300300_300399/300328/02.02.02_60/en_300328v020202p.pdf
[3] EN 302 066 https://www.etsi.org/deliver/etsi_en/302000_302099/302066/02.02.00_20/en_302066v020200a.pdf
[4] EN 301 893 https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.01.01_60/en_301893v020101p.pdf
[5] EN 303 687 https://www.etsi.org/deliver/etsi_en/303600_303699/303687/01.01.01_60/en_303687v010101p.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v2:
  - update commit message: list page/section/row for reference
---
 db.txt | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 9a55f6b8cc98..ad8dddc9c800 100644
--- a/db.txt
+++ b/db.txt
@@ -1758,11 +1758,14 @@ country SN: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+# Source:
+# https://www.ratel.rs/uploads/documents/empire_plugin/Uredba%20o%20utvrdjivanju%20Plana%20namene%20radiofrekvencijskih%20opsega.pdf
 country SR: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
-	(5490 - 5710 @ 160), (27), DFS
+	(2400 - 2483.5 @ 40), (20)
+	(5150 - 5250 @ 80), (23), AUTO-BW
+	(5250 - 5350 @ 80), (23), DFS, AUTO-BW
+	(5470 - 5725 @ 160), (27), DFS
+	(5925 - 6425 @ 320), (23), NO-OUTDOOR
 
 # Source:
 # https://www.siget.gob.sv/actualizacion-de-cuadro-nacional-de-atribucion-de-frecuencias-t-0408-2023/
-- 
2.25.1


