Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCD83C54751
	for <wireless-regdb@archiver.kernel.org>; Wed, 28 Aug 2024 08:47:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HNvrJ0FFX/UhGvKltRfjtPKtbIt+nqSVpRXoA9TJ31U=; b=Jhcqd3Cl/UKk6EfrocPHRlw8Qk
	3V4ADvEAGg1nlHQHaQ9OzDAs3gjSvMRrgCP/MnTWei7cL0XylSPg9cO6Hr62AETgYPWRpkRzotRDy
	eVBOQ/tByUze+VVqgneEMfaZhJfA9tTHn2BOnGdpvE0vbnycH4t7G8M46750XZrkZpEt7FvZU9/wo
	uc/2+vr1itCvbj1QysMjVP8z7y1xEhI0C5lHkg37cC4Es8jNQNVRcgMgqH1bMUD34F6h5KqXl42I2
	BvJGFNjCvThkSazhsoMdCjp9zj6WWu8ehsI2pSFibo+CELs0Y0vFCyNjhwsIvjW3TS3TRoqLZtEL1
	3tC6cJYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjEKz-0000000EZvc-3EX0;
	Wed, 28 Aug 2024 08:47:33 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjEKn-0000000EZrk-0Fop
	for wireless-regdb@lists.infradead.org;
	Wed, 28 Aug 2024 08:47:22 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-201ee6b084bso55456115ad.2
        for <wireless-regdb@lists.infradead.org>; Wed, 28 Aug 2024 01:47:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724834840; x=1725439640; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HNvrJ0FFX/UhGvKltRfjtPKtbIt+nqSVpRXoA9TJ31U=;
        b=YB7z2s4ylyfKci6QDfTxKREOuQOL4TqUKbfjoVx5NpSuGaKOcPPZ1X2VRK6pVM6hj0
         BwnHKbH/KsANF3j7LPVtIHvfWqSVfJxisfGbNqyUPaPk/MRFj1YZacXdHVzrNf56opPi
         fcUfU17nWrTr70Qiw6NOeXujqaXD3ggKWuP6GQLKtxv2wmqq+7yhZIiazMAzLq1Q3T1P
         f3wkBBk9jNTc2fxSAbzBrqn0qNcsoUSoP3JpLlZrzNsXeb2XbHQck8ffbw1eMzMrrC1B
         BeIVDv6rp+tR8wHrqgLhnjMfaJx25jd/LdNaSu3QlmWWUniZN8DIhBO8tArgQf8Iry8C
         xM2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724834840; x=1725439640;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HNvrJ0FFX/UhGvKltRfjtPKtbIt+nqSVpRXoA9TJ31U=;
        b=Uc2Naph53dffsM8dImuQGsJrUfyHdb2WGjP+aTIvB/1BNWHv9raQKjKxCYYirnmf9Y
         o5o6dviwdUMIofILbagAYNWWces7i6xXyHxPWJ7b9IvFQfc8/+ZWiNQVKL4Lj+UvAqSs
         anCXg+ml76DfOndSrhE1yHWPHje8OBMjnlGC+wcjmvYl6GgpoXI43puYjg+1/ctZt4II
         jBwjJBthhU84gF7PZhrd719bkhlk0qG7xak2uAckeQjEbmQGmXxWy5gFcoypXgJZ9meM
         ROAleYkAQ5kY5egDI5ern5euNP87CebFZXRVPkIEjLi1jVFqi+N9GfwHeJgj/IFAfKo7
         G5eA==
X-Forwarded-Encrypted: i=1; AJvYcCVgZ8SrxIwsA2LTZ9p2LpF23OyidAvIPH/ULhoUJR7hZFWbS8Tq1f+x+h23+5WK02gDSQ0hLFSI9CXFupjXrQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxOE9KwPvlr9+dJML9/khquXTx5DI755EFdwUbg4lHd8phSkBRz
	uQbc4Zzrh/4Jy8KJIIN+nXxPN82xdrgCy7jb86uQLU0vlTeiHpm9
X-Google-Smtp-Source: AGHT+IFvLSsWlCuF9LMW8AR881ZS4ZArFlkxZV1/q9ga1J/4VUVOyAo572YTvGcf2KbvFmEzTiOhKA==
X-Received: by 2002:a17:903:11d1:b0:1fa:9c04:946a with SMTP id d9443c01a7336-204f9a54d61mr14003955ad.1.1724834839594;
        Wed, 28 Aug 2024 01:47:19 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-203855dbefbsm94652645ad.136.2024.08.28.01.47.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 01:47:19 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH 1/4] wireless-regdb: Update regulatory info for Serbia (SR) for 2024
Date: Wed, 28 Aug 2024 16:47:03 +0800
Message-Id: <20240828084706.12257-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_014721_147901_4D27C85E 
X-CRM114-Status: UNSURE (   7.58  )
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

Serbia government released radio frequency range on February 5, 2024 [1].
Based on Article 100, paragraph 5 of the Law on Electronic Communications
and Article 17, paragraph 1 and Article 42, paragraph 1 of the Law on
Government.

 * 2400 - 2483.5 MHz
   - 20 dBm
   - EN 302 328
 * 5150 - 5350 MHz
   - 23 dBM (Without TPC)
   - 5250 - 5350 MHz, DFS
   - EN 301 893
 * 5470 - 5725 MHz
   - 27 dBm (Without TPC)
   - 5470 - 5725 MHz, DFS
   - EN 301 893
 * 5925 - 6425 MHz
   - 23 dBm, LPI
   - EN 303 687

[1] https://www.ratel.rs/uploads/documents/empire_plugin/Uredba%20o%20utvrdjivanju%20Plana%20namene%20radiofrekvencijskih%20opsega.pdf
[2] EN 302 328 https://www.etsi.org/deliver/etsi_en/300300_300399/300328/02.02.02_60/en_300328v020202p.pdf
[3] EN 302 066 https://www.etsi.org/deliver/etsi_en/302000_302099/302066/02.02.00_20/en_302066v020200a.pdf
[4] EN 301 893 https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.01.01_60/en_301893v020101p.pdf
[5] EN 303 687 https://www.etsi.org/deliver/etsi_en/303600_303699/303687/01.01.01_60/en_303687v010101p.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 9a55f6b8cc98..ad8dddc9c800 100644
--- a/db.txt
+++ b/db.txt
@@ -1758,11 +1758,14 @@ country SN: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+# Source:
+# https://www.ratel.rs/uploads/documents/empire_plugin/Uredba%20o%20utvrdjivanju%20Plana%20namene%20radiofrekvencijskih%20opsega.pdf
 country SR: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
-	(5490 - 5710 @ 160), (27), DFS
+	(2400 - 2483.5 @ 40), (20)
+	(5150 - 5250 @ 80), (23), AUTO-BW
+	(5250 - 5350 @ 80), (23), DFS, AUTO-BW
+	(5470 - 5725 @ 160), (27), DFS
+	(5925 - 6425 @ 320), (23), NO-OUTDOOR
 
 # Source:
 # https://www.siget.gob.sv/actualizacion-de-cuadro-nacional-de-atribucion-de-frecuencias-t-0408-2023/
-- 
2.25.1


