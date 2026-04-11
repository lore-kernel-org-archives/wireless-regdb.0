Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A908F3ED5C
	for <wireless-regdb@archiver.kernel.org>; Sat, 11 Apr 2026 22:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FlIJ/c99lOO6XxG0VOatt94HBIrV5equf26hIkZ2uLg=; b=BvcAeghFe3UKuQ54qdJX5VQ6Et
	feabRXX1xRp3uHoV3PZ8b6ja7jY/TtIPfBjSctRrZWvua2D7dmD6tDGh7jbVLKaDrEyepsTxPl6xn
	B433clVGBxvPKeVQouko0bp3i6HYyhD7jdlSzrMdMFUcISiSHgay3qUcHTAg5bWYpmaYPSIK6N0RR
	fg0Pwin5J29g/90vZCXqjooDXekWd/voKmR1hxWnP9fKl7A3Nmiaun9/Jc5TugfQ0bYaRd1fLirgc
	b1qWzkfKKArmnBAyzhQsQ1EH8SHPHpuAymm7EKSWraRr1++ilBzBlUjtanNXmHKmYX+1FqBWD5tCy
	A+8zWUDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBgiU-0000000Dpwv-1QsV;
	Sat, 11 Apr 2026 22:22:14 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBgiR-0000000Dpvz-2HYM
	for wireless-regdb@lists.infradead.org;
	Sat, 11 Apr 2026 22:22:12 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-488b0e1b870so51387045e9.2
        for <wireless-regdb@lists.infradead.org>; Sat, 11 Apr 2026 15:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775946129; x=1776550929; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FlIJ/c99lOO6XxG0VOatt94HBIrV5equf26hIkZ2uLg=;
        b=qdSMUpWmSXuZIuYDvO660/cDm5HSzmJ5YHSHZJRyMHNeTw8Wo9mcnTsjCk0H+D3X5I
         MflbufcyzPrMNrRvnm9/nA48UCVnQjKErm8RMozbOUeDaOQqEhOjut9FTExOIC1suEuN
         YDVSpPKatD2CZF2pwtrK7KUs9VGXPxDwFSQ3StdVq4u2CA7ebsc3BSPiFAAr4YYJBf1o
         dewAuX90H/PwtAYAs0rhI2mIRO1EurSCh/oOt/FvpG2iWcMKFU532SjhsSCo5AFl8XIR
         k34tTy2N+M3etfkGzSWVkXB0mt4d9GjGt6OT3kjPJm3V+1TO4Jv7RfXj2nQ4PB9gsvaG
         kDGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775946129; x=1776550929;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FlIJ/c99lOO6XxG0VOatt94HBIrV5equf26hIkZ2uLg=;
        b=N5puJug0+tbaubCu2TAh5HjZds/s87rththH+2gij0w2KYYpL8RKJWALhTXpIBT6+k
         W1+1izyYxNMA871xI1iTnjBfZuQMuS5m/9JLWC6DEh2GiJFBQm6TL+Rc4LOrJo4dBrox
         XssvrFCkxcg5t6X5B7Kl6m8tkdtA47B6Xl3UpGL52yvsYfKJ88cbfpMIZKTQGeDTjzUG
         5byzB8nO9QTqJG4Q5rr/fQ33cv808FOD/lxGwTGyEm6q9eokRdpqDJndENVQjfIwRJqD
         0feTBQrLBSzUZw73Kkxj9Zgd1RRzZJrfTHK7SbGAmf/Rhr6qhkTea1nKA+PMf7qdJBuD
         qMPw==
X-Gm-Message-State: AOJu0YwM5nIEdoyXlOX5tQknpBl79SYWT4bfx+XwpxyQS5rq9bt/ITky
	cnPWVdHvWoJXVJGlOS3aDMbljUcxd6thMOTp7o2ffls2vxIZT10VtxUt33giDv3p
X-Gm-Gg: AeBDietwALU/Wp3ByXJPGyte3UZlJWC679JSjrGb5body27Fs2tJQHWqe44SxV4nFeV
	ZdcMCAp3tRlHjP9D4uiKvF5fAt41XOPx5cTMnk7t5eK19liI2jGXkgoW67cTh2SlU1tRpk4zjoy
	zLKKK++CVGE3M0qfWNF5OkzEYzzRyDfldlP7Q4jj/MfLc6a5TKvGUs9ZLj1PFH3D43Tycrjmg1N
	/4VaPolgVI2fGr5izoNJDkD2FcepXB5ccUVWK4aawVrDwswCSyfLR/tffU2ts4IFvYuYwkQd0dC
	6OQ6T+K9Ntyp9mHhpMB7WCPBWcmDsSrkcF01r6GCs2hwizcPcL9blEDIabdJYMZlUQhF9M/Cdpv
	mOUCo0g5Qrb8jjI1ca9xNvL8P/iKLpCXZ6S8YA1VjZ15w2Et4zxSr0kv/j7OFty/66o3XZwttvM
	1UCOBYo6g2j/dIJWn1JzHsNMxXdA==
X-Received: by 2002:a05:600c:8907:b0:488:80b6:873a with SMTP id 5b1f17b1804b1-488d6860bc3mr68616295e9.21.1775946129418;
        Sat, 11 Apr 2026 15:22:09 -0700 (PDT)
Received: from bazzite ([102.128.175.252])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488d689110asm56935965e9.35.2026.04.11.15.22.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Apr 2026 15:22:09 -0700 (PDT)
From: Louis Kotze <loukot@gmail.com>
To: wireless-regdb@lists.infradead.org
Cc: wens@kernel.org,
	Louis Kotze <loukot@gmail.com>
Subject: [PATCH 1/5] wireless-regdb: Update 6 GHz rules for Hong Kong (HK)
Date: Sun, 12 Apr 2026 00:21:51 +0200
Message-ID: <20260411222155.299441-2-loukot@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260411222155.299441-1-loukot@gmail.com>
References: <20260411222155.299441-1-loukot@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260411_152211_600003_C383F1F4 
X-CRM114-Status: UNSURE (   8.96  )
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

OFCA published HKCA 1081 Issue 2 (August 29, 2025), updating the
6 GHz WLAN specification for Hong Kong:

  - LPI (indoor): 24 dBm EIRP
  - VLP (outdoor): 14 dBm EIRP
  - Frequency: 5945-6425 MHz (5925-5945 reserved as guard band)

The previous entry had VLP power only (14 dBm), no indoor flag, and
used the wrong frequency start (5925 instead of 5945).

Update to LPI with correct frequency range and NO-OUTDOOR flag.

Reference:
  HKCA 1081 Issue 2 (August 2025)
  https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1081.pdf
Signed-off-by: Louis Kotze <loukot@gmail.com>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 343b256..172029e 100644
--- a/db.txt
+++ b/db.txt
@@ -883,7 +883,7 @@ country HK: DFS-ETSI
 	(5250 - 5350 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
 	(5470 - 5730 @ 160), (27), DFS
 	(5730 - 5850 @ 80), (36)
-	(5925 - 6425 @ 160), (14)
+	(5945 - 6425 @ 160), (24), NO-OUTDOOR
 
 # Source:
 # https://www.conatel.gob.hn/doc/Regulacion/resoluciones/2023/NR05-23.pdf
-- 
2.53.0


