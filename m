Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A93AAC52D70
	for <wireless-regdb@archiver.kernel.org>; Tue,  6 Aug 2024 06:39:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7Rw0cb/AVJ9ODFJKgdVpVEjuCrgmPiRicSfWb/UJCFo=; b=AusdxRh1PmxOILu/y4ppH3y6kJ
	SFqZXqi6VCqRzywj91oLs66dV1NEiNly9gxrkb2S9aaaAc2IcQDKdybIDzwdp9fEgdwRR2qVinaHc
	qntiY0lsgG8mqCsIKDDF+Z9LJRTaiV/GvDg9Mq60yr/WusPBifYyCb9SSfxHSNf/Kay6PzSxfnsUc
	tG08h1R9vOASww0BxGmwuiHyGrlB1rdDKxZu74cyA39HgeAETYFB3se4Q4s3V+dPBfqQhE4rbUa8O
	w0LRu7XHdJtdfS5fWvSJ7pAB3xQPubf70wwR+PeFfIpg4Tlvnhq16Aswui1HV2IZ4zFDeUKDISzvz
	zyG1YWdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbDqW-00000000hB3-3M58;
	Tue, 06 Aug 2024 06:39:00 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbDRq-00000000eKD-1WQE
	for wireless-regdb@lists.infradead.org;
	Tue, 06 Aug 2024 06:13:32 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1fec34f94abso1840695ad.2
        for <wireless-regdb@lists.infradead.org>; Mon, 05 Aug 2024 23:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=up.edu.ph; s=up.edu.ph; t=1722924808; x=1723529608; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7Rw0cb/AVJ9ODFJKgdVpVEjuCrgmPiRicSfWb/UJCFo=;
        b=hfNRI7AGXw+jH6Srfsj5u3jV4lh+0z6YDfrarRBaI6N3awRq6sxeMIVvWXWY+Ftcqw
         3kzG9qcE8Zy/xsAoFGS5dxYeKHtdCdP7et8dy08bdL/p7oVVDTkoBxCoMWyXuNXiYN2O
         sw3LxsZhV0BPKHbM+SqX0IQiW5Fe3Fw+cy62WE7gq2PUIgIzTqb9xUhibwJGCag8PtYy
         cnUoyNqzK3GjnD3HupansD/JAmx+QP+ImS4sPlFJD9cYSNGoaYfbEcr6U8G+T5g3DUBN
         UA6lahQUrCIDqT3Oi7gVj+X0riAt12BtVgCJs/j7drJ/kutomKKlaPjthdklpSXkSGEa
         L4ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722924808; x=1723529608;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7Rw0cb/AVJ9ODFJKgdVpVEjuCrgmPiRicSfWb/UJCFo=;
        b=KPFkrv3gn51jkZY259uIrX2iORG9BOMWDaiOgKTJCKxAk6dRP7WFw4NRsD3Hq7i0WO
         SJA4bl9iFutETj8PIVVSwq+ehIe8yTCdnvqQeJDPr4J34AZ2BLa8RHJmPdSijQLi7ELI
         qfvfXtF4R7bSOV2KZTcJNAn5GrixmJJUCeWEDkAfKcELyafQ553kc1opJ7/pxrRHjIqj
         kazsr7fAS6ljuatbL79IcfMzP7NdJD/+aJvVCRbMp+uQVH77ySfvXFADwE26Cx/K1EC0
         aaBfPKb3JkU6GC2XDq7zGzzCU5n0xyvg06JHbguRHWR4/T00348vMLOpi61OOLzdLjm9
         KgEA==
X-Gm-Message-State: AOJu0Yxxsz8yUy6icf7bJIPz47P48niGfKRtDEq9claN2Uy55f/aUKs5
	lgouzo7gA/c1DbdkrcdWYSs7FVK8Mc66c5OCL2nJfIAUhv2Vyk0z6DDGsfhGwhU=
X-Google-Smtp-Source: AGHT+IHzgOh2FfMY5Gh40M2lftDUH68sVM+80VRLM6BU6WDXylH2kq8hM8OFCy5zOsVbOvMLhnnOgA==
X-Received: by 2002:a17:902:d492:b0:1fb:8419:8384 with SMTP id d9443c01a7336-1ff5722d6e9mr139341615ad.13.1722924808076;
        Mon, 05 Aug 2024 23:13:28 -0700 (PDT)
Received: from localhost.localdomain ([2001:4453:56f:9200:24b9:c068:6af7:1f42])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ff5905e6b6sm78782285ad.140.2024.08.05.23.13.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Aug 2024 23:13:27 -0700 (PDT)
From: Gacel Perfinian <gcperfinian@up.edu.ph>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org,
	Gacel Perfinian <gcperfinian@up.edu.ph>
Subject: [PATCH] wireless-regdb: Update regulatory info for Philippines (PH) on 6GHz
Date: Tue,  6 Aug 2024 14:12:05 +0800
Message-ID: <20240806061203.1839-3-gcperfinian@up.edu.ph>
X-Mailer: git-send-email 2.45.2.windows.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_231330_435743_0BE88E74 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Mon, 05 Aug 2024 23:38:58 -0700
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

The Philippine National Telecommunications Commission has issued
Memorandum Circular 002-07-2024 [1] on 05 July 2024, amending
the allowed frequencies for HIPERLANs and RLANs specified in Section 2
of Memorandum Circular No. 03-05-2007 [2]. The amendment has been in
force since 22 July, 15 days after publication in The Philippine Star
and copies furnished to the UP Law Center as mandated by law.

The amended frequency table allows HIPERLAN and RLAN devices to operate
on 5925 - 6425 MHz band for up to 25 mW (14 dBm) eirp for indoor and
outdoor use (excluding UAV/drone use) and 250 mW (24 dBm) eirp for
indoor use only.

[1] https://ntc.gov.ph/wp-content/uploads/2024/MEMORANDUM%20CIRCULAR/NTC%20MC%20No.%20002-07-2024.pdf
[2] https://ntc.gov.ph/wp-content/uploads/2015/10/LawsRulesRegulations/MemoCirculars/MC2007/MC-03-05-2007.pdf

Signed-off-by: Gacel Perfinian <gcperfinian@up.edu.ph>
---
 db.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/db.txt b/db.txt
index 4eaeaae..27f1e43 100644
--- a/db.txt
+++ b/db.txt
@@ -1481,9 +1481,11 @@ country PG: DFS-FCC
 # NTC MC 03-05-2007 https://ntc.gov.ph/wp-content/uploads/2015/10/LawsRulesRegulations/MemoCirculars/MC2007/MC-03-05-2007.pdf
 # NTC MC 03-08-2013 https://region7.ntc.gov.ph/images/LawsRulesAndRegulations/MC/WDN/MC_03-08-2013.pdf
 # NTC MC 01-01-2016 https://ntc.gov.ph/wp-content/uploads/2016/MC/Explanatory-MC-No-01-01-2016.pdf
+# NTC MC 002-07-2024 https://ntc.gov.ph/wp-content/uploads/2024/MEMORANDUM%20CIRCULAR/NTC%20MC%20No.%20002-07-2024.pdf
 # 2400 - 2483.5 MHz: NTC MC 09-09-2003, Section 3.1; NTC MC 03-08-2013, Section 3.1; NTC MC 03-05-2007, Section 2
 # 5150 - 5350 MHz: NTC MC 09-09-2003, Section 3.1; NTC MC 03-08-2013, Section 3.1; NTC MC 03-05-2007, Section 2
 # 5470 - 5850 MHz: NTC MC 09-09-2003, Section 3.1; NTC MC 03-08-2013, Section 3.1 NTC MC 03-05-2007, Section 2
+# 5925 - 6425 MHz: NTC MC 002-07-2024, Section 1; NTC MC 03-05-2007, Section 2
 # 57000 - 66000 MHz: NTC MC 01-01-2016, Section 1
 
 country PH: DFS-FCC
@@ -1492,6 +1494,7 @@ country PH: DFS-FCC
 	(5250 - 5350 @ 80), (23), DFS, AUTO-BW
 	(5470 - 5725 @ 160), (24), DFS
 	(5725 - 5850 @ 80), (24)
+	(5925 - 6425 @ 320), (24), NO-OUTDOOR
 	(57000 - 66000 @ 2160), (24)
 
 country PK: DFS-JP
-- 
2.45.2.windows.1


