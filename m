Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40069CEB2FE
	for <wireless-regdb@archiver.kernel.org>; Tue,  1 Oct 2024 06:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ou2UBEoY95HsSQFIFjrO2N/l0x2xL08+3BVXGHJ++L0=; b=a5oMmTOTnJd3mPwxzNoVgW6m+6
	8zgOa3b6qDFDXR3xms+8cd9AAOoe86HHFJ7qYzQ1cKmVGYlD2E0HwyjptsMo/uR09S2v1ODXhFNDx
	ICq8aft8c1JH8mCY1FlnybgFIAZdsba4tI07V/vwpvOISNHkgkhC6tnosG2F0Zi0qAwNUH15lt7B7
	db0ZD7K4ioW0vDU2X9NJ5m4a6Ghe+/vRaH8qjBEYpCzsOik3bBPsVUSK3HgrlkOabBopoJUjmJ1a7
	ICI74zcdUyub7YM/8QF/MG41+yl4BKKjKlMHg5hmjy/i0MxAbf4yqsM9z8xwybnFfncTTTGHprGZt
	n552n+bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svWUc-00000001lwK-0pZj;
	Tue, 01 Oct 2024 06:36:18 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svWTZ-00000001lmh-0wTt
	for wireless-regdb@lists.infradead.org;
	Tue, 01 Oct 2024 06:35:15 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-20bb39d97d1so2481565ad.2
        for <wireless-regdb@lists.infradead.org>; Mon, 30 Sep 2024 23:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727764512; x=1728369312; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ou2UBEoY95HsSQFIFjrO2N/l0x2xL08+3BVXGHJ++L0=;
        b=dJ7JiXcsPkuQVYANx4SKNtfq3n4GzBoorV40ssXFh5Ig8iVJw1w2pRZh2VvInFXhC6
         RT7iTVBOCvyfqLij3K39KKdjNDrRhz5tMCX/igOlGACgzfaC99hHpKogznFTzFSe9sCo
         yha+qjajIijZNjrG39U8JSHYmB6ek2s9t9wKof0i9DuYtDiM/do5V3NiM2RZrrUYr0wd
         H52/lbDTGckgXVnywolfCgH/HX7QuRUEboQxjyq6jPnLGMZmNXGNdLDkv4dTLy/g0tmB
         k54ZRN4QJv02DWIGPiriUBUmzH00qGBweS2rvTO9NdGtwoTCKFTh896PGpaQLFTM3+ot
         Txnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727764512; x=1728369312;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ou2UBEoY95HsSQFIFjrO2N/l0x2xL08+3BVXGHJ++L0=;
        b=kWYhhypndgvJtLpbfr/Nr6fmHRG628vFoIct4yjWkPEPCH+jsiVpsWUd8rEkc4aQUe
         YKa15JKhNvfISq5jkOfvYwigNTpY1boX12gs4dX8iyJT4VYNWam2EJfPuAZMzjQze3KD
         zMjDpsnY06p3CJlGyMQ3JWwXIE1lUq3kf6GAw9aJ5monvbYINEtui3zNWnWqBVrfzdql
         4rj9nixOYyXPz3h2ySthsaV5L3tN28kiR3b2UReKcPuXw7qJKjL5JPveUKlGCIx0jJYo
         n8DYJuC5kWlJIqT6GpE2kR2c12xEGQKLKKbXhcmrpUEmYluomk/4Av9YpiYXnOtpkAsw
         ToMw==
X-Forwarded-Encrypted: i=1; AJvYcCXQ+y+kt7ZytQ5cr4YeM/Q+qUL25WQcPj+NTAA5UbnZaewFFRTctgPup+anpT+AVz+GmwMwh7iXC6lLWx8sHQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwZIwjcMafXmfGvI92QbnFTkD/FzC3NjN91YUkWZp+0OtwqtYdo
	+qGIsyCCLIYEkqNHvOywdX/cCr+MA5CtCZdD/csGO9S8rdMTCjxr
X-Google-Smtp-Source: AGHT+IFHyqrsQCdO8VSAOw0hPJvRNbiXbTDcRmMnvrR4RiZY+PlefWDW6p95WISDErRFlsxHS+EDsw==
X-Received: by 2002:a17:902:e888:b0:20b:7731:e3df with SMTP id d9443c01a7336-20b7731e68cmr91202675ad.43.1727764512159;
        Mon, 30 Sep 2024 23:35:12 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-20b37e20dffsm63934325ad.170.2024.09.30.23.35.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 23:35:11 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH] wireless-regdb: Update regulatory info for Pakistan (PK) for 2024
Date: Tue,  1 Oct 2024 14:34:30 +0800
Message-Id: <20241001063430.8347-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_233513_293741_A105B891 
X-CRM114-Status: UNSURE (   8.99  )
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

The Pakistan Telecommunication Authority released FRAMEWORK FOR WIRELESS
LOCAL AREA NETWORK - 2024 [1]

* 2.40-2.50 GHz
  - 30 dBm EIRP
* 5.725-5.875 GHz
  - 30 dBm EIRP
* 5.925- 6.425 GHz
  - Indoor use Only
    * 23 dBm Maximum mean EIRP
    * Power Spectral Density of WLAN operating under this provision shall
      not exceed 10 dBm/MHz.
  - Outdoor use
    * 14 dBm Maximum mean EIRP
    * Power Spectral Density of WLAN operating under this provision shall:
      - not exceed 1 dBm/MHz.
      - not exceed 10 dBm/MHz for narrowband operations on BWs below 20 MHz

[1] https://www.pta.gov.pk/assets/media/2024-09-23-WLAN-Framework-Final-05-09-2024.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/db.txt b/db.txt
index 956cfd044157..adda839f4cf4 100644
--- a/db.txt
+++ b/db.txt
@@ -1521,17 +1521,14 @@ country PH: DFS-FCC
 	(5925 - 6425 @ 320), (250 mW), NO-OUTDOOR
 	(57000 - 66000 @ 2160), (24)
 
-country PK: DFS-JP
+country PK:
 	# https://fab.gov.pk/type-approval/
 	# https://pta.gov.pk/media/Pakistan_Table_of_Frequency_Allocations.pdf
 	# https://www.pta.gov.pk/assets/media/iot_srd_regulatory_framework_01-06-2022.pdf
-	(2402 - 2482 @ 40), (100 mW)
-	(5150 - 5270 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
-	(5270 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW
-	(5470 - 5610 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW
-	(5610 - 5725 @ 80), (200 mW), AUTO-BW
-	(5725 - 5875 @ 80), (1000 mW)
-	(57000 - 66000 @ 2160), (40)
+	# https://www.pta.gov.pk/assets/media/2024-09-23-WLAN-Framework-Final-05-09-2024.pdf
+	(2400 - 2500 @ 40), (30)
+	(5725 - 5875 @ 80), (30)
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 
 # PL as part of EU/CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
-- 
2.25.1


