Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CB53C021B1
	for <wireless-regdb@archiver.kernel.org>; Thu, 20 Feb 2025 00:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HzmAX8ik+1G+kMm2o8mIS74u1te8uRXDU0fxFrlfDlk=; b=YmSqCzVhaFeQhpF+T1h7U8qgYu
	3ukkLcWWRMSNzsTfqagLHwChH1A93Oir1dJhg3KSUbkLlsOBysOtmvm/oeCzDr47hi7piqJh+JgNp
	H9r/Ht7DCurWrtic+nirSvzhCSkALj1BWB2Fbjtjm4krG738R0ZEMGpdv2PiTYOlzL3ABhBGrDhfG
	tmQtuDwKIsd6WAbY7JXSRYaQwBEw59A5Jy8Wz8sdt8Lk1lq7FmLEjTtUzmC3cF0qHED7wjcSAXHSf
	oa5ETBKtIL7VazxuEt2PWLQm9X6WiswzJ/2Z2vqlji5IT77XdlJgwXLCjU8s6RpoGOXazs3AuWJAk
	/JxtJcng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkuTn-0000000Fv84-10VT;
	Thu, 20 Feb 2025 00:31:51 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkuTl-0000000Fv6n-03mB
	for wireless-regdb@lists.infradead.org;
	Thu, 20 Feb 2025 00:31:50 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-220d132f16dso5076935ad.0
        for <wireless-regdb@lists.infradead.org>; Wed, 19 Feb 2025 16:31:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740011508; x=1740616308; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HzmAX8ik+1G+kMm2o8mIS74u1te8uRXDU0fxFrlfDlk=;
        b=F3lHbTIzaoJvU7IR7CVtMB09wREZK2FGYFwoLLRf6YMiQWgojnmci4Kn5YgobPL8lJ
         IAWPg554XQqjcp8Px9oFaD7Dlz29XHtPTiNpRz3RGVxIDzd6rf7xKbTIgCIDjx0WX21p
         MnhX9uVs7ijTHGTjlja+gPy4zgJt72KDRhqVBAIjE0iqkMraNONfux7qGvHUbqOBRBgK
         +Thp3IySg7W7jyEVXBQU8zbSI3gCydQiLzHOiVMV5gVQqHcGTCYIpY7+ULvFjooCDeTF
         85MkR/y5L4xIz2kQ+TDQNxr+AyYA9jKkltcKub77aN+bJRiMCI9oiB8LUsIl9YVhxXfS
         X1ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740011508; x=1740616308;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HzmAX8ik+1G+kMm2o8mIS74u1te8uRXDU0fxFrlfDlk=;
        b=nm3xcY7yA/auWSiXis2GxtyFZm8Y4Yj8oIHYFLnglEIAsrBCWZsrYGbDk+Z9E1Tgkn
         16gicAb9vC2AXGIU9D7UJf3EOvAAhR8i53nDIv3twuhuKM+xxb5BV1E32wZ6M+/71X/F
         UEE2su95GsfrijdnnofAnCAoaXtJPKCodFfHHnB99iHux9EhuCO81c2zhC/gVshlE3vN
         nWB0apcA7BUhQPsdNG9KJaoE/eJklzhNASp3vYY11Q59PvN/fE9ZxXEluxK6LiCDLs+u
         yG6rJ7maZCdS4V5PERqzDgsNMrokO9S8baS2zicEWKS+/VK1Ou9pC8HKbyPVFpC1bFiY
         vLcA==
X-Forwarded-Encrypted: i=1; AJvYcCW6ZcUXvCDJvbgMgo/Zo5ZqmFwcsaS4AYv9NPkTO4XM1Z6+Fh5F06brhdZocYvFoVUfV34ipNtVACEWVRZdFA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyMNYhVvXlK9sl9BO2lY866OgyvT7RijvPY9Xj6eFEah62aYioS
	2wefpsRytl9loyMX3cNgez16WWfhlyYl+Jx+2gF7fAS8iPSe5CLz
X-Gm-Gg: ASbGncuhyLnOa+Ryrfme0rSBz55opnoGs/Qf6Gubf1513fQzTSnvE80BFGSEjv6olnT
	CARNYwkx0fDbSiqUtJSI+76culvibQgFz4BWh0jmiTMw5s49QhbH6nteGauWlPVSyJXN5alCuBa
	/vLpGfyGhS3CV7WTfVDoD+7vPDV2OCVSVJhsypIiuBb7Fx0YwzcfzK5tPOUmCItzCmoUdW0I/Ht
	URWTnFZW65FKM0sykObaSKnZBP5RCvStEIgPCj8naImDz9ckaYeipsVE9RTTqGr2V5Z/8B17ObF
	fPca40X1n8Zcx/NYNadcSga8HwBrv1KOhcZEUGU3w5ZEEj4zeCj8M3IUDQ==
X-Google-Smtp-Source: AGHT+IFjx7hGMEtKAEk3wJ39EjfPjXJxrMU2iJHvfF6o1JBlUZKuweeBtJMCdj4SqoMXi2CTSuLSmw==
X-Received: by 2002:a17:903:189:b0:215:a434:b6ad with SMTP id d9443c01a7336-221711a70a7mr87121155ad.33.1740011508038;
        Wed, 19 Feb 2025 16:31:48 -0800 (PST)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-220d556d6d2sm108857895ad.177.2025.02.19.16.31.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 16:31:47 -0800 (PST)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org,
	johannes@sipsolutions.net,
	mobin@mobintestserver.ir
Subject: [PATCH v4 3/3] wireless-regdb: Update frequency range with NO-INDOOR for Oman (OM)
Date: Thu, 20 Feb 2025 08:31:03 +0800
Message-Id: <20250220003103.4484-3-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250220003103.4484-1-pkshih@gmail.com>
References: <20250220003103.4484-1-pkshih@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_163149_055178_2A0F77E6 
X-CRM114-Status: UNSURE (   9.70  )
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

The commit f67f40d00919 ("wireless-regdb: Update regulatory info for Oman (OM)")
describes the range 5725-5850 MHz is outdoor use only, and currently we
can use NO-INDOOR flag. Add the entry accordingly.

* 5725-5850 MHz
  - 2 W max. mean EIRP
  - TPC: FWA systems operating in frequency band 5725-5850 MHz shall
         employ TPC with a range of at least 5 dB.
         (28 dBm Is adopted)
  - Outdoor use only
  - DFS

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v4:
 - no change
v3:
 - new introduction by v3
---
 db.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/db.txt b/db.txt
index 7fe673111f62..803f1bc5405f 100644
--- a/db.txt
+++ b/db.txt
@@ -1480,6 +1480,7 @@ country OM: DFS-ETSI
 	(5170 - 5250 @ 80), (200 mW), AUTO-BW
 	(5250 - 5350 @ 80), (20), DFS, AUTO-BW
 	(5470 - 5725 @ 160), (27), DFS
+	(5725 - 5850 @ 80), (28), DFS, NO-INDOOR
 	(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
 	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
 
-- 
2.25.1


