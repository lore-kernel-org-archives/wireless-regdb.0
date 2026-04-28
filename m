Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDA84FF885D
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 Apr 2026 07:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=u2PSbXHzeVtVSXRwe8v8WibwLNyvsUoiZuwywYL3Uug=; b=wqgFX+h/yGJa2q8FexKKr4Fepa
	qlY9euwTnQKCgMxuPwrTaFrmJqLBHaghZSztplnam4hJqvQ7uE1M7jK2xEY93NQ+OYluMK5RyNQPP
	DjMRXWW71IV64tJEGJNnDA2aMWF3i+QJZaHYLA76rT7mSUTUm5xO6BXBMmH4kdST7keAIdqoYChxR
	H83+0cwOs0jHG3b2Jxh1cPKAsxOhEJ87/kVmBzVuNeCKslvwv9cGy8CmQtcIqyYBkkIFn+EsIsto2
	caJJSFGy+fgTrPRfE3b3Tpc2MFHg3G5imqfVEEYsw6TzFZiY4wDUY1NpiiasDwSFbo8dK8Xp9HhET
	uN0yXcZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHcsH-00000000mAp-2QKR;
	Tue, 28 Apr 2026 07:28:53 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHcsE-00000000m9l-3G5V
	for wireless-regdb@lists.infradead.org;
	Tue, 28 Apr 2026 07:28:52 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-488b0046078so100209645e9.1
        for <wireless-regdb@lists.infradead.org>; Tue, 28 Apr 2026 00:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777361328; x=1777966128; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=u2PSbXHzeVtVSXRwe8v8WibwLNyvsUoiZuwywYL3Uug=;
        b=dul7F44kjiWgLinp3qqfuCz6lTE1n+1nHXTNg9cSaV7E/BQyUqjtPaoYHMfsuf5uF1
         Dqi9O5htSriCTVXge9Gh2EFMeWVRi+UTqeyKQ163V5KTQJgNtIsf/72QkjvRmuo8PAuI
         nHKVwEeCvsFLPsDDImHpaisAwm8aIVx0/J6SJMG1dISWL4ZGUNK1ieE6Q3eyRQ1HYBmn
         Px1uK0OyYSlxYsoi3MACwP1VsqjKPqIKU10Rz3VLzQQZmRyPwQxqdb/keC2Z4i4EETvj
         y3mMhbVC5mA58bqJCB4BZSXjgDC6lWgxnS1CXAUb09KkyaHzoHHnR3BghksB3QWc3paK
         sdwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777361328; x=1777966128;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u2PSbXHzeVtVSXRwe8v8WibwLNyvsUoiZuwywYL3Uug=;
        b=Y10CxG+jMnohzQHocX/LJCfzYjGtH+GKC1000hJXJTo5ag/7olrhlDXpRI6aRf0zli
         1PD+1oXC5059QONcPmNQA7vdLZ7As4kiGMf+qaofYNG3IlmZFtv2rGOtpHDeuK0LivM/
         gZiJwusfJFhzbka4Q9jxvmBoL8LSFDonrPK+fcrJjK08CvumxUTtC+gg6xSm4IiOdvq8
         Kt6r7cbzNv0MsF2gYg+6bOgtqwMHa0VJs/up+zmCcIWEMulN4Z93izH1479uFTHvPKPC
         F6qoiXXQauP1zVB9DfRynBK04/nn1fcS6CX9pwWaIakqZEz/LOXu+wHolq9e9buSBhjW
         Vfww==
X-Gm-Message-State: AOJu0Yx7sOdKUTujHf/VFVmKlsgDpUeH0jOwI9WbqmTDgEnwysIa/ZYD
	MXY/FORVa4k0JwP/sTgR3Q8qkEzp9vPo5QNc5Ngdusk8iV9KGKeq40jYPk2+EtTT
X-Gm-Gg: AeBDievAm5bQ5M16N0w/aAehFYAaPBJr6DeZBEgGydvOuI9plc+hzkDy79O2HiQXe8/
	b/jbVKQVTVEyLVrK6dl0CePwUnlTJ5OpaO/2HuJaqmFQS3OrFoD77VCEeUzGayKQJb0hfppSOaT
	aC9SmxM9Gz73jsnYiOsKol9HBeM0VQuxfrBFzz+gyuSuZyp42/LApgkcu91HagtUUm7Z4b2807D
	udLEP7sljg+TSiZZljDQotZ1PNuie8igzBKchvAa7pLChn6R2pFQExiKVXyK65QChBT3E8VAauG
	mtsUU4vQgtepR4W0tnXF9y1CT7vo3NrOgvlgiLWZ/UFohRPbmNmnmxwj+0xsiMogncmmcx4f/5C
	6kUeoVtH1U1eso/ttlZ4kxnlb36h06c/ZyKHZt6S/uXa8KcwEGcTmCXUgoFinkPRo2IGDBISnEm
	/WEDClw65c9uVwNONSGUHigPJp6+gUTC4j8RErtrCjpUagZRZvj4IZxxTNnpFz
X-Received: by 2002:a05:600c:83c5:b0:488:c744:49b with SMTP id 5b1f17b1804b1-48a77aed600mr29560005e9.7.1777361328249;
        Tue, 28 Apr 2026 00:28:48 -0700 (PDT)
Received: from localhost ([102.128.175.252])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48a77aeb223sm31096105e9.3.2026.04.28.00.28.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2026 00:28:47 -0700 (PDT)
From: Louis Kotze <loukot@gmail.com>
To: wireless-regdb@lists.infradead.org
Cc: wens@kernel.org
Subject: [PATCH v2] wireless-regdb: Update 6 GHz rules for South Africa (ZA)
Date: Tue, 28 Apr 2026 09:28:44 +0200
Message-ID: <20260428072844.482991-1-loukot@gmail.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_002850_828007_6C9C0C7F 
X-CRM114-Status: GOOD (  10.74  )
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

ICASA Notice 1822 of 2023 (23 May 2023) amended Annexure B of the
Radio Frequency Spectrum Regulations, 2015, to allow licence-exempt
use of 5925-6425 MHz for WAS/RLAN.

The notice references ETSI EN 303 687 and defines two device
categories:

  LPI (Low Power Indoor): 23 dBm EIRP, indoor only
  VLP (Very Low Power):   14 dBm EIRP, no restriction

The current entry uses VLP power (14 dBm) with no indoor flag.
Update to LPI with the NO-OUTDOOR flag.

LPI is the appropriate choice because indoor WiFi is the primary
use case for 6 GHz. The VLP limit of 14 dBm is too low for
practical network operation with standard access points advertising
LPI power levels, causing repeated regulatory mismatch errors that
on MLO (Multi-Link Operation) setups disrupt the 6 GHz link.

Per maintainer guidance, only one rule per band is allowed, so this
replaces the VLP rule rather than adding the LPI rule alongside it.

Reference:
  ICASA Notice 1822 of 2023, Government Gazette No. 48643 (23 May 2023)
  Amendment to Annexure B, Radio Frequency Spectrum Regulations, 2015
  https://www.icasa.org.za/uploads/files/Notice-to-amend-Annexure-B-of-the-Radio-Frequency-Spectrum.pdf

Signed-off-by: Louis Kotze <loukot@gmail.com>
---
Changes since v1:
  - Replace VLP rule with LPI rule per "one rule per band" guidance
    (Chen-Yu Tsai), rather than adding both.
  - Resend as standalone top-level patch. The previous v2 was sent
    inline as a reply on 2026-04-10, which the b4-ty tooling cannot
    extract. No content change from that v2.

v1: https://lore.kernel.org/wireless-regdb/CAMcSecJ7nDo+-JqGri80m8yn_cp9UfajHqLQDPYup7Zh7QVj7Q@mail.gmail.com/

 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index e019bd0..c310b7f 100644
--- a/db.txt
+++ b/db.txt
@@ -2180,7 +2180,7 @@ country ZA: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (30)
-	(5925 - 6425 @ 320), (14)
+	(5925 - 6425 @ 320), (23), NO-OUTDOOR
 
 country ZW: DFS-ETSI
 	(2402 - 2482 @ 40), (20)

base-commit: d0781152c3349d64faffaaa28d1221eafe389346
-- 
2.54.0


