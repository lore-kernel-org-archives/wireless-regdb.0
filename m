Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48397CCF9E0
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 Oct 2025 06:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ir73evyIRDVF112L404qeqtUBiO/cfljmivHcH0fmV0=; b=XcmmwwEzj/GQOagTnMomtaCu09
	BP1l6QbCAvMhJcqgFp1yfie7P98/fAaL7ABST7VxuRgWXXgcaK+RLv+Tkq4v1225jTt6K6B2GJ49l
	r3G+SjzmGt29s18FX/BZiGoGMuIMyxFv9RxR0XsJ/TRVFWfhBFqvREsY219rYdBJJdF4DFI7h/Uw2
	UE8dL7VdB2sCxEactPDnNIWjpCwLdhXZG6LM1QMjoMuZzuZfz+UOHNUqmYee7yN/wQW/zeMj7Fm+3
	o32gjKaPd6mqzcaHPsaRRl37cD3uAM1bdgYFtUWhh/V9k6ygCs/kSSbzv9ga340X8n99PT7WAWKL9
	Xpl8bXFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDdCk-0000000FLfY-16ka;
	Tue, 28 Oct 2025 06:29:14 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDdCO-0000000FLO6-3ZMU
	for wireless-regdb@lists.infradead.org;
	Tue, 28 Oct 2025 06:28:54 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-b87171370b5so25095a12.1
        for <wireless-regdb@lists.infradead.org>; Mon, 27 Oct 2025 23:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndoo.sg; s=google; t=1761632932; x=1762237732; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ir73evyIRDVF112L404qeqtUBiO/cfljmivHcH0fmV0=;
        b=NhwMLprHeguVq0XCNOr8wfOGfyQl6E2k17JxG59mKNOt3DE+SmDbAIVYt5DYe1zq5h
         smHHxbrIodaunFCwZr4NFTsWWKpgZ+cD+E/079+CtnLtFHt+Ic3Mo/xZCUPxxfNXT9uv
         UHTJvdJx64kVm6DvN6cekM+OB/FQdLTOWbhmo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761632932; x=1762237732;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ir73evyIRDVF112L404qeqtUBiO/cfljmivHcH0fmV0=;
        b=tJ8QVa/Qv8AYJpA73Moh9k8iV9slYPg1U2qdZzvi8R3FRlKW63hDLVM6+pzPUIElgq
         ta/jSkpgmVyQcKGi8f35XTeC5tkkYB3bml/ngEBvAX1zKP6dQTkk4pCwZ8tfk4VccV1c
         bc6MO5yXBCRWCQcy9+U5FVNdenpw1Lb7ZclPzCCK1/JdIonhTaBXkD7BgV0SHotLwD5P
         ZNpJ04GK0OyETE3pPe2arL4NdOHCxrm0+Zelm58UQCwGM/YFuxCPNrIiqNR3MNFbz6Lk
         rJ4cLdMusvgtz6rdxljmIFVkG9YACvuf1yBAmpCQLjz0EwFeARXWL3fIMxLGT/Q089r3
         Ip9g==
X-Gm-Message-State: AOJu0Yx0Rx/UKs45yrXz7JHCziJDG1Tf4JSSe0P9/H4gPsvVSTpdaISN
	nqTIMUAOVnwXD3OxJVIQuF2lJo4TH1IKy4CPMBvnMxW7e+WsmNBPLf/OT6wzKw+WCQ==
X-Gm-Gg: ASbGncvy2B5o+WofYvOJKkFRAMnWexv3C/Lt15ZZ0hZ4NMe46yzMTZm/XsSGZ20z8Td
	F0VT5+51kCE4LPbnui77XEmA3+TIDBBWHg5lMybjzENfo2odgQZ7gICcKGY94Fos0x6IEx6uEF+
	1gZaaPZsrwtPM6/ALT2VAF0ULad5xK4rxmNnjI6KOw2FrbXdnE80GlgmkWiWBMB5bu8X835iB6s
	tO4s/tL2jgNyYl5EGAs/32sAw39cF5gkyZ26cJo4oREA4xlmyV5ViV4AB1GS7Udljwdct0ZJLWu
	i95Nj3Jiw7T8HKt1/ApBNcipTsUHfSSwUu2UWKX6BwWQ0mCUpjgYsVp6LC36OsOQNFYspsNAS2a
	RoJrV2fYsVWnI698IryeO4aQTYYrixy830UVkcbRiCoyap/Loa6dpS9PbVG+rLLqQ37nlSsRoh9
	P0kbFMT7BEqONr2+YZjbD2aHCyqp4yJOFYrlqI7hs83zUiZt19lz3d2R88tQ+ObcJxelSw1RFQZ
	c+YOejqld/YpcEm
X-Google-Smtp-Source: AGHT+IGKPUZcH3wpBBQ4WcYbADX7gLEdRxi1mFofpl7lids9ns5f4RVp7JNyeHDMn8AquBZTDloDbA==
X-Received: by 2002:a05:6a00:1385:b0:7a2:861d:bfb with SMTP id d2e1a72fcca58-7a441c3be6bmr1656542b3a.7.1761632931968;
        Mon, 27 Oct 2025 23:28:51 -0700 (PDT)
Received: from localhost.localdomain ([121.120.74.142])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a414015724sm10360781b3a.14.2025.10.27.23.28.50
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 27 Oct 2025 23:28:51 -0700 (PDT)
From: Andrew Yong <me@ndoo.sg>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org,
	Andrew Yong <me@ndoo.sg>
Subject: [PATCH v2] wireless-regdb: Update regulatory info for Malaysia (MY) for 2024
Date: Tue, 28 Oct 2025 14:28:41 +0800
Message-ID: <20251028062841.49216-2-me@ndoo.sg>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251028062841.49216-1-me@ndoo.sg>
References: <20251028062841.49216-1-me@ndoo.sg>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_232852_890759_C6D1632C 
X-CRM114-Status: UNSURE (   7.61  )
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

Malaysia Communications and Multimedia Commission announced CLASS ASSIGNMENT NO. 1 OF 2024[1].

With reference to class assignments on page 10, and Power Spectral Density (PSD) limits on page 20, update the following rules:

2400-2500 MHz: Align previous 2402-2482 MHz rule to class assignment
5150-5250 MHz:
  1. Align previous 5170-5250 MHz rule to class assignment
  2. Mark as NO-OUTDOOR
5250-5350 MHz:
  1. Align previous 5250-5330 MHz rule to class assignment
  2. Limit EIRP from 1 W to 200 mW due to PSD limit of 10 mW/MHz, calculated at 20 MHz channel width
  3. Mark as NO-OUTDOOR
5470-5650 MHz:
  1. Align previous 5490-5650 MHz rule to class assignment
  2. Limit EIRP from 1 W to 200 mW due to PSD limit of 10 mW/MHz, calculated at 20 MHz channel width
5725-5875 MHz: Align previous 5735-5835 MHz rule to class assignment
5925-6425 MHz: Increase EIRP from 200 mW to 250 mW (remains within PSD limit of 12.5 mW/MHz)

[1] https://www.mcmc.gov.my/skmmgovmy/media/General/pdf2/Class-Assignment-No-1-of-2024.pdf

Signed-off-by: Andrew Yong <me@ndoo.sg>
---
 db.txt | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/db.txt b/db.txt
index 1d17271..3df9c41 100644
--- a/db.txt
+++ b/db.txt
@@ -1450,14 +1450,16 @@ country MX: DFS-FCC
 	(5925 - 6425 @ 320), (12), NO-OUTDOOR
 
 # Source:
-# https://www.mcmc.gov.my/skmmgovmy/media/General/CA-No-1-of-2022_-signed_19012022.pdf
+# https://www.mcmc.gov.my/skmmgovmy/media/General/pdf2/Class-Assignment-No-1-of-2024.pdf
 country MY: DFS-FCC
-	(2402 - 2482 @ 40), (500 mW)
-	(5170 - 5250 @ 80), (1000 mW), AUTO-BW
-	(5250 - 5330 @ 80), (1000 mW), DFS, AUTO-BW
-	(5490 - 5650 @ 160), (1000 mW), DFS
-	(5735 - 5835 @ 80), (1000 mW)
-	(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
+	(2400 - 2500 @ 40), (500 mW)
+	(5150 - 5250 @ 80), (1000 mW), AUTO-BW, NO-OUTDOOR
+	# 5250 - 5350 MHz regulatory limit is 1000 mW, but 200 mW reaches the PSD limit of 10 mW / MHz at 20 MHz channel width
+	(5250 - 5350 @ 80), (200 mW), DFS, AUTO-BW, NO-OUTDOOR
+	# 5470 - 5650 MHz regulatory limit is 1000 mW, but 200 mW reaches the PSD limit of 10 mW / MHz at 20 MHz channel width
+	(5470 - 5650 @ 160), (200 mW), DFS
+	(5725 - 5875 @ 80), (1000 mW)
+	(5925 - 6425 @ 320), (250 mW), NO-OUTDOOR
 
 # Source:
 # https://www.cran.na/yglilidy/2023/04/GG-8060-dated-3-April-2023.pdf
-- 
2.50.1 (Apple Git-155)


