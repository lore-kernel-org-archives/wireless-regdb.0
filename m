Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE4AFCCF9E5
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 Oct 2025 02:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BDPjYGcXz413BMEtPr/eFLPA6/i78BGY36YiaTonr58=; b=hLjAqJkme6lL46bLkGvXlcsm4h
	Lny7iTZ7CBgesA9vXJ2WSgj7Z2Hw8u/bi472rvKBCMR6RgQPPrzT3+QnrHGwx3ZRTafCfl6tcYofC
	ExWFynTB8sSkLYKBtkT+JnUeK9HiCO00J6xTGbnA/Iuyk8aG/s2AfBXLmuEhqjuQ3FFIfYHwpO8VS
	7mSk9GSNzkieGttW8Z0BYZ3aXiN+5tL0MxpKzfZFA46/fK3v1Uzn1mx57NqfshBE2k+EfSpZY49En
	Vu/gjdkGHIXLmjra0YiJ2NdEBVjI5hzZWvvLGzB1QR4sGrA4IFjeXWhl2cF1IGSUg7AQ6nQ4NhdPA
	MjfIGSPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDZ96-0000000F6kl-2xDC;
	Tue, 28 Oct 2025 02:09:12 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDZ94-0000000F6kA-0Rq3
	for wireless-regdb@lists.infradead.org;
	Tue, 28 Oct 2025 02:09:11 +0000
Received: by mail-pg1-x535.google.com with SMTP id 41be03b00d2f7-b47174b335bso500563a12.2
        for <wireless-regdb@lists.infradead.org>; Mon, 27 Oct 2025 19:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndoo.sg; s=google; t=1761617349; x=1762222149; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BDPjYGcXz413BMEtPr/eFLPA6/i78BGY36YiaTonr58=;
        b=K+MiI/TojlbQr/kgaUba6jZagLDpy+ptVkSU6bUX3xtafW/EwrbFe5zLESqtbbFCTO
         FW/xrc4Q5uxM7oGgmPZThew67rzbIGO7+5X/vO7DwQjSadIbp7vmWV3dNNsvyDvspkzn
         FoJ42FLuZ20DDimj8VIgk1uwNEgGMYZ/wGvEo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761617349; x=1762222149;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BDPjYGcXz413BMEtPr/eFLPA6/i78BGY36YiaTonr58=;
        b=ujQozPsWoCd5pXJq64XRvSyTXFtrpiWliZip4ZvGfQeVyv/Ev9uYUjliHoXdOKRi0Y
         wx/5qp4b3YzJ0PEYevXx4MZ6llGWYVWR2ERjB9hNKuU9qpLYyHFvStZGstIc7r2EgD2/
         BxIiec0M8AwI/CLQQJpPgT/ZSLJ7SF2ZUCAQv3bHw104xttgZj/OwEhVa7CQwFR4lwKc
         /kAZS0bOUP1nb//XyhKc5ZS0vrjhDNoyKtY0qNJQyuiXPSwyj0w8UG7OwzqMNipTdWJ2
         y4xFvQoq3+K4WXm4TYKKyz0k8YbzFAoo3MmK3YbCC4Kaxts9S+jYRSzGAYRKSTOBZMWL
         SQ8A==
X-Gm-Message-State: AOJu0YzHycE8q6LEq+zGEzkADQH40Sy7kD2C8O4597iXqLTck4WEOtPi
	re8qGPDXinDX40AP/8SN1AWbGpLwn8OQb4WTlflUM0duZDzbGPi8Mln/AmvPoxiMG5vhm7dXX2b
	a1l0=
X-Gm-Gg: ASbGncvxcDqXhHIjHuK8sGjh3y+EbjKKLhx98q9o0boR1/+//MADAI4chE5KxM7v1FS
	v770HJfQRSyu7qmkwG2CCSNrz8u9R1b/A2hMrSNcrDcKPtNlaNbXxjAMpKykqj9KCjVe/ihNbUs
	RUXaUaYFxUui//7RzXzMxPQl4FtNmgavg708uJgGmiBFpcjKXvmIabWgMBPVpMDWOYfFJoGQf8v
	comTlIgGKuHLOQq9ku64qFpaY+O+nQnnSFluEivnSf2ilhOFyXrJBxznLDMz/vfQ/3yaaMlMmby
	NdA46hhhRynJmRXVzuLoChrNP5Fn21XOoMFoqpp2USeoLBNZ3EKagg2XS4W0ktHN4pdQ6Ov0dEP
	PAt/motJwtqc0GPnGnALTgQV1dnxmGQbFZjMVqkddtoluz50EzDhpr/VfBrfyLbJw8M+/Gkypeb
	DONszq7OKh2gYi+nlVieHsVXidR/kehQqx/SBZxkBHagsvncNbr6Twyn1fVNPed0IcwH/6lUxQB
	DKT5g==
X-Google-Smtp-Source: AGHT+IEESyFigmifFi+Rj8ugy24JBYOUq7NzGTqrrb9m5CTGP8BtwuDdoO+2b5FtujpZEayf74JllA==
X-Received: by 2002:a05:6a00:39a6:b0:7a2:6f23:91e1 with SMTP id d2e1a72fcca58-7a441b79347mr1164507b3a.1.1761617348773;
        Mon, 27 Oct 2025 19:09:08 -0700 (PDT)
Received: from localhost.localdomain ([121.120.74.142])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a414068cdcsm9865142b3a.47.2025.10.27.19.09.07
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 27 Oct 2025 19:09:08 -0700 (PDT)
From: Andrew Yong <me@ndoo.sg>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org,
	Andrew Yong <me@ndoo.sg>
Subject: [PATCH] wireless-regdb: Update regulatory info for Malaysia (MY) for 2024
Date: Tue, 28 Oct 2025 10:09:01 +0800
Message-ID: <20251028020901.44906-1-me@ndoo.sg>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_190910_192795_4796453A 
X-CRM114-Status: UNSURE (   8.39  )
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

Malaysia Communications and Multimedia Commission announced CLASS ASSIGNMENT NO. 1 OF 2024[1], with the following changes to wireless SRD frequency class assignment(s):

5925-6425 MHz EIRP has increased from 2022 assignment[2] of 200 mW, to 250 mW; refer to page 10.
5150-5250 MHz EIRP of 1 W has changed from 2022 assignment[2] of indoor & outdoor, to indoor-only at 1 W; refer to page 20.
5250-5350 MHz EIRP of 1 W has changed from 2022 assignment[2] of indoor & outdoor, to indoor-only at 1 W; refer to page 20.

Update limits of existing entries accordingly.

[1] https://www.mcmc.gov.my/skmmgovmy/media/General/pdf2/Class-Assignment-No-1-of-2024.pdf
[2] https://www.mcmc.gov.my/skmmgovmy/media/General/CA-No-1-of-2022_-signed_19012022.pdf

Signed-off-by: Andrew Yong <me@ndoo.sg>
---
 db.txt | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 1d17271..a65910a 100644
--- a/db.txt
+++ b/db.txt
@@ -1450,14 +1450,14 @@ country MX: DFS-FCC
 	(5925 - 6425 @ 320), (12), NO-OUTDOOR
 
 # Source:
-# https://www.mcmc.gov.my/skmmgovmy/media/General/CA-No-1-of-2022_-signed_19012022.pdf
+# https://www.mcmc.gov.my/skmmgovmy/media/General/pdf2/Class-Assignment-No-1-of-2024.pdf
 country MY: DFS-FCC
 	(2402 - 2482 @ 40), (500 mW)
-	(5170 - 5250 @ 80), (1000 mW), AUTO-BW
-	(5250 - 5330 @ 80), (1000 mW), DFS, AUTO-BW
+	(5170 - 5250 @ 80), (1000 mW), AUTO-BW, NO-OUTDOOR
+	(5250 - 5330 @ 80), (1000 mW), DFS, AUTO-BW, NO-OUTDOOR
 	(5490 - 5650 @ 160), (1000 mW), DFS
 	(5735 - 5835 @ 80), (1000 mW)
-	(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
+	(5925 - 6425 @ 320), (250 mW), NO-OUTDOOR
 
 # Source:
 # https://www.cran.na/yglilidy/2023/04/GG-8060-dated-3-April-2023.pdf
-- 
2.50.1 (Apple Git-155)


