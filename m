Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39414C02198
	for <wireless-regdb@archiver.kernel.org>; Tue, 18 Feb 2025 06:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Azt/7LsFRRTFGUrb7nymTq9Ik51qG0MgdwYHGSVGRmY=; b=Mn+wMXcXrE6UQWXAcDieI+P9/z
	BM7e8m4odXN3R9dj7Oqu66f441LQlmhtBm25pC5iLL0Nr4s6MTmPGfGJcikSrZDHG14Mvo3A3FRyX
	OiUhh0rbWJ756MHSPjbAbhNcyFZ78k3GjHRohNIw8+ajo/9ya16JyI3GVyb2yrEG0QqnBmcsPkV3p
	c4MoPoNfIAecgT0Uq401p0pWgyIth9D7L5SVpxoOCOjDCaNuuXsTrHoZxyas4ejPDo/qkRUPqOcey
	/4/+xKefIz6ijH3bUxPAph02QuF68WvUrREd2FAvphcsdutnPu5G32IXmfBt7ut/67HRtWKO6EBP8
	HNYAQB4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkHV5-000000071eW-2IBv;
	Tue, 18 Feb 2025 06:54:35 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkHV1-000000071dk-41K1
	for wireless-regdb@lists.infradead.org;
	Tue, 18 Feb 2025 06:54:33 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-220c8eb195aso104692575ad.0
        for <wireless-regdb@lists.infradead.org>; Mon, 17 Feb 2025 22:54:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739861671; x=1740466471; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Azt/7LsFRRTFGUrb7nymTq9Ik51qG0MgdwYHGSVGRmY=;
        b=KOGENAwwVNLN5rS9iuM+SvGJ1QaMlyDciEmf0ftKwd2hzaWek9CNMxN/uCt/E6gCO6
         o3B8gUPC87cCEt2PqZ03iKn7WJcO3D81AyCm8SvMOnGU1USYiv0okbxVEZdEn47Nolwg
         nnKicF9fezuH122btZUKm7jwYbCPtVfUTXHrZYsCwl0xKSiWddBPiO691sGd5fFVmAi9
         Z040yEwmiAVAZNHjUeOknZJ7aXJK40ntPZvW2/9MwcxBGXIDBLw5kNk0uFNq+o4yC78y
         MmR35nZMjmBHYZQXpvh+kkPY1QdI6qrenuRy4hDAiVObPUNxzFM2H8FwJ7zRKCZskgy2
         mQXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739861671; x=1740466471;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Azt/7LsFRRTFGUrb7nymTq9Ik51qG0MgdwYHGSVGRmY=;
        b=RUSuldZneS07onbfM5eH+kjLsd6fFUaZkxYrSCwi8ZJ4UzxvQiwL1fOwJPYNe933kB
         GR3WoDSFJk1OllNAcC8cC8QESaWxDV+P/MBuCS7WO778jReZPHuj0XH4EU5HTNQCHxDX
         EpOFm1pxpNXR5y4KAHwyLsYJV+dJYhkFXytKjbx5zqlQbzEQrRfPCUXDGlcI1dE4UQEu
         /RjAwBa/Y/V1wGf40JXlyYYSZrE5k/QIw9F2tE2bOEckRekloPeY45V9W6JAS9QhsT2u
         /JeO4LHz+LIe3/h9JYtXrX3x3VdMgFhXiIPljKyNTAtRsvgTbOjWZ1YDnuaH00hcB8Ar
         Agww==
X-Forwarded-Encrypted: i=1; AJvYcCUthmADMCCzQ6m831sZ21fYQFbQApVtnjhJHkpjUnqfrxOwhKHAsGGSe2C07GitbCZom2m3AWR4haIy+GKZRw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwUTXkNEHjvygP5Qznt9FkfSXn3FIu4kmJdjEb+ZL2Skg7q8Bt4
	N231wRUoEZAtJ4v1NcxWY2G54Ma7K2H4aEiyhA4uXR/RnQwY2PsvZNxk8NHi
X-Gm-Gg: ASbGncuovakj5GYqHREVEjigTNhJC2nzrFKJ9T0e9nXIB3fqcyRqIYR2LgFCGZ0lR2T
	G69y3v2KqqVSoGklMRpC2GRMADEe1mHY+EtC4LCf8CIaxMvnbVGwuPAct/8YS0g2Tl8852FLv3v
	VgKr5awJg8u3FBupe6XxpXD8CtNOVpEa47uKxy8xwqOFVHnBzUb4aS7nbes4StT4u3gQmJ4/ym4
	TSRFhcQIqD4JBZx9+XktpeR+XENVKWK0ph6GNcgb80ch0mCIJRW1GqkuOib3nZ9J3TOAtPs3xFY
	Cs1Lo8yJr+VADwPXYT8j0wbNmYUcgW1REW9uMESCz/crt4OSycOq1Yt1FA==
X-Google-Smtp-Source: AGHT+IGSMSVHkVGhqnP4mJH/5lHEXfWApvRDHSByzlRsvYgvMFfwnCdX0UWVk+xZOBEMkyXgXngx0Q==
X-Received: by 2002:a17:902:f711:b0:20c:9936:f0ab with SMTP id d9443c01a7336-221040d6a6dmr201091445ad.47.1739861670875;
        Mon, 17 Feb 2025 22:54:30 -0800 (PST)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-220d5364385sm81710935ad.63.2025.02.17.22.54.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 22:54:30 -0800 (PST)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org,
	mobin@mobintestserver.ir
Subject: [PATCH v2] wireless-regdb: Update regulatory rules for Iran (IR) on both 2.4 and 5Ghz for 2019
Date: Tue, 18 Feb 2025 14:53:52 +0800
Message-Id: <20250218065352.17313-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_225432_001397_8E7B098D 
X-CRM114-Status: GOOD (  11.91  )
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
  - indoor
    * 100 mW e.i.r.p
    * 10dBm in every 1Mhz
  - outdoor
    * 4000 mW e.i.r.p
  - Intersection of indoor and outdoor. Indoor values are adopted.
* 5150 - 5250
  - indoor & outdoor
    * 200 mW e.i.r.p
    * 10dBm/MHz per 1MHz bandwidth or -6dBm/25kHz per 25kHz bandwidth
* 5250 - 5350
  - indoor
    * 200 mW e.i.r.p
    * 10dBm/MHz per 1MHz bandwidth
  - outdoor
    * 1000 mW e.i.r.p
    * 17dBm/MHz per 1MHz bandwidth
    * DFS
  - For outdoor usage, TPC is required, and there is no provision for
    3 dB power reduction if TPC is not implemented. Mark this band
    as indoor-only.
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
  - P2P only
  - TPC is required without provision for no TPC.

These information is from [4], Mobin Aydinfar shared the official link [1]
(inaccessible from outside of Iran), a mirror version [2] and translated
version [3].

[1] https://asnad.cra.ir/fa/Public/Documents/Details/73af8590-f065-eb11-968f-0050569b0899
[2] https://mobintestserver.ir/Iran-2.4Ghz-5Ghz-cra-official-doc.pdf
[3] https://mobintestserver.ir/Iran-2.4Ghz-5Ghz-cra-official-table.ods
[4] https://lore.kernel.org/linux-wireless/c9ccf5ba-c091-45c4-9283-970bfa4f1afe@mobintestserver.ir/T/#u

Reported-by: Mobin Aydinfar <mobin@mobintestserver.ir>
Closes: https://lore.kernel.org/linux-wireless/c9ccf5ba-c091-45c4-9283-970bfa4f1afe@mobintestserver.ir/T/#u
Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v2:
  - add outdoor info to commit message as reference
  - add Reported-by and Closes tags
  - db.txt: mark 5250 - 5350 as NO-OUTDOOR
---
 db.txt | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index d56ad32d31c9..5457f53372ae 100644
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
+	(5250 - 5350 @ 80), (200 mW), DFS, NO-OUTDOOR
 
 # IS as part of CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
-- 
2.25.1


