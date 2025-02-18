Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1465AC021A9
	for <wireless-regdb@archiver.kernel.org>; Tue, 18 Feb 2025 03:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=W/RZwU+z3SNSHUk3UYG1BXd9tkrPxZ+j3jNP2H2IK7I=; b=Jk8teJV0R7tZE3G7LIdIOnenBt
	LIcQa3MQBbOCPBGmqsksKugUe1hWDbVIhgyAMPVXUSJUEB3kxOZom3GOAlje74TYuibKNDHH/WhDb
	dYDMFaVD9wsQv/RDa9yYo9oq/M1y8412bpF16axNn+Ba9ubD4vISEaLo7zs77kLe7Xt27ate1hjOP
	l/snJ8ZwGcyOxu+XvF+7/UahSHsIzWj1nBt3mCixt4KFtpUYpqkpuSJsVwC8t8FjP2lInVal5mVhs
	HgYWxsD0Wt83d2dq8rgmBt1bADouUPpLiMKTbf6W0wi50E5kftIzUM75Hvdvrb+uM5LDIvzano1MA
	Dut5NZcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkDqh-00000006ZdF-2kQP;
	Tue, 18 Feb 2025 03:00:39 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkDqf-00000006ZcV-2Ccv
	for wireless-regdb@lists.infradead.org;
	Tue, 18 Feb 2025 03:00:38 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-220c665ef4cso72635465ad.3
        for <wireless-regdb@lists.infradead.org>; Mon, 17 Feb 2025 19:00:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739847636; x=1740452436; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=W/RZwU+z3SNSHUk3UYG1BXd9tkrPxZ+j3jNP2H2IK7I=;
        b=TYzyCmk3Q6YfUjSSeOCon8wnpzJuGxeDyo9Uh5pS0VMnqN2Auko93c4gqswD6XS7wN
         btOrxfYfXmOKL5f/Srs0KijvFuE/D07vk+AHi+L3eT4QXZqGj6G7bJ6ngVV0UWsu0t39
         6Iz+gimdrTJ2Hax8If46Z5BF/JQmwyMamyBO0WNCjaAFtT+lqGOJocXj/D1EO7zSYaUM
         Cgy1c0WmeljGPQkT5tJikN7PtsXgU7xAJERuE1fTrpBxTOrZkkr7S8M1Zj5D8FvhGovz
         M4CmhrUMBOGTpms4lTpoE979eEb1JoDlCL+NfZgzXKHD6wd5tl19efdy5BP7JXdRnIZM
         Qc8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739847636; x=1740452436;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W/RZwU+z3SNSHUk3UYG1BXd9tkrPxZ+j3jNP2H2IK7I=;
        b=Pk3e7sXUxruZfFndaitv/TtgVa5nKsYa/VW3Zow/rcDYDGKUsEG2TL/fRtrVV1ya7j
         liW4aqjZk9faQntQDWa8r60aeu98uvxwPcAIxRmUx6gXbgaMPCmv2G+bT+6D9BiCz+OK
         jpemXikLqucHzxd+GLiUUfrqoPz9x3RZvjDwlk0aTmpR+zd6y1Mux97Wf2GsjnYMw/0Z
         rKzKm8ZaSQaEbXy7aKvle0oxsviMEjZkAiSFFDSl9/nSix3hCn7aALG4OdAsF+UWAzua
         zGYJcfT1UN7wz6SUEnaWy2aCVKOj8F1ouzs7mHfdboIJeKcZ+t/KNpGrtd81Dsv/iCL3
         45aw==
X-Forwarded-Encrypted: i=1; AJvYcCWdvrmWf/w4xcleo/aP4Dy4i0JleGSaRMNxaWpKdlBBZ0ecjJHQNkWiN/k+VnkCVuYmi41KPsi/A8oxlqYx+w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yza10n8fv1uM5yTGBbGiELU/DzYRRu5YN2uQV3V9T99eugwVyQx
	6inmjbMTwbfrJWbGSo68Tdj88qk6CxaUBwVtayog+wu1Fjb3QBO28gLLidFR
X-Gm-Gg: ASbGncvR1vrx4rOMrWWazvzDDX00y1TkOEvwAM5RJZH13nge2zjN5h0oqqjkmnn0c9w
	IyahNoJBrTCrdUGovHcA2BJDkAhCfXylifT8gFoBqnrOROW0hsijaC6cL5+mKI/2Q/qhFmPkmwp
	ambu3nQF7+UlauYrJqhIT2V1w80rggK36qt3DAznKCNdeWQjX44iHiUxLEPLnqz5kEn9AgMzmDI
	wAWoi8oYmmE20jv+mhQO+CbMFRmZXMDQG14ABWAwlRkc1i+3qNpZvIqauiWR5X4mImwgGBrtd7F
	/pnAtDyhA/ml1Gu84NIRN7ZHuuKBLiNWUsQ/2pTtRg5XfdEZhcjLZc1n5w==
X-Google-Smtp-Source: AGHT+IFeWAFjwa1243Uan1+rWsmm0knBDC5D9g1kwyYIHepCSVWWJMcUxZf6j2wn39RAaJL+gFfbBg==
X-Received: by 2002:a17:902:f983:b0:21f:b6f:3f34 with SMTP id d9443c01a7336-22103f14b87mr139771525ad.15.1739847636105;
        Mon, 17 Feb 2025 19:00:36 -0800 (PST)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-220d5585fbfsm78628785ad.226.2025.02.17.19.00.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 19:00:35 -0800 (PST)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org,
	mobin@mobintestserver.ir
Subject: [PATCH] wireless-regdb: Update regulatory rules for Iran (IR) on both 2.4 and 5Ghz for 2019
Date: Tue, 18 Feb 2025 10:59:57 +0800
Message-Id: <20250218025957.13818-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_190037_563181_2F94ECF1 
X-CRM114-Status: GOOD (  10.12  )
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

Decision No. 4004-01DEC-CRA, 8th Edition - February 2019,
Radiocommunications and Regulatory Organization.
General radio license for the use of parts of the frequency bands
2400-2483.5 MHz, 5150-5250 MHz, 5350-5250 MHz, 5470-5725 MHz, and
5850-5725 MHz in radio access networks. [1]

* 2400 - 2483.5
  - 100 mW e.i.r.p
  - 10dBm in every 1Mhz
* 5150 - 5250
  - 200 mW e.i.r.p
  - 10dBm/MHz per 1MHz bandwidth or -6dBm/25kHz per 25kHz bandwidth
* 5250 - 5350
  - 200 mW e.i.r.p
  - 10dBm/MHz per 1MHz bandwidth
  - DFS
* 5470 - 5725
  - 1000 mW e.i.r.p
  - 17dBm/MHz per 1MHz bandwidth
  - DFS
  - If TPC is not used, the maximum radiated e.i.r.p. must be reduced
    by 3dB.
  - Outdoor use only
    (Since NO-INDOOR flag is not supported by current format, don't add
     this entry.)
* 5725 - 5850
  - 4000 mW e.i.r.p
  - 36dBm in every 500 kHz
  - DFS
  - Outdoor use only
    (Since NO-INDOOR flag is not supported by current format, don't add
     this entry.)

These information is from [4], Mobin Aydinfar shared the official link [1]
(inaccessible from outside of Iran), a mirror version [2] and translated
version [3].

[1] https://asnad.cra.ir/fa/Public/Documents/Details/73af8590-f065-eb11-968f-0050569b0899
[2] https://mobintestserver.ir/Iran-2.4Ghz-5Ghz-cra-official-doc.pdf
[3] https://mobintestserver.ir/Iran-2.4Ghz-5Ghz-cra-official-table.ods
[4] https://lore.kernel.org/linux-wireless/c9ccf5ba-c091-45c4-9283-970bfa4f1afe@mobintestserver.ir/T/#u

Cc: Mobin Aydinfar <mobin@mobintestserver.ir>
Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index d56ad32d31c9..0189355dff17 100644
--- a/db.txt
+++ b/db.txt
@@ -934,9 +934,12 @@ country IN:
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
+	(5250 - 5350 @ 80), (200 mW), DFS
 
 # IS as part of CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
-- 
2.25.1


