Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 470A4F3ED5C
	for <wireless-regdb@archiver.kernel.org>; Sat, 11 Apr 2026 22:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E+Sv2UQ3YUpGVp+eQz19LAg/WgPGXdrGw9ZUPqToKF0=; b=Cetwx3zYAM8ywg36VefXviZfWz
	ari8+vyPGeyYj1snu5jqaJDtTP18310RsQ149B8EEankvJE1EkkapbdZfWOR7Yo0xJlgOHWxfynji
	+iry4ENlB0MQVZWH72Z6pBLEV9hy06hWy5Cksig1MRiYHSEL8+dCPhtqmbSn8qj4/+Fitl4/yhsbn
	tNk9anOM22rKOBFFiWz6EzacvHzyiDzvU9Vqkx1GOh4sPRb7yr5NYA3IpnJituIVefHNbTFzvw9c5
	j2AC031OKWrUAix2uxxkxjEgMJG6rcXP4A9nnnuXnz1cm1cQhlbXCVPlZeHzVWYcvssYPTDt0Y1k9
	fg81R3PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBgic-0000000Dq1b-4Bb4;
	Sat, 11 Apr 2026 22:22:23 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBgiY-0000000Dpy8-1UU7
	for wireless-regdb@lists.infradead.org;
	Sat, 11 Apr 2026 22:22:22 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-488b8efed61so29299685e9.1
        for <wireless-regdb@lists.infradead.org>; Sat, 11 Apr 2026 15:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775946136; x=1776550936; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E+Sv2UQ3YUpGVp+eQz19LAg/WgPGXdrGw9ZUPqToKF0=;
        b=pTNR/WsWorDx+GKCssQT0zIUDqoYnbbtCKrdfYh600SvOfBUNxOKy8KvmzOpUtMwvr
         Ch1ZyWZSUBhAmorBxXToiWtfGvgz5NGK663ycP5e3QXR582Dn2ako7DW2B47BDxTGjFB
         SVfDxWkw/GIIRwzzbsAI8etVCJopsgkOLA/MOCserGfsr+fbMoHfzOpLdnvn2GkiRxy7
         CHmegK0NfJHiN8IS8A8/7c+AI8EmWSpOhZXrdphq54EceLaFj2lDxS9+8gAotFrskdqS
         wR1fzbWgLtFCFxipSvVPTpppRNvEQ/sJv19EnuVlSDBlYKHcpIugGy8szHZx0dGteAts
         5HJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775946136; x=1776550936;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=E+Sv2UQ3YUpGVp+eQz19LAg/WgPGXdrGw9ZUPqToKF0=;
        b=p1yAa0WNarTHZMsTg2Dm5++JuG+kfmq/zMBfLoaDLy1W00eEFuMXp5xXYzi/L6qXGH
         mWSXzqvw+FDYI9k+9IsiWp26NBBpPcYo0fgRXzno0R3huhuAFw8ZwLQCZYRP6oW5JILn
         4fghCOA68ZxbewSQmtkGS4cAZ8ygFtNC3AJ7YPK0HDuHb2NNVrXB93eMJFdzQSipzhjK
         EtX5XLl8g4XpcFV1YgV0pwduFjG8cLsGUHFvJG3bVDCDzzbiBf1kxAB3SXj+KMVXkATe
         OnYvO2afRO8hxM8SbWselpncvU+p2EFMkmSMjq3F1CwQSJrqp8Vytac85wrnYqXCTqY2
         99cg==
X-Gm-Message-State: AOJu0YzxSYX3Uzgm6qjFPkPm7c5uEt1rdF5uxB5WPDdFMAFjtvzWSDiO
	QJ0lrcwz/Ahx5uSUs7qUHE1FdQ1JcGziR9tZitVz8r/O7IzFFOmCobb5nrtWegUx
X-Gm-Gg: AeBDies4Rq+wZ0mzqznWp3etGfOgTnTQGtZAAYhzBU/aLdYoZEwN+O2GcojkN16r3UZ
	yaZcbZXNGmmSszaO/+64LZLeaoEOX2to2DIcy9+g1nmqw9NCCs4Hx6WX6XGrODa+KF9GG77T4GR
	osp9I/VfzVPVNcP5iOm9Nk0BqLwaJ29mx+Qy/Jfx4jVGYU0YwyhuRTGpMltjYbiBv2FJUGjob8k
	19zrWoryZszKGxVOKKGVmza6WVQxy0rdwFKH6iO4vfwJkdqcLApOTCFJFy5dHXIpIhfmrevgq5d
	ake9AgCy7ZrMm+/h/ZtaU92hbJxcHZlz+P0IE3UKPJVAouxJcQE2XRkMuLMeBd/0JXcTUamnbz6
	brHm6G/5wixCoQyYNRx24xr6PMBLirBTzK8ZXQH9AtkkNp/uEoOnwKCIVzqJ40xGmDMWGEEdEsZ
	7CDlX5A0djMkL9NSFLQRFRjf5UDA==
X-Received: by 2002:a05:600d:a:b0:485:3428:774c with SMTP id 5b1f17b1804b1-488d682bb48mr80970465e9.4.1775946136280;
        Sat, 11 Apr 2026 15:22:16 -0700 (PDT)
Received: from bazzite ([102.128.175.252])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488d689110asm56935965e9.35.2026.04.11.15.22.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Apr 2026 15:22:14 -0700 (PDT)
From: Louis Kotze <loukot@gmail.com>
To: wireless-regdb@lists.infradead.org
Cc: wens@kernel.org,
	Louis Kotze <loukot@gmail.com>
Subject: [PATCH 4/5] wireless-regdb: Remove incorrect DFS flags for Togo (TG)
Date: Sun, 12 Apr 2026 00:21:54 +0200
Message-ID: <20260411222155.299441-5-loukot@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260411222155.299441-1-loukot@gmail.com>
References: <20260411222155.299441-1-loukot@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260411_152218_402411_71F4C0A4 
X-CRM114-Status: UNSURE (   8.48  )
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

Commit aad0c26 (2024-07-19) added DFS flags to all bands for Togo,
including 2.4 GHz, 6 GHz, and 60 GHz. DFS is only applicable to
5 GHz bands where radar avoidance is required.

The source regulation (ARCEP Decision N 226/ARCEP/DG/22) does not
require DFS on 2.4 GHz, 6 GHz, or 60 GHz. Remove the incorrect
DFS flags from these bands while keeping DFS on the 5 GHz entries
where it is correct.

Reference:
  ARCEP Decision N 226/ARCEP/DG/22
Signed-off-by: Louis Kotze <loukot@gmail.com>
---
 db.txt | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 777d323..15b80ee 100644
--- a/db.txt
+++ b/db.txt
@@ -1945,11 +1945,11 @@ country TD: DFS-ETSI
 # Source:
 # https://arcep.tg/wp-content/uploads/2022/12/Decision-226-22-Determinant-les-categories-et-conditions-techniques-dexploitation-des-appareils-de-faible-puissance-et-de-faible-portee.pdf
 country TG: DFS-ETSI
-	(2400 - 2483.5 @ 40), (100 mW), DFS
+	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5350 @ 80), (20), DFS
 	(5470 - 5850 @ 160), (27), DFS
-	(5925 - 6425 @ 320), (23), DFS, NO-OUTDOOR
-	(57000 - 66000 @2160), (40), DFS
+	(5925 - 6425 @ 320), (23), NO-OUTDOOR
+	(57000 - 66000 @ 2160), (40)
 
 # Source:
 # https://ratchakitcha.soc.go.th/documents/140D100S0000000004000.pdf
-- 
2.53.0


