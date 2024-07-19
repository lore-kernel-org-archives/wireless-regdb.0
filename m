Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E8DAC3DA70
	for <wireless-regdb@archiver.kernel.org>; Fri, 19 Jul 2024 03:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uED11ED2mXfSTYiB2mIkzYnievN+mUuQM5Q9Hs4d9Ig=; b=b+HLNTquOFJhBzISoL7/IuFpBf
	9M3CyWk3nqEOUYOpSj4ffg3qPic5swwIM366KSnIgT/zkIraqUcTt7TWZOj60zY+798TXcH0zJ915
	v7pjl6XMm/v9Ke1RJbeb3cu4DcnBqCyP+qTIVtxTnpI9i0kbzEgJ3nDKCYeMkHGwEDy6YMXquRl03
	jCtbpT6h333APb1m97X/JEZ1TqgUQahWjWtkcPMgIE/EQLvKpyOFa+Suz6Cn0PKINWrcRI86skZf9
	sbQQLTgoZEQa7fpvtcqSv/+OxyHJtFhwRi7Uln6mQH3IXJ0EcCV7evgR5asar4vWEAYr7NsvuOwG+
	jDPXkaKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUeE1-00000001Pi7-3lhI;
	Fri, 19 Jul 2024 03:24:05 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUeDz-00000001PgW-1TGP
	for wireless-regdb@lists.infradead.org;
	Fri, 19 Jul 2024 03:24:05 +0000
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-70388567d24so742188a34.0
        for <wireless-regdb@lists.infradead.org>; Thu, 18 Jul 2024 20:24:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721359442; x=1721964242; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uED11ED2mXfSTYiB2mIkzYnievN+mUuQM5Q9Hs4d9Ig=;
        b=P0nkbg9lNgXwwyIWwYWi7DgCbO4vyKQzzSGCW4aWLxSqO9tiUArai7/KnnePckBOo+
         XdhpPnaqizuFexU+bDfjqvLmF3/zW/lAIcQRMzicyV47w1JZePEWKLSboZm0Dw4w8ASX
         bEkvNW/cnTeKffyOq1BM9sQhh8vaybqj4+ucP+0NYuSB+XBrjtVfADmeVkdsm5pDv3lv
         oyOTZpqRW65c9n9NGIZ5kqJgQD5pYUdGPuD2mvSAZn3MIFr6Vcic6dk9f91pjJqLoQk2
         +LXfE54TAAk0a2SnzMscKTawPY9MarlN80vUYv0GrMSVngrnrIPewjjJk/zh7gJT0sj5
         6KGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721359442; x=1721964242;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uED11ED2mXfSTYiB2mIkzYnievN+mUuQM5Q9Hs4d9Ig=;
        b=hJSctrhFpAIqBXvGK32NElLDJPu6Hydvhuf1SiVNakhx8d6WwmUoGOqc9hisFs88zA
         Z3bn2zmHBqvLm2RyxdGSp9B0CP3vFjngKPfD0yaMp+UKX7s3e15zJ3SCluUA2VQ4tFUW
         Bqn5nNxzoxuw1yhz4ebqSdcNBqcoTKhYPbonL80wfl1OZWhgu7TeB02wigr4/oSS2TZ9
         KSRo3w1k7OqeY2KyXi9H516Z5ogjuGUb/T1idCUvzlPuzMzx415ShQlF7bRNvk/I+k2W
         Jr83lYJQTs3hLhTtwoFLkZ97+lghXF104xek5Wywkp1Id/hGcq/oapvHIYONcwN1Nrcg
         ohjA==
X-Forwarded-Encrypted: i=1; AJvYcCV3cj9QhM5RtOVG/S4QXMDC86pCOs0MuuFLgJuHKvsj5F9TSduFT2W7R8s1dKTKVuN5FIOWgzHyotHJfb19fZ4kUtt3RYlvopOy9jKFTm12kx8i
X-Gm-Message-State: AOJu0YwMO1kfPG/7vmGeMIQ7RRhUAEjv87S/uNnk7avmMCiyt+8zQ5ZJ
	+23sNoSJM+aOIXUSdNDqNwCkCkRqer6fnAta/blMxgZ1TBQsXQOi
X-Google-Smtp-Source: AGHT+IFdnppI0qNAmgNyDpCeaslxUwIhUGr720uca48IwwAq15fBgGeHU+cB7k4Y+ANVHp7sNEKLbg==
X-Received: by 2002:a05:6830:4181:b0:704:4d7e:380f with SMTP id 46e09a7af769-708e3787096mr8726901a34.1.1721359442069;
        Thu, 18 Jul 2024 20:24:02 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-70cff59fd9csm279160b3a.173.2024.07.18.20.24.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jul 2024 20:24:01 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH v2 4/5] wireless-regdb: Update regulatory info for Togo (TG) for 2022
Date: Fri, 19 Jul 2024 11:23:25 +0800
Message-Id: <20240719032326.7353-4-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240719032326.7353-1-pkshih@gmail.com>
References: <20240719032326.7353-1-pkshih@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_202403_491464_933BE14F 
X-CRM114-Status: GOOD (  10.41  )
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
     (Reference [1] suggest this as -10 dBm/MHz, but this would be an error,
      becase PSD of LPI should not be lower than VLP.)
    * Use limited to indoor
  - VLP
    * EIRP 14 dBm (25 mW)
    * EIRP density -1 dBm/MHz
57-66 GHz
  - EIRP 40 dBm and 13 dBm/MHz density

[1] https://arcep.tg/wp-content/uploads/2022/12/Decision-226-22-Determinant-les-categories-et-conditions-techniques-dexploitation-des-appareils-de-faible-puissance-et-de-faible-portee.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v2:
  - in commit message, describe typo that 5925-6425 LPI should be EIRP
    density 10 dBm/MHz. Otherwise, PSD for LPI is lower than VLP.
  - add DFS for all bands
  - not split 5150 - 5350 band, and set bandwidth to 80 MHz
  - set bandwidth 160 MHz for 5470 - 5850
---
 db.txt | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 31a051f242e5..b5e40e038d77 100644
--- a/db.txt
+++ b/db.txt
@@ -1763,11 +1763,14 @@ country TD: DFS-ETSI
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
 
+# Source:
+# https://arcep.tg/wp-content/uploads/2022/12/Decision-226-22-Determinant-les-categories-et-conditions-techniques-dexploitation-des-appareils-de-faible-puissance-et-de-faible-portee.pdf
 country TG: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (20)
-	(5250 - 5330 @ 40), (20), DFS
-	(5490 - 5710 @ 40), (27), DFS
+	(2400 - 2483.5 @ 40), (100 mW), DFS
+	(5150 - 5350 @ 80), (20), DFS
+	(5470 - 5850 @ 160), (27), DFS
+	(5925 - 6425 @ 320), (23), DFS, NO-OUTDOOR
+	(57000 - 66000 @2160), (40), DFS
 
 # Source:
 # https://ratchakitcha.soc.go.th/documents/140D100S0000000004000.pdf
-- 
2.25.1


