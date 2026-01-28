Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC215D35698
	for <wireless-regdb@archiver.kernel.org>; Wed, 28 Jan 2026 09:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hPzz6Fs5J73M9AfzdnFQjFqLwU/A9pwIaV7/8cV24RY=; b=MYQb/H4TPaNKt3HgmGh+laYy5q
	vak2m+miu66XLH+7KtNQLhWcJJYtyMw5MOroV6gH5oVKln25QomAcs12pI67s3YAFz8wzO0INHDw5
	f1L3uboCrmVNk9x4yqsUnplwKZDhMGLAxMtX2oWvmrsRuM0G1sJcPlh2aNxNsXVSJZU1RIQdnrw+3
	T5dI+v+oWt/OzEtqU+2reWy2wuLK2O4rWH+rEytt08oq8OMZ+hMvhmVKc/bcWeAAR4ICV8dTR+zYc
	So/jWyG1d9K6fPZX0rBEa8qHOmpmWyEdwTTDJyWVkHGDogM9/N7M/tTuEuDbbVD9yLhjmQAr5cQRB
	AQhVgMgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vl1fx-0000000FjZI-1PNh;
	Wed, 28 Jan 2026 09:17:25 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vl1ft-0000000FjYX-15Vw
	for wireless-regdb@lists.infradead.org;
	Wed, 28 Jan 2026 09:17:24 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2a102494058so3422485ad.0
        for <wireless-regdb@lists.infradead.org>; Wed, 28 Jan 2026 01:17:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769591840; x=1770196640; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hPzz6Fs5J73M9AfzdnFQjFqLwU/A9pwIaV7/8cV24RY=;
        b=WxgSi7jou6ROpkwPrVr4oZ+5jY+VHbVZ4xRAK3d7H+px7KGMxBurD3v8778wYQRMNJ
         SdWkkW03Faj7990h8oA8xnkTGJ7DLMr4uN6A6fBep7KXtHdWNXqfHkNhIRso/toErhdi
         FvOCzTTIY4k4IODibHm+LoreT/grDo5PwFCaROD9kxhmGGg0Tb4dMsNTtH2+HifqNnic
         YH3ruJUcvxsxXnLOXbAOZcm2fN9OPu0gb6Q/XzIIyEL/XJ7/JFn7KmMmjUKUBjBmpp58
         2Nl0dcGi36hK4SZJyelbeF7uGuXO0IKBGZLIbI4rCSIuxP1q4j7Q7hei/RbJNcGOmgSP
         zj2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769591840; x=1770196640;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hPzz6Fs5J73M9AfzdnFQjFqLwU/A9pwIaV7/8cV24RY=;
        b=LIiKqOhJRfXp0ltcVsc+qYHIueTNEIqilZB+4LUAhr/SPyQKS5FWj8u30PyPHmtcnG
         5aIvqXhbaZ1z5JooGoslL1ixx6sV5B/7Ik2I6fLJXkjcgLnIaHCgD7Nrq1FjA0/fd9u6
         rG/3djG/hUjcsjU5HpZnm4hraFKzLe6QObjNrqODvzOFz97WlNLXm+4TTkR+5PpuJyK0
         V2v2CYR7WGk+mdMUSC4vLtxhTNqWPKn1FZFTyrScSmrOQeibnOOrEFvLfry0DMqOZ8GJ
         XQs17I9tFHeePNnkwXUQy764ZKsNU0BAJgqkCq1ELYdO9HIH4CqX6wspyZnK9JxBbfms
         INcA==
X-Forwarded-Encrypted: i=1; AJvYcCW6/d+oSMRDWVjKyo+kwnJccjofZKeTptIj5sRtXcKFnev9NWNKejMb9Qco7FTFAN+PFQ3Rpxr8w526gomxDg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzvDZdzuRlyQFM+ckbU9cqkxFdxPAK0CS4wSJxkrmOQETe59wh2
	SpuKFPeZJBVEmlAVk6/Q9St28slp1igU5agenWTRVN2AKfIHuFRv8mwF
X-Gm-Gg: AZuq6aLVwCnEwRtwV7G2h8EftDdgQvQxM5yK7M8wg1y2uV28HQJEhEcoVeS6dqKrlEX
	iU+q7Ea84DoiYxrmcVk+ID089kutw/hZSByIEom7Q8opysbPh3RURi+pUlF3bdyVYD9as8f0mep
	4XTWyordwKGAB/2U929ZPtS145xk58RLQl3uZfmKbB7zwsudivd3E5UTsqJrPgVRKYh5fEUQL7K
	Um45RhJwREMfuWkrwNEV/Y7BwhfXJfMWT4Otu6VqH1BxmbOOEPte7bExW3Do+KQvosZFy4NvNxi
	4BuOk4jGdyHliqNLOxbSZV5xozvNtQESHeY8IDrxvhEgIgFTbMuRQv5RjzFIzLyjf8Em49A8lss
	p7ucnE6BOP5M8AK/DONRgPMyWZ4Zp7itgRjqB/tEJAVe41pVJYMPmUO4LByGqkfpfeqVBollr0M
	20YySh3A6qOrVJJc7JzDlXRMrtBY9YcerIYS212y5kays1dZhlfR13gg==
X-Received: by 2002:a17:903:190:b0:2a7:a9f4:9fb6 with SMTP id d9443c01a7336-2a87132b446mr40781315ad.24.1769591839568;
        Wed, 28 Jan 2026 01:17:19 -0800 (PST)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a88b4c3d2bsm17106345ad.53.2026.01.28.01.17.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 01:17:19 -0800 (PST)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH] wireless-regdb: Update regulatory info for Tunisia (TN) on 6GHz for 2025
Date: Wed, 28 Jan 2026 17:16:34 +0800
Message-Id: <20260128091634.28983-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260128_011722_987251_99C85264 
X-CRM114-Status: UNSURE (   6.66  )
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

By decree no. 2024-641 of December 11, 2024 [1], which applies to
frequency band 5925-6425 MHz, with power limits 200 mW, for use inside
buildings, in compliance with EN 303 687.

[1] https://www.anf.tn/sites/default/files/2025-01/Arr%C3%AAt%C3%A92024_4611.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/db.txt b/db.txt
index dc72989b5b40..7abbe3f1341a 100644
--- a/db.txt
+++ b/db.txt
@@ -1929,10 +1929,13 @@ country TH: DFS-FCC
 	(5735 - 5835 @ 80), (30)
 	(5925 - 6425 @ 320), (250 mW), NO-OUTDOOR
 
+# Source:
+# https://www.anf.tn/sites/default/files/2025-01/Arr%C3%AAt%C3%A92024_4611.pdf
 country TN: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (20), AUTO-BW
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
+	(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
 
 # Source:
 # Technical Criteria for Radio Devices and Systems Excluded from Frequency Allocation, Sept 9, 2022
-- 
2.25.1


