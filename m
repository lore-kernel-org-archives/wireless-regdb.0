Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E491F3ED6A
	for <wireless-regdb@archiver.kernel.org>; Sat, 11 Apr 2026 22:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GVme0eSjTTa8jA+I+AVn/6toeN8/RsRFS54Lu+cJgRk=; b=rONX5t9Xv2FDzdtS5LDFkHZrCv
	Bk11/NCdSXfa1DZSuDf9zWICI71HgWE6/Vc2m2BjJm91fm51juc2oqkKs9UXOHRXSRyKLPMqzqtc+
	4DyHRsz7wYJOQHNGMINlWnJh0bBlj7g3K3rFDysAdKOjp8pAbmeGRw2y9yjH/hKhDt1J0Q2hw1UHc
	47uUu7uIep6GqJIxlCT5fME7hvMRK8NmS/OrKi5V2nHdyOR4GogL+i/UrDuO1+1YHMa4ZOprtt2IL
	SudKPKBmTkF91KRxQbTfqwMbMBLHH9/EVMYSU1tyHkcbg5AvWsir8T9KLNPPqeVtvDtMCTvy3O5H7
	MRF83qCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBgiS-0000000DpwV-0KNn;
	Sat, 11 Apr 2026 22:22:12 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBgiQ-0000000Dpvw-1TLD
	for wireless-regdb@lists.infradead.org;
	Sat, 11 Apr 2026 22:22:11 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-488b8efed61so29299275e9.1
        for <wireless-regdb@lists.infradead.org>; Sat, 11 Apr 2026 15:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775946128; x=1776550928; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GVme0eSjTTa8jA+I+AVn/6toeN8/RsRFS54Lu+cJgRk=;
        b=ruoEfMAHglzGlJ0YnVz5CM4z3bkoOxbZQOBRU3GXZmXQdRWTuLx94bfmYhYD0dmQc1
         PXQ413EQ3JfsyOsi2DZQsY9nKorXqCo2HA0GWL82mptFUawYUjzteQwK7/ibzvU5uhXx
         7Gk64dyJv4CIZsXLpHdubNlvtIgT/+3KGp1l5QQDckiVUWqSTs6eFb9pafC2Ijiysr49
         SG5wfUDWRJhyZMcuNDo6OvIDofgBfElYr2TjPTst235f63SU/CFvnWO8coGNFe87NIdg
         1ClYNj4+KkBDfKy7yLqivv18WYMs0Bkm/XlPCXR1O+PM2d4+M5Dl88seZJBxvia7DDNE
         Zd9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775946128; x=1776550928;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GVme0eSjTTa8jA+I+AVn/6toeN8/RsRFS54Lu+cJgRk=;
        b=UV1tOm+sVtx6tZNVk2swGfP4nVwdspviJIQyvgCHOMkOb6Fa74lr0LGylFoV2iLovF
         VSyY1Vm2BHT7SB1uXu87JRlnvp4RAWOU2qhOI7F5z2uiASpYKA/tV+Zo6gOYGLGN1zLq
         CDeXi4EnzfiPfJnTFuEUZADktanp5N3aDHgrTS7rn9UVFLZ0ye2/ByTVHHxiVDvCBwLc
         eSoW0MKHkL2yjwVvMR2jc1w5jqbee596bLVrzgtxsmDfKylq28WlMNHzUOPMl5VQJnKO
         Fpz+HvnDMmDJf7gyuRxNLAXm2DSFkbsVGcbK0lCTGYRqw5sEZNHw1UQRN1DK5GEFIAeL
         Ks4w==
X-Gm-Message-State: AOJu0Yy3SpLMe7qw/lCit68JWLlPZC7R7GaFV8CPReShvZx2vUDCKZTf
	RXsfjAM0MnKQNtXbB/sRo8r9z3RgtI6D7igTVKKJmccOSlXD+TCLB7JWqhVQlMHn
X-Gm-Gg: AeBDiesBNXgk6iJzyTJk7FzE8OSnH8E9fQrI52hO3XaX/jnwHK3oDmbOmmXLCxKudHu
	tzNxhz0Qzq/i+TVLGiORZyYT4Ge5367SviKANmGhTuNTpvuiK8jtGP5fjcEB9aFMmsQ2hWMwiFN
	Ehaq01LvdUEoce3iIt+L92Cwmel94aPTD+NYGOmkDJWg+VMJ/sHjKlLRpf4t2UIjmW5kOQuQNTG
	db0kO2zlbY4yKnhG2vckU8TxpOHfwojO+h6iy2RZH7cwWBXAuVobO7SHAc8xYB5bXbSOWt69hK5
	hXe5nEAPzCT3PV20mhcZ50p2ZsqS/ZcB1V+aXZ9nbpRj7vetr1D2u3EAzsH3xdD8pBdu7aNVnxE
	gkUljFFIJdmINgsELl3X/0tpOdwGSRxnJSwCxj+ZcoOtqeOtrRNK26gczYadLwvCaAS/ek/lsKs
	4R2b0fAZfPHXhc4/w=
X-Received: by 2002:a05:600c:154d:b0:485:3989:b3e4 with SMTP id 5b1f17b1804b1-488d685b6ddmr101346735e9.6.1775946127470;
        Sat, 11 Apr 2026 15:22:07 -0700 (PDT)
Received: from bazzite ([102.128.175.252])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488d689110asm56935965e9.35.2026.04.11.15.22.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Apr 2026 15:22:07 -0700 (PDT)
From: Louis Kotze <loukot@gmail.com>
To: wireless-regdb@lists.infradead.org
Cc: wens@kernel.org,
	Louis Kotze <loukot@gmail.com>
Subject: [PATCH 0/5] wireless-regdb: Fix incorrect entries found during comprehensive audit
Date: Sun, 12 Apr 2026 00:21:50 +0200
Message-ID: <20260411222155.299441-1-loukot@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260411_152210_520404_5FAA9B63 
X-CRM114-Status: UNSURE (   6.25  )
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

Following the South Africa (ZA) 6 GHz LPI fix submitted earlier, I
audited all 182 countries in wireless-regdb across all WiFi bands
(2.4 GHz, 5 GHz, 6 GHz, and 60 GHz), cross-referencing against
official regulatory documents.

This series fixes six incorrect entries found during the audit:

Patches 1-3: 6 GHz power/bandwidth corrections
  - HK: VLP (14 dBm) → LPI (24 dBm), freq 5925→5945, add NO-OUTDOOR
  - KR: 15 dBm/160 MHz → 27 dBm/320 MHz per MSIT 2026-9
  - RU: 100 mW → 200 mW per GKRCH Decision 22-65

Patch 4: DFS flag cleanup
  - TG: Remove DFS from 2.4 GHz, 6 GHz, and 60 GHz (only valid on 5 GHz)

Patch 5: Unit typo fix
  - UA: 60 GHz changed from (40 mW) back to (40) dBm — accidental
    mW suffix added in commit 90e83fc

Each patch includes the specific regulatory citation used for
verification.

Louis Kotze (5):
  wireless-regdb: Update 6 GHz rules for Hong Kong (HK)
  wireless-regdb: Update 6 GHz rules for South Korea (KR)
  wireless-regdb: Fix 6 GHz LPI power for Russia (RU)
  wireless-regdb: Remove incorrect DFS flags for Togo (TG)
  wireless-regdb: Fix 60 GHz power unit for Ukraine (UA)

 db.txt | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

-- 
2.53.0


