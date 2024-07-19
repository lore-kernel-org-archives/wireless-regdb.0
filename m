Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89322C3DA64
	for <wireless-regdb@archiver.kernel.org>; Fri, 19 Jul 2024 03:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yY7wbH+WsXnAJXQeGqshr9VN+E3jFFNFoVh2XZMiDZg=; b=Zn/RY2Mp+wGPkshsucVXbxZ6sl
	aOGV59Y8S4f6ym32h1HW4+O95QDsHjTuhQuGVYHrYzWo1MD2o/x/6nt7E2EStEEi2/m3yenuf6nte
	qm+ExtEqFYM8TLOVmYyY6dfgX+fVRxE30QNXt2U9LitIo8dWN+AXj/5rM21IXHlpRpJW5aOvBJKA6
	K4W1pJ4fqBdVzRlJZ7Z2t9gokDY4l5t2u9FqAY363Cyc/4NrPeU0z9xAsHX7KgtDZGj6s7XwEJnC/
	Mn40sj3weo7zMhdCW49vrP31Q9d4mP/LtbdrL/5MQ+IPz2gJii7mG1m4yxwB46uXY1UdqM0lD2FBK
	muuES4KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUeDy-00000001PgX-3qUQ;
	Fri, 19 Jul 2024 03:24:03 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUeDv-00000001PfH-3ZVK
	for wireless-regdb@lists.infradead.org;
	Fri, 19 Jul 2024 03:24:01 +0000
Received: by mail-oi1-x230.google.com with SMTP id 5614622812f47-3d9c487b2b5so971501b6e.3
        for <wireless-regdb@lists.infradead.org>; Thu, 18 Jul 2024 20:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721359437; x=1721964237; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yY7wbH+WsXnAJXQeGqshr9VN+E3jFFNFoVh2XZMiDZg=;
        b=F/3yEQtPAlVJShq+BoaUu2Q+r7dMbrwg2exDEwHf2lZ6296DupWdvlhHKs7G+8gIhx
         42qOKxtRxW9QOzFBXJbwynnmbrYKQpKnHzsvCc92lR4mi9u+be9T8lbtIyAMpnaMDzwO
         2k9B9fJILndNM+ORMwRlahGfvhs6rJT0t0E6XiGBSJ0E0ohWDsk0q1Se0HOQDVfcZ+Iu
         j6Of9OAI8bM8ESjF2b5jMG2YESmGG5416cTUlIEGyabec9ki7msUJ0Grd/yHrg6L5y9v
         vmAOqbrc0QpF3dAJ3PQbbj55i3c/Nvr8zk4+offlZx5VrilObTGrzpvRqmchmCvB/ynJ
         uFUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721359437; x=1721964237;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yY7wbH+WsXnAJXQeGqshr9VN+E3jFFNFoVh2XZMiDZg=;
        b=PCxaqZmrKpr7Dj2uxYQU2wJ3bXzGW+w9x2UNXFCyanMAlTDMd2zLSv3bOjbauvZKkI
         lWd4VmiOoMlHxp5jv7xpXsXPC4qknfX51zx2rjOezm0nGjn9vAqQZAfgQyNeXfXiBaKT
         uVNxIGC0C3dN2jLvfFIUJ/Q9696ZUFdjEdxtWuIhQckX43PlIEXO+tpJeAAhMyTOVbVq
         cTTSYmn0k1yJZ8rk7dFnueDCXAlw2TKQWxxomnwcHgfqLqKn7aQoVbRyt+/koFN6jaPn
         tATDaNLa5qm8SnU9AjJ3XqtgjN5f23kGZabFFMgG6j2m8WPGp1a2/k6bScUhIx5Y6n3W
         c5hA==
X-Forwarded-Encrypted: i=1; AJvYcCUkU9VVjix5h3ogXEaX012Rve/eLq9eeovaS9hJKcMXhOJHGBfY6esK2O34S9KN8lz93Koc8KQwgccrELzAvW/y4S0BkW6JgCBWk9/vqRDIYOyx
X-Gm-Message-State: AOJu0YzP0u7MDO0HEubbWPZvC5lyy4FXWTdn+hRFsuyn6dQhD4JudbnT
	xde0vLJzkWwGQIbRosYnoIkCqkrx0coKTATmcv6NcWfqfmKAIEx8
X-Google-Smtp-Source: AGHT+IFJxX8dbn9deSbvTilaAlPRSX+BzW0Gn0JjLe4Y80ky/h7FRDvc3DHdUrd7z40uJT7ngAG+hA==
X-Received: by 2002:a05:6808:2184:b0:3da:b3b3:17f with SMTP id 5614622812f47-3dad521ddc9mr7989074b6e.25.1721359437525;
        Thu, 18 Jul 2024 20:23:57 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-70cff59fd9csm279160b3a.173.2024.07.18.20.23.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jul 2024 20:23:57 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH v2 1/5] wireless-regdb: Update regulatory info for New Zealand (NZ) for 2022
Date: Fri, 19 Jul 2024 11:23:22 +0800
Message-Id: <20240719032326.7353-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_202400_028053_6E1C0BAD 
X-CRM114-Status: UNSURE (   9.75  )
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
  * e.i.r.p. 6 dBW (36 dBm)

5150.0000 - 5350.0000
 * the maximum power is 0 dBW (1 W) e.i.r.p. and
   the maximum permitted power spectral density is -13 dBW/MHz
   (17 dBm/Hz, 50 mW/MHz) e.i.r.p.
 * 5250 - 5350 MHz, If Transmitter Power Control is not used, then the
   maximum power (e.i.r.p.) value shall be reduced by 3 dB.

5470.0000 - 5725.0000
 * 5470 - 5725 MHz, The maximum power is 0 dBW (1 W) e.i.r.p. and the
   maximum permitted power spectral density is -13 dBW/MHz (50 mW/MHz)
   e.i.r.p. If Transmitter Power Control is not used, then the maximum
   power (e.i.r.p.) value must be reduced by 3 dB.
 * Then 27 dBm is adopted (0 dBW - minus 3 dB due to lack of TPC)

5725.0000 - 5875.0000
 * e.i.r.p. 6 dBW (36 dBm)

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
v2:
  - correct 2400 - 2483.5 to 6dBW
  - correct 5470 - 5730 to 27dBm
  - correct 5725 - 5875 to 6dBW
---
 db.txt | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 7a1221f1699d..5cada55b51eb 100644
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
+	(2400 - 2483.5 @ 40), (36)
+	(5150 - 5250 @ 80), (30), AUTO-BW
+	(5250 - 5350 @ 80), (27), DFS, AUTO-BW
+	(5470 - 5730 @ 160), (27), DFS
+	(5725 - 5875 @ 80), (36)
+	(5925 - 6425 @ 320), (24), NO-OUTDOOR
+	(57000 - 71000 @ 2160), (40)
 
 country OM: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
2.25.1


