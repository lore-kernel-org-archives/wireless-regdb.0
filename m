Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FC6CC3271F
	for <wireless-regdb@archiver.kernel.org>; Fri,  5 Jul 2024 06:06:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RHkxc0UKIg+vQfu04qs07gwLBIHrophB65CpAiITplA=; b=CJ4f+uTprRtbDAE+a6bYgjQvSu
	aY667jvRtJdZHUfAp982+XnZH2JyRQDukcm03UtPw2y/P3mhGTPD2IIIDDmcXd4jEZ86E6VbDqhFQ
	VLitokBwKvrXyjKUXt7nS0OQCdueVhacHFHPrh+KkGCuUbkqK32gvyXjviRLB7xKFcqxaGLy+Q5lr
	ARQKtW3xlDL2H+U0ymo4RWgZvOuEHAJGhI9/IIsZa7GuCm7WieaFIoMrjhjDqADi5KjNV17wqpfkv
	hqeb4xxousTXN51hi5hbIWmgRLMuTeILosldrIhhSZd+55ul6j5GwYY3RVWjZ8bEuI596Vo3H7mu4
	53CkAwzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPc5e-0000000F0A0-0b1U;
	Fri, 05 Jul 2024 06:06:38 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPc5a-0000000F07W-3tCr
	for wireless-regdb@lists.infradead.org;
	Fri, 05 Jul 2024 06:06:36 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1fa9ecfb321so8113625ad.0
        for <wireless-regdb@lists.infradead.org>; Thu, 04 Jul 2024 23:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720159593; x=1720764393; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RHkxc0UKIg+vQfu04qs07gwLBIHrophB65CpAiITplA=;
        b=f9itrLujymy8Z8LfvNH358NJibu/zrPN/dfZE3RDo/8ZelUnBAMOjCWjJ83WfxPHVp
         0ZkDRJv9RiTqLPYeG7JGY4ZEWALe2bVHhiNtKibFj3il7w6Wt8ieXYwi8KQqZ17y11gO
         mIAgV+i1cznFKBF8J6RfSjHaSZp9E9o0BlSgogFbWWxwK9nClRLuZYh7FNTaSwB3+ycC
         It/zmyjyMPfsHEFxiNT9ZqLRo1ZVxnrpZ0L7353fyaav3E1ipBVzofUk7qKytvrE851c
         iUSTUF8D/6IDxJc7+zHvLWbLGqCJCDAv/wIDeppoMvbITaiSP44tc2tHCG0Jxgecort4
         aSsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720159593; x=1720764393;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RHkxc0UKIg+vQfu04qs07gwLBIHrophB65CpAiITplA=;
        b=xQlA5Kp9ex0Q1p+oFJe/8r8ml+5vkfSYb5VcbTkbKSRoT8WxU9zXMVbdIt4jfChbp/
         JBvVGV7XSre+xpRRJI0XVYvbJ9GkaOVADnnumzYA3xkdszDwIS8UT+RfbjaFkY7sZaEl
         oZhmjXwxseDUKViI718EIO2TJilGcaTKxNtC21mDNRbSDpNZXY5TVo+Oo3F0GDy8HsWV
         GgapTsjq7B5mwOtcEs3fPkHHxgJwaJgVSpFqR7ZLxXn8p7ncATqJTYgR/V6L6qMRAbtK
         VoMopEtZwDR9absWg0XBhtXOSWReTFNAe556SypfWXwkEYD2flYy9K/uLmOdqkRUueI5
         lBpg==
X-Forwarded-Encrypted: i=1; AJvYcCXvVUBMYi+B0rP4FeyHCzfDLgK/Y24tsGfgwRqpz+9hJrVbFxo2NYbE9xpvH8L3USrqa3O0IFfMZh+1iIQotBNagyLbuaC7gGdPo7c7YPaOWOsf
X-Gm-Message-State: AOJu0YyIksKWhFGBKwuIOkxhifJ5jnEhVYvGwygWQwmLFyIxftXwE2vd
	FNmKshddlctVG/4mc+25+J5FBKYyhCUu/8moxhXU7NSZtZjtZX9Y
X-Google-Smtp-Source: AGHT+IGUEfRbMM1P1JnslcYuGQ2IKRZxvb2JOOAYjY26JLj9NHw+cWDWBqVR/WxUvX73df9mV9bErg==
X-Received: by 2002:a17:902:f54f:b0:1fa:2760:c3d0 with SMTP id d9443c01a7336-1fb33edf8a7mr28601615ad.51.1720159592258;
        Thu, 04 Jul 2024 23:06:32 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-1fb4e7c31afsm4644645ad.2.2024.07.04.23.06.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jul 2024 23:06:31 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH 1/5] wireless-regdb: Update regulatory info for New Zealand (NZ) for 2022
Date: Fri,  5 Jul 2024 14:06:09 +0800
Message-Id: <20240705060613.28909-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_230634_993310_FB6B8E11 
X-CRM114-Status: UNSURE (   9.19  )
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

Radiocommunications Regulations (General User Radio Licence for Short Range
Devices) Notice 2022 listed spectrum:

2400.0000 - 2483.5000
  * e.i.r.p. 0 dBW (1 W)

5150.0000 - 5350.0000
 * the maximum power is 0 dBW (1 W) e.i.r.p. and
   the maximum permitted power spectral density is -13 dBW/MHz
   (17 dBm/Hz, 50 mW/MHz) e.i.r.p.
 * 5250 - 5350 MHz, If Transmitter Power Control is not used, then the
   maximum power (e.i.r.p.) value shall be reduced by 3 dB.

5470.0000 - 5725.0000
 * 5470 - 5725 MHz, transmitter peak power must not exceed -6 dBW (250 mW)
   If Transmitter Power Control is not used, then the maximum power
   (e.i.r.p.) value must be reduced by 3 dB.

5725.0000 - 5850.0000
 * 5725 - 5850 MHz, the transmitter peak power must not exceed 0 dBW (1 W)
   and the power spectral density must not exceed 17 dBm/MHz.

5925.0000 - 6425.0000
 * the maximum power is -6 dBW (24 dBm, 250 mW ) e.i.r.p. and
   the maximum permitted power spectral density is -19 dBW/MHz
   (11 dBm/MHz, 12.6 mW/MHz) e.i.r.p. for low power devices.
   Only be used indoors.
 * the maximum power is -16 dBW (14 dBm, 25 mW ) e.i.r.p. and
   the maximum permitted power spectral density is -29 dBW/MHz
   (1 dBm/MHz, 1.26 mW/MHz) e.i.r.p. for very low power devices.
   Very Low Power applications.

57000.0000 - 71000.0000
 * for devices transmitting at 10 dBW e.i.r.p or less,
   the power spectral density must not exceed -7 dBW/MHz e.i.r.p. and
   the maximum transmit power must not exceed -3 dBW at the antenna port
   or ports.
 * for devices transmitting greater than 10 dBW e.i.r.p., the power
   spectral density shall not exceed 8 dBW/MHz e.i.r.p and antennas with
   a gain greater than 30 dBi shall be used.

[1] https://gazette.govt.nz/notice/id/2022-go3100

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index d7592c299c62..266ba2d48731 100644
--- a/db.txt
+++ b/db.txt
@@ -1416,12 +1416,16 @@ country NP: DFS-JP
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5735 - 5835 @ 80), (20)
 
+# Source:
+# https://gazette.govt.nz/notice/id/2022-go3100
 country NZ: DFS-ETSI
-	(2402 - 2482 @ 40), (30)
-	(5170 - 5250 @ 80), (17), AUTO-BW
-	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
-	(5490 - 5730 @ 160), (24), DFS
-	(5735 - 5835 @ 80), (30)
+	(2400 - 2483.5 @ 40), (30)
+	(5150 - 5250 @ 80), (30), AUTO-BW
+	(5250 - 5350 @ 80), (27), DFS, AUTO-BW
+	(5470 - 5730 @ 160), (21), DFS
+	(5725 - 5850 @ 80), (30)
+	(5925 - 6425 @ 320), (24), NO-OUTDOOR
+	(57000 - 71000 @ 2160), (40)
 
 country OM: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
2.25.1


