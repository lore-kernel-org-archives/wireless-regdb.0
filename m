Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA82DF88077
	for <wireless-regdb@archiver.kernel.org>; Thu, 16 Apr 2026 06:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PpEWDOn9gBVwBsLAQDxJLIsX5FY5ZpWWd+/Jpnf3hvY=; b=dyOy7TeFgjNprumQJbN80v9j66
	HZarQ4qo4uU4JVIhEatBwHUCurXnd1Hme2RB3evDpiUHQ+ERWbWz6+5H0uKZ2nKScTjZvn/9o3FLi
	A6rBov4Lk+AvDTBBKb91iEjrUV3X9s0lQjCEnzm5PPDCSRN7FIoAMSH5A+e8i0K+Y529auDHlCgVr
	ek3LcmF2aUXm5CyoJ9S4vl+444mReJ/KqSdBYr5FTFvivtTChp/lMVS318SseToxBE+ELZ5LKKqyT
	CEvQU0I9y3tVMpRl1AfQynrkHklb1A04u1ZtCpINm/Aakn9sUXhdgeRLwiQMbQuJMYcAlxAyMYrpr
	qnm8EOPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDGeL-000000025EL-1ooA;
	Thu, 16 Apr 2026 06:56:29 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDGeI-000000025Ds-3Hd7
	for wireless-regdb@lists.infradead.org;
	Thu, 16 Apr 2026 06:56:28 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-43cfd96354aso4684799f8f.1
        for <wireless-regdb@lists.infradead.org>; Wed, 15 Apr 2026 23:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776322585; x=1776927385; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PpEWDOn9gBVwBsLAQDxJLIsX5FY5ZpWWd+/Jpnf3hvY=;
        b=KtSIBozN6vt5zH85itvtsMDDu1esHQYJ+a0Gy7226m6uo9Xyi2ObNeVsRR6eCOsO4U
         2Xy7vxsdWQqrpmFng07xfDDZ4UrGhXQUH14n8tvXhenXhqSRxqC21skJe9Lrqs/Iev/i
         d5vpd9kHYcM2PzVSDAImOuFAp7E1wnr4oQsVRhjjMjNrqsbmdWHqs2+MypLpXse3kOp4
         ub+YG+sH12JqbE2+ZvpFuvv4/aJKcNv9KrROqFwosHJgPyB23000TmDGOtdxIxrP58pV
         dKo7DDAS2w4NJGy8hgK4AG+LrgOy6/Y4xnQBVuxVYNeFd68FuUceTZtvNR6T/jKukvRs
         HhzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776322585; x=1776927385;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PpEWDOn9gBVwBsLAQDxJLIsX5FY5ZpWWd+/Jpnf3hvY=;
        b=sBc+sjGSsxEet56LKILCymw/xZWeyOTa7PTgTVnMABWrESM5P+T8CgcIqz9PGukCyI
         x/MiuKiUsqmIYjeqEK+h2g1jL/42u5j0OYIYLqvuC1h7j8OoTD4LjC9iMx6mD4cg7Q0y
         t65SaiKUSAhMpNzIBIaO9wIaElHeJqamKOa2bS0/SiDmCznxopdq7FiIII4mEUFv3IHP
         JdFFEvfQOELBTTJDiMqUlgOGLR8CFtr2faHi+pXEmMAT0o4Zj6pezssPVQ/XufGoh5YG
         uGx4oyks7zGVijuxFa5IH5SO1onN7FAthjLvkWsYjoiN/PkIgnu8Phuh0yueyPVw3D//
         P5Zg==
X-Gm-Message-State: AOJu0YyJAK5sKIuzG/fpK47YV7IbcfJA56M+MW1KAsm3ka2bLClrT0FY
	HBeo3qg7Ho35uuuYL67wNC998AXme52dczBjF54oE5wz9AT9ZgbM3BSRhtdVHcWznIg6/A==
X-Gm-Gg: AeBDiev0ri2pbVX22X8/taTlMQPuw19c+2qcav8lTelD9fWJCglwfRSK5a1tORb/92D
	BEgqiWeAnGfrjgvHc3jBHJGbzzDf9T+P82kDt0zpyUoHrrj6UY47aXhSFLElPPU4Xe38Xef+YXI
	ZrkVgSnQYiiyqJshN2YoZHGml/7qWiL5OcaVByQEqwmEjX4puKWRhSpTkQR5QhWFEwmuoGk0VpM
	Z9gYj5679Anvr2g/YGSl4QQxTzVn2LVeP0CdkTqGB70Hyk1WVfWYM8Pjg6vYifvPvqhl8hzR7My
	A/IqYAGn4tgUg7RajIz+SDV5cqPbIeacK/EyrtQDpIBHEMfLgnCb52X1Mb59dGcJgdTl/Qyg7Mw
	MqF6DwsnAFyX6RPDrI1A+dCb4Vm255n3KekR6aN0G8nyC/YmSeqkI3m9yE/A+wVnRdcOzzfF3pn
	REKX6EASO7Lcd05/rs5DbzqBtpLlcA8+Iv0pwiZjlMW9nSSfchT3hzvSAeAw==
X-Received: by 2002:a05:6000:184b:b0:43d:de4:bd25 with SMTP id ffacd0b85a97d-43d642cb133mr36020852f8f.45.1776322584339;
        Wed, 15 Apr 2026 23:56:24 -0700 (PDT)
Received: from bazzite ([102.128.175.252])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43ead3553d7sm10974548f8f.9.2026.04.15.23.56.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Apr 2026 23:56:23 -0700 (PDT)
From: Louis Kotze <loukot@gmail.com>
To: wireless-regdb@lists.infradead.org
Cc: wens@kernel.org,
	Louis Kotze <loukot@gmail.com>
Subject: [PATCH v2] wireless-regdb: Update 6 GHz rules for Hong Kong (HK)
Date: Thu, 16 Apr 2026 08:56:12 +0200
Message-ID: <20260416065612.868989-1-loukot@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_235626_837645_B58482A8 
X-CRM114-Status: UNSURE (   9.73  )
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

HKCA 1081 Issue 2 (August 2025) updated the 6 GHz WLAN specification
for Hong Kong. The specification defines two device categories per
ETSI EN 303 687:

  LPI (Low Power Indoor): 24 dBm EIRP, indoor only
  VLP (Very Low Power):   14 dBm EIRP, no restriction

The current entry uses VLP power (14 dBm) with no indoor flag.
Update to LPI with the NO-OUTDOOR flag.

LPI is the appropriate choice because indoor WiFi is the primary
use case for 6 GHz. The VLP limit of 14 dBm is too low for
practical network operation with standard access points advertising
LPI power levels, causing repeated regulatory mismatch errors.

The LPI EIRP of 24 dBm includes a 1 dB uplift granted by HKCA 1081
footnote 1 over the EN 303 687 base of 23 dBm (clauses 4.3.2 and
4.3.3), with PSD increased from 10 to 11 dBm/MHz accordingly.

Correct the frequency start from 5925 to 5945 MHz. HKCA 1081
clause 2.1 reserves 5925-5945 MHz as a guard band.

Reference:
HKCA 1081 Issue 2 (August 2025)
https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1081.pdf

Signed-off-by: Louis Kotze <loukot@gmail.com>
---
Changes since v1:
  - Add explicit LPI vs VLP justification in commit message per
    Chen-Yu Tsai review.
  - Drop incorrect claim that 5925 MHz start was "wrong" — clarify
    that the guard band reservation is per HKCA 1081 clause 2.1.
  - Add empty line before Signed-off-by.
  - Bandwidth stays at 160 MHz per EN 303 687 V1.1.1 (verified:
    maximum channel group is 160 MHz, 320 MHz not in this version).
  - Send as standalone patch rather than part of 5-patch series,
    since remaining patches need separate handling.

v1: https://lore.kernel.org/wireless-regdb/20260411222155.299441-2-loukot@gmail.com/

 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 343b256..778ac21 100644
--- a/db.txt
+++ b/db.txt
@@ -883,7 +883,7 @@ country HK: DFS-ETSI
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW, NO-OUTDOOR
 	(5470 - 5730 @ 160), (27), DFS
 	(5730 - 5850 @ 80), (36)
-	(5925 - 6425 @ 160), (14)
+	(5945 - 6425 @ 160), (24), NO-OUTDOOR

 # Source:
 # https://www.conatel.gob.hn/doc/Regulacion/resoluciones/2023/NR05-23.pdf
--
2.53.0


