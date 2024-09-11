Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACE6BEE0209
	for <wireless-regdb@archiver.kernel.org>; Wed, 11 Sep 2024 05:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bIuKARe3OG8Oqcq7F7hVObUiW0TBQcR2NzcfMJtwb7A=; b=RBmWktMtNTj5QtCIU5XiENBMBV
	MjGhPv1PWkDj1w7zc0Alr9624YIKD9bDu1/FMUrZ1wM/RUXeV48q1lYRmtb4IZvlurM23E/j2d5xb
	gWE1h9Lp1T19c1KkY2MpaugSXLE08j43joPTnkSjq7nCK5MhXJKQUkHVsXaDPIYlC+sH5wV7xbVi5
	CKjfzE5pV/HRJlzKqr6CqQ/I/2ai81VQWBBt0GGRY5H9B1UrWUO05lxLMXU2lTDFmnh68wGN3xgKG
	UInMTbuYO2ZhfHOSSX/ialbj03G2gsv6pJXaH3Da41QZCWpaBv/zhtlvdA9Cdb7wFHDmu1XOWHjxN
	2Jvw78+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soGEA-00000008Bxj-3QNW;
	Wed, 11 Sep 2024 05:49:18 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soGE7-00000008Bws-2zXU
	for wireless-regdb@lists.infradead.org;
	Wed, 11 Sep 2024 05:49:17 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-2068bee21d8so63216785ad.2
        for <wireless-regdb@lists.infradead.org>; Tue, 10 Sep 2024 22:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726033754; x=1726638554; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bIuKARe3OG8Oqcq7F7hVObUiW0TBQcR2NzcfMJtwb7A=;
        b=EdGxwO69PJNE8PQr9X315nvrEPiBHoSdisZYh/4IcgMAS/fyBEPBbXMb0jYAbeZkU3
         vsZmK3tyw2voNn6q0GnNUgcNyDIDeeJGgUWdZbMJ6Q7qlT9OqG0uN4quMX8k4v5kuO1x
         WNc3O/ACO3PAlocS3OgW4EkmfIZp+eBbsOttDvhei9hgaVw1jsLL1SyiyspNeuCq/1mn
         vMKbIOwehr7tzOMlW3H8BCUuhvZt2PM2Y3MARRu8RPaFRh9BkNtJfJVyTqJDqTtVyV3f
         A/O/cFOmDd9Jn2h7nV90lp92mVGxgz1m4Xx9UOCv5+bTBpCnexv+Uqyd1ehSng18TFli
         iQ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726033754; x=1726638554;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bIuKARe3OG8Oqcq7F7hVObUiW0TBQcR2NzcfMJtwb7A=;
        b=X4/R8Z+NlADUMPITrQpjLbfgX7KfZse0ze8UOvDL1SPUL5GRM+H2zWTM07I7FaGFyn
         rp/gZ9CB0zqNwO/Ijkq7FNllavJZ910Xu/CWDU3kBrOKv4yHsnOKSZ69KiryUVGAMJ2D
         wBmKD+MAmNzLiLYrbA60bOA+GQOCUHDpzbbCilkXgz7ecdZ3wRci8JH5poma8pBLgz47
         ayNGO3Q5523fnXjqVfqWg4Ww5uN2xToYf0JQXT73ZoGg7OYqvxtCfIEnlnP9+638pnoW
         E96cPGTozFfqP6TQqtNswOMK6R/IpRDAgF/pJHvNU6WkGo7ORb5BZeCxU0DWc7OQG8ID
         G2aw==
X-Forwarded-Encrypted: i=1; AJvYcCVLhlneTkE153bcSO4LX4BKyUSqwzKa/rO/Qm7v1yMt0OZ/kKVDAhf+HEcZ9SKMSXQqCEBk5IDc5O/TFV2FSw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5m157ZkLvJgP9p4zbHUrGABRCDQo0JGx5SU/nUTY3VPZxP2sS
	vnBKlG5GxzWZAXEyxMnxHKDj2eiD/hiaxPB0SgFEL8xQaumdmhTAIdfA+/9C
X-Google-Smtp-Source: AGHT+IESgqqIzfe0nh/cB/a9TNlRX0T35HszXFAP1H6qB/F3ScVnYMKrKJOTxURp1UZZHj05OOjTAA==
X-Received: by 2002:a17:90b:115:b0:2d3:babf:f9a3 with SMTP id 98e67ed59e1d1-2daffa3a790mr15804050a91.2.1726033754005;
        Tue, 10 Sep 2024 22:49:14 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-2db043c3c51sm7517099a91.21.2024.09.10.22.49.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2024 22:49:13 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH] =?UTF-8?q?wireless-regdb:=20Correct=20regulatory=20rules?= =?UTF-8?q?=20of=206GHz=20frequency=20for=20T=C3=BCrkiye=20(TR)?=
Date: Wed, 11 Sep 2024 13:48:48 +0800
Message-Id: <20240911054848.22003-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_224915_787193_B8322C7C 
X-CRM114-Status: UNSURE (   9.49  )
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

As 7b of Table 3 on [1], frequency range is 5945-6425 MHz.

[1] https://www.btk.gov.tr/uploads/pages/ftm-teknik-olcutler-ek-5.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 9a55f6b8cc98..947b9906f503 100644
--- a/db.txt
+++ b/db.txt
@@ -1825,7 +1825,7 @@ country TR: DFS-ETSI
 	(5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
 	(5250 - 5330 @ 80), (20), DFS, NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
 	(5470 - 5725 @ 160), (27), DFS, wmmrule=ETSI
-	(5495 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+	(5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
-- 
2.25.1


