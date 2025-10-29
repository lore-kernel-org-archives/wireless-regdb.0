Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C3E6CCF9EA
	for <wireless-regdb@archiver.kernel.org>; Wed, 29 Oct 2025 01:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1WXAlkDmDx9NmbLlS9VcnsufaxwGigfvd9PslVMSa4Y=; b=LsSueFF45NMhQBkAytaT6X+nE/
	oE/JaRQAN2B6jd3TdtWyMcSJdXsdzvIq760uDNO1yQ6SrH8fPqHstlU74Gb8Jgxu5IVId1kJ6ztsy
	0PUW9RPcDOc/NGnRgjBbOj0ceWgCHRV6GHbo2hZ20pKBEFot3P8vr8UubPqMRJqgzV0jNeu49Ex/i
	LxiYrFGhVdbCLP2jsW69gz6u2dGxWRQHW44keDgvQS0s2tVL0OK7JI/0VwKWG/TkGThpfXQXCU4AC
	2EkMdpgvMz8N4QS3Z70PdO1xxyvLEZpepbpLCjijMKZhDgEiJyH/LwRgHYd0JPh5qmb4LlXbd7xwV
	aapMmTcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDuvW-0000000Gv59-0TOR;
	Wed, 29 Oct 2025 01:24:38 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDuvT-0000000Gv4n-3HIY
	for wireless-regdb@lists.infradead.org;
	Wed, 29 Oct 2025 01:24:37 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-33fc9550f68so1207718a91.2
        for <wireless-regdb@lists.infradead.org>; Tue, 28 Oct 2025 18:24:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndoo.sg; s=google; t=1761701075; x=1762305875; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1WXAlkDmDx9NmbLlS9VcnsufaxwGigfvd9PslVMSa4Y=;
        b=A1pp5bNKaYJy2KfW7bgpDVB2GDQ+upm+UgZOiu9PX+pyYUNH0gEhADCq1FPgUClIqT
         lCG5uICULv0w+Xvcz0kilYKBMyqlMqCqV0xuWkEJQDBT7/n4PwAeboAsBi4nMt7iNIBC
         q+ujoy3aLR3jOGuenpTGsSx108pp4CcdGhkBg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761701075; x=1762305875;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1WXAlkDmDx9NmbLlS9VcnsufaxwGigfvd9PslVMSa4Y=;
        b=kJ1l74woLXb4We+HxZFPXzJV+weSUPLkboE5GbxioOXG+qavfK7tkj+i4FOo2Q7xam
         DyZhufyQDkUioUAhFJzZS/tC5AJYGPjaX0XFs8TTdlDxIiCOAc6NeyyXz8TuXaV3kbM2
         muG7sHpmQxXK1A5Vu+hfDz3iTK8XGpW5cNR9p+pNCsAv1petILqmDmaPaNFR7YnsRaJl
         l2GXS1dyBgwEubLzEZ8QPN02+ke035T6soiLxJEXPCD9VDShx7BnmWX0d6KURq7GXDB2
         t50vyVMx74dGIiOkMPb0JLu0kFrZGhQOGoMMbxYT8GoCFO7f5jFPt2B4UbgXd7TIKwbl
         lgdQ==
X-Gm-Message-State: AOJu0Yy2qd1ElKs1P2KU5WEDFQnRWMmwkoV0UZYS1qmtjX29omieTpPy
	0X36afz/rJQE7cT5IHcGxT31pHD9R+kNF8Ro6/lfEXF3ZOD3U6zoWDNbPcxsGno3h1vOiHhwYIG
	KepE=
X-Gm-Gg: ASbGncv0Bzv0EqSK7JuAbqaGjNZHTtdKpEHH9HatSmPkVAHb5sYZ3gSIKlZmGxGTwC3
	n1PHqdPrD6o4octHGCuoYmY8OLIbRiuE6uUKrbsXJl2QO29QsF1/09a1s5FtDDySh2jU1ehvMIX
	9/I7LI6o6giPEa0A3122kS+DKq+m9Sn3UpJSUB37DfmHssbOPWuQoq89rMC+bAUPlfXsxCQbCe7
	Ir8R6JoNk9C8ycufEGcJF/gMTdH77M5AnTf18ghQqq8WlgYB7zW7Kg/l/XW5rLinrAHYaNbEUi5
	wvRdvbrG1UDdWNBv+6buZkEz2CntpbaDKX566Vy+s0ArXLaLBh1Jud78ZeZMkjmxth6wxMmk+LD
	1a1wzzYrID5vopzgwdDIrpHIN66Xq9oqdV3jOjHV45Lj0qHgxlMF2uaILTXI3gbdEINU6t39E0c
	KoDnHUs+Myu+K0qyYdGM9Um8yI9TKoY1O7u6SQ40zPojb4qBlCsN4yhlcEby3LIX4oPN2nBLNUD
	dRq9g==
X-Google-Smtp-Source: AGHT+IF7e9AGyJ8zCYZTX7ukImJg7kj7vR7sgwNsJ+lnwjJQx3OqPMM2y0TkoFlSndRGF1hssTEdyA==
X-Received: by 2002:a17:902:c404:b0:269:96d2:9c96 with SMTP id d9443c01a7336-294dea100damr8378035ad.0.1761701074815;
        Tue, 28 Oct 2025 18:24:34 -0700 (PDT)
Received: from localhost.localdomain ([121.120.74.142])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498cf4a53sm133275645ad.6.2025.10.28.18.24.33
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Tue, 28 Oct 2025 18:24:34 -0700 (PDT)
From: Andrew Yong <me@ndoo.sg>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org,
	Andrew Yong <me@ndoo.sg>
Subject: [PATCH] wireless-regdb: Update regulatory info for Malaysia (MY) for 2025
Date: Wed, 29 Oct 2025 09:24:29 +0800
Message-ID: <20251029012429.68658-1-me@ndoo.sg>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_182435_823739_45C56BB5 
X-CRM114-Status: UNSURE (   7.47  )
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

Malaysia Communications and Multimedia Commission announced CLASS ASSIGNMENT NO. 2 OF 2025[1].

With reference to class assignments on pages 9 and 10, and Power Spectral Density (PSD) limits on page 20, update the following rules:

2400-2500 MHz: Align previous 2402-2482 MHz rule to class assignment
5150-5250 MHz:
  1. Align previous 5170-5250 MHz rule to class assignment
  2. Mark as NO-OUTDOOR
5250-5350 MHz:
  1. Align previous 5250-5330 MHz rule to class assignment
  2. Limit EIRP from 1 W to 200 mW due to PSD limit of 10 mW/MHz, calculated at 20 MHz channel width
  3. Mark as NO-OUTDOOR
5470-5650 MHz:
  1. Align previous 5490-5650 MHz rule to class assignment
  2. Limit EIRP from 1 W to 200 mW due to PSD limit of 10 mW/MHz, calculated at 20 MHz channel width
5725-5875 MHz: Align previous 5735-5835 MHz rule to class assignment
5925-6425 MHz: Increase EIRP from 200 mW to 250 mW (remains within PSD limit of 12.5 mW/MHz)

[1] https://www.mcmc.gov.my/skmmgovmy/media/General/pdf2/Class-Assignment-No-2-of-2025.pdf

Signed-off-by: Andrew Yong <me@ndoo.sg>
---
 db.txt | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/db.txt b/db.txt
index 1d17271..dc72989 100644
--- a/db.txt
+++ b/db.txt
@@ -1450,14 +1450,16 @@ country MX: DFS-FCC
 	(5925 - 6425 @ 320), (12), NO-OUTDOOR
 
 # Source:
-# https://www.mcmc.gov.my/skmmgovmy/media/General/CA-No-1-of-2022_-signed_19012022.pdf
+# https://www.mcmc.gov.my/skmmgovmy/media/General/pdf2/Class-Assignment-No-2-of-2025.pdf
 country MY: DFS-FCC
-	(2402 - 2482 @ 40), (500 mW)
-	(5170 - 5250 @ 80), (1000 mW), AUTO-BW
-	(5250 - 5330 @ 80), (1000 mW), DFS, AUTO-BW
-	(5490 - 5650 @ 160), (1000 mW), DFS
-	(5735 - 5835 @ 80), (1000 mW)
-	(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
+	(2400 - 2500 @ 40), (500 mW)
+	(5150 - 5250 @ 80), (1000 mW), AUTO-BW, NO-OUTDOOR
+	# 5250 - 5350 MHz regulatory limit is 1000 mW, but 200 mW reaches the PSD limit of 10 mW / MHz at 20 MHz channel width
+	(5250 - 5350 @ 80), (200 mW), DFS, AUTO-BW, NO-OUTDOOR
+	# 5470 - 5650 MHz regulatory limit is 1000 mW, but 200 mW reaches the PSD limit of 10 mW / MHz at 20 MHz channel width
+	(5470 - 5650 @ 160), (200 mW), DFS
+	(5725 - 5875 @ 80), (1000 mW)
+	(5925 - 6425 @ 320), (250 mW), NO-OUTDOOR
 
 # Source:
 # https://www.cran.na/yglilidy/2023/04/GG-8060-dated-3-April-2023.pdf
-- 
2.50.1 (Apple Git-155)


