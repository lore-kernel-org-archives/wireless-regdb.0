Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE5F1C54755
	for <wireless-regdb@archiver.kernel.org>; Wed, 28 Aug 2024 08:47:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zMzCoIwoMsqcW8OO/DX/f2CvbyeoO1AQYc6WZ057c+o=; b=R1+f21n/vC14HayDPHIiT0Qw1b
	nSdxts2tkKmv6paKUV6MUvbl4QW6212/byg4Qlpca9cin7r2Qx8YSg2DwYISYOeVayU8wfXro3q8h
	ojPI908WFBy6Or/VCvEPIm0hukgDEcw2FogGIkoYfc8bSqPeGXXeJIdI7iyxclcwQj0XWVRldh3JD
	1B27w4ZrD4fXO9GDxAs4QY7dR0J7vgR1TKlB3GtLDz7Xv+nyATVdLDPPS6wonvC2HeSDVXbdgqFT1
	CgpflnjM+/LI2HbADtEnpvPrBOJf4dA7/F5t4V9NBO3yMWM9x6i8zmUj6pjSSd5WIetG90lyni6GX
	IaRGCF/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjEL1-0000000EZwF-0nxo;
	Wed, 28 Aug 2024 08:47:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjEKv-0000000EZtp-0izj
	for wireless-regdb@bombadil.infradead.org;
	Wed, 28 Aug 2024 08:47:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=zMzCoIwoMsqcW8OO/DX/f2CvbyeoO1AQYc6WZ057c+o=; b=S79tnLq+UEsz9jzTBpDW6h4bT3
	Prt+qGyfEo7GvfUQYZeyzYbjrvvgEEcSx0k/JfYp/1Yku/cAWcqg8qcukF6kM5f6PQE1egO1JU7GC
	xqbXk8dzGHSF66TQoD6v3VscPbSiTwnhBhAPyCwAnKWwrO8JE/5cScDkOeXff12YzWwIuj/JgrOa4
	hZkmdkDaowsd3sqEhZ51qr1uZqsPds9jREvYztAx8hHouaS0YbaH2ht/y0jk79xmshpi9+HpTBHgW
	ZqAQ2yK0P2lkpZ1xF0cnRS3JOb00ltuJtGVF/ZYVGvXOWBVjW3+7aHVbNzF+CCmkA2VfrefUgIyJ0
	48/3MUcw==;
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjEKr-0000000B6uX-3JQs
	for wireless-regdb@lists.infradead.org;
	Wed, 28 Aug 2024 08:47:28 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-202146e93f6so66044165ad.3
        for <wireless-regdb@lists.infradead.org>; Wed, 28 Aug 2024 01:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724834843; x=1725439643; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zMzCoIwoMsqcW8OO/DX/f2CvbyeoO1AQYc6WZ057c+o=;
        b=kZWRYc2GXpebAvdgUrIBxHtNS8+yNl/J2t5xSUzVAoQBIxnzJBrXwOb1e0leNIx0Oe
         1P6Oot2NOUFpORQfWxN8W7Z94tuyfwEHixexnORM4Zn6VLlv4tp0PqmfZE7OyWTM3tsd
         B3w39MTekm2tIHmHdfCpa3Lps56r4w6Yd5Ncnr3UdeIEd3pVMhj9VkmumzliLwpV2ysQ
         Qu7uWEk4vUr/IvWQfcuNmag7Jcb5orasOCKRuMkapB/zJe1vK9n/+QZ4wGLtRckMEPJl
         dZ1KLYSuP8AO7sYwVBJa9TGrGdAH+S6TsfIrkhSyGCMpmLrU5FXh2my+ZhivRMNNTRaC
         Y80A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724834843; x=1725439643;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zMzCoIwoMsqcW8OO/DX/f2CvbyeoO1AQYc6WZ057c+o=;
        b=qaQ1x6MMpzFcsx6HyeYrdMNhfCrMpEwwU3VQMdHXHFFWclOApMVOJsn5vQojyX2yQe
         5wTBz5NDTGwd5EmGczHFrZwm8dE/83nWfnWb4nqVsA8ePmRiS+nMw3YS3EZJwe7bY0E7
         NSF3+Yk6FKnPr+JhdqYJBuYbDI9/HYVaq4lKppkTrgsoaQ8oDBvObU7oAEPN9TRSIgrL
         aH98CQLY7lcdIvxYSjpFB4PVHgh5oioir1rwEx/nBVSqQ5qk1jv+jLLt5Z3vZrAkA2Pz
         Kn7xtCwypmGp7DhYgmy3aZLygN7IsaDV4t6V4+mr4DydfF3OAy0v2nBvRXPMsTYUtZoW
         fN/g==
X-Forwarded-Encrypted: i=1; AJvYcCVAdsZVWeQ2N0BZ/1Ep2bkNekXsGYQC6QOJQ0dotI6qjgyZz9MMZ43vKE6HsvZWnKvEhiSkobNfv5ZwL6DHzQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3lB2IrvDuoUBH+CmillF6yQtzVpxYsthFGTHlDlZngxPITNIG
	5OThS927oNTeZ7w3ird0G5ICDwyLbOl/3eXK82peHk9jVb33ZgqgD+9xH1R+
X-Google-Smtp-Source: AGHT+IExD8v1JIMjRlDFsbjSq1eCFJcVYkTZs7BOlCOLtRzm3+hksUVC1IUORxwK0eFzDsYX/0+o4Q==
X-Received: by 2002:a17:903:5c4:b0:203:6c70:b8f4 with SMTP id d9443c01a7336-2039e4f25afmr120647315ad.41.1724834842670;
        Wed, 28 Aug 2024 01:47:22 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-203855dbefbsm94652645ad.136.2024.08.28.01.47.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 01:47:22 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH 3/4] wireless-regdb: Update regulatory info for Israel (IL) for 2021
Date: Wed, 28 Aug 2024 16:47:05 +0800
Message-Id: <20240828084706.12257-3-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240828084706.12257-1-pkshih@gmail.com>
References: <20240828084706.12257-1-pkshih@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_094725_963993_B6C3735B 
X-CRM114-Status: UNSURE (   9.19  )
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

 * 5150 - 5250 MHz
   - 200 mW; 10 dBm/MHz (adopt 200 mW)
   - EN 301 893
   - inside a building only
 * 5250 - 5350 MHz
   - without TPC: 100 mW; 7 dBm/MHz (adopt 100 mW)
   - EN 301 893, DFS
   - inside a building only
 * 5470 - 5725 MHz
   - without TPC: 500 mW; 14 dBm/MHz (adopt 500 mW)
   - EN 301 893, DFS
   - inside a building only
 * 5945 - 6425 MHz
   - 200 mW; 10 dBm/MHz (adopt 200 mW)
   - EN 303 687
   - inside a building only

 * No touch 2402 - 2482 and 5725 - 5875 MHz, because the regulation not
   clearly point out RLAN for the frequency ranges.

[1] https://www.nevo.co.il/law_html/law01/502_483.htm#Seif9
[2] EN 301 893 https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.01.01_60/en_301893v020101p.pdf
[3] EN 303 687 https://www.etsi.org/deliver/etsi_en/303600_303699/303687/01.01.01_60/en_303687v010101p.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 50ebd50becbd..0bc40db2d9b5 100644
--- a/db.txt
+++ b/db.txt
@@ -905,14 +905,16 @@ country IE: DFS-ETSI
 # IL: https://www.gov.il/he/departments/legalInfo/telegraph_law
 # IL: official document (pdf): https://rfa.justice.gov.il/SearchPredefinedApi/Documents/IdngyMn~ojdQSrkxuAqfZqiM8c1foi3TSZQhp7OMszo=
 # IL: also available as unofficial word doc: https://www.nevo.co.il/Handlers/LawOpenDoc.ashx?id=199708
+# https://www.nevo.co.il/law_html/law01/502_483.htm#Seif9
 country IL: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
-	(5250 - 5350 @ 80), (200 mW), NO-OUTDOOR, DFS, AUTO-BW
+	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW
 	# Table B List of conditions, row 63, indoor short range device without TPC (ETSI EN 301 893)
 	(5470 - 5725 @ 160), (500 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
 	# Table B List of conditions, row 68, wireless device using 802.11a/n/ac protocol
 	(5725 - 5875 @ 80), (200 mW), AUTO-BW
+	(5945 - 6425 @ 320), (200 mW), NO-OUTDOOR
 
 # Source:
 # https://dot.gov.in/spectrummanagement/delicensing-24-24835-ghz-band-gsr-45-e-5150-5350-ghz-gsr-46-e-and-5725-5875-ghz
-- 
2.25.1


