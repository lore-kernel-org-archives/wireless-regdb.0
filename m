Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78E13C3DA7F
	for <wireless-regdb@archiver.kernel.org>; Mon, 12 Aug 2024 13:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YV6vFPhPARfxp8c+kV66rvLmVnOfu3xFpidfqyCEuUQ=; b=hQwUKIlSICQJpnl1nySavEV9pl
	F0lj/d3zxpDL5BzqRthiDf/C5TRzvFKyyKTcgSikyNbD5xrHpRKs+g6mTy/QIFBkHksfSztI9nXmV
	Kz4RoJcopjIFOTTdPhNdloxl4mWYmZkt1BWE+MESNkkqP/re5/BJW0CmMGZQSMOEH5MRHD7B6FmSR
	CsBbYOPfuQoecOQeY/8pmWs8b/zibo7n34uCML87nCReiix6acsy3mGi+50OKCubP7r6d93VRqDyB
	VKc47lFfLcZXHsUtu4IhQVn7Evx4m/xX/eA49bD7bq9vaQKHFANcrGlgThHQDbViLPBuzbTWCheKp
	pKTlLDTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdUxs-00000000OGF-3xCy;
	Mon, 12 Aug 2024 13:20:01 +0000
Received: from mail-oa1-x2e.google.com ([2001:4860:4864:20::2e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdUxp-00000000OEn-2Zwn
	for wireless-regdb@lists.infradead.org;
	Mon, 12 Aug 2024 13:19:59 +0000
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-268a9645e72so3123672fac.1
        for <wireless-regdb@lists.infradead.org>; Mon, 12 Aug 2024 06:19:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=up.edu.ph; s=up.edu.ph; t=1723468796; x=1724073596; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YV6vFPhPARfxp8c+kV66rvLmVnOfu3xFpidfqyCEuUQ=;
        b=P3hF4Z2fQCOAvYWq6hAIACKu7htrlshXHODQwXapym6/ZFWo+mDv2/kcPF0Axm0mX/
         fEOXHPz41vgapStpGmpFlnV1/6IB5Cio6Aco+mstUBwsYhbnsVf3415j09WZCsxnSQWo
         1og0t0jj8+IjXBrzlDiVTCvxUV6ogLC90vQH7+gC/wb4avRD8NmvCTiGz2zP58lfdRX7
         QG41drBFvYyzOlWwgWPfUCPYwTewLZ0zpP2b2DqjsfCnoKkOXTT2MuMUE+axncNZuppk
         HTm4bLhhqWaZhYkQP2ABAksq/w5haU8MWvRZbqFV5105quzKwmcO+tnjoy1JS95Sd2f4
         fPcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723468796; x=1724073596;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YV6vFPhPARfxp8c+kV66rvLmVnOfu3xFpidfqyCEuUQ=;
        b=bRAIVKAInQvNSX87pYVDUedUqgUcbS8cINlnnWlXFSlKRaEDchpei0CMAn3KFd+tlg
         T2cc2gPkXyXAKycNT/Kfkn9EQv8KyNEI2Ckmz4H10Qvfqhvy4MCo0+ChrQl7rWd9q/B2
         Rl187KglV+tasiHmizyfVfnF3XZZloMvvjs8ux9Jiy94AdaboMCTpm006PimY3q9Ym4K
         TYmTyU/Ni/jc3TUvr4/oTZqQxWeJJNuLnHPWXfCuMPPBJsmulRJBwBsUFVl1GqwCYzn4
         i+55l/km9qJiQLlMJoayDaq+S3X5HN+0xeB/e8C/m1K2EfaamPrU0tkz5gHwZVvk+fku
         Fp+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUC1hfL8LDD+av+tFzXWZW1jDJhtlDQj4brbZMlrWiQtiFaE3JFnhzjQ+Z/2jQ58Lqbblqi9RYuO4F5xDCp3YsPYd5aIsI98Wa57nvSZ3BCGEkQ
X-Gm-Message-State: AOJu0YyrDaOEsvWIuQ+nNLSq9JCohG+AFgRyBHPk8W/uWlnlNycUbjf8
	5ZZEasjMK9+ZDmb7g4pbFhvNwY5qL/3j/VxqU5piwViRk2zUMjN5FaVpi9lqn6Q=
X-Google-Smtp-Source: AGHT+IEo3bfLnDHA7PuB+xcNoXw1PVeSN2YT/EZlO8XhMijXe8ECXX0hNOWsRb5aJzSzuxSEPL2jnw==
X-Received: by 2002:a05:6871:e020:b0:268:bb3a:cf90 with SMTP id 586e51a60fabf-26fcb6a0b43mr94900fac.18.1723468796360;
        Mon, 12 Aug 2024 06:19:56 -0700 (PDT)
Received: from localhost.localdomain ([2001:4453:59c:d600:9959:2afb:92b5:96e8])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7c3dbea2332sm4223719a12.86.2024.08.12.06.19.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Aug 2024 06:19:55 -0700 (PDT)
From: Gacel Perfinian <gcperfinian@up.edu.ph>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org,
	Gacel Perfinian <gcperfinian@up.edu.ph>
Subject: [PATCH v2] wireless-regdb: Update regulatory info for Philippines (PH) on 6GHz
Date: Mon, 12 Aug 2024 21:18:12 +0800
Message-ID: <20240812131811.565-2-gcperfinian@up.edu.ph>
X-Mailer: git-send-email 2.45.2.windows.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_061957_712309_53573C50 
X-CRM114-Status: UNSURE (   7.95  )
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

The Philippine National Telecommunications Commission has issued
Memorandum Circular 002-07-2024 [1] on 05 July 2024, amending
the allowed frequencies for HIPERLANs and RLANs specified in Section 2
of Memorandum Circular No. 03-05-2007 [2]. The amendment has been in
force since 22 July, 15 days after publication in The Philippine Star
and copies furnished to the UP Law Center as mandated by law.

The amended frequency table allows HIPERLAN and RLAN devices to operate
on 5925 - 6425 MHz band for up to 25 mW eirp for indoor and outdoor use
(excluding UAV/drone use) and 250 mW eirp for indoor use only.

[1] https://ntc.gov.ph/wp-content/uploads/2024/MEMORANDUM%20CIRCULAR/NTC%20MC%20No.%20002-07-2024.pdf
[2] https://ntc.gov.ph/wp-content/uploads/2015/10/LawsRulesRegulations/MemoCirculars/MC2007/MC-03-05-2007.pdf

Signed-off-by: Gacel Perfinian <gcperfinian@up.edu.ph>
---
 db.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/db.txt b/db.txt
index e952d0a..788cd04 100644
--- a/db.txt
+++ b/db.txt
@@ -1493,9 +1493,11 @@ country PG: DFS-FCC
 # NTC MC 03-05-2007 https://ntc.gov.ph/wp-content/uploads/2015/10/LawsRulesRegulations/MemoCirculars/MC2007/MC-03-05-2007.pdf
 # NTC MC 03-08-2013 https://region7.ntc.gov.ph/images/LawsRulesAndRegulations/MC/WDN/MC_03-08-2013.pdf
 # NTC MC 01-01-2016 https://ntc.gov.ph/wp-content/uploads/2016/MC/Explanatory-MC-No-01-01-2016.pdf
+# NTC MC 002-07-2024 https://ntc.gov.ph/wp-content/uploads/2024/MEMORANDUM%20CIRCULAR/NTC%20MC%20No.%20002-07-2024.pdf
 # 2400 - 2483.5 MHz: NTC MC 09-09-2003, Section 3.1; NTC MC 03-08-2013, Section 3.1; NTC MC 03-05-2007, Section 2
 # 5150 - 5350 MHz: NTC MC 09-09-2003, Section 3.1; NTC MC 03-08-2013, Section 3.1; NTC MC 03-05-2007, Section 2
 # 5470 - 5850 MHz: NTC MC 09-09-2003, Section 3.1; NTC MC 03-08-2013, Section 3.1 NTC MC 03-05-2007, Section 2
+# 5925 - 6425 MHz: NTC MC 002-07-2024, Section 1; NTC MC 03-05-2007, Section 2
 # 57000 - 66000 MHz: NTC MC 01-01-2016, Section 1
 
 country PH: DFS-FCC
@@ -1504,6 +1506,7 @@ country PH: DFS-FCC
 	(5250 - 5350 @ 80), (23), DFS, AUTO-BW
 	(5470 - 5725 @ 160), (24), DFS
 	(5725 - 5850 @ 80), (24)
+	(5925 - 6425 @ 320), (250 mW), NO-OUTDOOR
 	(57000 - 66000 @ 2160), (24)
 
 country PK: DFS-JP
-- 
2.45.2.windows.1


