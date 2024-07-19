Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60014C3DA49
	for <wireless-regdb@archiver.kernel.org>; Fri, 19 Jul 2024 03:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hw9MxDYjCDZPKe0pPKGa20/2reQTiIpQlhrmRrwXuGY=; b=j1W3eYN1KCTHbReFBQXLOYbh3Y
	Ca3Y59l0jXPRnPgX1WeJTpSaYfWr7fqf9Ake40vzG+ZpkujYZfaQjmUpZXYwVEVa9IH8iYN/WaVpu
	Lz0xWKRInRJ9aJghENPOENo2CvRbVWHmzUpGhI2Mb6xoGryF8EEAzIvBWiFCwa2rM5NhkXKzKhsjy
	ptAyh9qHquiaTXqN+cD/SfFGnGhx3Ci373CDAsLMQw2rYrEUMYE2T8wbJnQQ2cOo4pBGCTg/twHrk
	GgL65wdf2EapZrRTIGT1Vn/gM6I1/0SOCaNKg+sIvHDjyDkmC1DMpvyiVmU2IVmbUqXDgsY/zT3D0
	w9Qd0PTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUeDz-00000001Pgx-2wzT;
	Fri, 19 Jul 2024 03:24:03 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUeDw-00000001PfW-0X6v
	for wireless-regdb@lists.infradead.org;
	Fri, 19 Jul 2024 03:24:01 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-70b1207bc22so371947b3a.3
        for <wireless-regdb@lists.infradead.org>; Thu, 18 Jul 2024 20:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721359439; x=1721964239; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hw9MxDYjCDZPKe0pPKGa20/2reQTiIpQlhrmRrwXuGY=;
        b=I0BA7z27Btk5LGPIauCs6kTr4eujpy4MtCzR/qwnPLUUzBrqIeZkzPTBAU/qTE3D+0
         wKfmmE23OEBD3bVJFIAa15zrGEvA3i5T+/WK6QWlsXPWSKf90CH0QPHSGiW+c8pewu3S
         fREzGJkPj/ptDP/8Q7MSjnPs/kgNMluxYaEkczzYJvdnLoqs8mkVOXFXQ5xZXTGb5S6f
         oQyMdfXGKruBnBmpDF3sy3AU00p4ktlts415SBSE+89SPD3Tmkt8siNi+koHwObFMKhS
         /qwqi/6i4tYkxzqCu/5DhS8BLIczYb2XtMnzYMeqW5VH3rkWmyTWtcQux47lj6rC3tI4
         5Alw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721359439; x=1721964239;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hw9MxDYjCDZPKe0pPKGa20/2reQTiIpQlhrmRrwXuGY=;
        b=vu0NEZZf19laLMlp5PfxopafqAv2BEBwfViN1m7lc3YeyxrhfJRh6OA3YHqJyMwg0Q
         mE/uUenJ13lw7cC+LfSzdX1aKrDMZeimjVz/og7P3ge/QlxEoKwtktfT9VYBA6UmUZZm
         7vEyBImxt3P4BYMmVmJ53CMngMf5E64A/v3Ow0G6rmtwJ+YXsVo5Q9/Q6n/sXXscKY/E
         3+fMzrtFhx0olIYOWxxQvt4ioJ3C8NAi7VA65YZK7Ed1PxR6YHQnbA9Q/v0xRRGtKfVE
         z4hKy2FSUZAQwQxgj6hVvq0OR3Qb/b4f3M6ipUO1onXcM6I4UU572O5R2rLX/AE1rUYI
         7N/Q==
X-Forwarded-Encrypted: i=1; AJvYcCVi32ZE/MnYUKjTwcbuP7DcC42fwpcLaH3tH20u5RDaklTZl3I3pZOg6GPMoFQ41h2FHQajIZjI2bjOhKqAoYrqNX4Bd9IoC95TTzpHMp2EuNRK
X-Gm-Message-State: AOJu0Yz8zZE8IIv1gDAPSKR5TOIGTJx4HpN1yqSJjC3MMItS3Mm19vPO
	nfDncCVSz0NC122bt1dYWta/69IhtFvSHQXji23vRxilddJV8CWA
X-Google-Smtp-Source: AGHT+IH3QDE73aAhx7uVbuP5X1jQyZQZTQlKAU8dt8Owuy+t+9KZh+fRw0cGEJOdioXFi4LV0cdwnQ==
X-Received: by 2002:a05:6a00:4b4d:b0:70b:29bf:bbde with SMTP id d2e1a72fcca58-70cfc8f8d6cmr1977912b3a.12.1721359438917;
        Thu, 18 Jul 2024 20:23:58 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-70cff59fd9csm279160b3a.173.2024.07.18.20.23.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jul 2024 20:23:58 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH v2 2/5] wireless-regdb: Update regulatory info for Peru (PE) on 6GHz
Date: Fri, 19 Jul 2024 11:23:23 +0800
Message-Id: <20240719032326.7353-2-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240719032326.7353-1-pkshih@gmail.com>
References: <20240719032326.7353-1-pkshih@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_202400_192179_DBA4A8D2 
X-CRM114-Status: UNSURE (   8.29  )
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

Ministerial Resolution -2021-MTC/01 decided

For the band 5925-7125 MHz, low power indoor case of use.
 - access point
   maximum EIRP: 30 dBm
   Limited power spectral density: 5 dBm / MHz
 - user devices
   maximum EIRP: 24 dBm
   Limited power spectral density: -1 dBm / MHz

With minimum bandwidth 20MHz and PSD -1 dBm/MHz, 12 dBm is adopted.

[1] https://cdn.www.gob.pe/uploads/document/file/1861732/Resoluci%C3%B3n%20Ministerial%20nro%20373-2021-MTC/01.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v2:
  - explain how induce how we induce 12 dBm from PSD -1 dBm/MHz in commit
    message
---
 db.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/db.txt b/db.txt
index 5cada55b51eb..1e0a14b8670f 100644
--- a/db.txt
+++ b/db.txt
@@ -1443,12 +1443,15 @@ country PA: DFS-FCC
 	(5725 - 5850 @ 80), (36)
 	(57000 - 64000 @ 2160), (43)
 
+# Source:
+# https://cdn.www.gob.pe/uploads/document/file/1861732/Resoluci%C3%B3n%20Ministerial%20nro%20373-2021-MTC/01.pdf
 country PE: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17), AUTO-BW
 	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
+	(5925 - 7125 @ 320), (12), NO-OUTDOOR
 
 country PF: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
2.25.1


