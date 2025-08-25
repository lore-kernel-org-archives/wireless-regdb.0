Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 081F3CA0EFF
	for <wireless-regdb@archiver.kernel.org>; Mon, 25 Aug 2025 01:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VKTKi30DzOZxoemkQY+g9NWqObH7qRITcl76FpX3784=; b=4s+kUGAICh/jWhHAbp+bNGIInt
	wfxibPHlZ0ZUCa9q3gh8MnLR2wCywVmfxxx5mDDhFM4IEWk99v3V7YGUJMu64qwXZaYvKy/4Gw2Er
	GWIJ9FWcehkAGTn4kyBFag8oeBleOeFJXwB2AL0sckkCov0Vpl63PenqqyfknKETUVsY/J9hiNfUn
	fGkoAgb46s8Lv1YLuLzVtcwaBLaTe9YRN27E5l2yojvlwdAZiUijvWkd/3htzIP/4AS6Ka2wioZ/M
	neDKRHAajp1PNUz4GxAu4CfcjsJaYXQmU3YLrsY100B1eRNuhsnUntEM5EaOeY7phb6i86KFbCQru
	MBGkmeIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqMJj-00000006hwZ-35MB;
	Mon, 25 Aug 2025 01:48:15 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqMJh-00000006hwF-1TWn
	for wireless-regdb@lists.infradead.org;
	Mon, 25 Aug 2025 01:48:14 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-32326e5f058so2563800a91.3
        for <wireless-regdb@lists.infradead.org>; Sun, 24 Aug 2025 18:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756086492; x=1756691292; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VKTKi30DzOZxoemkQY+g9NWqObH7qRITcl76FpX3784=;
        b=IH/DM9WcllA3kFIJjxzN73BM+WHxhGHOR+Dtz6GBm5FDRkev8XeuouMfVWZ0e24ojv
         TEY3pQHoJh2DNvT+AJN/VhWv3v49xNv7a5IpB6KqGZBH/jNQfQxBam/gce2EabvCgKA2
         1NappaQPeovnOY7EDUlP4PhT0kfDEm+hdw3yVghM4P8CjCkf+MBihb1RLH6RlGyPsyYu
         484/zXDS7PP0eRRy43V0VRlJQx0iJH7e7GrN9Zht0nfRsCmmBA9eIjhv2Tg2M/ejDCDc
         9Lj9Njxel5nE6jzF3Jeh8RfH5bPgr25SNSIU4CivmVOgCqSAAqUP+1Kt5ydW7mMl2ybG
         vzIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756086492; x=1756691292;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VKTKi30DzOZxoemkQY+g9NWqObH7qRITcl76FpX3784=;
        b=M5BngD9l/KKagq4WkTAxwyqjc51UOnHxG3RUhnuZNNJpsbNyIDhJANrYj3ssNmL9JM
         JpCN2aPjvx4Bzifuvj7OdkhjmweKo/FvH+JJiSnfyskDp80W5WirwedSjnjdt8gsBrBu
         jjgyULX2fLIKmB/bNv9O22sCUJLLZHde0ExHFHUpV4nExOkQh9OTr03YB5gIjJHIkW0a
         pfCV8iJpYCbWN4FAOR8R5Hk3E+EHkQgLJDQ3Yys2kNCV5UPaxIsJt6Jq/37RKliLsGkg
         48mDFKErleo6cJIB6y7l3hSsedZepm2BSK0jaNOhw2OJgJ6cpZRBOVwMIfDepv9ONy2z
         9RlQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKE8rx3rHadFu0Is7unCMK/DT5oauVhVx2YM1bkaKykEqauWWwjlhoctT266Qw+6dbjlz1um/rNEGa6sy6Zg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy85wk7zQUHDah+iTYHVuOYv1/zknDLk6BMXJDyo/6sMXdS6V8E
	yygmAn7+nasWFxMAAczmutX8EJpzRkhtnA6gUCHGLLbkyk5+anE5sIHJ
X-Gm-Gg: ASbGncuGNREY8az2LlhYovrazViqzHq2wvsWFGOuhZ4SXlye+qzmcaI6hE5NOnToUMk
	635mOuSL81Uc5GqESsqRhjRxrWqYZXmdCateeEaNp0LjknkBkj6OqikGqepQroGEoPvZYscMdwi
	cb55fKeE7+CBHtTCb4ZYTGLN3zFudad4EWWnXxoTDSw2HB1304KmuyMd0PART1AOB1Ilewk9PxR
	xvy47xswIfy8V/ZSuDnmMuOlu0TeC7YQeGE3LjRLA3S1HDlmFkDBm38Ex2bE2HGoBhfECzYjh/e
	+7VTppkYWIbor4jlq383jPjKspEJ/kCWn2q/HdAGxcT/50A1e/+x0DUBvY3G1hZlzcnMzRCjUVx
	RliRC4PnAHyMvk9XPUSxha1o/GrB4925Vp6a951bF4g88+Dv0U+Y1ywEjkwUjB1jpWqI8qy1agk
	M=
X-Google-Smtp-Source: AGHT+IFb4fUzJWnsSa7UyXkT3dofO3Y9E3ucTpYZIFVhZwVbL1/ONgAto1/5K0FJSDJo5h88H65KHA==
X-Received: by 2002:a17:90b:3a8c:b0:311:df4b:4b7a with SMTP id 98e67ed59e1d1-32515ebff7emr14727424a91.29.1756086492159;
        Sun, 24 Aug 2025 18:48:12 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-3254aa4f9e6sm5547282a91.16.2025.08.24.18.48.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Aug 2025 18:48:11 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org,
	avalon.vargas.centeno@est.una.ac.cr
Subject: [PATCH] wireless-regdb: Update regulatory info including bandwidth for Costa Rica (CR) for 2023
Date: Mon, 25 Aug 2025 09:47:17 +0800
Message-Id: <20250825014717.6771-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250824_184813_395590_C444BC4D 
X-CRM114-Status: UNSURE (   7.94  )
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

- 2400 to 2500
  36
- 5150 to 5350
  30
  DFS on 5250-5350
- 5470 to 5725
  30
  DFS on 5470-5730 (take 5MHz from next entry)
- 5725 to 5850
  36
- 5850 to 5895
  36
- 5895 to 5925
  30
- 5925 to 7125
  30, LPI, indoor only
  14, VLP, indoor and outdoor
- 57,000 to 71,000
  43

Avalon reported the bandwidth limitation of 20MHz causing lower throughput
than what he set country to US, and he reached PNAF about the bandwidth
limitation, resulting in no limitation currently [2].

[1] https://pgrweb.go.cr/scij/Busqueda/Normativa/Normas/nrm_texto_completo.aspx?param1=NRTC&nValor1=1&nValor2=99551&nValor3=144158&strTipM=TC
[2] https://lore.kernel.org/linux-wireless/7bfa8257d34642d7a1e35b3705720357@realtek.com/#t

Reported-by: Avalon Vargas Centeno <avalon.vargas.centeno@est.una.ac.cr>
Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
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


