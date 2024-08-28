Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB962C54754
	for <wireless-regdb@archiver.kernel.org>; Wed, 28 Aug 2024 08:47:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v2i2TO1l4qHvfPhTps6FYZzEF53OdrIJBdII1OVmJKw=; b=SAhSCsG6Sdo1RDefd1LKxiux6G
	oFIMq08lDUHcq7909KOPGTmAumhcbNjsmGFM2xRH+gNEbcvee87XvJ/M5E88L3y0uCRCcY17tph80
	h3SVbLzfm1oAaKTCAYgEBjWvUVPLG7SeR6cXj42QnWLlm+h39a9xe8ZqpzaT0SCXHhMtylFkz2iV6
	DKh6PBhHnUB9F2P9mQBxgOhZwwq/h5IYmvxzH8PxZ4C6QyVcmZnsYuFt+bMWvUOfijtH8PlQp2ipj
	ZfAQ1jzoMUEvV3yOZvpTjo1zRoUbmxOSix/NMyY20pdHulqQTM+x/3AM7/5xVsWq1v/Td1m97Zzhb
	sI8p3Z9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjEL0-0000000EZw5-33IN;
	Wed, 28 Aug 2024 08:47:34 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjEKr-0000000EZss-012A
	for wireless-regdb@lists.infradead.org;
	Wed, 28 Aug 2024 08:47:26 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-201fba05363so54537325ad.3
        for <wireless-regdb@lists.infradead.org>; Wed, 28 Aug 2024 01:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724834844; x=1725439644; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v2i2TO1l4qHvfPhTps6FYZzEF53OdrIJBdII1OVmJKw=;
        b=SUKLJoNKO1aZ7BeeScZhEdY14dAOzC+JhAWgFfLWLpRutoFTrXyI5ssXQYpXbzAiN5
         YzEQmjZbP16eOnTtxymiUTYnGIDFSjKm2dfGFzpbUKwX70aLVpH0o7XFVDVSJ0KXbePj
         NvRK4LdgqalNqIW2Gsv6VZ7JYXVhHgY3/X5LSwQf0q/6eciWxHdDIWNbfaIn4dAoiv0f
         Frvi6W219vhla2fxzSp9k4h9j8yxuwqaX2Potu2ioko5IrmNsJzZCWAU9vBgZnrDAbgF
         TjNRgC61XMbvMBiOU5wvDX/yeNvk2lPAFNZeHBKrvNzHGmX+CNDYQ4Bi04Q+saygS4w2
         c5FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724834844; x=1725439644;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v2i2TO1l4qHvfPhTps6FYZzEF53OdrIJBdII1OVmJKw=;
        b=ZmJTXVcKZ8DnUVxajnnlR9FoTRYo0M9NaFimKQY482bcv3llgy1IC86ggHYXGrnKc9
         q6p/cFj60xsJldUH8eCW60UhGYId+Lq9yR2+FWh2DFfmxWw4poU/H4Co2gy1yfFEhn8B
         9HKfqdlbBFyXfTc5fdvl32oLkuloVNdcCFmLCbCmW1HhNkszWVNkFmwOIbnGWKEe81iR
         rTewgudxeXG/hfYtIK34KxLkoeXHwoXJNY2F79isXGyJClOW4hiIpk6qHRlDeqmUywV0
         xbK9jIls8JHAkHmH4KTKjLipkZF9fJOu+A/T0/diJD4hin2OQmE3z98ltq5fssxgcjaT
         1SGQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQwMy3DWZw8u+IPOy1eJrUwQ+5uwUVcl42QTyzbRcgQaVzxcoHFumzHeQhwdooTRODtGKPUGJRmKIhkHjnkw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwOev/xzeIhCCkLIi9i/cMof64mSukJWiP7jTC/tD8KWl0ejYYN
	30hrSC17az6gtA82Wy9Nf+273nqRoER3xgL8yphDQe1zvTmbictK
X-Google-Smtp-Source: AGHT+IENh45l9ewEQRLaQVkkr3GnzQnzqA9EyukXV3UbMzD4QNUPb7f1qAwi0F6P2RUEc6ImtNdXcw==
X-Received: by 2002:a17:902:e74d:b0:1fb:1cc3:6482 with SMTP id d9443c01a7336-204f9bf716dmr15145905ad.45.1724834844099;
        Wed, 28 Aug 2024 01:47:24 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-203855dbefbsm94652645ad.136.2024.08.28.01.47.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 01:47:23 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH 4/4] wireless-regdb: Update regulatory info for Honduras (HN) for 2023
Date: Wed, 28 Aug 2024 16:47:06 +0800
Message-Id: <20240828084706.12257-4-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240828084706.12257-1-pkshih@gmail.com>
References: <20240828084706.12257-1-pkshih@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_014725_066303_139088A5 
X-CRM114-Status: UNSURE (   7.93  )
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

Honduras, Telecommunication Commission (CONATEL) modified national note
HND40A on 2023 [1], which Wireless Access System/Radio Local Area Network
(WAS/RLAN) have a general license to operate in frequency ranges:

 * 902 - 928 MHz
 * 2400 - 2483.5 MHz
 * 5150 - 5250 MHz
 * 5250 - 5350 MHz
 * 5470 - 5725 MHz
 * 5725 - 5850 MHz
 * 5925 - 6425 MHz (*)
 * 24.05 - 24.25 GHz
 * 57 - 71 GHz (*)

Article 5 of resolution NR006/23 [2] mentioned Recognition of Standards and
International Standards including FCC, which limits and ranges of FCC are
used due to lack of limits [1], but only newly add freqnecy ranges marked
by asterisk (*).

[1] https://www.conatel.gob.hn/doc/Regulacion/resoluciones/2023/NR05-23.pdf
[2] https://www.conatel.gob.hn/doc/Regulacion/resoluciones/2023/NR006-23.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/db.txt b/db.txt
index 0bc40db2d9b5..d4ca8d43a41d 100644
--- a/db.txt
+++ b/db.txt
@@ -819,12 +819,16 @@ country HK: DFS-ETSI
 	(5730 - 5850 @ 80), (36)
 	(5925 - 6425 @ 160), (14)
 
+# Source:
+# https://www.conatel.gob.hn/doc/Regulacion/resoluciones/2023/NR05-23.pdf
 country HN: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17), AUTO-BW
 	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
+	(5925 - 6425 @ 320), (12), NO-OUTDOOR, NO-IR
+	(57240 - 71000 @ 2160), (40)
 
 country HR: DFS-ETSI
 # HR as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
-- 
2.25.1


