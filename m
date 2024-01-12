Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98644C4707C
	for <wireless-regdb@archiver.kernel.org>; Fri, 12 Jan 2024 03:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MZUphtb88aglzBZqJmwFyLLbAYc8eKQv88iywC8J2Uc=; b=RwLNs19xTuwsOSnW7dUb/ylm5+
	Q53D9CeNGkNu+gUSnN9l8/faYGEMTT1Qv6OWT5Z0UwnB/Ld3xSiZp8Cbir8pFKjtFnl6/0z3JxnL1
	ilR7/MG4LSXvFABIfAHE9Q25SM0rGXpfI/Kr5ks2kuKwGY2GolDo4XOWz0GvFrLXvAoZ4Ev3soLFF
	PLO3/4V0CtIWWa+dY6haPyyu7S6gGc2OkuGmLs2aCuTJlxcOWozKUvRoWSWMl8HbVd+8rwjLTlWfl
	b+ZSYEvu+ppw9tg6BlagbCbamQX6cJOWAzXdd4T3A9kJkVwtLW/mSUOYR8S0V+BZXmfKonIQlw7rl
	atsbLNqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rO8SM-001mnI-2s;
	Fri, 12 Jan 2024 03:43:42 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rO8SJ-001mm6-2C
	for wireless-regdb@lists.infradead.org;
	Fri, 12 Jan 2024 03:43:41 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-5cdbc4334edso3008230a12.3
        for <wireless-regdb@lists.infradead.org>; Thu, 11 Jan 2024 19:43:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndoo.sg; s=google; t=1705031018; x=1705635818; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MZUphtb88aglzBZqJmwFyLLbAYc8eKQv88iywC8J2Uc=;
        b=CPBLRv29KU5Q2UXClGQBffq8WtpkMav94G70NOhy+gveTCfHXB5xTBSZ76ErVd4/wy
         1iueznKWTmhkqduSquaDfaptZlgh3u/o/s2wtwXu59qCLQfpW1HYoPEB+wwS5aTnMU38
         7S+ZTEa10IeoC8zF7IdCcGnm0z5SFZYc4G8vk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705031018; x=1705635818;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MZUphtb88aglzBZqJmwFyLLbAYc8eKQv88iywC8J2Uc=;
        b=ifMt37PrsNhrYVfJews+x8Ax/rwL/EXwwpUkoALms2EuDU4ds9Wm09vYekr2Lu6boS
         O4NQ/lhnUkcUx8Gj+kK5c5nzGIfIGcERnW56GlkOsmMofF6kBwPjU/zuzwIonE7j7UtP
         V+5QzFdYTWcI5YmWA0gUw7LyiiW2p4fUt4b8M/ys6T7jeh9GgmpdpmD3oAEk5pweO4Nk
         ixqMj4SmnkA6d4fUHmSh4W5lp/bfxr75bdG/I/rMgqrlhpoEegTSy7knUMsVL6G/+Rj5
         /P/DgFtutAMOUItDrfkFy4YQaQM1XVkvqJ/Yg+nkjcFRBi3FiBTgDv3VIg7a7IzRj3dT
         2i1Q==
X-Gm-Message-State: AOJu0Yzk34WM9nK7/q9AHzDRqAokI+C/5YohiuT178egSM/T7xfDdE9J
	VxYx3avyxXfSxAvJrVaJ4A3AgOfpBucG
X-Google-Smtp-Source: AGHT+IF9nCCeEE6AWGeO//TbQljVlvUyxe4w20gPFeKiQ2CvzQ3ajTYcE2rk+PNi7tExM1T0+ffDXQ==
X-Received: by 2002:a05:6a20:f3aa:b0:19a:4765:ab32 with SMTP id qr42-20020a056a20f3aa00b0019a4765ab32mr268426pzb.72.1705031017865;
        Thu, 11 Jan 2024 19:43:37 -0800 (PST)
Received: from p14s2i.. ([2401:7400:c808:b52:9565:61c2:9ce0:d352])
        by smtp.gmail.com with ESMTPSA id i2-20020a170902c94200b001cca8a01e68sm1943145pla.278.2024.01.11.19.43.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jan 2024 19:43:37 -0800 (PST)
From: Andrew Yong <me@ndoo.sg>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org,
	Andrew Yong <me@ndoo.sg>
Subject: [PATCH v2] wireless-regdb: Update regulatory rules for Singapore (SG) for September 2023
Date: Fri, 12 Jan 2024 11:40:44 +0800
Message-ID: <20240112034311.23677-3-me@ndoo.sg>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240112034311.23677-2-me@ndoo.sg>
References: <20240112034311.23677-2-me@ndoo.sg>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_194339_723593_BBD8D65F 
X-CRM114-Status: UNSURE (   9.60  )
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

 - Update regulatory rules for September 2023 IMDA TS SRD [1]:
   - Enable 5945 - 6425 MHz (Wi-Fi 6E) band per legislation
 - Switch units from dBm to mW to match values listed in legislation
 - Extend (5470 - 5725 @ 160) band to adjacent 5730 MHz to enable Ch 144 similar to US & TW regdomain

[1] https://www.imda.gov.sg/-/media/imda/files/regulation-licensing-and-consultations/ict-standards/telecommunication-standards/radio-comms/imdatssrd.pdf

Signed-off-by: Andrew Yong <me@ndoo.sg>
---
 db.txt | 38 ++++++++++++++++++++++----------------
 1 file changed, 22 insertions(+), 16 deletions(-)

diff --git a/db.txt b/db.txt
index 01e7338..15b439d 100644
--- a/db.txt
+++ b/db.txt
@@ -1586,25 +1586,31 @@ country SE: DFS-ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
-# https://www.imda.gov.sg/-/media/Imda/Files/Regulation-Licensing-and-Consultations/ICT-Standards/Telecommunication-Standards/Radio-Comms/IMDATSSRD.pdf
-# IMDA TS SRD, Issue 1 Revision 1, April 2019, subsequently "IMDA TS SRD"
-# 2400 - 2483.5 MHz: IMDA TS SRD, Table 1 (25); ANSI C63.10-2013 and FCC Part 15 Section 15.247 or EN 300 328
-# 5150 - 5350 MHz: IMDA TS SRD, Table 1 (29); FCC Part 15 Section 15.407 (1) 5.15-5.25 GHz (2) 5.25-5.35 GHz; EN 301 893
-# 5470 - 5725 MHz: IMDA TS SRD, Table 1 (30); FCC Part 15 Section 15.407 (2) 5.47-5.725 GHz; EN 301 893
-# 5725 - 5850 MHz: IMDA TS SRD, Table 1 (27); FCC Part 15 Section 15.247; FCC Part 15 Section 15.407 (3) 5.725-5.85 GHz
-# 57000 - 66000 MHz: IMDA TS SRD, Table 1 (31); ETSI EN 302 567
-# Note: 27dBm for 5470-5725MHz bands is 3dBm reduction per FCC Part 15 Section 15.407 (2) 5.47-5.725 GHz; EN 301 893 as referenced by IMDA TS SRD
+# https://www.imda.gov.sg/-/media/imda/files/regulation-licensing-and-consultations/ict-standards/telecommunication-standards/radio-comms/imdatssrd.pdf
+# IMDA TS SRD, Issue 1 Revision 3, Sep 2023, subsequently "IMDA TS SRD"
+# 2400 - 2483.5 MHz: IMDA TS SRD, Table 1 Sub-band 32e
+# 5150 - 5350 MHz: IMDA TS SRD, Table 1 Sub-band 33a
+# 5470 - 5725 MHz: IMDA TS SRD, Table 1 Sub-band 34
+# 5725 - 5850 MHz: IMDA TS SRD, Table 1 Sub-band 35
+# 5945 - 6425 MHz: IMDA TS SRD, Table 1 Sub-band 45b
+# 57000 - 66000 MHz: IMDA TS SRD, Table 1 Sub-band 40
+# Note: 500mW for 5470-5725MHz bands per FCC Part 15 Section 15.407 (2) 5.47-5.725 GHz as referenced by IMDA TS SRD
 #  AU and BG regulatory domains use the same interpretation of cited FCC and ETSI standards
-# Note: The transmit power for 5250-5350MHz bands can be raised by 3dBm when TPC is implemented: IMDA TS SRD Table 1 (29)
-# Note: The transmit power for 5470-5725MHz bands can be raised by 3dBm when TPC is implemented: IMDA TS SRD Table 1 (30)
+# Note: The transmit power for 5250-5350MHz bands can be raised (by 3dBm) to 200mW when TPC is implemented: IMDA TS SRD, Table 1 Sub-band 33a
+# Note: The transmit power for 5470-5725MHz bands can be raised (by 3dBm) to 1000mW when TPC is implemented: IMDA TS SRD Table 1 Sub-band 34
 
 country SG: DFS-FCC
-	(2400 - 2483.5 @ 40), (23)
-	(5150 - 5250 @ 80), (23), AUTO-BW
-	(5250 - 5350 @ 80), (20), DFS, AUTO-BW
-	(5470 - 5725 @ 160), (27), DFS
-	(5725 - 5850 @ 80), (30)
-	(57000 - 66000 @ 2160), (40)
+	(2400 - 2483.5 @ 40), (200 mW)
+	(5150 - 5250 @ 80), (200 mW), AUTO-BW
+	(5250 - 5350 @ 80), (100 mW), DFS, AUTO-BW
+        # This range ends at 5725 MHz, but channel 144 extends to 5730 MHz.
+        # Since 5725 ~ 5730 MHz belongs to the next range which has looser
+        # requirements, we can extend the range by 5 MHz to make the kernel
+        # happy and be able to use channel 144.
+	(5470 - 5730 @ 160), (500 mW), DFS
+	(5725 - 5850 @ 80), (1000 mW)
+	(5945 - 6425 @ 320), (250 mW), NO-OUTDOOR
+	(57000 - 66000 @ 2160), (10000 mW)
 
 # SI as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
-- 
2.43.0


