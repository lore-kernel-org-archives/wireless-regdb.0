Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 371EAC02198
	for <wireless-regdb@archiver.kernel.org>; Thu, 13 Feb 2025 01:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HRWOyFzKSFOHOMVQ8j1lY1vPHUzUEqfRNVTVbm0T0C4=; b=yJ0FLNexYCoy5hH0jBO2V2NuM9
	2nPajLKGz8l6Ezf8LJJr8PP3VQnMqCiGwFjUQyamsQTo5OwqcM4k3dT2Y/AAJ4mKRRIiYfI03ijBi
	SJhPizykye8iI26KtwDpA9opcQhjLtgP/NK8oX9t6HJfozBb5P8W+KLtToofAlHVx4xIVpF5jRSOG
	BSo2c7SNsORX2gEX36LtaQUlHFBiW6tiv6B9JSV663cCmgGiLxN79OC3vLqwnhscPV5zmCLmU22qJ
	eZ3EQRHMlAp2lK6cepG8QkQpSMNrCgiEmYFLwpfvYccOE780wPj6wk3hbHz5CJ++X2i1ngjXi7uhQ
	dVZVwCzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiNss-00000009Mv4-3DNY;
	Thu, 13 Feb 2025 01:19:18 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiNsp-00000009Mtk-1E21
	for wireless-regdb@lists.infradead.org;
	Thu, 13 Feb 2025 01:19:16 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-21f5660c2fdso5345785ad.2
        for <wireless-regdb@lists.infradead.org>; Wed, 12 Feb 2025 17:19:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739409554; x=1740014354; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HRWOyFzKSFOHOMVQ8j1lY1vPHUzUEqfRNVTVbm0T0C4=;
        b=mamvow+2BVevUzCmoVzqJwx5v69vPYRxOWif1Vz1U+jg2edsvp9aWWFy8v7AyK66dA
         Iw3kqmGeflE7uiiPOjeGBIRob7okycn3rm/oYQnbQ6QcQZY8/QC1vwWL0MEuV4CSZgFb
         j3PduhgRLwxE5PHGD22OwiyKAsR+ImFu0pJeedbaLPwZA8Cej7jvPwY3GauYhFPCgVr4
         Ej3aRfZr6gI03Vb2MGwacoMTevWg7LpCyK4psetAsyER2dj+dgJycE0Idva+QCkNpWdK
         ZJmXAEpF+BGuMtQ1sCYNQsoP0BGKwu7u3/MqjvF07BPlPaS1uOEYBH85qImebTINFwhi
         EiiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739409554; x=1740014354;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HRWOyFzKSFOHOMVQ8j1lY1vPHUzUEqfRNVTVbm0T0C4=;
        b=n4rIqDiAJ1JrqQtgNNVuIkciC7/XLgha/deGMeG5KjA6wSO48VrYuMrCbeNB+gJpkM
         3BVmo4fMtdES4ppeJE6CXue5Xpn9qUsJe6zIUVU/SflfGE6LhaeKfV4GSynLZHha4obT
         FLWFVQ7mKcsEx5Pn0RYL8uBbvGL2qZtZBeInG1iRJJV0KRpX19U0Lo/9xoFYZXl7lXWQ
         qHx3Mzc1yVf10rY8Uz8ThPUoK64BKpOvwKpCPFnDE1YoXlUZpguVA3kfDRJ789HWb4Jb
         RKaNKbBCEFyoelnilBFNAeONEvjjTeAkmPh5Qb6rv/baA7ZrH+gl7v5PQDLtG9uZpcWa
         0DPA==
X-Forwarded-Encrypted: i=1; AJvYcCV56mS1UfHrSAgnJT69wOYs+IVMdCnlObTm4eYYOYOw/Z5fL1qcmiORm8DF4Zmz8VsgGFuDSwOr36amiYGjtQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz2lsMzULg1NHEq7fe79PwQEz8FEgIECSkaGIhlbg1Ki7kfq7M1
	6fh90SW4GwVJdLWbrexlbz7NLKWyO60TOouz4Gu9sSwARLcfcAkJ
X-Gm-Gg: ASbGncvPbWMucle8xeGuGOq5T2ncVbcqeroCT758YUAHEON99Q01wvJLpCNTxOAEiwp
	k91xj4hEZ3HPw3IA8H8KGZYM81S/p2RpJs+7QjPLg5ii1z6kQ1TewRaMgqERPtSPvbue7X+r1JO
	MscysM06XtIaj9b7OpSBoz6+FtKs+wnO1N55+u7J16DkFDsfErFPSSZQs3r5qDGxDUxb5Pck+Ll
	Ynzlhppkm3PICQhHM2z3e5OaSrATkaTnGU6jbZ2kK+e+NVHhlD/n62XhmiZmS8eqwDa0C0ju+tO
	aCMiZR652pGOt9sIW2YGiZMDhDdbf5ykwCR5c04InOvM2wXRBXXxXnldnQ==
X-Google-Smtp-Source: AGHT+IFIRnd39ca+lAtFvOZdDbCy+iYEi5E6BqgS7zjr3biciAn1U8N2hTZqmvFLeV0LuS7yhjJI8w==
X-Received: by 2002:a05:6a00:4394:b0:724:bf30:147d with SMTP id d2e1a72fcca58-7323c13efc1mr1848732b3a.11.1739409553635;
        Wed, 12 Feb 2025 17:19:13 -0800 (PST)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-73242568a66sm92477b3a.44.2025.02.12.17.19.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 17:19:13 -0800 (PST)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH v2] wireless-regdb: Update regulatory info for Cayman Islands (KY) for 2024
Date: Thu, 13 Feb 2025 09:18:27 +0800
Message-Id: <20250213011827.4528-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_171915_336593_FBF49634 
X-CRM114-Status: UNSURE (   9.91  )
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

Utility Regulation and Competition Office, Cayman Islands, released
Operating Parameters for Wireless Data Transmission (including WiFi)
Services On 18th November 2024 [1].

Both FCC and EU reference are permitted. Adopt FCC reference.

* 2400 - 2483.5 MHz
  - Part 15.247
    * 1 Watt
      For systems using digital modulation in the 902 - 928 MHz,
      2400-2483.5 MHz, and 5725 - 5850 MHz bands: 1 Watt.

* 5150 - 5350 MHz
  - Part 15.407
    * 250 mW
      For client devices in the 5.15-5.25 GHz band, the maximum conducted
      output power over the frequency band of operation shall not exceed
      250 mW provided the maximum antenna gain does not exceed 6 dBi.
      In addition, the maximum power spectral density shall not exceed
      11 dBm in any 1 megahertz band.

      For the 5.25-5.35 GHz and 5.47-5.725 GHz bands, the maximum conducted
      output power over the frequency bands of operation shall not exceed
      the lesser of 250 mW or 11 dBm + 10 log B, where B is the 26 dB
      emission bandwidth in megahertz. In addition, the maximum power
      spectral density shall not exceed 11 dBm in any 1 megahertz band.
    * DFS: 5.25-5.35 GHz

* 5470 - 5725 MHz
  - Part 15.407
    * 250 mW
      For the 5.25-5.35 GHz and 5.47-5.725 GHz bands, the maximum conducted
      output power over the frequency bands of operation shall not exceed
      the lesser of 250 mW or 11 dBm + 10 log B, where B is the 26 dB
      emission bandwidth in megahertz. In addition, the maximum power
      spectral density shall not exceed 11 dBm in any 1 megahertz band.
    * DFS: 5.47-5.725 GHz

* 5725 - 5875
  - Part 15.407
    * 1 W
      For the band 5.725-5.85 GHz, the maximum conducted output power over
      the frequency band of operation shall not exceed 1 W.

* 5925 - 6425 MHz
  - Part 15.407 (but no description; reference [2])
    * -1 / MHz (12 dBm is adopted)
      Accordingly, the Commission concludes that the appropriate maximum
      power spectral density for low power indoor client devices in this
      band is 6 dB below the limit for access points (or -1 dBm/MHz based
      on the adopted PSD limit).
    * NO-OUTDOOR

* 57 - 71 GHz
  - Part 15.255 (but no power value; reference [3])
    * 40 dBm
      The average power of any emission shall not exceed 40 dBm and the
      peak power of any emission shall not exceed 43 dBm.

[1] https://www.ofreg.ky/viewPDF/documents/2024-11-19-16-28-50-OfReg-WiFi-Permitted-Parameters-V2.pdf
[2] https://www.federalregister.gov/documents/2020/05/26/2020-11236/unlicensed-use-of-the-6-ghz-band
[3] https://docs.fcc.gov/public/attachments/FCC-16-89A1.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v2:
  - extend "5470 - 5725" to "5470 - 5730" (+5MHz)
  - drop AUTO-BW from "5470 - 5725" and "5725 - 5875"
---
 db.txt | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 4603324b4920..d56ad32d31c9 100644
--- a/db.txt
+++ b/db.txt
@@ -1069,12 +1069,15 @@ country KW: DFS-ETSI
 	(5470 - 5825 @ 160), (24), DFS
 	(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
 
+# Source: https://www.ofreg.ky/viewPDF/documents/2024-11-19-16-28-50-OfReg-WiFi-Permitted-Parameters-V2.pdf
 country KY: DFS-FCC
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (24), AUTO-BW
-	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
-	(5490 - 5730 @ 160), (24), DFS
-	(5735 - 5835 @ 80), (30)
+	(2400 - 2483.5 @ 40), (1000 mW)
+	(5150 - 5250 @ 80), (250 mW), AUTO-BW
+	(5250 - 5350 @ 80), (250 mW), DFS, AUTO-BW
+	(5470 - 5730 @ 160), (250 mW), DFS
+	(5725 - 5875 @ 80), (1000 mW)
+	(5925 - 6425 @ 320), (12), NO-OUTDOOR
+	(57000 - 71000 @ 2160), (40)
 
 # Source:
 # http://adilet.zan.kz/rus/docs/V1500010730
-- 
2.25.1


