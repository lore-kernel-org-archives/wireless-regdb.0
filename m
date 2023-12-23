Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96ECEC46CD3
	for <wireless-regdb@archiver.kernel.org>; Sat, 23 Dec 2023 13:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=giEk1ukUCaG6bmqGiBslb7r3jzbq49P7oe4tCxYAA1E=; b=HPOhfe4nA7leAH1obkppqB53WU
	VyGuPbJfR37s8xCrZEn+IptZhtn3m6wcbsOXzYfYPYWDBthEIaTBstZGKNvHoy+IuGX7pqgA+PmJM
	nVYK0h2QrfBwRiOCyKQqUA0kiq3Cfum9EjWfv9/6phjXFVNYRs+vLsuTsVzAKZv4TdlT2H7aTvhtw
	2MrcgATGn/wvg33YsRxAU2LyoP5k1t9kViq/reIP+VMA9/h2z4Wcqbv6NzOlTtB0+9OReOQBkBEva
	F/jMy0ZKOZ6qIg2MWSvEn52zzqcTTRIgC40z3ZYdIxf/56FodF5uAqPqbQnTT0R71e5TaqIs3zg1p
	IvBmq7EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rH1kW-007wNY-0v;
	Sat, 23 Dec 2023 13:09:04 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rH1kT-007wND-03
	for wireless-regdb@lists.infradead.org;
	Sat, 23 Dec 2023 13:09:02 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-6d92e736787so1436570b3a.2
        for <wireless-regdb@lists.infradead.org>; Sat, 23 Dec 2023 05:08:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703336938; x=1703941738; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=giEk1ukUCaG6bmqGiBslb7r3jzbq49P7oe4tCxYAA1E=;
        b=EcLGnAI+8DRcjYTmKPrHxaQTKTPyul638ojpi7d7daOdE9dmXjZgqVqMzAVAAxTigS
         ROSMJx+2qgB68/tsngjP8pndVDu4n3rgMwF8w6xY49ODhEJRSZU1sQMFMJ82EVxnZHRF
         8YXiDY2fffI2/wMa+VoXyc/QOFCDL5Ta92/4gpzP+G7M/ngQAdn4H5FCJgJtTE5Wf923
         PFYp6uEg8kqddhdpwQcY/e1skk9UnLfRGAkvXRQL7y55GeFNmrHWFd/YaP5t8vhevUOk
         gPFemjlTMf91YUyxZv9j3T05qRX/rNvJajMvaWy7x9VPf7s+nD04MrwtqMa2JI2bOsgC
         aPnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703336938; x=1703941738;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=giEk1ukUCaG6bmqGiBslb7r3jzbq49P7oe4tCxYAA1E=;
        b=v5csS2U6hC4p+EFM2QoMX8Q9v7Kx83UyKsihAam+UKRLU7J6vNViu9kMUWQa14wguF
         NAxND6xQBqOt8Em3QRSVfoU97tuv52e2GaWbEa9cj2CvAHfvjTx0VuUqIa41hTdn+0G1
         7OixkXCLnE9B9i2JK0fPkw7n8053Da+t8HMTBYkIWYKCGnvDhtoXxhvbEILIMiLp7vPP
         TYN8LE+LZqfSE3suxmneSYL0vtUsHPYijLTzw2ApcxzLT3dZJnm4+jg3XZyF2ZLIEz0f
         6q2caqmwwiCXIZrhetN+lVGzmTrahTFoYCbImNVKFe+4iTk+sKC4dHo8h4JU5FoABYSl
         uWsA==
X-Gm-Message-State: AOJu0Yz7qbd2iMQC+AuqbbBYZY0yXnLHjSoLjqOoUJnz1r6t2Td1HcpN
	mz+FeHCVhhoE/FTGnkLAP1c=
X-Google-Smtp-Source: AGHT+IHDAFk+ShOsE8erbpqJpgU4kaJHDB5HCe2u4GxUw9HU/il708ZE/Pc8RHzDzw0NFtXoeGfoFQ==
X-Received: by 2002:aa7:804e:0:b0:6d9:a70d:7732 with SMTP id y14-20020aa7804e000000b006d9a70d7732mr66153pfm.24.1703336937650;
        Sat, 23 Dec 2023 05:08:57 -0800 (PST)
Received: from nuc11atkpe.. (113x34x39x75.ap113.ftth.ucom.ne.jp. [113.34.39.75])
        by smtp.gmail.com with ESMTPSA id fa20-20020a056a002d1400b006d64c4cb661sm4999489pfb.200.2023.12.23.05.08.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Dec 2023 05:08:57 -0800 (PST)
From: CaffeeLake <pascalcoffeelake@gmail.com>
X-Google-Original-From: CaffeeLake <PascalCoffeeLake@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org,
	CaffeeLake <PascalCoffeeLake@gmail.com>
Subject: [PATCH] wireless-regdb: Update regulatory rules for Japan (JP) for December 2023
Date: Sat, 23 Dec 2023 22:08:52 +0900
Message-ID: <20231223130852.44711-1-PascalCoffeeLake@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231223_050901_057539_11BCF9C8 
X-CRM114-Status: UNSURE (   6.44  )
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

Support 320MHz bandwidth for JP region.

The Ministry of Internal Affairs and Communications has approved 320MHz bandwidth with 11be in Japan.

Source: https://www.soumu.go.jp/main_content/000919158.pdf

Signed-off-by: CaffeeLake <PascalCoffeeLake@gmail.com>
---
 db.txt | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 24bb6d4..01e7338 100644
--- a/db.txt
+++ b/db.txt
@@ -944,6 +944,7 @@ country JO: DFS-JP
 # Source:
 # https://www.soumu.go.jp/main_content/000635492.pdf
 # https://www.soumu.go.jp/main_content/000833682.pdf
+# https://www.soumu.go.jp/main_content/000919158.pdf
 country JP: DFS-JP
 	(2402 - 2482 @ 40), (20)
 	(2474 - 2494 @ 20), (20), NO-OFDM
@@ -951,7 +952,7 @@ country JP: DFS-JP
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5730 @ 160), (23), DFS
-	(5925 - 6425 @ 160), (200 mW), NO-OUTDOOR
+	(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
 	# 60 GHz band channels 2-4 at 10mW,
 	# ref: http://www.arib.or.jp/english/html/overview/doc/1-STD-T74v1_1.pdf
 	(57000 - 66000 @ 2160), (10 mW)
--
2.43.0


