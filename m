Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD27FCD4F25
	for <wireless-regdb@archiver.kernel.org>; Sat, 16 May 2026 10:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6CDTu0uMmnhCUoH+aSiyceKxfV77uqNspzafxvvFlRg=; b=0Pk+ZcatdgKTbhXJZPvnPgZHI6
	dXygyvYBKfkY214EkmfNOEaaFEPzsI6NJk9ByDGryYd6cJRdH6LeiNitEXNSUtnnBaEzWJoe9Aygv
	zvfLCQH/Oy6O1aOLL94PSdCr45Ln3mwrO36MJrKY7UQ1iJkC8HABoYy4GFTaWpxE+pqxig5poSFV2
	C9WSbTOV2bVjORFgFyLG90smKv2KgmC1bN4X3gzSQYET3ZPV34GSdXCBfWJZRp46h7PHOB2h+fsPk
	Qz+ikIvtvRNBmBVX9kzM2CBUeNugpMX+HJJvzrOfIJ8VLUsYU+ZmGDg/ZnOoB+T1idFAwS/5OLRzN
	Tqr2J+aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOBqk-0000000AXLY-0puh;
	Sat, 16 May 2026 10:02:26 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOBqe-0000000AXKq-3tNq
	for wireless-regdb@lists.infradead.org;
	Sat, 16 May 2026 10:02:24 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-2ba928852a5so5268265ad.1
        for <wireless-regdb@lists.infradead.org>; Sat, 16 May 2026 03:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778925740; x=1779530540; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6CDTu0uMmnhCUoH+aSiyceKxfV77uqNspzafxvvFlRg=;
        b=i4qvUzWmGQk49fCP82ZRF5/vxMpjOwq0hrwHPUltCibnqtg+7sQe4cNYRe6kpGBNlY
         v5NR01lz2x/eES534zycrlITUuKkIFK0PAoUEKZiCoeS+wzrGN2e7cyP6TewQ19fgqdJ
         0hI4Fr2bTBST5nuzKsRrB9/Dr7SnNeeNBiElxGLAcrfaKOblCNz1P2U6yfDXefBeYm2i
         pD0/V2F1XiWWVgH9N+3gjT24uaoRKkXQU2//dgsrV5qnDofmmg74oE1cu7SbNp6kfO46
         JUnO/6Up0eh8W/ZkiWRYEjdk4Iu4/M9FOQogpdhBPfLM2JQusUXMa3bEbgEEhcCyeexI
         f+Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778925740; x=1779530540;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6CDTu0uMmnhCUoH+aSiyceKxfV77uqNspzafxvvFlRg=;
        b=qgpwkREdo/T+91kZjdounW9PKL9DWfcz5NOlwjbEYF7Bv4MmVP9M1OhW+edx6wshtv
         e9kvOvR8YPV4bm8p9EuxFhwry1ORxI3ECp6+UhQ5mrOV7MGSz6QH4iy/HGeaBh5HzCcU
         Ll7aUI2yuVe5cDghN8Q8RhDT4RxvIhwcfpzGBL3Ibhfsesi5I+3KmEpu6qDDotMx4DzK
         ZzcPiQo9RsS69Hq5jERmFO0rw5AHzaTMDWPlbSZWp8u6vKzeZO1wG0TsGUJEY2Ku1jYT
         sf3SdA2osIKbkc1p/a96NYiBOLhwdE72XcIu7n3UIIpPN7+h+oF2AoUH4cAdgLBryNWk
         aEdw==
X-Gm-Message-State: AOJu0YzyYhGvw1HJfKY5cnB3nyYdRmL4cqaf10kWgWmkSoaWjUcQj3FR
	6QVI0fSrVFcEi1og//6jPqMyW74sISTifpxMEdxtCd2F6B4Xe9+KU2LB
X-Gm-Gg: Acq92OHQDXFj8qQX/yuuLxk07AaZusTcyfslYapfSvH40y94YwG/PhnPWNCYFSWJDCc
	eW4a5lSPlJde6PncrZX7/XY/+AuBUCNNpYfQgdW0Vyttnom85/8qmsp0IfaFDwL5JKVfOQE4Tld
	JWIffwURZLPIzVVSbLyIx0fsh2/nu0uOqZ+hrLvqxsCPCUCCp4xk50I2HMPkuV6SI70FT2WkR1f
	zSdppTNE6caDQ6yCIvINAYcBVTEYgW32TkFccXzbL4w5MzRncdD0LOuzVyi4Yvvo1yQZtjNC0go
	2BDoKiOcYmmIhBkh5BzyWwCbOmqKCPQhMki1D3jCQbo9bakFwUdfgYTxEqrLOOQnsfFCs+3gn5L
	yGo5OQeveKWgyJu4AMqCeDxJ9zByE8H/7W/Zc7mDKOPCJd0lwTE3m8Ojd9yUxMi6bvZbVkFuvYa
	e0MjR33+GWtRv0s/0S5hDBJbkZmOIds4DhiQw+FniblTht/w==
X-Received: by 2002:a17:903:fa5:b0:2b4:5cb8:99eb with SMTP id d9443c01a7336-2bd7e8bd34fmr89152795ad.27.1778925739604;
        Sat, 16 May 2026 03:02:19 -0700 (PDT)
Received: from adsl-dynamic-ipv6.slt.lk ([2402:d000:813c:1db1:d202:27df:3833:73d0])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bd5d235c18sm81015995ad.81.2026.05.16.03.02.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 May 2026 03:02:19 -0700 (PDT)
From: Mohamed Aashif <maashif011@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org,
	pkshih@gmail.com,
	Mohamed Aashif <maashif011@gmail.com>
Subject: [PATCH v2] wireless-regdb: Update regulatory rules for Sri Lanka (LK)
Date: Sat, 16 May 2026 15:30:24 +0530
Message-ID: <20260516100024.103241-1-maashif011@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <CAHrRpu=Ku=cK2Hd8xzJr82iPkj4Jzp57ch9wEE1KsoCiExbhbA@mail.gmail.com>
References: <CAHrRpu=Ku=cK2Hd8xzJr82iPkj4Jzp57ch9wEE1KsoCiExbhbA@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260516_030220_970036_62C29CC1 
X-CRM114-Status: UNSURE (   8.95  )
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

Update Sri Lanka regulatory domain based on the RTTE Type Approval
Rules 2020 from the Telecommunications Regulatory Commission of
Sri Lanka (TRC).

Source: https://www.trc.gov.lk/content/files/licensing/RTTE_GAZETTE-English.pdf

Key changes:
- Change DFS region from FCC to ETSI (document references ETSI
  standards EN 300 328 and EN 301 893 as the applicable radio
  interface standards)
- 2.4 GHz: expand to 2400-2483.5 MHz at 23 dBm
- 5150-5250 MHz: 23 dBm with DFS
- 5250-5350 MHz: 20 dBm with DFS (no TPC, 3 dB reduction per EN 301 893)
- 5470-5725 MHz: 27 dBm with DFS (no TPC, per EN 301 893)
- 5725-5875 MHz: 24 dBm with DFS (per ETSI EN 302 502)

Note: The TRC gazette conflicts internally by allowing 30 dBm for
5725-5875 MHz while citing EN 301 893 (which doesn't cover this band).
Lacking TRC clarification, we conservatively default to the ETSI
EN 302 502 limits (24 dBm).

Signed-off-by: Mohamed Aashif <maashif011@gmail.com>
---
Thanks for the review and catching the TPC and ETSI standard details!

Changes in v2:
- Split 5150-5350 MHz into 5150-5250 MHz (23 dBm) and 5250-5350 MHz
  (20 dBm), adding AUTO-BW to both.
- Applied a 3 dB reduction to 5250-5350 MHz and 5470-5725 MHz (now
  27 dBm) to comply with ETSI limits since TPC is unsupported.
- Capped 5725-5875 MHz at 24 dBm per ETSI EN 302 502.

 db.txt | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/db.txt b/db.txt
index fdc2c13..12cdafd 100644
--- a/db.txt
+++ b/db.txt
@@ -1058,12 +1058,15 @@ country LI: DFS-ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
-country LK: DFS-FCC
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 20), (17)
-	(5250 - 5330 @ 20), (24), DFS
-	(5490 - 5730 @ 20), (24), DFS
-	(5735 - 5835 @ 20), (30)
+# Source:
+# https://www.trc.gov.lk/content/files/licensing/RTTE_GAZETTE-English.pdf
+# Sri Lanka RTTE Type Approval Rules 2020, Table 2 - Wideband Data Transmission
+country LK: DFS-ETSI
+	(2400 - 2483.5 @ 40), (23)
+	(5150 - 5250 @ 80), (23), DFS, AUTO-BW
+	(5250 - 5350 @ 80), (20), DFS, AUTO-BW
+	(5470 - 5725 @ 160), (27), DFS
+	(5725 - 5875 @ 80), (24), DFS
 
 # Source:
 # http://lca.org.ls/images/documents/lesotho_national_frequency_allocation_plan.pdf
-- 
2.54.0


