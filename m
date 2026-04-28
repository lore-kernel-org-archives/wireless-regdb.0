Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 708D4FF886D
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 Apr 2026 09:01:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7FDZoluOs6g6dKUIiUeyLauygOAGQcN5yRL8mPNHrXA=; b=Q5iHwr8XYOTwkJWHCtClu5QhGt
	vJuWL6CI563ePNWycHNkUy+BaUwymzVW5RG7iudGP0z7OOv4Ez3+6osff2CugSYYriVPkb5Lfsa1l
	qTW1i8HkSPmL9TUQis+8e+RAsJ0omYEYrfGcPyvZRkHbh1RHo7/xrDS5MaM/aNa6lorsDbgBcaH8p
	PXPLQMxz9FgfWerKhKcaOa8GCoBbRTwJWgLiQxVp+z+9UrVYBhlcqE0QM346yf14O9wQnsYkW8K0Y
	ZcuTVOmCTWMTcjTDBJ9O/dOowojfyr9rMApNHAVtxRx16FeOBCm6tvm9JdtVFRZw/SZ3x2dfaRazs
	XxWjnLbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHeJx-00000000xrW-2AM4;
	Tue, 28 Apr 2026 09:01:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHeJt-00000000xlF-24wp
	for wireless-regdb@bombadil.infradead.org;
	Tue, 28 Apr 2026 09:01:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=7FDZoluOs6g6dKUIiUeyLauygOAGQcN5yRL8mPNHrXA=; b=WchMyBh7GFLAMXee1i9pykB/GY
	SbdVobRFd/+tyDiKbr//ZhfqwFVrLXcU5jIptpqXwV27TdiG+1XvIclAfXHPPBPjN/OZPHhkla2Ci
	mdls/Bld10rYe7oKNRhlzHIElNexf4Y4SBJP2zxsnh51eJC9JUv0P6YPnqbHaDEpkAJppOfsHuGcX
	SkW3W0rdbk4XXT1YeDOzaw1gOpex8riJI0dyykBA+UU09JotNC89U5XYM9SCQy5FjT0Ajrw/R89Qf
	h+hEttM8rilr795qKR/EVF2NHFmbqqYMpsJGmBJVX/eUUag2EZp6KRPJXf6Aryl2su+IL9786rSbM
	gzYHq8qQ==;
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHeJo-00000002VSA-0AHV
	for wireless-regdb@lists.infradead.org;
	Tue, 28 Apr 2026 09:01:28 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-488a8ca4aadso154491085e9.3
        for <wireless-regdb@lists.infradead.org>; Tue, 28 Apr 2026 02:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777366881; x=1777971681; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7FDZoluOs6g6dKUIiUeyLauygOAGQcN5yRL8mPNHrXA=;
        b=pq2KIMoaXqGB0NYdOpRyErNFMEqTdxj3fA/uUUsU3YM7SIJtBx9jBlX9P11tBdYiIC
         j3RrWZVnlz5WJFUH2vV07RDcmkGOu8YjgTqVU8sp6GoF1F8mw7Z3SKbgCUAlNfQ1RzK8
         TLPIh7hvj+nOt3rVc+YWGVK0m89uxJc3fQjjl5W/ylNAN5uduzcxQRoCwF6Q15gCSr9v
         vtvp0lty2xoSA/e1XstSRQDu28BDNfKPGaVmrJo3cQKacVsMpPPPf0MNuwtcvjcssB1j
         34I1EMSFTxRntoxBvBn/qLOaFCqYMBLDyMgG8lfCcXhQ5RaMWsC6MD/uqPIjJMQtvd0Y
         TerQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777366881; x=1777971681;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7FDZoluOs6g6dKUIiUeyLauygOAGQcN5yRL8mPNHrXA=;
        b=mP8K3fs+Bb7FjqJ4Nu6sjPoywokAxbZ1/96+u6DEgzJwsYxHnjr1tqFDt+ZjqRK0Y6
         nynggymj9v3OKUDYMYD0I+lP7FZnROVqfJsSrvV9LU4Zm/4/OMd42eOV8D3GixH/sU99
         EfyUh6/yrEZIWg4W325GcLTc7OEIOunE8QCyyCz/UetE8SHBCbHz0Cl2P1zNO0HxGlEU
         vn1KWnqujlCs9HHn9ccnLtzhWU2VK6Pb4Hz6+3JJlXiCG2TjcJc9WmipbUb7pKiLrafY
         QTMdseCfzWwsk+qu7IYmqkoS4q1gmH0fziCliCtNeDZWIOnrPCm7YbQ/dnDAbIHzbxDJ
         qxDg==
X-Gm-Message-State: AOJu0Yxg/dyzxrip/+WhBMTh/lPikbRTMuh1EYA8JpL330J4z6js4jnb
	vhiWavN6W1sv4KnZ3oRTX0MbMnBVRAmNdA0ihraqiZke76QaklpdVcAOX1jhkOico44=
X-Gm-Gg: AeBDietxG96zD97orSI3Mw3RadXjrss/CHPBnsItXlEpSDPhoDEyNRFATQErJN3vHTf
	e9r3Hgi408MbP/qcHpadrYYs6IhcFuADOIU74bC6/0XGBxJrmB2oPHVtNW9h84gO8ZJ7r+gwJTW
	OVub8hRsO7f6r9ZaEbTeWlxfCKTAeFm5D2d7Wv6Yh6gRo0cJtGQIs94W+E5U0tfv2yATVKKZ/my
	tKx4bLwp3M2HA68OfU0KJhHj8R6v1sKhIEEncNhgrD05uSp50SuKIBFL1auTX3V4B5sLDlpmZ4R
	Bt32F7oiCfBEjN3w1NAfdc5GVk8TbfFyRrNQXw1+aXIRe0O0mSIkVLP2p3LZHDUL7xcchNhp6XW
	/b/sX5/4EaLhPU1gkDdPssZGOSbeigZdYGGRgZfZuwEEXb+stXKjB+CdClfRn+OOcwrILK72xHv
	8K4lZm0fbBQDxOJrJxp5MEl78FbcwmaQVQu+HoLwpiFdBMmaT6Eusbm0njwF8s
X-Received: by 2002:a05:6000:2887:b0:441:36b7:725e with SMTP id ffacd0b85a97d-44647be3a20mr4083354f8f.7.1777366880992;
        Tue, 28 Apr 2026 02:01:20 -0700 (PDT)
Received: from localhost ([102.128.175.252])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4463f994a3fsm4762676f8f.25.2026.04.28.02.01.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2026 02:01:20 -0700 (PDT)
From: Louis Kotze <loukot@gmail.com>
To: wireless-regdb@lists.infradead.org
Cc: wens@kernel.org,
	pkshih@realtek.com
Subject: [PATCH v3] wireless-regdb: Update 6 GHz rules for South Korea (KR)
Date: Tue, 28 Apr 2026 11:01:16 +0200
Message-ID: <20260428090116.536275-1-loukot@gmail.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_100124_290213_5AE25AD5 
X-CRM114-Status: GOOD (  12.13  )
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

MSIT Notification No. 2026-10 (10 February 2026), the technical
standards for wireless equipment that may be opened without
notification, amended the 6 GHz indoor rules for Korea.

Indoor (clause 2.나) PSD limits, including antenna absolute gain
(EIRP-PSD):

  5925-6425 MHz: 5 dBm/MHz, 320 MHz max occupied bandwidth
  6425-7125 MHz: 2 dBm/MHz, 320 MHz max occupied bandwidth

Both ranges are indoor only, restricted to equipment connected to
building power, with mobile use prohibited. The previous combined
entry from MSIT 2024-22 used a single 2 dBm/MHz PSD across the full
5925-7125 MHz range; 2026-10 split the bands and raised the lower
band PSD from 2 to 5 dBm/MHz.

The regdb has no PSD encoding, so the EIRP value is derived from the
PSD limit at the smallest channel width permitted by the regulation
(20 MHz), which is the most restrictive interpretation:

  5925-6425: 5 dBm/MHz × 20 MHz = 18 dBm
  6425-7125: 2 dBm/MHz × 20 MHz = 15 dBm

Split the existing combined rule into two ranges to reflect the
per-band PSD difference, and add AUTO-BW so adjacent ranges combine
at the lower limit. Raise the maximum bandwidth from 160 to 320 MHz
per the explicit "320 MHz 이하" in the regulation.

Reference:
  MSIT Notification No. 2026-10 (10 February 2026)
  Partial amendment to the technical standards for wireless equipment
  for radio stations that may be opened without notification
  https://www.msit.go.kr/bbs/view.do?sCode=user&mId=108&mPid=103&bbsSeqNo=83&nttSeqNo=3186356

Signed-off-by: Louis Kotze <loukot@gmail.com>
---
Changes since v2:
  - Cite the correct source: MSIT 2026-10 (technical standards
    amendment), not 2026-9 (device classification amendment).
  - Replace the v2 power values (30 / 27 dBm) with PSD-derived limits
    at the smallest permitted channel width (20 MHz): 18 / 15 dBm.
    The v2 values were the PSD limit × 320 MHz, which would over-
    radiate narrow channels by up to 12 dB versus the regulation's
    PSD cap. Encoding at the narrowest channel ensures the regdb
    value is PSD-compliant at all permitted widths.
  - Acknowledge the 2024-22 → 2026-10 PSD change explicitly: lower
    band raised from 2 to 5 dBm/MHz, upper band unchanged at 2
    dBm/MHz, indoor only.
  - Use the regulation's wording "PSD including antenna absolute
    gain" (effectively EIRP-PSD) rather than bare "EIRP".

v1: https://lore.kernel.org/wireless-regdb/20260411222155.299441-3-loukot@gmail.com/
v2: https://lore.kernel.org/wireless-regdb/20260416120001.979135-1-loukot@gmail.com/

 db.txt | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index c310b7f..92cf9cc 100644
--- a/db.txt
+++ b/db.txt
@@ -1135,8 +1135,9 @@ country KR: DFS-JP
 	(5250 - 5350 @ 80), (20), DFS, AUTO-BW
 	(5470 - 5725 @ 160), (20), DFS
 	(5725 - 5850 @ 80), (23)
-	# 6 GHz band
-	(5925 - 7125 @ 160), (15), NO-OUTDOOR
+	# 6 GHz band - per MSIT Notice 2026-10
+	(5925 - 6425 @ 320), (18), NO-OUTDOOR, AUTO-BW
+	(6425 - 7125 @ 320), (15), NO-OUTDOOR, AUTO-BW
 	# 60 GHz band channels 1-4
 	(57000 - 66000 @ 2160), (43)
 

base-commit: 0bfb3d418a27cccf313ae64b0ed909f3ad95fea6
-- 
2.54.0


