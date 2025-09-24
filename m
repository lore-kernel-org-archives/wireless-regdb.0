Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC5A1CAC5A5
	for <wireless-regdb@archiver.kernel.org>; Wed, 24 Sep 2025 02:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aYCq9wflhhzhnDUF8WvUDHhqgzzzk+PVslZPJmJZp6s=; b=3w2Q1rAb3TR8W14tkbr4dGpauR
	uDdYlkyrP5J50ChqJF3s6nLLrTRwoHIMvsMIDLxodqA+sJzyQXxZy71lyrU0xLD/Dv26jfog7oZDF
	coW82muXpp4glalFvUNM1L/Ll1s87NlyPI9+RPZxFAbgXJXG3WXb1U2W6Qk93prczjPW/PdGUJlIy
	qv9h96jxBPVsCRx8VobeOY8vD93hu/STeOd1bOT93i1Nx2yTjMHw0TvuZNNcMpdXcecuzsvW2HDQv
	9keAYpE1Omo7GSyMCbNoAkL1o14tprzauDyjeQZhUUzqv4O0gelckwT8eBTxNfOY9avsqJvKqcAAa
	ibhVUoeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1F96-0000000FMHz-0eIR;
	Wed, 24 Sep 2025 02:22:16 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1F92-0000000FMHH-19Mp
	for wireless-regdb@lists.infradead.org;
	Wed, 24 Sep 2025 02:22:15 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-267fac63459so58986455ad.1
        for <wireless-regdb@lists.infradead.org>; Tue, 23 Sep 2025 19:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758680531; x=1759285331; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aYCq9wflhhzhnDUF8WvUDHhqgzzzk+PVslZPJmJZp6s=;
        b=cYxaInSAe7/gichRYD4Uvqq9l6WCo3noAjdgxMr6udsY/vQYkDiDtf0WeEaIAFqisW
         Qp7OEYeFqbf83sNlijs0Ok9ugcm5Oz1rzvDmjPS/ZC/RfMgnt8D+FF0+6wKuX+M4ka6x
         fl3nZb8FWC/ipKqVJZROQSdxsEOMf4as+rjfj+3d30lgRAOywK3ikf8R7BEpNVARkOnJ
         x2BfLzm2g2XgzLLM7/PQfpVOs8xW9xcbd+Giubn3soXxFDkM82JEQgfxAetOK5KgGYoU
         0qoB+MF6O1cYD6/QjPTUjxDpPJ0qFQQFnBDiOympFvyK3iYSP/EAihQILScTMI2yKFJ0
         w6/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758680531; x=1759285331;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aYCq9wflhhzhnDUF8WvUDHhqgzzzk+PVslZPJmJZp6s=;
        b=iEIGL75E6VxLhzcUZG3TlUUyWSQtpOoiGp3C9z2SE1sjNUHH3jPtY4nacsU7f+Fkw6
         q9h6YteZTgGW2nunCdWXV6z/pnfIr9Utwjp/+lKZHKgsGjp1UECLGw2Dzm4xlJRJKIFX
         CyBBQVEEh6F/HsBhGZEQOUe74a0uP6zm10FIHqg9ADqOrWWqVGyrjaVsVfE1cvGvYo9i
         ITzm8abKh3ZfgczGtylTClZaz+P5JHBrOV260VaMbmEiIcuu2Xrxij7Og07uICgTUDLQ
         bc/kpdeduTKgnmYHzWRwoun0uWMeIBlm0wk9vovDsGGuPA+xZZKGdaPi9ZvqBLnbopms
         FO3g==
X-Forwarded-Encrypted: i=1; AJvYcCWvG3MRPCI0PypgElJgFvgk2MmgrbO4VsIgNecRE9MF3G3GfZ23Qt95t9KnUf8VX5jwaFciNa2fUp4IVuYHNQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxgLpq/pOcci6dHtc/ZHPTuiMZLFuo4Qb9NBs/n2Aoi3KuGaXLi
	4LbcEivGgZnT0qUJYbKLRVX3g+lIZOOvM6nsMmcsJFw1SF4PReWm8LqK
X-Gm-Gg: ASbGnctjMELKCNJXxnVXy4QrTT7XNn7BuymiJi1OeQX3jwl+1NQANG7SplHCLZcHzmg
	2JcCWagbTs0lB1yyQmDysJCB5DSW5yT50TBh8VNZt5E/5W3QnajI81sRKPLouY4Atsb3fhtQPg4
	IqkbZADzML/gbMIfAsNI6x742EMUK/DOFPpACUFyCQ+01desNoHTAPE08LPvOz0BmWR0/wJ6n5M
	PPe0VeuH5EQ9XAsGg5UzZrFxtbH3vHUhw4xIff/dtPxYU07X9yuz/2VR5+1RKLzrm3I+AFW4+i6
	HsuWvAKHI7CH78ladi+UNMGW4EV6AMTlFg/REDrgV5tLbfr8KMtfdh7Ellwu/xyEPva2s9R8u6H
	4RgmJvRySlUbW6ccKdV3gN5jkJ3GhKfi+zSo/utiNthy40eDc43IzwhYWyTxhsaOc
X-Google-Smtp-Source: AGHT+IElyxzh/2QhT5a1mWe21RdR37oS2gsLVOzYlLQhwv/S9x2JBSVjhYgKNEL59+NuHo6aRuZPAA==
X-Received: by 2002:a17:902:e946:b0:25c:d4b6:f117 with SMTP id d9443c01a7336-27cc580e150mr53616165ad.35.1758680530876;
        Tue, 23 Sep 2025 19:22:10 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2698019665esm175523975ad.62.2025.09.23.19.22.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 19:22:10 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH] wireless-regdb: Update regulatory info including bandwidth for Trinidad and Tobago (TT) for 2025
Date: Wed, 24 Sep 2025 10:21:56 +0800
Message-Id: <20250924022156.8435-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_192212_314056_242E314F 
X-CRM114-Status: UNSURE (   9.11  )
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

The Telecommunications Authority of Trinidad and Tobago [1] provides
Schedule of Devices Eligible for Use under a Class Licence [2]. The
type 1 (End-user devices or customer premise equipment) with Schedule B.1
and B.2 shows

 - 2400 - 2483.5 MHz
   * 30 dBm
 - 5150 - 5250 MHz
   * 24 dBm
 - 5250 - 5350 MHz
   * 24 dBm
 - 5470 - 5725 MHz
   * 24 dBm
   * extend 5 MHz to 5730 MHz for channel 144
 - 5725 - 5850 MHz
   * 30 dBm
 - 5925 - 6425 MHz
   * 24 dBm

[1] https://tatt.org.tt/licensing/class-license/
[2] https://tatt.org.tt/wp-content/uploads/2025/07/Schedule-B_Schedule-of-Devices-Eligible-for-Use-under-a-Class-Licence-25th-July-2025.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
Hints to find these entries: by searching "Wi-Fi" with type 1 in [2].
---
 db.txt | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 6e1ad30222a4..90ffa4e0d5d7 100644
--- a/db.txt
+++ b/db.txt
@@ -1946,12 +1946,15 @@ country TR: DFS-ETSI
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
+# Source:
+# https://tatt.org.tt/wp-content/uploads/2025/07/Schedule-B_Schedule-of-Devices-Eligible-for-Use-under-a-Class-Licence-25th-July-2025.pdf
 country TT: DFS-FCC
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (17), AUTO-BW
-	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
-	(5490 - 5730 @ 160), (24), DFS
-	(5735 - 5835 @ 80), (30)
+	(2400 - 2483.5 @ 40), (30)
+	(5150 - 5250 @ 80), (24), AUTO-BW
+	(5250 - 5350 @ 80), (24), DFS, AUTO-BW
+	(5470 - 5730 @ 160), (24), DFS
+	(5730 - 5850 @ 80), (30)
+	(5925 - 6425 @ 320), (24)
 
 # Source:
 # Table of Frequency Allocations of Republic of China (Taiwan) / Feb 2017:
-- 
2.25.1


