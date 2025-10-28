Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB3B4CCF9EA
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 Oct 2025 06:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ir73evyIRDVF112L404qeqtUBiO/cfljmivHcH0fmV0=; b=eNB0xeYLJeH+YUmgZhwSpOkL78
	3oE2ExwS0FZ+IQn/CYS18WVlDhJX3L4TP5vn8dYX8qLRg+yzPVlKEu6Q7YbUZWtyhBJBcgv6R/cwI
	Oa2GIuxIB8DYSXUlz/MGn+ze0bUgC6GDLCvZ39WLzSplMNgnhs3ifn9OH88wOL2ZPuGr5Z/wc4LJb
	3WoQ0/vfA+C+HsJzq0yBvjqJLrdR1a1/z+srq3jPcEZ9spMBwC0WP7fEqCpXGGTz0y0j5EAyA92cd
	icVJmPN0p56cKp2U9ihduT0IWDERu6gesTpj2HNvyH4WDcJV5MbMU5UgdDBg+DlIc6aMSdym/EaDx
	WfJVPNQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDdCb-0000000FLYS-2oDb;
	Tue, 28 Oct 2025 06:29:06 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDdCJ-0000000FLID-1Qoa
	for wireless-regdb@lists.infradead.org;
	Tue, 28 Oct 2025 06:28:48 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-781254d146eso458852b3a.1
        for <wireless-regdb@lists.infradead.org>; Mon, 27 Oct 2025 23:28:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndoo.sg; s=google; t=1761632926; x=1762237726; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ir73evyIRDVF112L404qeqtUBiO/cfljmivHcH0fmV0=;
        b=cRHLh5ggzLDpDPp/eTd1sFydjWuD+QFSfgraQI/twd0t/h/TUFy9QExzcWusrFmDMB
         8zMGTM/ps6yVT1VIx06SEW7X75ABybYoS9W91St/8VeUVlcfnYgcXxA57NxaNblHvvVc
         lBgaiq7X+yLr0rFnH3Y7IydTGmcnaf64xe0jg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761632926; x=1762237726;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ir73evyIRDVF112L404qeqtUBiO/cfljmivHcH0fmV0=;
        b=RHPo9/AO/eZ8Pi5F8d0NCJYOlA1a/n8yVikqvBzvu5Wl5hLTWzbfJRyechvcy+HmjN
         u2z6mZv0aBOMZwaNXqeU8WS+eYxkklMP6kzXu5St8CxqPhka5fYPDox7FAhVgNHZVXtP
         oXW7JCLB0QZdNoL2kYraft68pb7CbELWa0Nm10dNhCeSl+qMGS9uKORuiHsLDhZtrPpA
         O4vSkeGztLPKJIT/LRNVkxpe7jQT0UtQXpNq0GZ2+YFbIb77vT7xD+QSQf6L8OGwM+95
         pMNshv761XtTwAuud2fdHdL8bVD1262ybokBDX+RmkICkQf6/dtYPLob0Q6rIjcs5r+F
         x1Gg==
X-Gm-Message-State: AOJu0Yziq1ZdUJHocWlu82Z1GvZmtVGulDdw1+mL2N8fP4FEeLncKr6a
	pMyLCR0u0CjcqnNTKFCQr7NG5FjiQS7tnPNYS61pPfhzTQoLfRZq6m+Qs15W2ckMPw==
X-Gm-Gg: ASbGnct51BUHGo2eZRZXU7+cY+X1hxCSy6jGlcXrgKWU1LFXKz/oQdWhM24fJAQB/qT
	TxV/X7BIwwHO8vIy+PQuirvqxV3qhDW8EWsHmJKz8w7T6TDLcV8zxW6W1ECxNwA0TGlkrjn4W4b
	VRsGI7k1i2lYnBqH6vVO7oenVQsn4NhaPEpT5SnLKl/LNw8cH69pb/HL3JiTMDld/oEAePrjKbD
	KMOTiDqUn0WOsE6kJhQp4xsz4+nTzzaqUPVLqNaQ0TQzHI19eZc3PqKSowGVTSR238XWE4rPyIg
	c6PA7xBSx+BlFjaPbkQX8QXcjAsb7o8BVBguO3IXcXvMFdRpWx98bDRD2UkwGJ8rdNU7owUfsxY
	QJVyKiyxEiSg8ihXga3fuHhfFEJnKxs34IcGr8DHlu97hedrttTDXglU4RXeEgDv6hmV+DQEDRH
	RDd9m7QjeMc+jPhYmbgZO4SEFcDuQQuNB9GWQS+eYcEW+31AFpeRMkNZWPcrI3NRhlChH6hQd5E
	Z06mg==
X-Google-Smtp-Source: AGHT+IFFeA3qpztAaG/RGooLaSJ+Yx7ATRVfl20wYEUuwleA0W9QGBSiaRvJg1lDAC7uQwfNpZujIA==
X-Received: by 2002:a05:6a00:2d8a:b0:7a2:855f:f88b with SMTP id d2e1a72fcca58-7a441c208edmr1702138b3a.3.1761632926412;
        Mon, 27 Oct 2025 23:28:46 -0700 (PDT)
Received: from localhost.localdomain ([121.120.74.142])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a414015724sm10360781b3a.14.2025.10.27.23.28.45
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 27 Oct 2025 23:28:46 -0700 (PDT)
From: Andrew Yong <me@ndoo.sg>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org,
	Andrew Yong <me@ndoo.sg>
Subject: [PATCH] wireless-regdb: Update regulatory info for Malaysia (MY) for 2024
Date: Tue, 28 Oct 2025 14:28:40 +0800
Message-ID: <20251028062841.49216-1-me@ndoo.sg>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_232847_382242_F92C07A1 
X-CRM114-Status: UNSURE (   7.00  )
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

Malaysia Communications and Multimedia Commission announced CLASS ASSIGNMENT NO. 1 OF 2024[1].

With reference to class assignments on page 10, and Power Spectral Density (PSD) limits on page 20, update the following rules:

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

[1] https://www.mcmc.gov.my/skmmgovmy/media/General/pdf2/Class-Assignment-No-1-of-2024.pdf

Signed-off-by: Andrew Yong <me@ndoo.sg>
---
 db.txt | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/db.txt b/db.txt
index 1d17271..3df9c41 100644
--- a/db.txt
+++ b/db.txt
@@ -1450,14 +1450,16 @@ country MX: DFS-FCC
 	(5925 - 6425 @ 320), (12), NO-OUTDOOR
 
 # Source:
-# https://www.mcmc.gov.my/skmmgovmy/media/General/CA-No-1-of-2022_-signed_19012022.pdf
+# https://www.mcmc.gov.my/skmmgovmy/media/General/pdf2/Class-Assignment-No-1-of-2024.pdf
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


