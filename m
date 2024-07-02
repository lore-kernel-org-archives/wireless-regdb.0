Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 648A7C3065D
	for <wireless-regdb@archiver.kernel.org>; Tue,  2 Jul 2024 06:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=480ctViQme20qAYraCKo7nXXY0eaZ2h7Z5p0WmHiNT8=; b=KnicCaycOqC1NCDDZVd8yomeMF
	cikSSW7PNOycnjQC/lz8r7ymGPpALaKpri0vJXhvo/w66gtPefaEk7Gq8/9eh1NrwWIOQPlRBhCTU
	Sb6ttWs3NcrnkGz0I3zwspZYp7rf88SIwmpYgCovhtcuheAfSVHWP3phrTg5wLliQEm45MToX5iT4
	swNRQGMnJUFhBQuZ9OKzr8EKOE4XqnpSdggdbnI92TMh2Vwod1wuSqjoi/ooJ5MKzx23HmuAkzJyV
	okMIk7TkObS6t8NlzuVRsKUQk3KKMfsY6oqL0kUfYmqFa0zSbZcOtvkVkB552z58u2zMQmBJ3tilb
	+7l/7L8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOXMK-00000005m1z-46jD;
	Tue, 02 Jul 2024 06:51:24 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOXMG-00000005lyl-3IKR
	for wireless-regdb@lists.infradead.org;
	Tue, 02 Jul 2024 06:51:23 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-2c2dee9d9cfso2340610a91.3
        for <wireless-regdb@lists.infradead.org>; Mon, 01 Jul 2024 23:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719903080; x=1720507880; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=480ctViQme20qAYraCKo7nXXY0eaZ2h7Z5p0WmHiNT8=;
        b=EyEyqIqMMdPeA/I3J2NrOhdAA/w2yQJ4JhIsPqvfLCt9IxqdOHspwUw6hV2lJBjRYO
         CjGPG+IlXdVF+QZRaO5/AyjsI5cH9D5b8kT2FpCYqyq90r3CXP7DQrVGEYlbdwxfClRS
         +5RaQtwBn3l0U18WUXveEJ7roLRQimXw8bPp+o3x/OWAovGQ2g3xHqMAkvavP78EKeHn
         wTW4wFyPtO7VYcACto36ZJROBEJp5ziO3m5icYRKCwiE7cTp3uVPPNFZJf/DWqZFTR+M
         2dHy3awFz2rY6fOHf6zY2F9WTK3oZcFtsgtHwh6h+JmHcAynXda0eLaY3WMF5WYw+Zal
         GO3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719903080; x=1720507880;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=480ctViQme20qAYraCKo7nXXY0eaZ2h7Z5p0WmHiNT8=;
        b=OxcFTG3u7TObToClkvXAESArQ8c7uHGrlLBbs1X/gg8PQBsWKnRsvRo0R8LWNlOlex
         tJzU3XkoQ3ly2WMXLMkE1mTssk3JhQIYYxZucC3NPJHPoXhWdU12sNoKREU/aEIC8sgs
         KqJpi3Se9UoEdsa+cWGdBqtuC1iYvxOVhACQs4XYeb1G1qI3fWLSH8byAqi36M3/8Ebx
         063z2VN+Ki1jvdJBnliretzBwsfZ3dUtuktXotf+tKIoJjMmrxfa3+oGA+BJdkBUP4sb
         ogBNOeUTJ0Tb8Q5QpaL/mBTx8hxi0fNoix25hHv8Ls+UbvwDm3muoy9OONbnMCM5hYDe
         FH8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWaGnpbwV+amfKzWRWjV6ota5vuA9HPgUOM7uGKE0h/Se5s/jNOgt4plBY2fm8KUU9Ol71MN1Gf0YgAzNi9ArhzEcx34ABStkoNYeAO3UOjKXTz
X-Gm-Message-State: AOJu0Yy8S9FY3zeMaFWtE8Qc9npCcbUxZEqzudgYdmv6pBP3C5Z834qd
	gPMxRWK9ksHbvt7Hr2qvK0GqH9l/jMM6b8dA17Xal+IDEVMcnG/GSI7mGaIa
X-Google-Smtp-Source: AGHT+IGUSoep6Km/t6cvq2Owmre4HntBHTWC6wC0vLAhOWD4UbfNjmvoA/Zq/nb3/Ncj8+9qZZg9qg==
X-Received: by 2002:a17:90a:17eb:b0:2c2:f8dd:e15c with SMTP id 98e67ed59e1d1-2c93d75e7d7mr4373753a91.37.1719903079646;
        Mon, 01 Jul 2024 23:51:19 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-2c91d3bc5e7sm7976490a91.36.2024.07.01.23.51.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 23:51:19 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH v3 3/3] wireless-regdb: Update regulatory info for Macao (MO) for 2024
Date: Tue,  2 Jul 2024 14:51:00 +0800
Message-Id: <20240702065100.13644-3-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240702065100.13644-1-pkshih@gmail.com>
References: <20240702065100.13644-1-pkshih@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_235120_855343_CE154A9B 
X-CRM114-Status: UNSURE (   8.65  )
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

MACAU SPECIAL ADMINISTRATIVE REGION OFFICE OF THE CHIEF EXECUTIVE released
Order from the Chief Executive No. 64/2024, which wireless data
communications equipment defined as

 - 2400-2483.5 MHz 200mW
 - 5150-5350 MHz   200mW
 - 5470-5725 MHz   1W
 - 5725-5850 MHz   1W
 - 5925-6425 MHz   250 mW (for indoor use)
                   25 mW (for use in outdoor spaces)
 - 57-66 GHz       10 W

[1] https://bo.io.gov.mo/bo/i/2024/16/despce.asp#64

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v3:
  - add 57-66 GHz
v2:
  - 5470-5725MHz to 5470-5730MHz to have 160Mhz bandwidth
  - keep DFS flag for original ranges since it defined DFS-FCC
---
 db.txt | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index c046e0269e67..d7592c299c62 100644
--- a/db.txt
+++ b/db.txt
@@ -1259,12 +1259,16 @@ country MN: DFS-FCC
 	(5735 - 5835 @ 80), (30)
 	(5925 - 6425 @ 320), (100mW)
 
+# Source:
+# https://bo.io.gov.mo/bo/i/2024/16/despce.asp#64
 country MO: DFS-FCC
-	(2402 - 2482 @ 40), (23)
-	(5170 - 5250 @ 80), (23), AUTO-BW
-	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
-	(5490 - 5730 @ 160), (30), DFS
-	(5735 - 5835 @ 80), (30)
+	(2400 - 2483.5 @ 40), (200 mW)
+	(5150 - 5250 @ 80), (200 mW), AUTO-BW
+	(5250 - 5350 @ 80), (200 mW), DFS, AUTO-BW
+	(5470 - 5730 @ 160), (1000 mW), DFS
+	(5725 - 5850 @ 80), (1000 mW)
+	(5925 - 6425 @ 320), (250 mW), NO-OUTDOOR
+	(57000 - 66000 @ 2160), (10000 mW)
 
 country MP: DFS-FCC
 	(2402 - 2472 @ 40), (30)
-- 
2.25.1


