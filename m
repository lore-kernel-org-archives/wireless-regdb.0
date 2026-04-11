Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C6F6F3ED69
	for <wireless-regdb@archiver.kernel.org>; Sat, 11 Apr 2026 22:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2HVgfkGPGndx+APhfcdhALXmwf1+CLB8bFuzwCaKWBc=; b=da5UOg2Bh+RU2T8rOykbJKM/kg
	Bh5MOM28xGHAwQiYV71dhuPvo9O56hxyf4i2qcZCgC7ZAnZdourVcGWFXeKw+/fKpDDoVEIzhWwQv
	/fNTvG6D2oInfUWrbO0S4rlCLcaMmCeShTvOcjpLHxzINs8VR1i9FfpqRgCV4l89+HXsMJAEZY8hD
	hOANDR/RTi8XD+00715wjRKY/gBXItjnEbdf/Bkqkpl+SQXNx8MAdI7JoHDMU5wJJ7OLNwe1BLxeO
	1z9ZdjmJt21NJiaWEWLgVQNi/YT0ZF2V4GLfvJuXAP7VkAU4zv+OkfJ7nzYM5iVND7NPWvk0xTjCe
	hLeoIa+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBgiV-0000000DpxW-2XkE;
	Sat, 11 Apr 2026 22:22:15 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBgiT-0000000DpwZ-1s2d
	for wireless-regdb@lists.infradead.org;
	Sat, 11 Apr 2026 22:22:14 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-482f454be5bso34418675e9.0
        for <wireless-regdb@lists.infradead.org>; Sat, 11 Apr 2026 15:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775946131; x=1776550931; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2HVgfkGPGndx+APhfcdhALXmwf1+CLB8bFuzwCaKWBc=;
        b=AMsfqnqbGycGqfDHarPqrl0SGgQPCL0SBiUbwOLZ6l6oPHyHQgNr4ztX1OMhEAW79Q
         DjMWa++/P3plpu0nh7Slj4FdQXL2JXmmL/KHKqWPstXKiC574G4p+uHBN8W6ZM3ynJFY
         qaawBdrHVJtpsn/THg/R2rF8vdPY7GcV9XICzRywSXB3sYwY6QkspUGKZEEEQ8XnccEu
         5suL4kqGzRoVaihcJZk6z6EtNQhdPydAiTxk98B7NuePC8GTVQf4wfSFg0tQn/PUaHBX
         cQCh6IA6yvRPYzl93PHagO0ROe5lqg/KhDIp/JfGPmAKx2HZ4RK8yLBPT8iomXWFOlxy
         ZrJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775946131; x=1776550931;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2HVgfkGPGndx+APhfcdhALXmwf1+CLB8bFuzwCaKWBc=;
        b=FcP6wi0V/1NTzOYj1su7gzyrI+oD4xHoVDM/u3QZrqgDm5q6r6Sb89qNBdrPLJAykM
         d3CU71peiIeIYveN/Rvq5apDRymKJwr8b1etTlVAwxlw2AuiOcrfe63E781xeCw2n3NJ
         rrCoy/dZJACLJmy9AH9YjgF5TxLolnCwUyl9K4+T8Y8FyMk22PjX1ji2NBLtSgliuONW
         ucy7zBj8gV3g8KPkJRBTgqTiqa77UgmwWjKEcea1I3jQ/T9JwOxvIW8uyMB/1ZjpdvcY
         E9QuUtkqXw4rrIaKDJ2e0lOIj9vJbiZq6amFtyqKlt3MfGFcuBfzn5b63S5JKfU1tQ0U
         nmhA==
X-Gm-Message-State: AOJu0YzUvSLkfB1XIwLFcVVMOthu/OGT+ZsDbQMKhJCYCPJq95ziQ+On
	+PRgm/HImYXvsazR/1eFpYgcIRo9nknyYPrtnZio7tqA3yyKyoXZ5/VLMS1cT3Dl
X-Gm-Gg: AeBDietO0hWwhau4lPDt6MYQLrMhdj3HRrfBxwttW1iih5axWKWf+miSjVWhDdyv+Vw
	2vFM1suFho323DyOfxDDbsBS5hyFwujUki4Wgv0oXyknPPymwSWlMMRgeIu4k0LdphYthJmoWZD
	DwsNFuaLDZlXl9eM0Abjrkgg4FPbfzzGMm1l/0DIsngug9d5dv4PBsvvs8RxM+10/gsM1zQ315j
	y20ws4sRXKzD3z4n5/ybam4OH31l/CkVMOgjrY+Jrr8tJOUGfo6anv1BI1zW/MmDT5nFuopdMx5
	5wZ4d1a4p8eEo8K4b37wOLzjZGRQO51fx1i9CoKF/fy4A06R29wG1B3M/zJJEdNyf6Natewf+dk
	Ep8UeSQP15QgSM2aBfF4Uscg3Jdr5g52e5QMIL7m0a7mD+fLckY9Wjo9WqqjnovIwzwbSb5Z925
	ypwNfw+RkcVTRi7zw=
X-Received: by 2002:a05:600c:a105:b0:485:fbd2:f72 with SMTP id 5b1f17b1804b1-488d681701fmr71132305e9.1.1775946131346;
        Sat, 11 Apr 2026 15:22:11 -0700 (PDT)
Received: from bazzite ([102.128.175.252])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488d689110asm56935965e9.35.2026.04.11.15.22.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Apr 2026 15:22:11 -0700 (PDT)
From: Louis Kotze <loukot@gmail.com>
To: wireless-regdb@lists.infradead.org
Cc: wens@kernel.org,
	Louis Kotze <loukot@gmail.com>
Subject: [PATCH 2/5] wireless-regdb: Update 6 GHz rules for South Korea (KR)
Date: Sun, 12 Apr 2026 00:21:52 +0200
Message-ID: <20260411222155.299441-3-loukot@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260411222155.299441-1-loukot@gmail.com>
References: <20260411222155.299441-1-loukot@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260411_152213_487933_823B9CB0 
X-CRM114-Status: UNSURE (   9.05  )
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

MSIT issued Announcement No. 2026-9 (February 10, 2026, effective
April 1, 2026), revising 6 GHz power limits and bandwidth:

  Lower band (5925-6425 MHz): 1 W (30 dBm) EIRP indoor
  Upper band (6425-7125 MHz): 0.5 W (27 dBm) EIRP indoor

MSIT Announcement No. 2024-22 (May 30, 2024) previously updated the
maximum bandwidth from 160 MHz to 320 MHz.

Since the database supports only one rule per band, use 27 dBm
(the upper band limit) to ensure compliance across the full
5925-7125 MHz range. Update bandwidth from 160 to 320 MHz.

Reference:
  MSIT Announcement No. 2026-9
  https://gma.caict.ac.cn/en/update/103
Signed-off-by: Louis Kotze <loukot@gmail.com>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 172029e..9938089 100644
--- a/db.txt
+++ b/db.txt
@@ -1136,7 +1136,7 @@ country KR: DFS-JP
 	(5470 - 5725 @ 160), (20), DFS
 	(5725 - 5850 @ 80), (23)
 	# 6 GHz band
-	(5925 - 7125 @ 160), (15), NO-OUTDOOR
+	(5925 - 7125 @ 320), (27), NO-OUTDOOR
 	# 60 GHz band channels 1-4
 	(57000 - 66000 @ 2160), (43)
 
-- 
2.53.0


