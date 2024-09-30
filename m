Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CF3FCF6497
	for <wireless-regdb@archiver.kernel.org>; Mon, 30 Sep 2024 08:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hT900MQVpXa5tDUbRnu9huAT0/u/D21Vi3hT0pX5t/M=; b=i6g/VXgxaKfOszyWHj7CmvlgxJ
	gTSrHvnZbpnhQL1tXg8hZ6IpRYAhO08tQWPS8wejGV80Ki8+djcJWQJrwSVcCvlR6TYcB9zABts7z
	BEcCA/2uca4USmJTUiob3jGQldt3S94JN9WhJcViWcfBSZm2+dQLYUMUdAnqx5IcIqUdNNtNzBj87
	UGMVxx8KMTRs7z0rQODIRVyGFXqAK1iGyhkyYyQKHAEW4QYSLLBhazuZmfoo9YeqFxq1Lmjwc7WEJ
	HApS3gIPhagxFkmmu0HpjxhTxUzfVC5kjUlgY8o81sZkycAN7Fy5DeQqVc8lGS77ZxXhDhSIO4lrA
	o7L7+rJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svC8q-0000000GP2z-3ua5;
	Mon, 30 Sep 2024 08:52:28 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svC8o-0000000GP2F-2UsD
	for wireless-regdb@lists.infradead.org;
	Mon, 30 Sep 2024 08:52:28 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-7db54269325so3102368a12.2
        for <wireless-regdb@lists.infradead.org>; Mon, 30 Sep 2024 01:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727686346; x=1728291146; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hT900MQVpXa5tDUbRnu9huAT0/u/D21Vi3hT0pX5t/M=;
        b=kg4pF3ZBsI5eJgEHxNpNBym8kMz7ky+VgdBGc9MHStiT+7CgYw7E5mamL9fUYVMi/j
         iS9xFvyIY/EUXBWkjDKucoqjXO7X9Y15RiGotnk3uDG9ye2PYJABfRI/IxYaxqM0vhw2
         +VS4hyR7oxf+4Rm/gMyISbDPlpeY/fudqeOL7xRg3miwIkJHAkWY1KOJ074D135el9TI
         Zwa7BGQfvJRMSTWqCLMdx1pPfdGreTyGrNBTN9irZ39J8q70jdybohCBf61r0z8vZBUi
         2OLAMQcCsQE0kjaK5+klxiY4k44MK+DHClplr91lkGxhDYyKb6md/6m5TY2FlnILESvM
         dpoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727686346; x=1728291146;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hT900MQVpXa5tDUbRnu9huAT0/u/D21Vi3hT0pX5t/M=;
        b=UR/HoMvPy5acKW8flYC6VZv2ad1gHzpfejhgoV3DVlfzdXwTnJJI5dp2YeTeeYwu0d
         g3zPXH1JrWjm/imobtzqkCdquuu/+XIJB+aZQvk3yTLg/4/lMu5GnuP4pkDy3e09rm1b
         negpoPlBNCbBhgsf9AUSrOukV265u6a4NVrzZUgyoOW/VZ2CSN6AV7LbqpZ2MJN3c3hT
         D0vCRGgRHxp4URboFXk5SJmAsAOp1CmMhu8sxwEIuOqPrzYJb6D6WW6n8OR/tYCa9Jwj
         J9/+GxfsLNAL5/cbpQFdS62AN2COuDX/sl4Ox6pPTlcjB38JKArODq3JQm2vUwu6WcWF
         +6Nw==
X-Forwarded-Encrypted: i=1; AJvYcCXlZXbUAyHaeY1llp7SX9tSqLLs4SrKAiEeKECS5lIyb5BvT+a/HAL5N+6WZhJo3qNdgFKmYInYsPsQWHmwmA==@lists.infradead.org
X-Gm-Message-State: AOJu0YznoUC4Nb5l211S9UdbSixZcTXzk24FrKnyOfwQFeI/X7HRnlMT
	As6XM9n4VENMaTG3G3MdeKQGofCqSZNo2tbS3/SZQ6tfbeP8ewFUWZ3190h9
X-Google-Smtp-Source: AGHT+IEwE+dJYvcb71id0l2YD4NvE1doLPKZAiOo1UvuxHWIQzv/fRz2UK+KxVFfRn/BpobLp/ZqVQ==
X-Received: by 2002:a05:6a20:2d0a:b0:1d5:1604:65e5 with SMTP id adf61e73a8af0-1d516046696mr7204456637.40.1727686345584;
        Mon, 30 Sep 2024 01:52:25 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-71b2652b1c0sm5940149b3a.145.2024.09.30.01.52.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 01:52:25 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH v2] wireless-regdb: Update regulatory info for Tanzania (TZ) for 2024
Date: Mon, 30 Sep 2024 16:51:43 +0800
Message-Id: <20240930085143.10754-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_015226_659359_AD99B5DB 
X-CRM114-Status: GOOD (  10.46  )
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

United Republic of Tanzania, Tanzania Communications Regulatory Authority
released Minimum Technical Specifications for Short Range Devices (SRDs)
on 2024 [1].

 * 2400-2483.5 MHz
   - 100 mW e.i.r.p.
 * 5150-5350 MHz
   - 200 mW mean e.i.r.p.
     * The maximum mean e.i.r.p. density shall be limited to 10 mW/MHz
       in any 1 MHz band.
   - EN 301 893
     * without TPC: 20 dBm when operating in 5250-5350 MHz
       (20 dBm is adopted for 5250-5350 MHz)
     * DFS: 5250-5350 MHz
   - Restricted to indoor use.
 * 5470-5725 MHz
   - 250 mW e.i.r.p
     * The maximum mean e.i.r.p. density shall be limited to 50 mW/MHz
       in any 1 MHz band
   - EN 301 893
     * DFS: 5470-5725 MHz
   - Indoor as well as outdoor use allowed.
 * 5725-5850 MHz
   - 1W
   - EN 302 502
     * DFS: 5850 - 5875 MHz
     * FWA device shall have the capability to reduce the operating
       mean EIRP level to a level not exceeding 24 dBm for ChS = 20 MHz
       (24 dBm is adopted)
 * 5945-6425 MHz
   - 23 dBm for LPI usage
     (should be indoor naturally)
   - 14 dBm for VLP usage

[1] https://www.tcra.go.tz/download/sw-1719952895-Minimum%20Technical%20Specifications%20for%20Short%20Range%20Devices%20(SRD),%20June%202024.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v2:
  - 20 dBm when operating in 5250-5350 MHz for devices without TPC
---
 db.txt | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 956cfd044157..932f8464de5a 100644
--- a/db.txt
+++ b/db.txt
@@ -1873,9 +1873,15 @@ country TW: DFS-FCC
 	# 60g band, LP0002 section 4.13.1.1 (1)(A), EIRP=40dBm(43dBm peak)
 	(57000 - 66000 @ 2160), (40)
  
-country TZ:
-	(2402 - 2482 @ 40), (20)
-	(5735 - 5835 @ 80), (30)
+# Source:
+# https://www.tcra.go.tz/download/sw-1719952895-Minimum%20Technical%20Specifications%20for%20Short%20Range%20Devices%20(SRD),%20June%202024.pdf
+country TZ: DFS-ETSI
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW), AUTO-BW, NO-OUTDOOR
+	(5250 - 5350 @ 80), (20), DFS, AUTO-BW, NO-OUTDOOR
+	(5470 - 5725 @ 160), (250 mW), DFS, NO-OUTDOOR
+	(5725 - 5850 @ 80), (24), DFS
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 
 # Source: https://zakon.rada.gov.ua/laws/show/z0201-15#n48
 # Although it is allowed to use up to 250 mW for some 5 GHz frequency ranges,
-- 
2.25.1


