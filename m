Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA9A2C83000
	for <wireless-regdb@archiver.kernel.org>; Thu, 26 Jun 2025 11:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DO75ulnW7xXYDrGEbMAJCg2w9pcEpi3b41GUw2MbQI8=; b=KEcKjrlbx+Ms43KcIkM099nD30
	51xhn6FS1jV+Ddd+JGDMIvlfJE7jwx4ApGCo2BSRgyE6V3sJMW9eNNkBXVcg8KJeXo6p/2Pvj3nDW
	HHsxtt+Sl0Bav49gAQpV2otnJNBZ7gNJAYkxhQfTzOrDMQ1MHKjifySK7Rzm1QYXzc0TQ5WYP3/wp
	TL93YDCqQhhvVzzrbZpKcsRBOdqBJoE7Z4MVEGYee44ZYVWIO23UAPWeuusUnSgtSGAexek9kHeNS
	Y43n+MNPYA1cEjsrtzZoQ79HHtwrWwihzE04uQUwB0jb0wYpjdQsHM525YYXpi1Ow2O2tAqRSovGF
	akasj49A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUkhB-0000000BOGS-2SNj;
	Thu, 26 Jun 2025 11:23:09 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUjlY-0000000BGmE-0sVh
	for wireless-regdb@lists.infradead.org;
	Thu, 26 Jun 2025 10:23:37 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-7425bd5a83aso975488b3a.0
        for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 03:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750933415; x=1751538215; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DO75ulnW7xXYDrGEbMAJCg2w9pcEpi3b41GUw2MbQI8=;
        b=RD71/rD8k6Y8rDUKhv2dyMCPI61lF6snClxOFzimK6EcP2IH1bNl9UQ++kSrjSZKDo
         9H703TqW2wT1TAPmYjuZ8W9nk6MFE9nSPIUuS5pVy/NUe5ht8ZAG4PZUr6tdnB3lBuIS
         w/2YCiCccvMZ8W9yv037wzZyTYeeioSHZT0Sff4YjPEQ9bpUVKkMZ5AZ6P+yYkZ+XUOC
         paTmnn/mLLnB3Ez9aMqxSK/dwkQJVGjA0X9wexADOEpep/8TMzO8hfQIRheN3fmjwF4k
         lb0YWWqS0cffx/Hzsth8YHLu9jWg+7UdyW9tCZZZ0wlpNgSZd9CgwZRcSkR8yRYyv27z
         +QBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750933415; x=1751538215;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DO75ulnW7xXYDrGEbMAJCg2w9pcEpi3b41GUw2MbQI8=;
        b=HauWAhOYis8qRVt5mVnrDT2ejFZ6PMAteLlOOpVaqsR03M7FpICYucmcYdcZG4iKeL
         Y33E6IDnIzAMREGEopcT/bmZXKbPYbuad+U6GTg9eg6dWrxznaw7PykSCDGE21egrFou
         fG+2T3w7UgESon2VR/YO9SbTQe6nhC0x6ZsnpfF5ZZkKBh7T9Aq5TztRJZhN3SjbiNVL
         fIquBo8gY5+lIFn9tlrAvx/+REofZKbFtSF1yU51Wi/MLIXozEvpJbVZxsvY/Z8rBOxX
         rAanNwthdALq1Gsa3IWizxaG5r10qxuspUd5VQxDaJQKM1/upTvZo/KNJkFY6xHF5y0Z
         sKmw==
X-Forwarded-Encrypted: i=1; AJvYcCWYWpt+mQG1L9wi6iqRVk76B0Umjzqw15P58X+i+7LL+hRf8ZdBtyvkLcupbTc8RRkiiWyiR7zFgIha7FcsZw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyFdYGlcAWO+0NyNRSX3mODkJ/x96fLrMxNbxRR3bpoL6UxDElu
	+Ez3SbQdV7uRKsDA8n/PyANqf6Hy0GBKKiDTCUWg0/2PdcD6kGryv9cp
X-Gm-Gg: ASbGncsOOVX5fEtcczYgw+lYYSD3CdCBG1UMEDAXBKVhu/WbD/xhNEp86fV3BWP9exl
	zujbMl8ASSmSP5uDl4HLgXxQPuilyItKXZ/Uy3TLOFKisnFmAlLkEM/m58PgB0HTpMYn/cnegfL
	gfSC/kcrcue9YG4T5cPwNd4blfGDah3Uc86ciS5E7hDXowEZfbqaj7EWVlEDbuGQEQ6oxaezy51
	vtWIg/p1J8DdFgylEWgbeh8e+rmWK+mE52f/rsIDlA7fMgEh5SkxPUnnafBNQT+7j756FAy0xT0
	gvvwhdUFxhd+5WrYQNmIc5waptvp2tX9eKPSTyG7ss3akiPmtZhv5EEbWOHpHKmpdbI=
X-Google-Smtp-Source: AGHT+IHPUL04I+VRkptG15LMRvwHepnAhOlrBZ82Aon1QGUZsrRUA1EuNY2NemaW+3nyZp1l/8Tbvw==
X-Received: by 2002:a05:6a00:228d:b0:740:aa31:fe66 with SMTP id d2e1a72fcca58-74ad4408651mr9694889b3a.4.1750933415315;
        Thu, 26 Jun 2025 03:23:35 -0700 (PDT)
Received: from glados.lan ([2804:d51:4975:7202:7e03:331b:6be0:eea6])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-749c8852f0fsm6814096b3a.117.2025.06.26.03.23.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 03:23:34 -0700 (PDT)
From: Marcos Alano <marcoshalano@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: wens@kernel.org,
	wireless-regdb@lists.infradead.org,
	Marcos Alano <marcoshalano@gmail.com>
Subject: [PATCH v4] wireless-regdb: Update regulatory rules for Brazil (BR) on 6GHz
Date: Thu, 26 Jun 2025 07:23:26 -0300
Message-ID: <20250626102326.3815520-1-marcoshalano@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250602121434.3011282-1-marcoshalano@gmail.com>
References: <20250602121434.3011282-1-marcoshalano@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_032336_246707_A2D0F567 
X-CRM114-Status: UNSURE (   9.34  )
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

Change rules for 6GHz on Brazil removing `NO-IR` since it's
not mentioned in the normative.

Change the comment to point to the newer normative.

Signed-off-by: Marcos Alano <marcoshalano@gmail.com>
---
 db.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 803f1bc..4283ff1 100644
--- a/db.txt
+++ b/db.txt
@@ -322,7 +322,7 @@ country BO: DFS-JP
 # Source:
 # https://www.gov.br/anatel/pt-br/regulado/radiofrequencia/radiacao-restrita
 # https://informacoes.anatel.gov.br/legislacao/resolucoes/2017/936-resolucao-680
-# https://informacoes.anatel.gov.br/legislacao/atos-de-certificacao-de-produtos/2017/1139-ato-14448
+# https://informacoes.anatel.gov.br/legislacao/atos-de-certificacao-de-produtos/2021/1510-ato-1306
 country BR: DFS-FCC
 	(2400 - 2483.5 @ 40), (30)
 	# The next three ranges have been reduced by 3dB, could be increased
@@ -331,7 +331,7 @@ country BR: DFS-FCC
 	(5250 - 5350 @ 80), (27), NO-OUTDOOR, DFS, AUTO-BW
 	(5470 - 5725 @ 160), (27), DFS, AUTO-BW
 	(5725 - 5850 @ 80), (30), AUTO-BW
-	(5925 - 7125 @ 320), (12), NO-OUTDOOR, NO-IR
+	(5925 - 7125 @ 320), (12), NO-OUTDOOR
 	# EIRP=40dBm (43dBm peak)
 	(57000 - 71000 @ 2160), (40)
 
-- 
2.49.0


