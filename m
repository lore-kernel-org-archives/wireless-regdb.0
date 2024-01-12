Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78CE4C4706C
	for <wireless-regdb@archiver.kernel.org>; Fri, 12 Jan 2024 04:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qxnuEyTVUUpLp+ePr9gDSD91DA7RHzLkiJHL+QBZnhQ=; b=YG6aKlrpV83FB4h3Olo+ZI8TGU
	BDZR4pzRl9Zyr0JlQ+3cPcLELiA8rBuokg2naw06dMGbrXz4EaG5iyP2QgO3OdablHVqaoeunu7bu
	Cg2ZRyxgEOpmYVgCm1t1Hs3+nQsLbYPPbqC15jxIsPofuGL9UYniW2XFg1C+cHh1OVKuwqXVe7+1y
	GFWTskQHcGy/qyFa58bZp4jQ29tYFTIAUGy409D2NN25Ckyk8U52BPyr60NslIHZnFDS55TvwgDwa
	y+RunLQ/atjAo0YkrkcTBM+BS9Unt/Qxo2SA014HG3tPSIyHVDnVi+W+/rYBe5Mw/80Bt0VxA488x
	+JaBsysQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rO8kZ-001p2K-09;
	Fri, 12 Jan 2024 04:02:31 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rO8kW-001p1P-0Z
	for wireless-regdb@lists.infradead.org;
	Fri, 12 Jan 2024 04:02:29 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-1d54b765414so35956305ad.0
        for <wireless-regdb@lists.infradead.org>; Thu, 11 Jan 2024 20:02:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndoo.sg; s=google; t=1705032146; x=1705636946; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qxnuEyTVUUpLp+ePr9gDSD91DA7RHzLkiJHL+QBZnhQ=;
        b=VtosaTsBjiUDrWoSJRqiZyCJa2rppx7usJV+YU8O5l4dq5sHGOcfhF/XhiE8lhynJG
         DPeNm8zLUKxW0wWNaF/Z4Jx8UZDZQHk/FYavpqNNSCoR/sfr7hZhe8PiRqCCpJE2sGAZ
         iTZS90bTqDIMrHLgasNeXEwHh37/oRdLc7Sq0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705032146; x=1705636946;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qxnuEyTVUUpLp+ePr9gDSD91DA7RHzLkiJHL+QBZnhQ=;
        b=bh8y33k4hc25+XD7S4D6wsEqPBwp+dCysQSfLOgrsnPIi6sqNECc67irRqQH8jaeVC
         suSSo/gUZSV3xGfCoBXjSLD864DHiG7VdopHFsz4nmWWc9pRbCCMyzkVK6+Id8N0/5eb
         Fat9cOCVrKxoIP+1Oj/Qs7YmJDWbx0hnvU5Pmo0G2vuaDK54Tq3ApC1rcq88tgNqL99o
         XMNG4educHkrEJZB6xP1FXw4Yuk5DtFszbEnurAKk/M0xzQc9glp9QPKuMqTBGW6wDey
         DCiVlFLhUmaEgJWdnR3q23sOD73avIDxeTRIBbHsbWOkBTI/r82Va6lydxUgoASR3BdQ
         Nx3w==
X-Gm-Message-State: AOJu0Yz2CJplUVB/sgSFnY+H3alI/w/Hp/WtupsqTQg9He8YhCfNOiDY
	SCdqtHMxB1kJHiPlR58cbiaHGhFo3H46
X-Google-Smtp-Source: AGHT+IHZeDWWwCgtE+zguR4zMIL7gnI95iPf2nR5kGAqj2X+Z2BifSj38w0SVxPUcFxJWddcfO3B5w==
X-Received: by 2002:a17:903:8ce:b0:1d4:5cf1:3484 with SMTP id lk14-20020a17090308ce00b001d45cf13484mr531085plb.62.1705032145784;
        Thu, 11 Jan 2024 20:02:25 -0800 (PST)
Received: from p14s2i.. ([2401:7400:c808:b52:9565:61c2:9ce0:d352])
        by smtp.gmail.com with ESMTPSA id n18-20020a170902d2d200b001d403969b65sm1999226plc.187.2024.01.11.20.02.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jan 2024 20:02:25 -0800 (PST)
From: Andrew Yong <me@ndoo.sg>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org,
	Andrew Yong <me@ndoo.sg>
Subject: [PATCH] wireless-regdb: Update and disable 5470-5730MHz band according to TPC requirement for Singapore (SG)
Date: Fri, 12 Jan 2024 12:02:17 +0800
Message-ID: <20240112040217.24356-1-me@ndoo.sg>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_200228_213342_A99AE337 
X-CRM114-Status: UNSURE (   8.75  )
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

  - Use original regulation Tx power of 1000mW with TPC for 5470-5730MHz band instead of -3dBm offset without TPC
  - Comment out 5470 - 5730 band to disable it since TPC is not implemented

Signed-off-by: Andrew Yong <me@ndoo.sg>
---
 db.txt | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 15b439d..ed76600 100644
--- a/db.txt
+++ b/db.txt
@@ -1594,10 +1594,7 @@ country SE: DFS-ETSI
 # 5725 - 5850 MHz: IMDA TS SRD, Table 1 Sub-band 35
 # 5945 - 6425 MHz: IMDA TS SRD, Table 1 Sub-band 45b
 # 57000 - 66000 MHz: IMDA TS SRD, Table 1 Sub-band 40
-# Note: 500mW for 5470-5725MHz bands per FCC Part 15 Section 15.407 (2) 5.47-5.725 GHz as referenced by IMDA TS SRD
-#  AU and BG regulatory domains use the same interpretation of cited FCC and ETSI standards
 # Note: The transmit power for 5250-5350MHz bands can be raised (by 3dBm) to 200mW when TPC is implemented: IMDA TS SRD, Table 1 Sub-band 33a
-# Note: The transmit power for 5470-5725MHz bands can be raised (by 3dBm) to 1000mW when TPC is implemented: IMDA TS SRD Table 1 Sub-band 34
 
 country SG: DFS-FCC
 	(2400 - 2483.5 @ 40), (200 mW)
@@ -1607,7 +1604,8 @@ country SG: DFS-FCC
         # Since 5725 ~ 5730 MHz belongs to the next range which has looser
         # requirements, we can extend the range by 5 MHz to make the kernel
         # happy and be able to use channel 144.
-	(5470 - 5730 @ 160), (500 mW), DFS
+	# 5470 - 5730 requires (unimplemented) TPC per legislation
+        #(5470 - 5730 @ 160), (1000 mW), DFS
 	(5725 - 5850 @ 80), (1000 mW)
 	(5945 - 6425 @ 320), (250 mW), NO-OUTDOOR
 	(57000 - 66000 @ 2160), (10000 mW)
-- 
2.43.0


