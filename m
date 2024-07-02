Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47E79C3064D
	for <wireless-regdb@archiver.kernel.org>; Tue,  2 Jul 2024 06:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qnY6SHlNr6YyXsCCbcv0R5fR1tjeOjIhybsxrKsZmZY=; b=kRtr+xZ/KCvCFEkgWH3fq97MU9
	YWTNMrn69r9oklK3DLkJ7fI9oWqH3UKV6bXqReWiytjvg+qEKibxUS7248d/U/xczxqasUFXRGG8T
	UorojlqoW1pRwHGQL6rPSNy4JmK/8XpckN3zDQhqF32ItfwLPerYuROaQiJ/En6hqtr2nTu22hmId
	P0sZ2NIYPm8W6pA5ZvSeUjehetSCYaRiSmdaKS6steuiKuEjX/QYhhSIN8230eqzF5AKLJDpOhPoo
	dAcQP/B+NpUmTLSi8pfiyHXiYVKvHkt4XxtqOj3xCrZp0V8llqSt1dlFPTxM8pwZnFtU3HrFHnvay
	WuCC1nGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOXMI-00000005lzv-1BcE;
	Tue, 02 Jul 2024 06:51:22 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOXMF-00000005lxy-1LYC
	for wireless-regdb@lists.infradead.org;
	Tue, 02 Jul 2024 06:51:20 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-7182a634815so2225860a12.3
        for <wireless-regdb@lists.infradead.org>; Mon, 01 Jul 2024 23:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719903078; x=1720507878; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qnY6SHlNr6YyXsCCbcv0R5fR1tjeOjIhybsxrKsZmZY=;
        b=bkQOKHZaXTfyDYJmsU1TucEm5AZ4RrAuu0HWI9FYc5xGj7OjIRt72LUvNBQbmSdZpR
         +niVrJ5dAufqWth+qbV3BnhPTAeM5W/ps82FoxzcOyvKEUDmtEPrEPt36SFUQ+7Ujdp6
         6j84F2h/pucEsx6/Q9HjpKR13wUmXTVG0L00ccSAfMK386Ds/1cQBR2U4UNsfukX9ez3
         JxecKJ+KwIrrBBHVGJATVkunQXJCDLauK+lpNCx2zCg5Yeouy0egm5tTEbvirKpRoH+e
         7HA2piExEh0ehndhGrymAD1LZIIpBW4vYN/j5Kjz+pMk+IBkDyBnLdcVqYm+cBn+/Ngk
         rUNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719903078; x=1720507878;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qnY6SHlNr6YyXsCCbcv0R5fR1tjeOjIhybsxrKsZmZY=;
        b=aAUJVgK19VPNKusMMfsvFKCo6S0ETTNa1oBRH9Sj8tMmAJR4yzVIrxXqLSCI9pF1F6
         MCDQRBpJGj/ujb+lWU72HuRBc1tWGJ0/GgyXk5Qi4uzC99k6Hfl2lYNgRJeS2dP++Nin
         GxUEf3pX5K7uO9fNJkSKyB6m5euSc1r63CwSNamIAf/h1UfJdj9aGZ104vL9vhKXWc0o
         F4St0+JtlAlqREcxxQD7z8QkhIs+VPVE0HoS3dl1I+HtJnIm4gMF/fFZomO0wnq5aRS+
         xIQ4JeZqYlyd4ykwJndSOjE8uwBvHGVTmFreFLD1W7r5wlGroVoIs8wzIHpucuGcwklH
         t0kQ==
X-Forwarded-Encrypted: i=1; AJvYcCVbcJGwXabn6m0f57w1tpHmOzYr/nu3HcAHyQQvldo3p5diGXwkuA3QlmZziIDVSm9V+7fq/s6Mq9hiIfk6Sk5Ui7Qo+aHqwpYtcCGzLtNPVTF4
X-Gm-Message-State: AOJu0Yw/i1fy8kBfkcJ+YmpWPR2O3le804EXjtXhjX90pR1OMNJsjKCo
	N5SID1I1b+rfiPiwHVhegkJ1gsV4tCmHLN1ApCpHggjXUn0dnqrz
X-Google-Smtp-Source: AGHT+IGyD8q6cQo0GlqRYvffb/TtfJ/i1ukneq1nbzKyMgKAlmWFePNjcrApxI2BLuO5copwgmZp7w==
X-Received: by 2002:a05:6a20:7490:b0:1bd:91aa:79a6 with SMTP id adf61e73a8af0-1bef60e3eb2mr7961725637.9.1719903078181;
        Mon, 01 Jul 2024 23:51:18 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-2c91d3bc5e7sm7976490a91.36.2024.07.01.23.51.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 23:51:17 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH v3 2/3] wireless-regdb: Update regulatory info for Kenya (KE) for 2022
Date: Tue,  2 Jul 2024 14:50:59 +0800
Message-Id: <20240702065100.13644-2-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240702065100.13644-1-pkshih@gmail.com>
References: <20240702065100.13644-1-pkshih@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_235119_446583_7ED9F5CD 
X-CRM114-Status: GOOD (  12.42  )
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

Communications of Authority of Kenya issued GUIDELINES ON THE USE OF
RADIOFREQUENCY SPECTRUM BY SHORT RANGE DEVICES on JUNE 2022 [1].
The section 5.8. covers frequency bands and technical parameters for
non-specific short range applications and wireless access systems.

 - 2400-2483.5 MHz: 2W e.i.r.p.
 - 5150-5350 MHz: 200mW; max e.i.r.p. density of 10mW/MHz
                  (ETSI [2]: 200mW (23dBm) -6 dBm to be 17 dBm;
                             5250-5350 DFS)
 - 5470-5725 MHz: 250mW; Max mean e.i.r.p. of 1W &
		  Max mean e.i.r.p. density of 50mW /MHz
                  (ETSI [2]: 1W (30dBm) -6 dBm to be 24 dBm)
 - 5725-5875 MHz: Mean e.i.r.p. spectral density of 23 dBm/MHz
                  Mean e.i.r.p. of 2W in any 10 MHz band
                  (ETSI [2]: 4W (36dBm) -6 dBm to be 30 dBm with TPC)
                  (ETSI [3]: The FWA device shall have the capability to
                   reduce the operating mean EIRP level to a level not
                   exceeding 24 dBm for ChS = 20 MHz and 21 dBm for
                   ChS = 10 MHz. 24 dBm is adopted)
 - 5925-6425 MHz:
   * LPI: 23 dBm (200 mW)
	  Mean e.i.r.p. density for in-band emissions 10 dBm/MHz
	  Indoor only
   * VLP: 14 dBm (25 mW)
	  Mean e.i.r.p. density for in-band emissions 1 dBm/MHz
	  Indoor and outdoor use

Reference ETSI EN 301 893 [2], for the 5 GHz and 5.8 GHz ranges, TPC is
required, being able to reduce TX power by up to 6 dB. ETSI EN 302 502 [3]
for TPC of 5.8 GHz. (Add this rule followed by [1] with annotation "ETSI:")

[1] https://www.ca.go.ke/sites/default/files/2023-06/Guidelines-on-the-Use-of-Radiofrequency-Spectrum-by-Short-Range-Devices-2022.pdf
[2] https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.01.01_60/en_301893v020101p.pdf
[3] https://www.etsi.org/deliver/etsi_en/302500_302599/302502/02.01.01_60/en_302502v020101p.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v3:
  - DFS-ETSI
  - split frequency 5250 - 5350 as an individual range for DFS
  - correct 5470 - 5725 to 24 dBm by e.i.r.p values.
  - correct 5725 - 5875 to 24 dBm by mean e.i.r.p. and ETSI EN 302 502, and
    more documentation.
v2:
  - align freq range of reference
  - use power unit as reference
  - -6dBm for 5 GHz and 5.8 GHz ranges
---
 db.txt | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 4d2ebe46172d..c046e0269e67 100644
--- a/db.txt
+++ b/db.txt
@@ -985,11 +985,17 @@ country JP: DFS-JP
 	# ref: http://www.arib.or.jp/english/html/overview/doc/1-STD-T74v1_1.pdf
 	(57000 - 66000 @ 2160), (10 mW)
 
-country KE: DFS-JP
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (23)
-	(5490 - 5570 @ 80), (30), DFS
-	(5735 - 5775 @ 40), (23)
+# Source:
+# https://www.ca.go.ke/sites/default/files/2023-06/Guidelines-on-the-Use-of-Radiofrequency-Spectrum-by-Short-Range-Devices-2022.pdf
+# ETSI EN 301 893: https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.01.01_60/en_301893v020101p.pdf
+# ETSI EN 302 502: https://www.etsi.org/deliver/etsi_en/302500_302599/302502/02.01.01_60/en_302502v020101p.pdf
+country KE: DFS-ETSI
+	(2400 - 2483.5 @ 40), (2000 mW)
+	(5150 - 5250 @ 80), (17), AUTO-BW
+	(5250 - 5350 @ 80), (17), DFS, AUTO-BW
+	(5470 - 5725 @ 80), (24), DFS
+	(5725 - 5875 @ 40), (24), DFS
+	(5925 - 6425 @ 320), (23), NO-OUTDOOR
 
 country KH: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
2.25.1


