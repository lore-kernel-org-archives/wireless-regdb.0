Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BF3AC3271F
	for <wireless-regdb@archiver.kernel.org>; Fri,  5 Jul 2024 06:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EFimwcGPqA/3C6txqo+w6+bkEZEwHJWd41rNjtZetvc=; b=cppMb/E1cz0Cl16nVb9onb3cJR
	YSuE9v/KIdB8U51nOp+oScAbV7SNWbQxT8b8fR0h1werwhVRkSsozb2D6DT5q1lb8Mj1gIQulZmi0
	Cr2tX799my/nNZLflpuwUG4kSSSN1OM0+gB5hwolFJK/8fE+x661KB0s4GuvegKuK9NZrwTdldEO6
	jt/EYVuaDezLNJZ91HBLCHi2Hyy3oGHVcLJWd/FGwwvEupZGHvA7ONU+DxwHjNIvP/AwBSPrK3ar+
	WtckWV+oxEirz892w0Yg3lpY9WDmfktjMXy7veT3I64ttAo7lVYLAVbmkFoYftJ2prdd402Mmm1TU
	PyO8uFrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPc5j-0000000F0Cd-0x0v;
	Fri, 05 Jul 2024 06:06:43 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPc5f-0000000F0AR-3GgQ
	for wireless-regdb@lists.infradead.org;
	Fri, 05 Jul 2024 06:06:41 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1fab03d2f23so8840455ad.0
        for <wireless-regdb@lists.infradead.org>; Thu, 04 Jul 2024 23:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720159598; x=1720764398; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EFimwcGPqA/3C6txqo+w6+bkEZEwHJWd41rNjtZetvc=;
        b=K8pfEmIJy14eile8kczCuXyzZW0heX6W0DpcxcBv0clJv7UAIn9tzMPt5cZIqAOTGX
         p3Bi/Nw6CiQBoiV1rUJXTacHK89pWBarWE1Lec8NV2IF8JpHbtCaQco+b18zIvzQqWr3
         eho7uoEcvu71/ZEiMS1s3Kym60/KZBs1pYgt1lKPQhzTnBQSlvNxg4Kye3APuSnVRTpK
         R97g3pivUvIsEWrsBk8slLFiupSHlBaj8gnI46a9C3yNe3AB0N+nB6UHmiqKCu/Zt6mo
         0JnW3j7r8ukUzftvz022wsrrqF38fD4QnUg8GX5fo/YTfvAa0xDIdI8ieb6IqJqAV+OR
         ynTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720159598; x=1720764398;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EFimwcGPqA/3C6txqo+w6+bkEZEwHJWd41rNjtZetvc=;
        b=dOZzQiDl2/LUK/uDHrAUZqlMXimccJ7ijXBtb8rHG+Vnik9XKFaGCLvUBgsGcRKs0h
         e6iopfl4pY6ivLa8iEOfKkHmITZc8yvz4MIpRqyIg3KUTE/LZhhsN7tSBW3cqvJknOcp
         kbflQUwQQLSewPLpQvaQuQBN8n5+mmwEFo2zYMEDxO2rnU1CaMC6lKqkklWx6XWSDYkc
         Wxuh+sKwDgviltDyIFB7Rk6dxNn91oQpz2+/Ih9V4ENbx9ufD9NnEia51pChhVhMd8Mw
         BTMJv5vmWq+VKFw3pIUeiQ0iM/+wzrcjXhqeruuYSX7OHF0Gqg372jGGsEzp4EGHZDx0
         H5JA==
X-Forwarded-Encrypted: i=1; AJvYcCXZA/tu+0HbdHy7hC15dCkaDWy4EEZTdDP6JQpUmGSvo+TTGjgXC41B2OiZ3SZYNLNrM9ktR0P8tOmCtD9obYFnjlQbSDT7THUXQmJkrLeU3mFn
X-Gm-Message-State: AOJu0YzpmuWnguLIgN7TyHwQTI58wRld/R43hkHu2AE+Myn8qIRQccMZ
	RnanFZbxCqbAuPJwoRY2SoDIjhD4E5PA3pLhmp5Vj/wAAmU0TRoPZyMggdgV
X-Google-Smtp-Source: AGHT+IHAGkebesN9NU6K6lfoSM+YOuC9Q2qmAgtHao3q8/qnW14rcMjreSfpgPl51CEfgtbMlLU/Uw==
X-Received: by 2002:a17:902:f690:b0:1f6:6ef0:dae4 with SMTP id d9443c01a7336-1fb33e86742mr30741765ad.32.1720159598391;
        Thu, 04 Jul 2024 23:06:38 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-1fb4e7c31afsm4644645ad.2.2024.07.04.23.06.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jul 2024 23:06:38 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH 5/5] wireless-regdb: Update regulatory info for Togo (TG) for 2022
Date: Fri,  5 Jul 2024 14:06:13 +0800
Message-Id: <20240705060613.28909-5-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240705060613.28909-1-pkshih@gmail.com>
References: <20240705060613.28909-1-pkshih@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_230639_844968_CD0A353F 
X-CRM114-Status: UNSURE (   8.41  )
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

From: Ping-Ke Shih <pkshih@realtek.com>

Republic ToGolaise released Decision N 226/ARCEP/DG/22.

2400-2483.5 MHz
  - EIRP 100 mW and 10 mW/MHz density
5150-5350 MHz
  - EIRP 200 mW
  - If TPC is not used, must be reduced by 3 dB
5470-5850 MHz
  - EIRP 1W
  - If TPC is not used, must be reduced by 3 dB
5925-6425 MHz
  - LPI
    * EIRP 23 dBm (200 mW)
    * EIRP density 10 dBm/MHz
    * Use limited to indoor
  - VLP
    * EIRP 14 dBm (25 mW)
    * EIRP density -1 dBm/MHz
57-66 GHz
  - EIRP 40 dBm and 13 dBm/MHz density

[1] https://arcep.tg/wp-content/uploads/2022/12/Decision-226-22-Determinant-les-categories-et-conditions-techniques-dexploitation-des-appareils-de-faible-puissance-et-de-faible-portee.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 2a4f1ed524c1..6192dafe9715 100644
--- a/db.txt
+++ b/db.txt
@@ -1763,11 +1763,15 @@ country TD: DFS-ETSI
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
 
+# Source:
+# https://arcep.tg/wp-content/uploads/2022/12/Decision-226-22-Determinant-les-categories-et-conditions-techniques-dexploitation-des-appareils-de-faible-puissance-et-de-faible-portee.pdf
 country TG: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (20)
-	(5250 - 5330 @ 40), (20), DFS
-	(5490 - 5710 @ 40), (27), DFS
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 40), (200 mW)
+	(5250 - 5350 @ 40), (20), DFS
+	(5470 - 5850 @ 40), (27), DFS
+	(5925 - 6425 @ 320), (23), NO-OUTDOOR
+	(57000 - 66000 @2160), (40)
 
 # Source:
 # https://ratchakitcha.soc.go.th/documents/140D100S0000000004000.pdf
-- 
2.25.1


