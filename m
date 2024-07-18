Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91E7CC3DA60
	for <wireless-regdb@archiver.kernel.org>; Thu, 18 Jul 2024 03:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ihMU63pYAY1/iw7FoaHkrKZCrOt532isV3MhgcX5ljc=; b=XCwFZmOcaGjKXUfYEdoH8S3AMO
	E4hdLeuTMWMGXYbAxRZcvIp5mOxgVBXMfWwvZB63SRV3XW/usboKOZ2teHw99Aw7QI1M9iDRWqYo7
	FRxOHv6C3UQ/oNr5cP3p6MWtbc1LxGQF2/aDrTH0Qp5KmWzW0TgeM83TuuRpOwEUAfGzvJzyL9wiT
	0Xw9Rp7FN4G8MhWP0bUc0EVlDBl0DjMQqZxOFUhFSXN+/ikthpdiZs05/AuW5q9QnIvyp87zBpzgV
	I4lgajacmWkL2FbgUT5fYOSbYbEmE8m8nOgiUdsan9iHhINlUk1YGZbuohRX81flCJBrr8VJuSmg2
	9Gf19BtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUHeS-0000000FbjB-2EpU;
	Thu, 18 Jul 2024 03:17:52 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUHeQ-0000000Fbij-0RBb
	for wireless-regdb@lists.infradead.org;
	Thu, 18 Jul 2024 03:17:51 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1fc66fc35f2so125785ad.0
        for <wireless-regdb@lists.infradead.org>; Wed, 17 Jul 2024 20:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721272668; x=1721877468; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ihMU63pYAY1/iw7FoaHkrKZCrOt532isV3MhgcX5ljc=;
        b=J9VJU2nawcqXf380zGa0Mn2+LT6p72X6or/g9zBn7m0LUgVkFz1PumtE0vmvIAVtlQ
         xWvseQ2fLPb9NxgJvuDHrYURMCmbyuug3THgrXPabIdq7r+s67KJ7HBoSFokLEdc0HOC
         vOkMFcjvWj7vYIKkT0gnstcOUfk3I3LPVBVxOF0m6zh/eM/fDpl2a2Y42C9Ry+6IaUBc
         0iPBYbjdf6SovOLYVakPta0Gh6Ly+VnHWQfMaxutW1SwqH8M9ie0BEIMWtn9IUnuwKAM
         xRTnKNxjVd7BE8TJdG9jBeK9YrZH/zwuzFFdvtnD/SvOqBYDchBwOq2ll5CiQ1hEaS+n
         hPKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721272668; x=1721877468;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ihMU63pYAY1/iw7FoaHkrKZCrOt532isV3MhgcX5ljc=;
        b=PsFfz06nblQeh6u/R6o2kbKVFkiOPJWSrCCWRvca1afGjqdVENjgGhKpSbjlzm04Gu
         CKT6/KdDLba3BmE9IJiB0umrAiFjopwuQ6/3HCr/uW4J3yt+2iLQ76f8UJ0Jfxsg6+Oi
         fpDFfDkS7EAISQlifNMMxbjQqMZ55hq6Err4L1ZwwB9ldFVACoZMq/Uix4POteW7d79J
         WXQekL9qBAuNq8uLcCL9JelWNqWCzzxhiwea3R9hBXeoVwZDEulzy0dNoZBY3xMbqoHy
         PnaumGE8nDxuLxcw7dMbmHRJVwokCthLamph4x+mCqTtThAhlIj1YfAfpsskzWUSPpSa
         fj5Q==
X-Forwarded-Encrypted: i=1; AJvYcCXXovqZ/rjswmY80TagXQ6kcuS+eVVRhBl94PzJauWa6+rQ53jJYBaMMOaHNECsOXif0tK+eIlp8JBafjaNxlJQ5Z/YrqwVkrmF7KfGETCSaEYG
X-Gm-Message-State: AOJu0Yz5JeyEdxpo8Uk5WEwWeNu9aJiJrJU3xEZ0ZDHWPg8VHS4ASFEY
	0KNDJWoxrMTAHfhJKp8wbaenkv64Lufrz4jQ15vUpsxD0JJSVspq
X-Google-Smtp-Source: AGHT+IHtYmtphye08uDhj8PleQBfwpO3a7Lo+fzNr7ln98YiA2wnN9AwVkxi8PWgWP9DONCSS5ALRA==
X-Received: by 2002:a17:902:cf05:b0:1fc:41c0:7a82 with SMTP id d9443c01a7336-1fc5b0ce813mr30962705ad.0.1721272668394;
        Wed, 17 Jul 2024 20:17:48 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-1fc0bc27383sm82503565ad.140.2024.07.17.20.17.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jul 2024 20:17:48 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH] wireless-regdb: Add regulatory info for Namibia (NA) for 2023
Date: Thu, 18 Jul 2024 11:17:18 +0800
Message-Id: <20240718031718.19403-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_201750_189568_B9BC205A 
X-CRM114-Status: UNSURE (   9.35  )
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

COMMUNICATIONS REGULATORY AUTHORITY OF NAMIBIA released NOTICE IN TERMS OF
THE REGULATIONS REGARDING THE SUBMISSIONS OF INTERCONNECTION AGREEMENTS
AND TARIFFS on 3 April 2023 [1].

* 2400-2483.5 MHz
  100 mW e.i.r.p.

* 5150-5350 MHz
  200 mW mean e.i.r.p.
  Restricted to indoor use
  The maximum mean e.i.r.p. density shall be limited to 10 mW/MHz
  (ETSI [2]: 200mW (23dBm) -6 dBm to be 17 dBm; DFS 5250-5350)

* 5470-5725 MHz
  250 mW e.i.r.p.
  Indoor as well as outdoor use allowed.
  The maximum mean e.i.r.p. density shall be limited to 50 mW/MHz
  (ETSI [2]: 250mW (24dBm) -6 dBm to be 18 dBm; DFS)

* 5725-5 875 MHz
  PTP/PTMP: max mean e.i.r.p = 4 W
  Mesh/AP-MP: max mean e.i.r.p = 2 W
  (ETSI [3]: The FWA device shall have the capability to reduce the
   operating mean EIRP level to a level not exceeding 24 dBm for
   ChS = 20 MHz and 21 dBm for ChS = 10 MHz. 24 dBm is adopted)

* 5925-6425 MHz
  - 23 dBm (200mW) mean e.i.r.p
    Restricted to indoor use only.
    Mean e.i.r.p density for in-band emissions = 10 dBM/MHz
  - 14 dBm (25) e.i.r.p mW
    Very Low Power (VLP) indoor outdoor use.
    Maximum meand e.i.r.p. for inband emissions = 1 dBm/MHz

* 57-66 GHz
  40 dBm (10W) mean e.i.r.p
  23 dBm/MHz e.i.r.p. density
  Indoor use only

The EN 301 893 [2] specifies reduced power limit of 23 and 27 dBm for
5150-5350 MHz and 5470-5725 MHz respectively for devices that don't
implement TPC. Also reduced TPC requires being able to reduce TX power by
up to 6 dB. The DFS applicable frequency range are 5250-5350 MHz and
5470-5725 MHz.

[1] https://www.cran.na/yglilidy/2023/04/GG-8060-dated-3-April-2023.pdf
[2] EN 301 893 https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.01.01_60/en_301893v020101p.pdf
[3] EN 302 502 https://www.etsi.org/deliver/etsi_en/302500_302599/302502/02.01.01_60/en_302502v020101p.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/db.txt b/db.txt
index 6192dafe9715..2a50afb60c06 100644
--- a/db.txt
+++ b/db.txt
@@ -1355,6 +1355,17 @@ country MY: DFS-FCC
 	(5735 - 5835 @ 80), (1000 mW)
 	(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
 
+# Source:
+# https://www.cran.na/yglilidy/2023/04/GG-8060-dated-3-April-2023.pdf
+country NA: DFS-ETSI
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (17), AUTO-BW, NO-OUTDOOR
+	(5250 - 5350 @ 80), (17), DFS, AUTO-BW, NO-OUTDOOR
+	(5470 - 5725 @ 160), (18), DFS
+	(5725 - 5875 @ 80), (24)
+	(5925 - 6425 @ 320), (23), NO-OUTDOOR
+	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
+
 country NG: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5250 - 5330 @ 80), (30), DFS
-- 
2.25.1


