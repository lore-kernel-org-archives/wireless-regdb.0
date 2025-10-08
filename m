Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 316DFCAC5BB
	for <wireless-regdb@archiver.kernel.org>; Wed,  8 Oct 2025 11:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CY9sBhAH5xyY7adQ+pO128vNRZQE2GY/Fvz2grNM6jw=; b=Hm+XLMQQD62U/XDzlzCsbLD2yL
	tDBT4JvqTmzSxfpsQBIeo9Ra0GTbm1/UaVUlz3fgnfjpgu+WG+QGqe7ezhfhwoOPeRTJf6KiMzQad
	HeleAX5X4XrwSoq/gigjGouyFEvMiGiz8d0KZ81SmmtYCtsGeg8Xk3/cLICOWlmsDJlwIx9eSNzxh
	tRSrHr1IzAaF582SY4zDZNZTSN8UGc5O63JbRmz/8bOpuRPQSPVEMTNkiT9bnb4YwmrLMxrFoXffT
	aLfjpTD+GpoiIuUGljA+cfYCpwLEcCXFRS1dRKwcvnndzuegVOg7tem2c2/xFBbGvqgvzN2clBOgd
	2hYsSRtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6SEy-00000003hxP-3xVS;
	Wed, 08 Oct 2025 11:21:52 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6SEw-00000003hx2-45ne
	for wireless-regdb@lists.infradead.org;
	Wed, 08 Oct 2025 11:21:52 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-7811fa91774so5546005b3a.0
        for <wireless-regdb@lists.infradead.org>; Wed, 08 Oct 2025 04:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759922510; x=1760527310; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CY9sBhAH5xyY7adQ+pO128vNRZQE2GY/Fvz2grNM6jw=;
        b=BIf5FCTPUBACbFSOvBXxPAm8Qv8Q5FZlJscApz+1tWoOdxC1xdhZ5S8BFCK4SQWseN
         C3sThyObNas0yNpBiupvFgPoYohTEHo9o/lnEEh5Zv88UTE6ps0xtWs9OhgN+cHPXHUq
         VLska0kNgMVwHce5Nd6g0GmhSL3EehJQ6/QjogpJfSuLwuW6PhEZB2wazWH9/bQk2ehx
         APIYnNxL2Vn9tlr4e/4RiUzflzKkoRMsA1hzDIIgRK7g/R2iYS3Bx+AjjwyYj/hsJMs0
         uvNksakc6dXmvJjwPBMORVE1mgnJAvj8xQfGMNaFSiJZtAGMvRB8FwIQayYNXN+DGDNV
         NaZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759922510; x=1760527310;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CY9sBhAH5xyY7adQ+pO128vNRZQE2GY/Fvz2grNM6jw=;
        b=cT7ujX+RLuKP767zPUf2ZpSqxsQPU5NFOtrjxLaTC4ksXyQiOytL1bkQ9n+QSQNxQQ
         3K4QEyq54j2jjbxNnoACR8Si90/kKQpwHlAkKPC1fNe5/MxJJ+CQ3Lx3L4xnyeF67TXs
         qWkHCkiCh7VhGcxYff85ZZOUJNIfWY+DvjQT7OYrh32f6d6aSIikjDZxhFdggl1C/USn
         aB2iFYc4pBy5iaw0+3krPdKM2CbmPm3plNEDbCTxRdzSKMufJyTncySnKbSTk1eLglGM
         3R+d7pvwyhHPAsHF14XB3QJqNAMtLlhZi1EU9nAdFFfySW+xJV/fzfYVN78oSo25RTA1
         zajg==
X-Gm-Message-State: AOJu0YySUt0b9m3249CQ/qylpSU7XQfUUjztXHJXIVfJ5eVv0/naksZt
	vaut29l+Gbrj3fm63cn0eE7Q2JJ4RmWlN+nudldBNo2HEN7eu/LMrbGY
X-Gm-Gg: ASbGnctHceUdVdqxA7dBV3BCNLZPk2YyBsNd1yNsCOX+RJ2QWVjsxie8lDKLl6ue83u
	zeBS4fAOaYSQ+LGWMkB5YfLHN+vhdHHDeh5qjhuazmKSxTs4Drju8cUOGmAH/7NU8WzKO2059Qd
	NZg3X/qBWZ4DyZMqAS/1A53H5jZFHyOrsiB/CEGJQ4a8sEeWmhW/9y0vAo3v38YO3n7+iDVTAOx
	SrKzIFkfRh+IiW3nitt8iG4CqDh/8J5pzhsRP6xM+dU57VAJmApgUiD3+QGqoO2hztmz+9oY38b
	uJcssrMLfFcA63o2yiAoaDC7Pl/uPhBLMna8uJR2ve8smBKjNSLzKOnBlwK2W9hIJ9UlFQLRhzs
	Jtx3Gf/5GrYt8aCV35k5jfeNii5G9y9i4dZh8/cDZ4CMkxzS7RXHPMUFpUc0=
X-Google-Smtp-Source: AGHT+IGq9/h3SCHVJ26M/IheL3kyqejiM/guUXKuxBEkYZSVffGGqGY0aWbkPUC6zjPk0MfMOTpvKw==
X-Received: by 2002:a05:6a00:17a7:b0:780:9932:6ae9 with SMTP id d2e1a72fcca58-793876363abmr4056737b3a.18.1759922510121;
        Wed, 08 Oct 2025 04:21:50 -0700 (PDT)
Received: from localhost (2403-5806-8049--d1d.ip6.aussiebb.net. [2403:5806:8049::d1d])
        by smtp.gmail.com with UTF8SMTPSA id d2e1a72fcca58-78b0206f619sm18501471b3a.67.2025.10.08.04.21.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 04:21:49 -0700 (PDT)
From: Richard Huynh <voxlympha@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org,
	Richard Huynh <voxlympha@gmail.com>
Subject: [PATCH v2] wireless-regdb: Update regulatory info for Australia (AU) for 2025
Date: Wed,  8 Oct 2025 22:21:04 +1100
Message-ID: <20251008112104.8558-1-voxlympha@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251008_042151_035943_5A555BD6 
X-CRM114-Status: GOOD (  11.24  )
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

As of October 1 2025, a new class licence is in effect[1]
Update the link and references in the comments to it

Also align the 915-928mhz block with the document

Additionally for the lower part of 6Ghz spectrum:
- Allow for EHT-320 as it complies with PSD limits
- Expand the upper range up to 6585 as permitted in new licence

[1] https://www.legislation.gov.au/Details/F2025L01047

Signed-off-by: Richard Huynh <voxlympha@gmail.com>
---
 db.txt | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/db.txt b/db.txt
index 16bcb32..1d17271 100644
--- a/db.txt
+++ b/db.txt
@@ -145,43 +145,43 @@ country AT: DFS-ETSI
 
 # Source:
 # 'Item' in the comments below refers to each numbered rule found at:
-# https://www.legislation.gov.au/Details/F2023C00524
+# https://www.legislation.gov.au/Details/F2025L01047 within Table 8
+# except for 5850-5875 which is found in Table 1.
 # Both DFS-ETSI and DFS-FCC are acceptable per AS/NZS 4268 Appendix B.
 # The EIRP for DFS bands can be increased by 3dB if TPC is implemented.
 # In order to allow 80MHz operation between 5650-5730MHz the upper boundary
 # of this more restrictive band has been shifted up by 5MHz from 5725MHz.
 country AU: DFS-ETSI
-	# Item 58
-	(915 - 920 @ 4), (1000 mW)
-	(920 - 928 @ 8), (1000 mW)
+	# Item 1
+	(915 - 928 @ 8), (1000 mW)
 
-	# Item 59
+	# Item 3 and 7
 	(2400 - 2483.5 @ 40), (4000 mW)
 
-	# Item 61
+	# Item 10
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
 
-	# Item 62 (200 mW allowed if TPC is used)
+	# Item 11 (200 mW allowed if TPC is used)
 	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, AUTO-BW, DFS
 
-	# Item 63(a) (1000 mW with TPC)
+	# Item 12(a) (1000 mW with TPC)
 	(5470 - 5600 @ 80), (500 mW), DFS
 
-	# Item 63(b) (1000 mW with TPC)
+	# Item 12(b) (1000 mW with TPC)
 	# The end is 5725 but we borrow 5 MHz from the following less restrictive band
 	# so we can get an 80 MHz channel.
 	(5650 - 5730 @ 80), (500 mW), DFS
 
-	# Item 60
+	# Item 9
 	(5730 - 5850 @ 80), (4000 mW), AUTO-BW
 
-	# Item 22
+	# Item 22 of Table 1
 	(5850 - 5875 @ 20), (25 mW), AUTO-BW
 
-	# Item 63AA (25 mW if outdoors)
-	(5925 - 6425 @ 160), (250 mW), NO-OUTDOOR
+	# Item 13 (25 mW if outdoors)
+	(5925 - 6585 @ 320), (250 mW), NO-OUTDOOR
 
-	# Item 65
+	# Item 18
 	(57000 - 71000 @ 2160), (20000 mW), NO-OUTDOOR
 
 country AW: DFS-ETSI
-- 
2.51.0


