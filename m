Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3483F99C89
	for <wireless-regdb@archiver.kernel.org>; Sat, 18 Apr 2026 20:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5Uk5HFW8RoxnfBMm78x6ykXtdkpkTRQM9R11KnyscOM=; b=nCA1XPULntMZ8syGEuYmp0p5cV
	VincpOiImJ3zq1whKuRO8hHDxuO9m5XXx3t4KBG15S7bubILoy5odFDiqWME2g72n8qvDc/7OYOVF
	jmu+Xo21MXgqATjLDv79dMP48Nc5lH0JYcFoCzUQ5ipU6WgucCuVxri6Z2crCM1jnc/uiJEux7MML
	XoqPsndJ3/JT2Y9uMYk1qbdvPgYZb1KiF/jFgQ5OJpimfcfgjOx4YESo7o7rOrRh7STxK7ZzZokes
	XwgdT7nRFIXdyJ8N4MiW2Tfk7Fx3WJPycuPkgohtkonqtufb+pJIOfffs+TWUz5aev7romrhwDXLX
	IV+qkMuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEC6Z-00000005CJc-2cP9;
	Sat, 18 Apr 2026 20:17:27 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEC6W-00000005CJF-1ioa
	for wireless-regdb@lists.infradead.org;
	Sat, 18 Apr 2026 20:17:25 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-43cff5dafc3so1354571f8f.1
        for <wireless-regdb@lists.infradead.org>; Sat, 18 Apr 2026 13:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776543442; x=1777148242; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5Uk5HFW8RoxnfBMm78x6ykXtdkpkTRQM9R11KnyscOM=;
        b=TBSeIXMdIfFji0xn+U+Ef5WP6dKxMM1B37ONnZsKCnJyy9+dXxu5dKo2Y3nBhFCvMb
         xwm+n6xB8YyOMrOC1eUafqF9XuI2imjLA7PfysVp5aQMApaTECp3qGl/Lp8DQKDM+kQ1
         BYLy+8+rxWAB5u5mzmvB4bw/+6m/YrKwxKMn3yTEnafNwLjWMY4fDKm44lKtCPahLiqM
         9m/rL1/4z7f9VIC2MTDdOwz1yt0i2oLR4Kt7XUV//HUqThhFYAcR13bzHfh/eGD5czAA
         jope6eIDcNLgGHOTXonYRL0Y+CzPqmdJ0sUvyq8/D6dl92O3TIZ6kPVaEYHyPv8mqh3j
         YIBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776543442; x=1777148242;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Uk5HFW8RoxnfBMm78x6ykXtdkpkTRQM9R11KnyscOM=;
        b=oBCgXtra72cuCsb8yvhYQ+q9Qkrq/AeBhw9/6leasIZ/4M4qKBtxBMXzmAM5iiu/36
         GjNPJtnPslDirSjdNN0+lY6NmvBm1OoMLvsS8jUtSazeFcSInuTBJEoqWWh7PRIYcnea
         gEbOdVMRwbH0Ji/xlfCbPYr18U4p1fwjGc8zWr21Kd5Ip+Cj88pi8CqPtZzFRue1YN27
         k1Lg9TbuV90US/AJbx90HZeJQ5uFyUC8lF8ya1TVfpzCCUoy1gpzdyBfEp3mcib28215
         MoeCGMexzqJmsXHarrF+0qCOvNeC8j3HBcgzGYziyVb+DlOgaDSOSwEHWPXrrgHZoMmn
         8xMA==
X-Gm-Message-State: AOJu0YwV/evFS0tlS0OnccwaXpeYKRaJtdHQCsJdVgWegKb8ZHzhVqI6
	DHXCG5sFiV67eSbbKGL4G+pENqgsrj9mwLM8CXhepRKqQjtgSeDWmNnBhtRXUBdR
X-Gm-Gg: AeBDieurNyGgLjKNZ63M53gTeNNdqgSbxJq3VbC5RjjQd1RxUI8s8ofgyn7d3vACqXO
	g4mBR81vIPsw+H3iaGKM4nZZiA9b/c7Ks6g1MgTturXAnyPoTJxRM2NPY0ooGO/XmH/ctrmC4//
	EylnotkJlRmQyCfxcMgA8VFdHc27z00Tqm+7r325jpPh9uPx+1pFKI34Y5MBJXoJhYsvhM2NP5h
	gonLD5+5fzsgIusU9qMjKSnGn4FLKFNrfOdQ7fg2GhuKpSlqui9m0tPdCfoDG6Yve2pwuuCKFmy
	WfaKyDQRdXOV4Lvxij0cZmJwG9Ox8zcXXnBLLFnswo23krcqwF09hMRbg7ppfcSg82V1nH5wSk+
	vU6NggVnxU7cCXSrEGTY4uvgPAXMPpHNrLpd+AWX3hVRGY+pkMvBtn25HOVY/cb2sMC3uJj0yE/
	p8Y/N5u2cCsIXy+cUiFtN12C6QwCEgrJJ/JtwdIt6MliF1VAV7CC+uizuigpnD
X-Received: by 2002:a05:6000:4283:b0:43d:7ea1:fb53 with SMTP id ffacd0b85a97d-43fe3e15f7emr12146824f8f.33.1776543441826;
        Sat, 18 Apr 2026 13:17:21 -0700 (PDT)
Received: from localhost ([102.128.175.252])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43fe4e46898sm15555665f8f.27.2026.04.18.13.17.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Apr 2026 13:17:21 -0700 (PDT)
From: Louis Kotze <loukot@gmail.com>
To: wireless-regdb@lists.infradead.org
Cc: wens@kernel.org,
	vkosikhin@gmail.com
Subject: [PATCH v2] wireless-regdb: Update 5/6 GHz power rules for Russia (RU)
Date: Sat, 18 Apr 2026 22:17:17 +0200
Message-ID: <20260418201717.2152301-1-loukot@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260418_131724_496515_FF9D4360 
X-CRM114-Status: GOOD (  10.14  )
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

The 5650-5850 and 5925-6425 MHz entries use 100 mW EIRP. The SCRF
spectrum allocation (Annex 2 of SCRF 07-20-03-001) permits 200 mW
EIRP, indoor, with LBT. The LBT requirement is satisfied by the
standard IEEE 802.11 CCA mechanism in the MAC layer.

Leave 5150-5350 MHz at 100 mW. The SCRF spectrum allocation permits
200 mW here too, but the per-standard equipment certification rules
cap 802.11n (Order 124) and 802.11ax (Order 321) at 100 mW. Per
maintainer guidance, regdb should encode the most restrictive
applicable limit.

Primary-source analysis (SCRF PDFs and per-standard Orders), as well
as a forthcoming source-URL update from Valeriy Kosikhin, are in the
lore thread.

Link: https://lore.kernel.org/wireless-regdb/20260417060000.ru-analysis@gmail.com/
Signed-off-by: Louis Kotze <loukot@gmail.com>
---
Changes since v1:
  - Keep 5150-5350 at 100 mW per most-restrictive-limit guidance
    (Chen-Yu Tsai).
  - Add 5650-5850 bump to 200 mW (missed in v1, which only addressed
    5925-6425).
  - Replace eleoscompliance.com reference (flagged as uninformative
    in v1 review) with a lore link to the primary-source analysis
    thread. A follow-up patch from Valeriy Kosikhin will update the
    in-tree source-URL comment to the SCRF primary documents after
    lawyer review.

v1: https://lore.kernel.org/wireless-regdb/20260411222155.299441-4-loukot@gmail.com/

 db.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 343b256..26413da 100644
--- a/db.txt
+++ b/db.txt
@@ -1771,8 +1771,8 @@ country RS: DFS-ETSI
 country RU:
 	(2400 - 2483.5 @ 40), (100mW)
 	(5150 - 5350 @ 160), (100 mW), NO-OUTDOOR
-	(5650 - 5850 @ 160), (100 mW), NO-OUTDOOR
-	(5925 - 6425 @ 160), (100 mW), NO-OUTDOOR
+	(5650 - 5850 @ 160), (200 mW), NO-OUTDOOR
+	(5925 - 6425 @ 160), (200 mW), NO-OUTDOOR
 	# 60 GHz band channels 1-4, ref: Changes to NLA 124_Order №129_22042015.pdf
 	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
 

base-commit: 3ceaf3bc0a3d81acd0c1bc413a620ed18e41475f
-- 
2.53.0


