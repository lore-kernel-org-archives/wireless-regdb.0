Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D81C2C54752
	for <wireless-regdb@archiver.kernel.org>; Wed, 28 Aug 2024 08:47:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JfpRa7+a4X2inrM5zoCBa7zeS6Loig5tC7RkDoQ/JIA=; b=tKds3jf5YyZaC72WHHm47+//uE
	JfaHHIrUAm23TMfZZPVNBCNDOitd36ORWOzDiraljUWoaod8/Gg/YdY3TZ5+9EaY6Yjo6vWRnA5rf
	KvDSjeWus1VJR9YzxDziUQZ97KvP7buVJ2O+ZPcmYaqawdF7lABo57hhhyM1xv0DHbeWyMpKKIRms
	3LX8gTPIwZiaOVC+XGTOYYeIBL0SB9gLaGByJw/gZ3ejNoikniPQ8vnTz2Ao8Knw6+FtaCfg98Yun
	LinCab5nYTMDW4l6V8odXLJD6lBmSN1Z67AU5tINXKNRMNaqILsmhG6WX4ezm8RqFZdYIj3fSW3EB
	8e7eeUbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjEL0-0000000EZvr-127e;
	Wed, 28 Aug 2024 08:47:34 +0000
Received: from mail-pf1-f169.google.com ([209.85.210.169])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjEKo-0000000EZs7-1KeA
	for wireless-regdb@lists.infradead.org;
	Wed, 28 Aug 2024 08:47:23 +0000
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-70cec4aa1e4so4438746b3a.1
        for <wireless-regdb@lists.infradead.org>; Wed, 28 Aug 2024 01:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724834841; x=1725439641; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JfpRa7+a4X2inrM5zoCBa7zeS6Loig5tC7RkDoQ/JIA=;
        b=gTAC4BoOIucnq+Tx5tS+rMSNP0rKSXgbeygrfbPx8Mc5ONFarqrBhQyD0XeIbjbYZ3
         Cu+LgEUNQ3+38z13Ocn37ODx7hRyo2gKGN0VP6GCOwMf7Vl6kMa66EVNt2V3N9w3TswE
         RH9mEMc7zloz2XOiUkXA9z+B4wL3JvokRjaoCn1rTcKxxcefbRvyrwYugBS8iOYJ5e2x
         hatnEy93ltqbmNZ951AnXzSDrnLCJXVeC3qyNwCMM+uv5c1XcOAstOiOomQN4EhvS3Jy
         RdMyhlJeTyrp2la+IWBCIxdKALhxFAg4iraEv1gV5eg5lKCdcAH1RiC+yEy7Mp5CypPO
         jHzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724834841; x=1725439641;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JfpRa7+a4X2inrM5zoCBa7zeS6Loig5tC7RkDoQ/JIA=;
        b=PGXyE7EnCKueNwVHvO6lyqpprpx9gVydq9weTmtLz6d9uWBhE2MdlFX3E01ZtDA6yG
         sDqEeuhXFSZC9XZ5LfPl+n08E3xeCKZAUfwMYaBy8WE9MRYcuDbPb+dNanUJMDfHGnm8
         Um6ecM48byiN1RKFffi82pXtvaUpbI4XYyTYQ0MdqFU2d8NoEVXKkeHLdLBC5og0LDlk
         IrZKELg54ifAIqGEeiTX6yXPDvXtcGRXpikHHtNcaJ0rpIpyPi/dE/aR2UJLJRKQFlZc
         UDEK4RLF6EhGzyk/Esc1WwCkaUexrSLyxzdLtSZvtwxoJcrdyo/E1M0DX1nxtB6EhR1z
         gW7A==
X-Forwarded-Encrypted: i=1; AJvYcCVonZv2d+SbiyvT2n6okLFgD+leBg8TJLHb3CEsRp0OsVdrBD/qoiWvFJK683PuAcAAx2v/CeEGuMpmJDILuQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywhs8NZSQ+K6uwnkkQUA6Sqsr2pzF+p59Hmjgd8z0bKV5PXy93b
	tU2d90nbEdHGXCjjlrUFdRuFi75AFsthyVWcsiVARRbnKjbLOzfu
X-Google-Smtp-Source: AGHT+IEo5kc0UskrmXhwcGonI7c33NWKtwpzB5UDJZews7Ydk/FlrsiGcgCmC2ZHnZ69uiNTyEa5zQ==
X-Received: by 2002:a05:6a21:9d91:b0:1c6:ecee:1850 with SMTP id adf61e73a8af0-1cc8a07cbbamr19049098637.49.1724834841083;
        Wed, 28 Aug 2024 01:47:21 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-203855dbefbsm94652645ad.136.2024.08.28.01.47.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 01:47:20 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH 2/4] wireless-regdb: Update regulatory info for Kuwait (KW) for 2022
Date: Wed, 28 Aug 2024 16:47:04 +0800
Message-Id: <20240828084706.12257-2-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240828084706.12257-1-pkshih@gmail.com>
References: <20240828084706.12257-1-pkshih@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_014722_381474_F15FDADB 
X-CRM114-Status: UNSURE (   8.13  )
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

Kuwait, CITRA (Communication & Information Technology Regulatory Authority)
released Regulations for Wi-Fi service on 2022 [1] via page [2].

 * 2400 - 2483.5 MHz
   - upper limit 100 mW; 10 mW/MHz (adopt 100 mW)
 * 5150 - 5250 MHz
   - upper limit 200 mW; 10 mW/MHz (adopt 200 mW)
 * 5250 - 5350 MHz
   - upper limit 100 mW; 10 mW/MHz (adopt 100 mW)
   - DFS
 * 5470 - 5725 MHz
   - upper limit 500 mW; 50 mW/MHz (adopt 500 mW)
   - DFS
 * 5725 - 5825 MHz
   - upper limit 500 mW; 50 mW/MHz (adopt 500 mW)
   - DFS
 * 5925 - 6425 MHz
   - 200 mW
   - indoor only

[1] https://citra.gov.kw/sites/ar/Lists/CITRALaws/Attachments/14/%D8%A7%D9%84%D9%84%D8%A7%D8%A6%D8%AD%D8%A9%20%D8%A7%D9%84%D8%AA%D9%86%D8%B8%D9%8A%D9%85%D9%8A%D8%A9%20%D9%84%D8%AE%D8%AF%D9%85%D8%A9%20%D8%A7%D9%84%D9%88%D8%A7%D9%8A%20%D9%81%D8%A7%D9%8A.pdf
[2] https://citra.gov.kw/sites/ar/Pages/CITRALaws.aspx

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index ad8dddc9c800..50ebd50becbd 100644
--- a/db.txt
+++ b/db.txt
@@ -1050,10 +1050,14 @@ country KR: DFS-JP
 	# 60 GHz band channels 1-4
 	(57000 - 66000 @ 2160), (43)
 
+# Source:
+# https://citra.gov.kw/sites/ar/Lists/CITRALaws/Attachments/14/%D8%A7%D9%84%D9%84%D8%A7%D8%A6%D8%AD%D8%A9%20%D8%A7%D9%84%D8%AA%D9%86%D8%B8%D9%8A%D9%85%D9%8A%D8%A9%20%D9%84%D8%AE%D8%AF%D9%85%D8%A9%20%D8%A7%D9%84%D9%88%D8%A7%D9%8A%20%D9%81%D8%A7%D9%8A.pdf
 country KW: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5170 - 5250 @ 80), (200 mW), AUTO-BW
+	(5250 - 5350 @ 80), (100 mW), DFS, AUTO-BW
+	(5470 - 5825 @ 160), (500 mW), DFS
+	(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
 
 country KY: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-- 
2.25.1


