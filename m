Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
 :From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=GGj2jmLnpLmE8zJTec9gzpfl1dx/y6pKS9uJxrSEfec=;
 b=tlOAU+ciG4h8DW
 uOubrJzt2jNEn3Ofrkp/P7vb/Lmeavrtao2jkvEI1P7tY+Q9NKik/TvXlzDSMiQ3t+aRY072kzC4i
 BW6SrCFdW1rkO54MgClGS2WnFqXrjqhCC2Hk5UKIp13p+zU3q1jD8OTBP45BXn38Y09Yf3JtaGu7N
 NjzSIl6EPRU6hSjP7mQyV+c8iQyHBi2/tkkEICs7K383eVbRTuKsvCnxw1Q1EMuXEfpfk9vnYljPm
 98BFp96kHAuZG/98kwL/DkTFeCJJRNZaYoOeMZ7lbxeupN+3wSN4+1sNgtzJjFHDj0+sPiTUR4Wdh
 AiXGkWMu0/VZqG6196PA==;
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLBaj-0000e9-Qa
 for wireless-regdb@lists.infradead.org; Sun, 05 Apr 2020 20:10:03 +0000
Received: by mail-wr1-x443.google.com with SMTP id h9so14949199wrc.8 for
 <wireless-regdb@lists.infradead.org>; Sun, 05 Apr 2020 13:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=59ygflbpAkIRwMVUaF51S+Y9tq+5sCewZts0noUXoCQ=;
 b=prWMqfC3A16KW7vDTmnaYvVZzBfEMyOqMs+deQ/wY0ivpjHLsL7TUzeqOixdhlGMzO
 ep2WstqpJtRa9c/MR8tQWr/13uhdEJ4+q9hfDj8C+80i6mITBn6VddiyJV7F4NPXAuuD
 ZwgOsykkhFdxpimocXqw45GtCWCy73WRuHwYC30RxGbcuCYqIMVF6XPPe7lHy24Ho3Oj
 mUEko2pFMqK6oQ/USLEBCJMVGR0yqG9cePRAH4RReNG8cWN/tA0bZm3i91I0xzlLDTtI
 1hGghJDVrgqTb9jmZqis4KkYFYcHtJ7dYh9XwTiec3JmEQcO7mA7QjH/We/wC3hLrJRT Eiog==
From: bkil <b.K.il.h.u+tigbuh@gmail.com>
Date: Sun,  5 Apr 2020 22:09:42 +0200
Message-Id: <bd3095568bfcb9ee543cc1b2b68d22f5cd6e1c3c.1586117381.git.b.K.il.h.u+tigbuh@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: update rules for US on
 2.4/5G
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

The bands are wider and more continuous:
5.15-5.35 GHz, 5.47-5.725 GHz and 5.725-5.85 GHz.
Based on the April 2, 2020 version of e-CFR Title 47 Part 15,
Radio Frequency Devices.

This also includes a small tweak for channel 144 similar to TW.

Signed-off-by: bkil <b.K.il.h.u+tigbuh@gmail.com>
---
 db.txt | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 9c4b447..6096121 100644
--- a/db.txt
+++ b/db.txt
@@ -1556,13 +1556,19 @@ country UG: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+# https://www.ecfr.gov/cgi-bin/text-idx?SID=eed706a2c49fd9271106c3228b0615f3&mc=true&node=pt47.1.15&rgn=div5
+# Title 47 Part 15 - Radio Frequency Devices, April 2, 2020
 country US: DFS-FCC
-	(2402 - 2472 @ 40), (30)
+	(2400 - 2483.5 @ 40), (30)
 	# 5.15 ~ 5.25 GHz: 30 dBm for master mode, 23 dBm for clients
-	(5170 - 5250 @ 80), (23), AUTO-BW
-	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
-	(5490 - 5730 @ 160), (23), DFS
-	(5735 - 5835 @ 80), (30)
+	(5150 - 5250 @ 80), (23), AUTO-BW
+	(5250 - 5350 @ 80), (23), DFS, AUTO-BW
+	# This range ends at 5725 MHz, but channel 144 extends to 5730 MHz.
+	# Since 5725 ~ 5730 MHz belongs to the next range which has looser
+	# requirements, we can extend the range by 5 MHz to make the kernel
+	# happy and be able to use channel 144.
+	(5470 - 5730 @ 160), (23), DFS
+	(5730 - 5850 @ 80), (30)
 	# 60g band
 	# reference: section IV-D https://docs.fcc.gov/public/attachments/FCC-16-89A1.pdf
 	# channels 1-6 EIRP=40dBm(43dBm peak)

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

