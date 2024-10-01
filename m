Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 092C5CE7CFF
	for <wireless-regdb@archiver.kernel.org>; Tue,  1 Oct 2024 09:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ST2qop5iFMqE5KADf9pmpkXfU9fvzDZibt0hwBbJQEw=; b=Sb3RRFoia0LzOCwxbwwlLnX4G8
	warFPvZ4VcV3fnDKgJLBlFczokNTFZzTY7bjt99uaSNIvbc8SdwJ5SorjkgfEGce13ZLDDsaSkf7H
	xTxdESt1qtK1raZTjdN1QQSvRugr/2sCBV00ELC2hZpnem+Gnp8SCyQMzRiD0/AXJtLdmZ/BMDtov
	oJrnuxW2qS/asapInu/TM9Rmfx20dLJ0eiAN90n3tfBOAXZahJLvjl7ngSaStlXIvL+IFCmlwqEu5
	rJQdk3jqvM2Injp0t+g57QAZxMWFQen3LYyr58edmXv97uNw4pXlsptbFkj+IWc6efiaIE0T5nSut
	QDq3t+AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svZEZ-00000002Ec0-0MIx;
	Tue, 01 Oct 2024 09:31:55 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svZEE-00000002EZG-11Lg
	for wireless-regdb@lists.infradead.org;
	Tue, 01 Oct 2024 09:31:35 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-20b49ee353cso36265125ad.2
        for <wireless-regdb@lists.infradead.org>; Tue, 01 Oct 2024 02:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727775093; x=1728379893; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ST2qop5iFMqE5KADf9pmpkXfU9fvzDZibt0hwBbJQEw=;
        b=kKwTHfCRgLIblg+8JTfBRc9/2gu6PcwvHveEHy8Oz1e+bze2kQQoYrlQYtVKx3DfTJ
         0NsyDDStoDeUpnW33hLHCp1mlLDRAgGQzQYQO0+4CzRBvWGhGm6Cg4sAI74fDS3N71er
         gwSMEPOgeweZuq8Fk4nODwTT3/vMk3zsb4nAexNdS7W501WVoy8MRR9up41ioAy7bGWL
         hob/61uNQA5iZhpMKacrkz3GTLvNOGaZqbgykQNyontge4rp5Zz5YSnNw3ZRfQPdgBow
         Ga8yrKwnW/eRlvMc7TDGJMk+6+5+NBLizXnRdczu6S5b083X5gnCXUWaWhiaocIdueYX
         cgkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727775093; x=1728379893;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ST2qop5iFMqE5KADf9pmpkXfU9fvzDZibt0hwBbJQEw=;
        b=l0HI1MhElAizr0XUTyEhJf5Q1lpDkQmn/2rCbQo9L6JiutnI4w1ShSJCahZSwkR/OR
         T+vngbx9MYYIXOaD4b6gKD/bE6EJkzaGjZl6I89UwqM2cSOw1lRJOPwywTR+3CnGXGNB
         +66MpkAcugImHOg9YzI80P9LzuPWBxzxfWhddxwFpS3+tqlyd+Y6nrtokE+/vm6VPKax
         428Wchk24uuszqeOrHJ2qXAfd5PM76xaUUCNA0qCzscpxDY2dwGJKRyiIdaO+dAaKdNM
         YJyw8c0rwY+3Tv9JFx9YsLlypMCbCz03pliSKat8P97U/xgKdy4mDQubmkUEBQrbtk+Z
         ApYg==
X-Forwarded-Encrypted: i=1; AJvYcCWnAZ+N2Phfd63o7ViogxFTWaGCPpdLCZzFsAObqKD24L/Gd92gfEHyAQKaMvVW+KeIQ83bzpIqy9pRHF08iA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxQa//bGIp10MPdu3CMS5Ko7OyW/JX7WjZosSjJvzq7d1gf1I8r
	NCCe5AEsQ3owM/xaltS+gd+DwTF55RWz8HqIEduTnDUb0tHpbAQn
X-Google-Smtp-Source: AGHT+IHG5EenjYVqfoJiFPgSc8gutfeDjszNYLoPqiXmipJ2sn5RtbzuOzcjylw2HFqIfsAlKUBJzA==
X-Received: by 2002:a17:902:f552:b0:20b:91f5:aae8 with SMTP id d9443c01a7336-20b91f5bc8bmr65947215ad.55.1727775092889;
        Tue, 01 Oct 2024 02:31:32 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-20b37d68906sm66102625ad.38.2024.10.01.02.31.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 02:31:32 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH 2/2] wireless-regdb: Update regulatory info for Serbia (RS) for 2024
Date: Tue,  1 Oct 2024 17:30:49 +0800
Message-Id: <20241001093049.37515-2-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241001093049.37515-1-pkshih@gmail.com>
References: <20241001093049.37515-1-pkshih@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_023134_310812_453EE52A 
X-CRM114-Status: GOOD (  10.10  )
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

Serbia government released radio frequency range on February 5, 2024 [1].
Based on Article 100, paragraph 5 of the Law on Electronic Communications
and Article 17, paragraph 1 and Article 42, paragraph 1 of the Law on
Government.

 * 2400 - 2483.5 MHz
   - reference [1] page 114-115, section 2400 MHz - 2450 MHz, 8th row
     * EN 300 328
       - 20 dBm
 * 5150 - 5350 MHz
   - reference [1] page 120-121, section 5150 MHz - 5250 MHz, 8th row
     reference [1] page 121,     section 5250 MHz - 5255 MHz, 8th row
     reference [1] page 121,     section 5255 MHz - 5350 MHz, 8th row
     * EN 301 893
       - 23 dBM (Without TPC)
       - 5250 - 5350 MHz, DFS
 * 5470 - 5725 MHz
   - reference [1] page 122,     section 5470 MHz - 5570 MHz, 8th row
     reference [1] page 122,     section 5570 MHz - 5650 MHz, 6th row
     reference [1] page 123,     section 5650 MHz - 5725 MHz, 8th row
     * EN 301 893
       - 27 dBm (Without TPC)
       - 5470 - 5725 MHz, DFS
 * 5725 - 5875 MHz
   - reference [1] page 123,     section 5725 MHz - 5830 MHz, 12th row
     * EN 302 502
       - 24 dBm
       - 5725 - 5850 MHz, DFS
 * 5925 - 6425 MHz
   - reference [1] page 124,     section 5925 MHz - 6700 MHz, 6th row
     * EN 303 687
       - 23 dBm, LPI
 * 57 - 66 GHz
   - reference [1] page 158,     section 57 GHz - 58.2 GHz, 7th row
     * EN 302 567
       - 40 dBm

[1] https://www.ratel.rs/uploads/documents/empire_plugin/Uredba%20o%20utvrdjivanju%20Plana%20namene%20radiofrekvencijskih%20opsega.pdf
[2] EN 302 328 https://www.etsi.org/deliver/etsi_en/300300_300399/300328/02.02.02_60/en_300328v020202p.pdf
[3] EN 302 066 https://www.etsi.org/deliver/etsi_en/302000_302099/302066/02.02.00_20/en_302066v020200a.pdf
[4] EN 301 893 https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.01.01_60/en_301893v020101p.pdf
[5] EN 302 502 https://www.etsi.org/deliver/etsi_en/302500_302599/302502/02.01.01_60/en_302502v020101p.pdf
[6] EN 303 687 https://www.etsi.org/deliver/etsi_en/303600_303699/303687/01.01.01_60/en_303687v010101p.pdf
[7] EN 302 567 https://www.etsi.org/deliver/etsi_en/302500_302599/302567/02.01.01_60/en_302567v020101p.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v1:
  - copy stuffs from reverted "SR".
  - add missing stuffs of "5725 - 5875 MHz" and "57 - 66 GHz"
---
 db.txt | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/db.txt b/db.txt
index 54310fb5736d..93043733c3b0 100644
--- a/db.txt
+++ b/db.txt
@@ -1637,13 +1637,15 @@ country RO: DFS-ETSI
 #  EU decision 2005/513/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02005D0513-20070213
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
+# https://www.ratel.rs/uploads/documents/empire_plugin/Uredba%20o%20utvrdjivanju%20Plana%20namene%20radiofrekvencijskih%20opsega.pdf
 country RS: DFS-ETSI
-	(2400 - 2483.5 @ 40), (100 mW)
-	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
-	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
-	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
-	# short range devices (ETSI EN 300 440-1)
-	(5725 - 5875 @ 80), (25 mW)
+	(2400 - 2483.5 @ 40), (20)
+	(5150 - 5250 @ 80), (23), AUTO-BW
+	(5250 - 5350 @ 80), (23), DFS, AUTO-BW
+	(5470 - 5725 @ 160), (27), DFS
+	(5725 - 5850 @ 80), (24), DFS, AUTO-BW
+	(5850 - 5875 @ 80), (24), AUTO-BW
+	(5925 - 6425 @ 320), (23), NO-OUTDOOR
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
-- 
2.25.1


