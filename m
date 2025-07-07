Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6459BC83F0D
	for <wireless-regdb@archiver.kernel.org>; Mon,  7 Jul 2025 02:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vLFT9YUi2kgk4IHIMXEm1tnwQfNF6uLUtXcFAl9ufZ4=; b=ZO1VgQRbmIycbFYqH3/uioLzVT
	GINMC4MeC9Qq5wdtkNDpr8Ir2S5/oSV9ETgvQugRd7zQk3koxoH3gn2TbywTM9Bp/KfJukB3ZEIlO
	ojhA8XDngTTEdAfY9k0eZlXEI7c6HioRbppG/RNNEwoGrbOFfC/sawgd1MHijCSfgiY9n3R63/1pA
	SBNwzPfE906vjkqptOkjRRJHgc4vvFUkuaRdpzpaxaGFvX0wDr4PFB3zw4kKytdMrE8IYc8ScyfVH
	K8bZ7jSjdwrq6qfzVfL3Y8M0yZ35NEB11My1cCrAyZTnfrdRTQdwQem8D/fXqNvGHaWZog8EVSpf2
	BBDSr9OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYc1B-00000001F9w-0Wec;
	Mon, 07 Jul 2025 02:55:45 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYbsC-00000001E0z-0nCv
	for wireless-regdb@lists.infradead.org;
	Mon, 07 Jul 2025 02:46:29 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-7490acf57b9so1813135b3a.2
        for <wireless-regdb@lists.infradead.org>; Sun, 06 Jul 2025 19:46:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751856387; x=1752461187; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vLFT9YUi2kgk4IHIMXEm1tnwQfNF6uLUtXcFAl9ufZ4=;
        b=P9FE7mguXAudWNZ+IfBlLmRON9UNrjbXvYbaHtJPFnzW/Y4/zj6tK8aqJdw39Z4FE7
         CFDqdy4xtK4ON4cJ79Jvo6YiMT9MYPPYe3UJEPjH9cNiWI6XLOri1djlOm9xTpud+roV
         GRzM3CGCnk3dG73QAYXYr9zFxHquBBr05lOq6ZzGLe1cE9bMVnICcCelqn1BZ/lI8a7b
         WyJVkEj5+diED9cfKxRO/Y8VXbxDMCYAIk/uZsDbAjDYBBYFqA8Yd5BKZMThUqU/sRct
         wNZCUy97cEANdhNa+7zqNOfCRhdG4dCevM7O0G9PtZ9KMJTvJ0oCgBR8WiK762I1YAF0
         bJgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751856387; x=1752461187;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vLFT9YUi2kgk4IHIMXEm1tnwQfNF6uLUtXcFAl9ufZ4=;
        b=ek9D0fA8KZA45H5puw4IWyhI3LvX7HQTIX4fU5n+xe4Y6hAWw4+yaROEP186ur4NVE
         s55HPZD629yHHv6ZP3P2bAkgtOX+ykd9dQgRln6R1ddt2sShlHWZE5MjZ39RYLipoPw/
         SKfB9NwuPpjOlOxFSJBsVGhYQOKCE23aPXtvHlMH5NwkjEPIlIm1XLc2KB5/+H6MZII4
         ONPGs8OgRrKnzY5hkeVdqI2JSbqRSgST/NQ1dJA1KKMVwcjMXHZm3AL10EKDjzYp3IZh
         Cfve13WPOLN+Q1oLEF+4mMOrlT+b3xmAUYBrHlkVn0DtaAO6G52hFdaoMWZXqI6wV9Vu
         9Wow==
X-Forwarded-Encrypted: i=1; AJvYcCUX81F+0i8wd5pd12tXt+twSJ/LTDtBhd9lX4wWnU7QW7qc+zw0ezov3H8ioBUa+FCDkxGtuWT0HW6IuBjHBw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwBn3gSkxVUC9DU3jeRaBPuK/aKyjNU9ogU8ghSWxNULMHgIsiy
	+XXDGULx5sLMVUlfzydAXvP5Z99Nd9TMjtn152TFHu4JyMr5TcYsEni2
X-Gm-Gg: ASbGnct+5lws8AKPLoJr6TUC1gxmTRx01mK3vrgxZOjeE1ZQQ5uyi4eQsKv7P/iLAb9
	+9zIqsBtKflZBOWDbcArQMdBzpuspxgO+u8hlfbrLpJRcxBgMEx+2B9HB8oBUm7oqqdacqARoyd
	2hd8wHUkxWeZUHLc/8ITTiUlmEipDK8b3YiagIhMcAAjZGhjC9YnPdwbEIAzWYLrR25u8utHEwk
	1N2vWogUycEqPx/p8W/ffp6WEDKFHXLtNL4ffk3BMSNwjinpu+/pztkFP3JocLr+zAIinlU4Ys4
	0HollLr1dYhRwnQ90HoaLuZNjKGMtTcGJCKhaPSXls8FLyYzCyng9jrshzt42qvUzec60TJhgFi
	bStLqE5N/UmlV544jPWEABgG44fR72/xRxKpF
X-Google-Smtp-Source: AGHT+IGZ6t+i+0pA1w4HjlrKayguT9lc3j1A3wPeXlmDAPtkqs9+ohFZq6n50UzOxDd+2xwoBhEIWQ==
X-Received: by 2002:a05:6a00:3c8b:b0:748:3485:b99d with SMTP id d2e1a72fcca58-74ce65c53bamr16375568b3a.18.1751856386905;
        Sun, 06 Jul 2025 19:46:26 -0700 (PDT)
Received: from localhost.localdomain (125-231-129-141.dynamic-ip.hinet.net. [125.231.129.141])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-74ce35cd066sm8205274b3a.53.2025.07.06.19.46.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jul 2025 19:46:26 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH 1/3] wireless-regdb: Update regulatory info for CEPT countries for 6GHz listed by WiFi Alliance
Date: Mon,  7 Jul 2025 10:46:13 +0800
Message-Id: <20250707024615.38507-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250706_194628_228313_FE54D793 
X-CRM114-Status: GOOD (  10.08  )
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

The regulations enabling 6GHz WiFi [1] of WiFi Alliance lists CEPT
countries including
 - Albania (AL)
 - Andorra (AD)
 - Austria (AT)
 - Belarus (BY)
 - Belgium (BE)
 - Georgia (GE)
 - Iceland (IS)
 - Liechtenstein (LI)
 - Macedonia, The Former Yugoslav Republic of (MK)
 - Moldova, Republic of (MD)
 - Monaco (MC)
 - Montenegro (ME)
 - Norway (NO)
 - Russian Federation (RU)
 - Switzerland (CH)
 - Türky (TR)
 - Ukraine (UA)
Add 6 GHz frequency entry if not being added yet.

But being pending to add rules to below entires because countries are not
existing yet:
 - Faroe Islands (FO)
 - Gibraltar (GI)
 - Isle of Man (IM)
 - San Marino (SM)
 - Holy See (Vatican City State) (VA)

Links of all these countries are to point to ECC/DEC/(20)01 [2] [3], which
decision enters into force on 8 November 2024; preferred date for
implementation of this Decision shall be 8 May 2025.

 * LPI devices
   - 5945-6425 MHz
   - Restricted to indoor use only
   - Maximum mean e.i.r.p.: 23 dBm
   - Maximum mean e.i.r.p. density: 10 dBm/MHz
 * VLP devices
   - 5945-6425 MHz
   - Indoors and outdoors
   - Maximum mean e.i.r.p.: 14 dBm
   - Maximum mean e.i.r.p. density: 1 dBm/MHz

[1] https://www.wi-fi.org/regulations-enabling-6-ghz-wi-fi
[2] https://docdb.cept.org/implementation/16737
[3] https://docdb.cept.org/download/4685

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/db.txt b/db.txt
index acfbcbf29887..b5b1308460cc 100644
--- a/db.txt
+++ b/db.txt
@@ -41,6 +41,7 @@ country AD: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -80,6 +81,7 @@ country AL: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 
 # Source:
 # 2.4 GHz https://www.psrc.am/contents/document/4749
@@ -355,6 +357,7 @@ country BY: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 
 country BZ: DFS-JP
 	(2402 - 2482 @ 40), (30)
@@ -742,6 +745,7 @@ country GE: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (18), AUTO-BW
 	(5250 - 5330 @ 80), (18), DFS, AUTO-BW
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -1234,6 +1238,7 @@ country MC: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 
 # Source:
 # http://www.cnfr.md/index.php?pag=sec&id=117&l=en
@@ -1266,6 +1271,7 @@ country ME: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 
 country MF: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
@@ -1292,6 +1298,7 @@ country MK: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
@@ -1924,6 +1931,7 @@ country UA: DFS-ETSI
 	(5250 - 5350 @ 80), (100 mW), DFS, NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
 	(5470 - 5725 @ 160), (100 mW), DFS, NO-OUTDOOR, wmmrule=ETSI
 	(5725 - 5850 @ 80), (100 mW), NO-OUTDOOR
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40 mW), NO-OUTDOOR
 
-- 
2.25.1


