Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10146CD342C
	for <wireless-regdb@archiver.kernel.org>; Wed,  6 May 2026 15:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xucSoN9Y6c5d7rMzqyVuKa4SJThVaaNejVC6mnM3X5o=; b=SFC7uBtzf8i1bJAbXWe3HtkYFF
	AmBWV3Jv+3K+M/JOQKcnaZPGGwPOWxZgeZY4LNNe/4d9NKvg0wTwsISDsuDZG/j+wZ4G4Bjs5/61m
	jyfmg3Hymk24K/iUvO5mjl23HM/rSvjXeOEM7u73IJOj17S2TvePlRUjoxmUh516kSX5kCq9xWAkq
	g7CPWl2DbrK0DUbvQ10exFi0prE9uo7YwoEJR9hB90rHD8C8A8cQHYoikOnfchqDTYr+Jv/Bv2r2s
	kgBGUhUgtwdG9YSvWPTmJZfYNbaH4UnLj+Br9e1Hd8lkJH5FxJiSxWkv1s/JUOPg7wIS7dpvA6D+c
	Ab6C5XyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKeVP-00000001Ovj-3cWm;
	Wed, 06 May 2026 15:49:47 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKeVP-00000001OvJ-1rXP
	for wireless-regdb@lists.infradead.org;
	Wed, 06 May 2026 15:49:47 +0000
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-b6ce6d1d3dcso2337159a12.3
        for <wireless-regdb@lists.infradead.org>; Wed, 06 May 2026 08:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778082586; x=1778687386; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xucSoN9Y6c5d7rMzqyVuKa4SJThVaaNejVC6mnM3X5o=;
        b=CrkHbl6GJbQ7OZ7eSw/eFISBwKwA2yGopHB8FzwGU59Tmbux+esECJSb9YtnfUHGMa
         vJ6/X5DBhl0/9Sjrp2aknNCSbvJ4MrVw43essbh4LbXGjA2VBODrKWoWNz/ieTREN3lt
         DCJs2uX9PUimoOohF//HMjfkZPSHvuCYBTdoOiBvLUtSjo1UOmmrIqBbMSCAI0YeKjZB
         YJZRnlRKqYK6y38DZFMOI6WtbJuiwmYVHEr4caBZbNECHpBZKvZq8YYQS5WPTC5/wn2s
         655MnbrjmbBDi6d2/wFWSIFcexfF3I/AiPmotqRNmxp/EuOeboWkmmDMuap2HLUOJee1
         gVgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778082586; x=1778687386;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xucSoN9Y6c5d7rMzqyVuKa4SJThVaaNejVC6mnM3X5o=;
        b=JnPV/4JMtsLJrLNXTYl0riXOiewZEXuBArkocKkcQi3OkD1UmXoBvmxunARlnsD06K
         u3+dsCn9iOtC9V7O3odODFxw+qmuUtiSGcou+iceAewzu7rjAex9EVTT0En+TPFKTgYZ
         rOF7R/N/zafiHFZT4nTP7MWEx03TjFxKQSe+yAoNU+fD0uY3lHyiwrJudaqm6PfFZ1Ar
         D65JSzw61bNYLmwSP3b7fI4GfzszxdKs8WBpeNvK+aOU+KyGrde4t2b99tj97VXaVbhV
         bOsOFTjqaf+gAg5BtkhfTroE+MdTbaGrLbV+pZVTHvevjLXhzlpcY7lUvorLljWGeXeK
         eHYQ==
X-Gm-Message-State: AOJu0YzsRKWs3t5O5NwDLcYoLnhPPnbTp7P6+tLbcc187ZypkHHQ8tVS
	atyf5hPC51FmwcJrqi0amwYOq8Hf0vLiOhAASdp5ExvLobr1yK1SE41y
X-Gm-Gg: AeBDieuLVFii6G9TvTO7oQ853VmCJvl7J3iz5YqUminBhGLNXMKRYsJ65cenU5MAUZz
	Wx1Ki5oNdYwJmPSVnmRbOcTTclPDZ7YII4U5wycbT7GJ8snQPDmGNc02W/tiW3WC7EXU5MOBZal
	l/JJBhKeCkXc+jYntJY0T/45WEE0FfnTVCPq35axVYWt25X2GZdM92CzXfM7Dmh6f6TiBXraZ4T
	KmxItjWYRE3xrL0lCGR6i3Yzr9UcxBuRt0B/wDx6jGBbiY/wIWVdIkMoWyC0Z7E7Pi1xrzEEvH0
	kZIEf8PgZIq5fCMV2K14SyAbfovquK2R3e9/931kTZjsJAcQNeOE41GqWwzpfUR7yEG6EEs9cc4
	HQVP57OF2LHVJEtmNHEj58J72zJT8ya8CfmtKv9y+W/ZEH0QT/m11WRQNtxOFDULhPZk0Q3OgZZ
	D13fwvDcaX2Ux3zDS58SYhfWPDVynoPieHrsyD3e7amgMbmcl5gxGkW5Ej
X-Received: by 2002:a05:6a21:999b:b0:3a2:dc51:458 with SMTP id adf61e73a8af0-3aa5a99f62emr4230782637.41.1778082586387;
        Wed, 06 May 2026 08:49:46 -0700 (PDT)
Received: from adsl-dynamic-ipv6.slt.lk ([2402:d000:813c:31dd:f749:6da3:8e01:1e17])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c8242acb677sm2552557a12.11.2026.05.06.08.49.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 May 2026 08:49:45 -0700 (PDT)
From: Mohamed Aashif <maashif011@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org,
	Mohamed Aashif <maashif011@gmail.com>
Subject: [PATCH] wireless-regdb: Update regulatory rules for Sri Lanka (LK)
Date: Wed,  6 May 2026 21:11:29 +0530
Message-ID: <20260506154129.64112-1-maashif011@gmail.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_084947_479088_9D0D7D27 
X-CRM114-Status: UNSURE (   7.78  )
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
- 2.4 GHz: expand to 2400-2483.5 MHz at 200 mW (was 2402-2482 at 20 dBm)
- 5150-5350 MHz: 200 mW with DFS
- 5470-5725 MHz: 1000 mW with DFS
- 5725-5875 MHz: 1000 mW with DFS

Signed-off-by: Mohamed Aashif <maashif011@gmail.com>
---
 db.txt | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/db.txt b/db.txt
index fdc2c13..d265176 100644
--- a/db.txt
+++ b/db.txt
@@ -1058,12 +1058,14 @@ country LI: DFS-ETSI
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
+# Sri Lanka RTTE Type Approval Rules 2020, Table 6 - Wideband Data Transmission
+country LK: DFS-ETSI
+	(2400 - 2483.5 @ 40), (200 mW)
+	(5150 - 5350 @ 160), (200 mW), DFS
+	(5470 - 5725 @ 160), (1000 mW), DFS
+	(5725 - 5875 @ 80), (1000 mW), DFS
 
 # Source:
 # http://lca.org.ls/images/documents/lesotho_national_frequency_allocation_plan.pdf
-- 
2.54.0


