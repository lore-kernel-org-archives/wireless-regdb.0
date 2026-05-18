Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2404CD4F51
	for <wireless-regdb@archiver.kernel.org>; Mon, 18 May 2026 07:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ntftegR19uG4jEPijjx2rHNpuHDapz9rb9AoEjoP9Aw=; b=pdKhd4E99x8yEJKz5ZFSy0C6Zb
	x/sPAVzEF1oZOCo7a9iokfTnDJ2bro3c6ldni0IYZHxKadkJrmeYsxF04hC3mzAj4VdWUvDg3tK6M
	LAKM1vAbCUuM1RMH4tzZFtiWXa8JAHu/T4Bgo8vBT5OPYJ9hJsFpAoeFeEKhBV3hiUqfXdfeZT/PP
	ZGn0i5OslMd/xGVC2vVk8OBGexCKzOoPihofE84+nxJMHoMe/kSiUKRzmQ1Cn21KFEB/cp1I6MTpJ
	gwfvHQxjh4CbMG9MXd8SUPoOWCd+DE7q8xHSZRc521mThTU3YKzOlXEBk0iF3EoDT7UCsvsGtjckQ
	9DHcMsAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOshq-0000000EfOI-02m7;
	Mon, 18 May 2026 07:48:06 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOshn-0000000EfNY-0DD5
	for wireless-regdb@lists.infradead.org;
	Mon, 18 May 2026 07:48:04 +0000
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-c6dd5b01e14so809072a12.0
        for <wireless-regdb@lists.infradead.org>; Mon, 18 May 2026 00:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779090482; x=1779695282; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ntftegR19uG4jEPijjx2rHNpuHDapz9rb9AoEjoP9Aw=;
        b=Z0QPQikmkpqEMvsyUfeU9veJKiQTDkoG4trwKn1EbKwW98heaV+ctTDD5WbVmuJWEc
         cyBUlMh+y4mIK+LD0RXAucSC9H+Q99VbV6Dy281siUXoEE+OhZLTAfjPgSgLaNVHsd2c
         LgEckmSEpSOL8dxrW3rwcDATnHBz2RTO07soXgwaXOurmTcmPBEibVeie/voDbFVOuYq
         0GdU+jbUaGYm6c0owZv6G/YQqcMGCPcZPocyoNhUWAzTMLS5G9FuP0RUm97r2OGRJtGH
         9CvpaL2PpjWCIXgdgOkyXlFm8XSbyN3YrxtpQsZaUVI9Mmvu4Z3JAAksOECRZ043vqPu
         xbuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779090482; x=1779695282;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ntftegR19uG4jEPijjx2rHNpuHDapz9rb9AoEjoP9Aw=;
        b=G3CC0tRm/nCfKbw6HW64Oz38+ZC3PxUOdcmZpiQiE+OcZ8gpQH+2Lcxxfyg4SlqyPY
         hdEZgRXhfSe8oeB2j7MZ3nSZoJ6V2ElBWxRZvsO6tB49+2shDV21Wn5dv5oGvDwnT96F
         1FEx0TS4P4Gp0pYpVXtRsOSDskX1bU3tjLVMgYEUzM94pCL3BISktcHFmOm6fEu65YE8
         dIfllT1dkNNGvF8cs6kiW/72V9+eMPrb+kq+DTvmKXydVaSl45FMgHQokk4jdSdgivw0
         MviYqGe+2gO4HtrmcaDY60iSz4p3vJP4uBHkRj1ZvOwqDlVO3gFdJIV+Mxlsir4vydG7
         8TYw==
X-Gm-Message-State: AOJu0YzackAzk1eXByi5AgQMGZYD6UQubkOS4FN8f1PURDqsFp686XkN
	hDrfrkAXcJbD2Y82JTJw77DH3/R0j1zVKPpHimpRj2nHrxAkDZuXWZdV
X-Gm-Gg: Acq92OHhlXt2pnEcpTvaqfUYm2Ydq0FsXryz1qvMIMJHB7dtJUA0qW5xGRNdFaakPVf
	LtmjszkDkKsUjOSoWIpGEH+O/XO2CbeAiAf06fyiHFzDVaB818Xs8ujNvmVY508PtFEX473v3p/
	VRu6j9FwjIM5PaRwbOouhYbGfj8Pg85GUZ1FkWDWRRLTs/yPNwH9pcsFo9FFwYac7V67jUj2rL/
	IaKYSyVHUmv4LNhO+Nv5eCiRLdr4HHoI0BVEPn56nkDWeUZcsqAdBbqIMiDAOwNJmSQj9x8wjSq
	Jqo/tS3z9+K4CkGNTnt4e1FMMY+y12wLgtyawlk7HPRnhEg2cBSxrIamNVV1Z+LKL9LXG4FvSnp
	MMXFOMWFtDZ3qKCBHq5mUbsIGGRAI0oyBxJZ3QBqUD4HNOay52/slT6G/l5G/a621cXB5f6s7qK
	tq4f4CjNZm7T62Rph3WWMeJWJDvoFUSzC/NQM4HZrsCa7bXg==
X-Received: by 2002:a05:6a21:33a8:b0:3b2:86eb:335b with SMTP id adf61e73a8af0-3b286eb353dmr4514969637.11.1779090481787;
        Mon, 18 May 2026 00:48:01 -0700 (PDT)
Received: from adsl-dynamic-ipv6.slt.lk ([2402:d000:813c:5008:e225:394e:61ea:4bfe])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-83f19661261sm17056369b3a.3.2026.05.18.00.47.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 00:48:01 -0700 (PDT)
From: Mohamed Aashif <maashif011@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org,
	pkshih@gmail.com,
	Mohamed Aashif <maashif011@gmail.com>
Subject: [PATCH v3] wireless-regdb: Update regulatory rules for Sri Lanka (LK)
Date: Mon, 18 May 2026 13:17:43 +0530
Message-ID: <20260518074743.179402-1-maashif011@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <CAHrRpu=-ngPpe2MsmWz0gQq1VVxbr9L0+jUos3o62wPUY-wXqQ@mail.gmail.com>
References: <CAHrRpu=-ngPpe2MsmWz0gQq1VVxbr9L0+jUos3o62wPUY-wXqQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_004803_096093_C645F71C 
X-CRM114-Status: UNSURE (   9.64  )
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
- 5150-5250 MHz: 23 dBm
- 5250-5350 MHz: 20 dBm with DFS (no TPC, 3 dB reduction per EN 301 893)
- 5470-5725 MHz: 27 dBm with DFS (no TPC, per EN 301 893)
- 5725-5875 MHz: 24 dBm with DFS (per ETSI EN 302 502)

Note: The TRC gazette conflicts internally by allowing 30 dBm for
5725-5875 MHz while citing EN 301 893 (which doesn't cover this band).
Lacking TRC clarification, we conservatively default to the ETSI
EN 302 502 limits (24 dBm).

Signed-off-by: Mohamed Aashif <maashif011@gmail.com>
---
Great, thanks. Removed DFS from 5150-5250 MHz.

Changes in v3:
- Corrected the table caption in the source comment to "Table 2 - Applicable Standards- Wireless"
- Removed DFS flag from 5150-5250 MHz

Changes in v2:
- Split 5150-5350 MHz into 5150-5250 MHz (23 dBm) and 5250-5350 MHz
  (20 dBm), adding AUTO-BW to both.
- Applied a 3 dB reduction to 5250-5350 MHz and 5470-5725 MHz (now
  27 dBm) to comply with ETSI limits since TPC is unsupported.
- Capped 5725-5875 MHz at 24 dBm per ETSI EN 302 502.

 db.txt | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/db.txt b/db.txt
index fdc2c13..8038f5a 100644
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
+# Sri Lanka RTTE Type Approval Rules 2020, Table 2 - Applicable Standards- Wireless
+country LK: DFS-ETSI
+	(2400 - 2483.5 @ 40), (23)
+	(5150 - 5250 @ 80), (23), AUTO-BW
+	(5250 - 5350 @ 80), (20), DFS, AUTO-BW
+	(5470 - 5725 @ 160), (27), DFS
+	(5725 - 5875 @ 80), (24), DFS
 
 # Source:
 # http://lca.org.ls/images/documents/lesotho_national_frequency_allocation_plan.pdf
-- 
2.54.0


