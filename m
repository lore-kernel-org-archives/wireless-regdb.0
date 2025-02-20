Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E714C3DA4A
	for <wireless-regdb@archiver.kernel.org>; Thu, 20 Feb 2025 00:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wT8PuNhIQOxs+vvKcgiaSZipcAIpw5GCWJUnkxFYnqg=; b=C1RlikdA3igKZYC9+Fsy7Q7+7B
	R/cMKL1BnQ72AxeAnfE/0HW4FtvnJHiz9dyNVLF28yFxFjybtVEv69m+uwkuPoQSkdILvjWE+v3qI
	FjmzdxDFog9sTQOVdL9pJG1Pf89OmKky/7OirpGc6/rz+N2CuvewWHvsnBARWrvBtpNbI7mp2UQBC
	LIxoDr0gwHmfTA1HlEoEki3+hhJFH72y5TL92RBN87CGqUl09SATLUZnVs/LF2viszlOkcJTe3Y5l
	3NC37+VuGKcyDIa2Iry9VllCEPmzSQKrVMOhFEJ77uVKW9Sgi0EseS0ndEUYzKZvNG2ikcg0vUkK7
	xMjWodmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkuTl-0000000Fv7K-3bdL;
	Thu, 20 Feb 2025 00:31:49 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkuTj-0000000Fv5i-1S4E
	for wireless-regdb@lists.infradead.org;
	Thu, 20 Feb 2025 00:31:49 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-221057b6ac4so5169995ad.2
        for <wireless-regdb@lists.infradead.org>; Wed, 19 Feb 2025 16:31:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740011506; x=1740616306; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wT8PuNhIQOxs+vvKcgiaSZipcAIpw5GCWJUnkxFYnqg=;
        b=HYR6wsoDVa+8m6Ngp4ti6cYnsKsk/01EUZ9sbBiuOG3PXv7iPkN4MG9jgWETQ7MVGK
         +vLUGzF0PJzTvC0f/CIDHKBkV7x7UZ/o1j8zhjdKtNq9rWGfQ4xAuxSs+KM8Z0pFZHAg
         Iba8eritKbYRU/z6m2wya3rLN9GNJz5BXy4DVN7+unpAChhMw5BmjeRWHrzn/XFta2bi
         MXYN3+bKyIedXQBbR2iAOFpdRD0BJZ+pIOk6Hv95zLnCfmj9zEF/nPzoDwZbthaxKeaT
         7STlJSbuTrtdOsd1MM/TIV0Vk9W1fvMkGGJZ8hbTHdrw6w1xPycUsDqbzbkrYZjo+2Np
         3qwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740011506; x=1740616306;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wT8PuNhIQOxs+vvKcgiaSZipcAIpw5GCWJUnkxFYnqg=;
        b=eXqrHk2hMOf/YB3lwMVd4DX1B4aYChjTQklNUt2CnS7Gr4Mtxg/Tl9jXJqPNu4vkyt
         Qqx47ojuvI833/WBpCnUOY0a7Ce6MI+F4c0XDZHQaM/GDkMleF+yGNzX/wB/hPCXljeu
         Zv2YHllsgjh9HxvZaCg++T9xjCecO8FuNdMoA7tQAyQRi7J1SfOok/lEHSwHUVJVIFhv
         81aioOYs0VXtIPElf6vsxVjXEqZ1BFRm6R9q13n+inZr4UeCTIISW/Ygv5zQbUsJagQM
         y8TvdPnNFpXqIZbIw2upeT0FixoXxijWKgoxzvgTG/HhHxaj0E0f0BV13DdCxPJQbpb8
         aR2Q==
X-Forwarded-Encrypted: i=1; AJvYcCXwjBkV8g20AiWUZyuQ3PxX3qRMKe3uHTjBSoxv1Bv9Z8aPJILHeDasTOELeZia/08Yj0N3DPwn0vZSCny2PQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxT+JYy8WCkuRhdmF4DqPNNSBOZW872f0HyKYmjY1U94xs3cV/i
	ubDPEdrhkVUlm78sgQAA36CIzjHaCkzBNuGM5b++TKCk4eKdFbaklofy3WjC
X-Gm-Gg: ASbGncsGOo/gtYdO8PWUt7v0dU/Js2Ot+7DRiV3ufMQnxhHDCxNiHScLSHeTFfysEdG
	LMoO9OJvR4/PCGJgG9Cj33U11YUvFv3m82a4SfgAaFgvqBzVbqOvlMAMbuPwRpPX5kzUl8NrpEz
	l5q9lM32G7AQ/SqFsUGQWbRxrtoYv/ksvla6pCF5B+q4O0A9AKrBoKFubvkf+8ddE7sZ3gUggPR
	2EEDqZBmoQb2qk5bdQY8fj5VxLgSmaKH26VfB2NXZ1S6n7R7u2nK6p20I/jgDb+9Zv2dtJ6LQhw
	DJ0QaHLtz1bRO4bX6KQbcBJAEhQUyZ8yqtl3RVdHyyMNdpAaH7sdDodTKQ==
X-Google-Smtp-Source: AGHT+IFg09w2cWtPw9wf7KJ0gZEvQh/RK6q4pivGWj+L8RQ2RRqhBEp0aJE/LztbBbjrL/3yriZuSA==
X-Received: by 2002:a17:903:1c5:b0:220:f509:686a with SMTP id d9443c01a7336-2210407b939mr350891405ad.29.1740011506289;
        Wed, 19 Feb 2025 16:31:46 -0800 (PST)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-220d556d6d2sm108857895ad.177.2025.02.19.16.31.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 16:31:45 -0800 (PST)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org,
	johannes@sipsolutions.net,
	mobin@mobintestserver.ir
Subject: [PATCH v4 2/3] wireless-regdb: Update regulatory rules for Iran (IR) on both 2.4 and 5Ghz for 2021
Date: Thu, 20 Feb 2025 08:31:02 +0800
Message-Id: <20250220003103.4484-2-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250220003103.4484-1-pkshih@gmail.com>
References: <20250220003103.4484-1-pkshih@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_163147_385554_923ADFED 
X-CRM114-Status: GOOD (  11.72  )
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

Decision No. 4004-01DEC-CRA, 8th Edition - February 2021,
Radiocommunications and Regulatory Organization.
General radio license for the use of parts of the frequency bands
2400-2483.5 MHz, 5150-5250 MHz, 5350-5250 MHz, 5470-5725 MHz, and
5850-5725 MHz in radio access networks. [1]

* 2400 - 2483.5
  - indoor
    * 100 mW e.i.r.p
    * 10dBm in every 1Mhz
  - outdoor
    * 4000 mW e.i.r.p
  - Intersection of indoor and outdoor. Indoor values are adopted.
* 5150 - 5250
  - indoor & outdoor
    * 200 mW e.i.r.p
    * 10dBm/MHz per 1MHz bandwidth or -6dBm/25kHz per 25kHz bandwidth
* 5250 - 5350
  - indoor
    * 200 mW e.i.r.p
    * 10dBm/MHz per 1MHz bandwidth
  - outdoor
    * 1000 mW e.i.r.p
    * 17dBm/MHz per 1MHz bandwidth
    * DFS
  - For outdoor usage, TPC is required, and there is no provision for
    3 dB power reduction if TPC is not implemented. Mark this band
    as indoor-only.
* 5470 - 5725
  - 1000 mW e.i.r.p
  - 17dBm/MHz per 1MHz bandwidth
  - DFS
  - If TPC is not used, the maximum radiated e.i.r.p. must be reduced
    by 3dB.
  - Outdoor use only
* 5725 - 5850
  - 4000 mW e.i.r.p
  - 36dBm in every 500 kHz
  - DFS
  - Outdoor use only
  - P2P only
  - TPC is required without provision for no TPC. (Don't add this rule)

These information is from [4], Mobin Aydinfar shared the official link [1]
(inaccessible from outside of Iran), a mirror version [2] and translated
version [3].

[1] https://asnad.cra.ir/fa/Public/Documents/Details/73af8590-f065-eb11-968f-0050569b0899
[2] https://mobintestserver.ir/Iran-2.4Ghz-5Ghz-cra-official-doc.pdf
[3] https://mobintestserver.ir/Iran-2.4Ghz-5Ghz-cra-official-table.ods
[4] https://lore.kernel.org/linux-wireless/c9ccf5ba-c091-45c4-9283-970bfa4f1afe@mobintestserver.ir/T/#u

Reported-by: Mobin Aydinfar <mobin@mobintestserver.ir>
Closes: https://lore.kernel.org/linux-wireless/c9ccf5ba-c091-45c4-9283-970bfa4f1afe@mobintestserver.ir/T/#u
Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v4:
 - no change
v3:
  - correct release year 2021
  - add NO-INDOOR entry
v2:
  - add outdoor info to commit message as reference
  - add Reported-by and Closes tags
  - db.txt: mark 5250 - 5350 as NO-OUTDOOR
---
 db.txt | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index d56ad32d31c9..7fe673111f62 100644
--- a/db.txt
+++ b/db.txt
@@ -934,9 +934,13 @@ country IN:
 	(5470 - 5725 @ 160), (24), DFS
 	(5725 - 5875 @ 80), (30)
 
-country IR: DFS-JP
-	(2402 - 2482 @ 40), (20)
-	(5735 - 5835 @ 80), (30)
+# Source:
+# https://asnad.cra.ir/fa/Public/Documents/Details/73af8590-f065-eb11-968f-0050569b0899
+country IR: DFS-ETSI
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW)
+	(5250 - 5350 @ 80), (200 mW), DFS, NO-OUTDOOR
+	(5470 - 5725 @ 160), (27), DFS, NO-INDOOR
 
 # IS as part of CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
-- 
2.25.1


