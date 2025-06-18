Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 044AFC71157
	for <wireless-regdb@archiver.kernel.org>; Wed, 18 Jun 2025 05:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yl03F77x7X0pfLzfRRbzE9IQMa3TVDzSlJ+zUSG7hg4=; b=4+bC3DclB8DeBAG8gvkNRVRKR8
	T39cXtZg1ZD7YuVqIL3Bi4TE3mjVcaB0sKz2HuGLmPMGa+Xdr3Sa53gZK3yApippEqbM1BaTUSx//
	1laxrCcr4+RcUFAUIBPaNPXNsdAV3QBObrZd9JsA28MlES/gZA2yw86KxX+19LPAHu+VifN6nGK3T
	wgYneiZcrlGaRirp5rlechNGCWT+mFE3xMslaVsoLPMt+TPoMvtW3584Ake68X0rRvOUnGh2HbBjQ
	WXGGhfAjb8ixU7HuhFQ1PiFYfO6IsnuM0VIDJhOmNmIBnv0I9AlHUZ72mUlOMzniub2lRtxB2zN9/
	p6GPWuqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRlfu-000000097CX-2u5I;
	Wed, 18 Jun 2025 05:49:30 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRlfs-000000097Bo-2Qks
	for wireless-regdb@lists.infradead.org;
	Wed, 18 Jun 2025 05:49:29 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-af6a315b491so5949069a12.1
        for <wireless-regdb@lists.infradead.org>; Tue, 17 Jun 2025 22:49:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750225767; x=1750830567; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yl03F77x7X0pfLzfRRbzE9IQMa3TVDzSlJ+zUSG7hg4=;
        b=YQ5aJ02raFaWJqvgX/ahF2C6vKO4rQLAlZS4/bzAhEKIN+IcorPzhvdmGZbm5+vkPh
         SyfRXZ2seEVdaG9A/NSDIIc4lGiAe3rZ1fj8kxUz4TCQUS26qpdYIs2/LvEg+oCaiwAD
         XgzF23pzaMbQfGFbpLHzlMlJanZIyse5ngB99RTAHpHqcOSKoGPuAq9hBAGLaY4tq6rQ
         RMTEMQzT+jq83LCNWd7Pr/aPe0XGUj0+11AcrKVpfYw8bOgCUXDuGiAF1qIIEMnzU5Uc
         8ttyXrC8TVxAh89HHknbc6eorj0spCUZNES4SB00deNWKuM3Tlj0bsEQM+7Z+n08tEI2
         jQaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750225767; x=1750830567;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yl03F77x7X0pfLzfRRbzE9IQMa3TVDzSlJ+zUSG7hg4=;
        b=QAJTev4aTwJabtwb2fOPmazMQhKiHwg0DX5V1jc6me/RvOnts4METTK+bk3nA+xgDe
         sdpiomgJBeMFekc/yQKVY0qr2gBDxMOdA5l4M+pm+DpqT9d6AjtS8axY+ZZD9si+oEUo
         q0oSstCS7GOfqhBP/gA2pcY6qBiQk4Ip7Fa+uQI4BPrMjcC8jHffMNXVLuWRb2gpWU4c
         v/mJwFvvxsnDmPCiUWdd6IXbkRI2HykKzJrlxoF5+4XlUTifBxQLungGd45lbW1ZUNk7
         3SQXvoH6rS6/kk9lXabsddQPowRohLDE8gNpLRMt6XordUfEsqRPV66fgiKN0W+kM7jn
         ELOw==
X-Forwarded-Encrypted: i=1; AJvYcCUSplJ+Y+jFsumhFXjKYICJmKq4QAXjTXbyRQ+zlPwHOKjd6meke1xRYs+txPk3ejL9MYUT/hSnwnqFodo4WQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzFN5mPatCDXnQB1Mh7j1nXgrdngqsoIdq6gFlIUanDDdUVKbR2
	IpfRlSA0MvZkzlwejmMId8hdt+bVHxGmlQfi4M5qPoVzHek7FA2pZODb9O+E4Q==
X-Gm-Gg: ASbGncuJHqsJ7EF+Z1a6QX8W6/ONv8n6esxKqOQtB0lrHyCBGBqRLPzN7t9O6OuMo3G
	fjG8oCaewTP6eJydUSOnArovrHr2UZS4OnAlxlUYR6G4DbOloKpnyP7ckpCos3C7xK/3HDL5QXd
	e0sTlNsBL22xcsTLMCTag2/HpRSnbWGJvz5/AreryssgI9GYTlk2zqU3adC2OOROccSQRBHnSvN
	OCSgeXvE2SVw1huu4GLYGMU0YRtF3/dY1MEx3nuRpLwrT2ignxRKQYUG5dTxU9XTGZdBVQHXw51
	cjR+FZus6gNHE/Ex3V+Ja3OumzLohcBBKbajn8R2gKJSWuZ3C0O7BJ9cmBzho9O1RNjwegvNmT2
	TTK7bKTBzkYHu5boWIYWrOtA9Y8xjEXNCsW9l18o=
X-Google-Smtp-Source: AGHT+IH8Vhu+Z2PQyXbK4DSQd63bQSdTCFrq4+W5hfzDqDTcu33WofNAyXYZ/crpEphkvujak7Tr7w==
X-Received: by 2002:a05:6a20:d049:b0:1f5:8a1d:3904 with SMTP id adf61e73a8af0-21fbd459503mr26683661637.7.1750225767178;
        Tue, 17 Jun 2025 22:49:27 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-7488ffecccesm10045865b3a.5.2025.06.17.22.49.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 22:49:26 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH] wireless-regdb: Update regulatory info for Egypt (EG) for 2024
Date: Wed, 18 Jun 2025 13:49:04 +0800
Message-Id: <20250618054904.9107-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_224928_620299_C5882588 
X-CRM114-Status: UNSURE (   8.98  )
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

National Telecommunications Regulatory Authority (NTRA) released Radio
Spectrum Guidelines for Short-range Devices (SRD) on November 2024.

As Table 4 Mandatary requirements for Wideband Data Transmission Systems:
Including Wireless LAN (Wi-Fi and Multiple GIGABIT wireless systems for
Indoor applications only)

* Wi-Fi for indoor applications only, so add NO-OUTDOOR for all entries.

* 2400 - 2483.5 MHz
  - 100 mW e.i.r.p.
  - EN 300 328
* 5150 - 5350 MHz
  - 200 mW e.i.r.p.
  - DFS and TPC in 5250 - 5350 MHz
    * for devices without TPC, the limit is lowered 3 dBm
  - EN 301 893
* 5925 - 6425 MHz
  - 250 mW e.i.r.p.
  - EN 303 687
* 57 - 66 GHz
  - 40 dBm e.i.r.p.
  - EN 302 567

[1] https://www.tra.gov.eg/wp-content/uploads/2024/11/EGY-NTRA-November-2024-SRD_English-1.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index e331d4f763e3..4a05bdca781e 100644
--- a/db.txt
+++ b/db.txt
@@ -632,11 +632,13 @@ country EE: DFS-ETSI
 	(57000 - 66000 @ 2160), (40)
 
 # https://www.tra.gov.eg/wp-content/uploads/2022/03/EGY-NTRA-March-2022-SRD_English_Final.pdf
+# https://www.tra.gov.eg/wp-content/uploads/2024/11/EGY-NTRA-November-2024-SRD_English-1.pdf
 country EG: DFS-ETSI
-	(2402 - 2483.5 @ 40), (20)
-	(5150 - 5250 @ 80), (23), AUTO-BW, wmmrule=ETSI
-	(5250 - 5350 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
-	(57000 - 66000 @ 2160), (40)
+	(2402 - 2483.5 @ 40), (100 mW), NO-OUTDOOR
+	(5150 - 5250 @ 80), (200 mW), AUTO-BW, wmmrule=ETSI, NO-OUTDOOR
+	(5250 - 5350 @ 80), (100 mW), DFS, AUTO-BW, wmmrule=ETSI, NO-OUTDOOR
+	(5925 - 6425 @ 320), (250 mW), NO-OUTDOOR
+	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
 
 # ES as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
-- 
2.25.1


