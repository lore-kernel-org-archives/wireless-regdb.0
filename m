Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 801B4C83F10
	for <wireless-regdb@archiver.kernel.org>; Mon,  7 Jul 2025 02:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B56oOjVy/FRxsveY15m5DvIIxZetafEEuqVHsJ2ZzKs=; b=THWsZxAinbwOv2bQvNZOJszVI6
	bvdbOunHV0yOCSJdtpbdkGa/hSFbCLnGfL9voePy0CGh1vJdC1ZFNgwuvaXEk+MGZ//6mQRa6djDZ
	2ncI2JX/XLKEVAYKhjc+wAOUp+47fYHDbjcm6qhutjiCHZ66dpQvAmqekzmKKkg1tZPuB8JvdKiEA
	cnEdOgGLuxqZSh5/AFFhVXsQtHdmaSe7P6Z2XsA4OUBa4/39wZcUdQcrbfRAHuNaNIbMaetMAMeOl
	aTd9PSRnAMXToh8oMoED68CpJcpwcCIPd9lCvAJ3d8fcIdW3rOSVFjzlyLkzSh3YPMHM/8RIE7E/i
	o++2yXTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYc1B-00000001FAL-3q0e;
	Mon, 07 Jul 2025 02:55:45 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYbsD-00000001E1W-0gMl
	for wireless-regdb@lists.infradead.org;
	Mon, 07 Jul 2025 02:46:32 +0000
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-748d982e92cso1532601b3a.1
        for <wireless-regdb@lists.infradead.org>; Sun, 06 Jul 2025 19:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751856388; x=1752461188; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B56oOjVy/FRxsveY15m5DvIIxZetafEEuqVHsJ2ZzKs=;
        b=E+Yejkmv1iKFm9U99OxrqagtZ4/V9zNyCfRzt2cxAOP9PZuylTv7QTL9WewG6xVf3B
         JHxv50w50XrTtNtSjOK6kk74cU9/mrHe4uwLblyqu42fu1+rXreQUKUCP7xOeFCIVItz
         9fbcu8oG1dZPYGQULZUkSF+rtb6NfwFC6Z2Cp1st7w+rgFDtoCv4ah2Wia03XiA5/vwG
         YALj9/TCeSN9JjQVMfDq0z73gCMuUG9Wr9SDjD00eAU2WxEEteGcQYCFVDLulx3zK9d3
         Pc8oVh3DJ7AmNBRweD7p65FINocDinKM//PZOSBJgejZtchwPgxc2ciYhttfHGK7mDSi
         171Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751856388; x=1752461188;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B56oOjVy/FRxsveY15m5DvIIxZetafEEuqVHsJ2ZzKs=;
        b=lEjHeIGHqrZ7551vU1x90wsJ0g+JhcRs/HlHRZhJESvWYSZAI7MCTBBvtSXXoBAf5L
         gDPaVuL5W5gFjOHTNpa7JPe7l0DFZxW0ulRtMZeQAkIt8ReJKvNt2wFjZaEFrguyZp5v
         cFKXcQt/AkSKtULCfh6NMCt6yD5t/goV5/snzLH6+2fnhutHtV2kfdRGN13AZXZQuEf3
         M8FO9Wo1LofrjP3ODjkX1WhLwHxOeimsAPi9wX+SMs2hYd2riOgfBITBX+SiRO4udHAi
         QMC4lXgBopZ2sLgivLH/WV307DRji9nH0Zcg5SBg8AzmrGntEuHIvQ8/uDlbYHn+FOkt
         Liug==
X-Forwarded-Encrypted: i=1; AJvYcCUf2vkjrhac55oevjMsNUIaOcHPwYOKDNAHDOkLoLeg8k+kRWG+2iTeWonqSe+k9GnQHyJ2pHEvKaun4G2lDg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwKWczdZwqrYfkQoJUMUL8wVxwM+hlCesLRi0+cc62oqBtJWhc8
	QL/qu5cjGPVoVIWdJWKK1xx8h/mYdomyKTOQs4brig0Y+d3lAjxZuEHU
X-Gm-Gg: ASbGnctw8MukExs4Z+FdAHaPBGnOuwVFx+kLc6YDeEErXm/mw8BddxPHsr5IHmoHdvM
	v4vWeI2qhMOsvyLPwpSQV+23NnNtZuNwFuWBW/UxT/gEoAz7Tra38zT646OOkWIpjRX1JFGMzzy
	8slgJc50GB5UUhmRlLrF9s1ey86aC4kwBai0qTiusTBH85NRlp8UwCYnpYwUhslOzBD13QDt/LI
	dp63F2x905xX+dqcpdmgiXuxwyNXk+14HTzr6ttLuGcnVb5gs4w9M2yD4oKjnoSIVX/XsLd/deQ
	F5HVwcCxVepVFDS6RYnbPB90splNg9yvS8IrroWpekabX4SZBOxNLQ5ePoap5TgZwdaJEc9QYvo
	msqvKV4MCtciuLHCnvy1YfVhPveBJBlVgexC7
X-Google-Smtp-Source: AGHT+IEfQ6URslGrfO3OqnNejVIYyV+8z+DZoo0rVfGTWgb4sKGc4b7k9Vh2jiyz5iyaJaIQZifzOg==
X-Received: by 2002:a05:6a00:3e0f:b0:748:fe1a:3432 with SMTP id d2e1a72fcca58-74cf6f1d2bamr8130287b3a.9.1751856388365;
        Sun, 06 Jul 2025 19:46:28 -0700 (PDT)
Received: from localhost.localdomain (125-231-129-141.dynamic-ip.hinet.net. [125.231.129.141])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-74ce35cd066sm8205274b3a.53.2025.07.06.19.46.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jul 2025 19:46:27 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH 2/3] wireless-regdb: update regulatory rules for India (IN) on 6 GHz for 2025
Date: Mon,  7 Jul 2025 10:46:14 +0800
Message-Id: <20250707024615.38507-2-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250707024615.38507-1-pkshih@gmail.com>
References: <20250707024615.38507-1-pkshih@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250706_194629_199777_89DD3CEA 
X-CRM114-Status: UNSURE (   8.78  )
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

Ministry of communications, India released 6 GHz [1] on the 16th May 2025.
Technical parameters are listed on page 7:

 * Lower power indoor
   - Indoor
   - Max. PSD e.i.r.p: 5 dBm/MHz
     (Since minimum bandwidth is 20 MHz for WiFi, e.i.r.p limit is 18 dBm)
   - Max. e.i.r.p: 30 dBm
   - Max. Emission Bandwidth: 320 MHz
 * Very lower power outdoor
   - Outdoor
   - Max. PSD e.i.r.p: -5 dBm/MHz
   - Max. e.i.r.p: 14 dBm
   - Max. Emission Bandwidth: 320 MHz

[1] https://www.legalitysimplified.com/wp-content/uploads/2025/05/Exemption-from-Licensing-Requirement-Rules-2025.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/db.txt b/db.txt
index b5b1308460cc..224edfcd90a9 100644
--- a/db.txt
+++ b/db.txt
@@ -940,12 +940,14 @@ country IL: DFS-ETSI
 # Source:
 # https://dot.gov.in/spectrummanagement/delicensing-24-24835-ghz-band-gsr-45-e-5150-5350-ghz-gsr-46-e-and-5725-5875-ghz
 # https://dot.gov.in/spectrummanagement/license-exemption-5-ghz-gsr-1048e-dated-22102018
+# https://www.legalitysimplified.com/wp-content/uploads/2025/05/Exemption-from-Licensing-Requirement-Rules-2025.pdf
 country IN:
 	(2402 - 2482 @ 40), (30)
 	(5150 - 5250 @ 80), (30)
 	(5250 - 5350 @ 80), (24), DFS
 	(5470 - 5725 @ 160), (24), DFS
 	(5725 - 5875 @ 80), (30)
+	(5925 - 6425 @ 320), (18), NO-OUTDOOR
 
 # Source:
 # https://asnad.cra.ir/fa/Public/Documents/Details/73af8590-f065-eb11-968f-0050569b0899
-- 
2.25.1


