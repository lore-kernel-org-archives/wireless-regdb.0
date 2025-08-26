Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11FFDC8303F
	for <wireless-regdb@archiver.kernel.org>; Tue, 26 Aug 2025 00:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sfoEmh4Uuip6ADGAXS4EdiQ5FAWw3Abck/YKH3Nu1NU=; b=yoqcL26iMTsPDKSccicXOkufzc
	lhuqBBtLq7KocHuUEl6Th0Eb1TobXYkf7Ml2Ygnm6FAoZM3HYOOYhm67s5aNSIwcFjLhsANH8P+FX
	/VUpuPG17FtwioWnaQJU2JSQ1v/6TtL02iNQyUi1KY1UGlBkrxUouhhbg0tYDsLhlYWpBW2MGtiXG
	x/d7+vFRZfXULclpU7/wA/YBQmRwjgAcX/ZjBl9TIpH/JrSA7ErvbADaubGtn4UuzBc3DTt9OXJGn
	Nw8wqcBp4lfSB3N4PoINVAzRHrSkzX7ZmjDnjAmrprokcTVaw2e5P97+NtKhZDEpWKBitizTwIWf2
	voYr4gYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqhnl-0000000AE40-1Rmi;
	Tue, 26 Aug 2025 00:44:41 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqhni-0000000AE3f-1rxX
	for wireless-regdb@lists.infradead.org;
	Tue, 26 Aug 2025 00:44:39 +0000
Received: by mail-pg1-x530.google.com with SMTP id 41be03b00d2f7-b474e8d6d01so3276619a12.0
        for <wireless-regdb@lists.infradead.org>; Mon, 25 Aug 2025 17:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756169077; x=1756773877; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sfoEmh4Uuip6ADGAXS4EdiQ5FAWw3Abck/YKH3Nu1NU=;
        b=Gt4RsmeopDAKEdgvOUj61IklO3cKYzg/EWWUXWEUu1676qj88cNWS+Hp6xARayQPL6
         N2sNJQc05xdl79pNXjPe6fxs8o9MRjFXYhJ8bhD/jIsjYRB7KdwP7FLtNUiDh+DRQhxh
         aPaX72zbo28LHpUGFEkab9eMAPotnxouw0l704bwUmlsELmqlFxOJ4eFK6Ml+6ZwC7+b
         /xLprthfeOWnpBbCH9PQm2e0Cwcp83kpBX0NDTzkBQIKdTcEZPz+hGMJYtrqNI9IKC0r
         x/ASyXLZkLxayEDniFlgHxCa6YFl973lm9TfETGGwMAGlIIqu+WGxPu4pGACn7rP1G28
         ZWAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756169077; x=1756773877;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sfoEmh4Uuip6ADGAXS4EdiQ5FAWw3Abck/YKH3Nu1NU=;
        b=fXv0I3PAolKipMc5498DLTfxSQ7tVqTArc0nv95X51t8fD95988XNDnzc8uwUX5bfb
         gTIegut2p9QVGOaHpv66oYD04y5MNREgZ/wkxKuWxN0zB2cEX4hkOL2YNagyqGdqxVQ2
         Krmh2x1TP3Y2wcFgnewhtOGKIVt4EaNIqz1YB2pmsLwG+kjaAWFX3ONQxKFQfLpvNBrY
         ynxXlkWE4e504Me6K8pa5HFFu5GfI68lwWdxnDvkJFyB18KpM4tQ0vPKO5P7Fh7hsOME
         ebCaRO9+oLo4QOoRabhRwedUDzpF41qNH1NwlL3K+zSB5GAoV/7vymkRQaK1Hb+25ytB
         85xg==
X-Forwarded-Encrypted: i=1; AJvYcCXXZkjwTG07x9CUYjIjnD49g+quHHwTcqRLYnBfvDZ1NLDperb2NBTrxwZ6WDdGTlYvkCsT67lc06EUZer9lw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0i3P52Ewvzih25qJdaBqeXmtzsuzzvLHPYx077K4QI5MD5zYa
	C4QDUPpvT8LJ3OTxZxIjw3H7/8pwSOqiRyYCjdTrzC4JGbZioOaFZ0v3
X-Gm-Gg: ASbGncvoZL6k5G22L1avT3rs6fboGgmi9zc+uWY+LRX0gRsPo3L/yjf3krqsRrkpEV1
	toSNEFamOHGUz2LSQ5IcgYC9swT6LQcMTAxO+T/WgdooeYdbkVGjEfzBNXvsKsCDEMB51SkX7+6
	N98sTej0hcLUecG9SsNR+4UeKyL0kHAaTcsHb2oqPUnXQXBR4nc+vJpT3RjTLoEzyJWcAfm4PCi
	WmjwoEZxmnCO09+ENi3MyqGJ28VZDgrrvOcaWgaQ7fvB0FUzjz2iYWZ1ermdr4f77stxx3URrKh
	2JloQ05kgu2OnISFdFPiVaVW9jO2tGzV6KhK3hKMtTmz00Z+xDwmwtjf5XdERPR6lXCbL5mxt6G
	mUwO6IRbKAmPCwTA5V0OpobjOwC6BtkeBIlYfXMXePy/RAHFg7VeCHwsg88fTg1aY
X-Google-Smtp-Source: AGHT+IEngbdobYXfg9n7+S7+eZStNJFF7/84NzqToW8wvN1e1HOQwGgY/5ULJOk+/J1zITuKLapwMA==
X-Received: by 2002:a17:90b:384c:b0:31e:d9f0:9b96 with SMTP id 98e67ed59e1d1-32515ef8acbmr18373192a91.14.1756169077177;
        Mon, 25 Aug 2025 17:44:37 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-3254af4c347sm8131553a91.18.2025.08.25.17.44.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 17:44:36 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org,
	avalon.vargas.centeno@est.una.ac.cr
Subject: [PATCH v2] wireless-regdb: Update regulatory info including bandwidth for Costa Rica (CR) for 2023
Date: Tue, 26 Aug 2025 08:43:42 +0800
Message-Id: <20250826004342.5363-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_174438_487559_C8EC96FB 
X-CRM114-Status: UNSURE (   8.66  )
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

THE PRESIDENT OF THE REPUBLIC AND THE MINISTER OF SCIENCE, INNOVATION,
TECHNOLOGY AND TELECOMMUNICATIONS released National Frequency Allocation
Plan (PNAF) No. 44010-MICITT [1], and effective date from 05/31/2023.
The table 22 shows maximum power permitted for the frequency bands:

- 2400 to 2500 MHz
  36 dBm
- 5150 to 5350 MHz
  30 dBm
  DFS on 5250-5350 MHz
- 5470 to 5725 MHz
  30 dBm
  DFS on 5470-5730 MHz (take 5MHz from next entry)
- 5725 to 5850 MHz
  36 dBm
- 5850 to 5895 MHz
  36 dBm
- 5895 to 5925 MHz
  30 dBm
- 5925 to 7125 MHz
  30 dBm, LPI, indoor only
  14 dBm, VLP, indoor and outdoor
- 57,000 to 71,000 MHz
  43 dBm

Avalon reported the bandwidth limitation of 20MHz causing lower throughput
than what he set country to US, and he reached PNAF about the bandwidth
limitation, resulting in no limitation currently [2].

[1] https://pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=99551&nValor3=144158&strTipM=TC
[2] https://lore.kernel.org/linux-wireless/7bfa8257d34642d7a1e35b3705720357@realtek.com/#t

Reported-by: Avalon Vargas Centeno <avalon.vargas.centeno@est.una.ac.cr>
Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v2:
  - add units of MHz and dBm in commit message.
---
 db.txt | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 2a2946f8d1bb..b29e719710f4 100644
--- a/db.txt
+++ b/db.txt
@@ -476,14 +476,17 @@ country CO: DFS-FCC
 
 # Source:
 # https://storage.googleapis.com/eleoscompliance1.appspot.com/public/PNAF%20modificaci%C3%B3n%20ALCA87_30_04_2021.pdf
+# https://pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=99551&nValor3=144158&strTipM=TC
 country CR: DFS-FCC
 	(2402 - 2482 @ 40), (36)
-	(5170 - 5250 @ 20), (30)
-	(5250 - 5330 @ 20), (30), DFS
-	(5490 - 5730 @ 20), (30), DFS
-	(5735 - 5835 @ 20), (36)
-	(5875 - 5925 @ 20), (30)
+	(5150 - 5250 @ 80), (30), AUTO-BW
+	(5250 - 5350 @ 80), (30), DFS, AUTO-BW
+	(5470 - 5730 @ 160), (30), DFS
+	(5730 - 5850 @ 80), (36), AUTO-BW
+	(5850 - 5895 @ 40), (36), AUTO-BW
+	(5895 - 5925 @ 20), (30), AUTO-BW
 	(5925 - 7125 @ 320), (30), NO-OUTDOOR
+	(57000 - 71000 @ 2160), (43)
 
 # Source:
 # https://www.mincom.gob.cu/es/marco-legal
-- 
2.25.1


