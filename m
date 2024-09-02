Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEC8CCD3420
	for <wireless-regdb@archiver.kernel.org>; Mon,  2 Sep 2024 08:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r8bTGvEs3Q5r6pWXaNSZ4u2S0bpZw9YNQLa6Yn4tjO4=; b=RGzrm6MvtdujgpK+WYKN8QbhYn
	8gLulVVDwV1ercQ8But+CkFMGmGOTS5C1AKi6ziP8L7+IDIHVPkjJVBn6CfUFDzOMTiPrAuBty1bN
	7KbE8M9+AJ1COQrwsFYdA0FKA8Oh4VtjADKUuP2DrbAMhwEMXWiG+0OldAb4NG+cgZXHT/vNAQUMa
	wIBUtrsrODPN7O680wajIBLWPD+MUK0RSG4Nyx30/67Ju2l+O3Xp5nrjiSe8b09i3nXtvHJHKKRLW
	ypUUyrXS/4kVyGfpWyuJBdswyxiF/dD0UV342OgbP+aj5q+Sas/i3l27pJzesscwZI3I/HB8R2gJ5
	U25isCgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl2OB-0000000DUer-0fyS;
	Mon, 02 Sep 2024 08:26:19 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl2LN-0000000DTxq-1ird
	for wireless-regdb@lists.infradead.org;
	Mon, 02 Sep 2024 08:23:27 +0000
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-71423273c62so2982235b3a.0
        for <wireless-regdb@lists.infradead.org>; Mon, 02 Sep 2024 01:23:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725265404; x=1725870204; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r8bTGvEs3Q5r6pWXaNSZ4u2S0bpZw9YNQLa6Yn4tjO4=;
        b=mL2vtCnTAUcmIlXO6ik1gnRIok7+EXD7nzU5pL4Auudlmt6DiXnNa0qkNkYkm8K4Jt
         AdCk5S9LtvAdFFWqjzYRTWk3Uld9PqPZgrcu15EU5o2fyYTAQsysTXZ+8t3TZ4kYZNu3
         4r6DMAhVyBTVuyY87bSgpDh0+IOvNz7JjMFlK/QRekD6c6aXDI3TwR3R2HpU5gu3+O7I
         O+bsQfU4msZQZ4cEi5Er2vH+5J6uODv5aoErTjBQMFFkJ1AN+rVqFdgNZubGYOc7SnvV
         MNya80jnnrmDrrkj8DpK/MD9PyrvHpGAqNrG7e2xJc8Fsl3mbEMZ2kDGCW3TbWxP2pQx
         mUEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725265404; x=1725870204;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r8bTGvEs3Q5r6pWXaNSZ4u2S0bpZw9YNQLa6Yn4tjO4=;
        b=WQIUh4juSL6NpBJVZxuo3vP4tsva7ZYHkox0q5zIdy+c29MNrZiFmw8CmNyLZrqLDG
         uA/tzGDIQ3n+VxLTVi5FAeYoWsPl30LmXOnnpZpqNdYP4cmve3Gx1nFNeOWcn0hkvkfR
         /IyBhuoJrYNEAjgFgJV+mWDYK9DBq+OUNOtAIvhYhYFElMgYqR8agdVQHPsGH/9KmZjW
         fZcUnqGbXBn0DQiB86wg/dxmS+6g8uGrwDD5fQATxogcNAF6CgZXC/I/vDHQ5LmlLldq
         qYoKkwEtRiZU5QTdFb4UhjREJH0xFp4TC8mfRBitnwEkaEtOjO2KTkZ2vj5gXWhGcjyR
         6VHA==
X-Forwarded-Encrypted: i=1; AJvYcCVgqJFJnPGRxsoeijLQ163boge2sN4ROTCPo6X8VEOGctN4fWRoKorxJomXHs/ToNXk8MyvSgsSPAFwjTxGqQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzp3Lz/go34D3416kCnOJkjRWWVEySYyi/toeA2HN2IJuoyav6T
	AMdZdx8Qk9QIMEHQigUJghfuXeQMMgiflpNPpZ1I2MrfjZlXumI2ka7B76E2
X-Google-Smtp-Source: AGHT+IECDGOe12y+X0pcU97X0ygl9+qJdwuIhgxtbNuVX3Mkkyb2VtLY0pIV31Ha8/KSrYfTkGchLA==
X-Received: by 2002:a05:6a00:b81:b0:714:20a8:d79f with SMTP id d2e1a72fcca58-7173fa846ebmr4873304b3a.14.1725265404332;
        Mon, 02 Sep 2024 01:23:24 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-715e56d8827sm6376370b3a.161.2024.09.02.01.23.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 01:23:23 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH v2 3/4] wireless-regdb: Update regulatory info for Israel (IL) for 2021
Date: Mon,  2 Sep 2024 16:23:03 +0800
Message-Id: <20240902082304.52326-3-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240902082304.52326-1-pkshih@gmail.com>
References: <20240902082304.52326-1-pkshih@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_012325_475928_FFF1A0FC 
X-CRM114-Status: UNSURE (   9.10  )
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

Israel released the wireless telegraph regulations (certificates of
conformity) on 2021 [1]. Update regulation of Radio Local Area Network
(RLAN) below.

 * 2400 - 2483.5 MHz
   - reference [1] row 49
   - 100mW
   - EN 300 328
 * 5150 - 5250 MHz
   - reference [1] row 55
   - 200 mW; 10 dBm/MHz (adopt 200 mW)
   - EN 301 893
   - inside a building only
 * 5250 - 5350 MHz
   - reference [1] row 61
   - without TPC: 100 mW; 7 dBm/MHz (adopt 100 mW)
   - EN 301 893, DFS
   - inside a building only
 * 5470 - 5725 MHz
   - reference [1] row 63
   - without TPC: 500 mW; 14 dBm/MHz (adopt 500 mW)
   - EN 301 893, DFS
   - inside a building only
 * 5725 - 5875 MHz
   - reference [1] row 68a
   - 25 mW
 * 5945 - 6425 MHz
   - reference [1] row 71a
   - 200 mW; 10 dBm/MHz (adopt 200 mW)
   - EN 303 687
   - inside a building only

[1] https://www.nevo.co.il/law_html/law01/502_483.htm#Seif9
[2] EN 301 893 https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.01.01_60/en_301893v020101p.pdf
[3] EN 303 687 https://www.etsi.org/deliver/etsi_en/303600_303699/303687/01.01.01_60/en_303687v010101p.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v2:
  - update ranges of 2400 - 2483.5 MHz, and 5725 - 5875 MHz.
---
 db.txt | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index b1dca98f11cf..0be933c86c8a 100644
--- a/db.txt
+++ b/db.txt
@@ -905,14 +905,16 @@ country IE: DFS-ETSI
 # IL: https://www.gov.il/he/departments/legalInfo/telegraph_law
 # IL: official document (pdf): https://rfa.justice.gov.il/SearchPredefinedApi/Documents/IdngyMn~ojdQSrkxuAqfZqiM8c1foi3TSZQhp7OMszo=
 # IL: also available as unofficial word doc: https://www.nevo.co.il/Handlers/LawOpenDoc.ashx?id=199708
+# https://www.nevo.co.il/law_html/law01/502_483.htm#Seif9
 country IL: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
+	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
-	(5250 - 5350 @ 80), (200 mW), NO-OUTDOOR, DFS, AUTO-BW
+	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW
 	# Table B List of conditions, row 63, indoor short range device without TPC (ETSI EN 301 893)
 	(5470 - 5725 @ 160), (500 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
-	# Table B List of conditions, row 68, wireless device using 802.11a/n/ac protocol
-	(5725 - 5875 @ 80), (200 mW), AUTO-BW
+	# Table B List of conditions, row 68a
+	(5725 - 5875 @ 80), (25 mW), AUTO-BW
+	(5945 - 6425 @ 320), (200 mW), NO-OUTDOOR
 
 # Source:
 # https://dot.gov.in/spectrummanagement/delicensing-24-24835-ghz-band-gsr-45-e-5150-5350-ghz-gsr-46-e-and-5725-5875-ghz
-- 
2.25.1


