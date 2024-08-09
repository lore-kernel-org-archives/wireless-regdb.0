Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C7E1C3DA4A
	for <wireless-regdb@archiver.kernel.org>; Fri,  9 Aug 2024 00:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YzlRvCQVx0Xld0KqHCtDqjYlvosGEB3wkhhOhLSdv9w=; b=smEYITLEZ70cwZpNexxoL9qYB5
	s8Xnn2kZMMXAFctDS41x8+p1A1MiuKLwZip5cCiC/gKHZCuV3ULXBTvHn9+oRlBHalJY6YmOmYOnQ
	2EbjBmSiKz6AZCB0BON+XbSwldNe5920PgaFZLvfCD/Mi8wf/5WTNodGa5I5MswgOa+Y9e3hIV9Ik
	8ae7zwZIeFEpTkmKfAXrSVRleDpUtglf1M5BmYz/dOPUv8iVtdNvrAXEtyOn67Wl3qiOKJVdO37eX
	wri40M0kjQnT9ivES38njJb00FBsl7uh8fVTFtnXbZO9oksHOfvJ78BZh/CtgdpZxWd3+j0dLNK9D
	UWs4mUog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scDUg-00000009ntf-2Rzj;
	Fri, 09 Aug 2024 00:28:34 +0000
Received: from mail-oa1-x2d.google.com ([2001:4860:4864:20::2d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scDUd-00000009ntE-0exo
	for wireless-regdb@lists.infradead.org;
	Fri, 09 Aug 2024 00:28:32 +0000
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-2681941eae0so996858fac.0
        for <wireless-regdb@lists.infradead.org>; Thu, 08 Aug 2024 17:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723163310; x=1723768110; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YzlRvCQVx0Xld0KqHCtDqjYlvosGEB3wkhhOhLSdv9w=;
        b=KWOFX/w7TjUjYW5iYHLT8Mg5RDx6uUogx653KRg8zYCYYdi+vfenyui46pSeP/tHwQ
         ZpaG2M0u+D0Ous6GQwp6oTKrnyfkRkjnvI5cZfvgAz96XW/Uolzio91hZ9NfTEOebgTn
         bZAfHuAIwQ0Ks4JWtKwFsRV7jp10CcHJp/GDxDBV8MEZUu/LlX+IllBG2mIjynguRbPk
         ao4PR8VoTcIdfIUFqf2ZW2B8PEg0i+SXqcJhuvBSoMyRMeBqJNOQNxfPBMI/HpSESgig
         axqg9g+bVP/1wCJI07rAI7J3KJUW/0NsP729Dp9Wey4GzKB8kGFI2lbdrO2U+EqVWQ/9
         dHVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723163310; x=1723768110;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YzlRvCQVx0Xld0KqHCtDqjYlvosGEB3wkhhOhLSdv9w=;
        b=OCtI7kxaDPMSfoEqthYopVKifkkLZ/V2zDIjv/kskC2A1QfSkr0Rbmv/LzSNWjnrEg
         H83JPUqZxEvHUtQrWQr4fhmbo7JaXZ5YbHfxKg2mGg9X1khvKWw/FFjOC7XnUcr+YMZ+
         ij9C0sQLlS/wytKvmRQRA6hHNBOBt9STYL0Mschu89Gjj0LFwem2YSZeLl1BefQBwYyV
         LQ9LcRJpTeknwBQn2RI2qelDOTePxRXmXu000ibpn47IqkptdE62SsU87qvh124u7MrS
         eO2RC4/WxvfOxGEzaGS2GBrZMLQKy/llJ7qvwyXR/NUgHHxvNavhbul0raGB17+uufRQ
         n5Pg==
X-Forwarded-Encrypted: i=1; AJvYcCUicS0+T+SM88Sr/ulNMogx2ZWyCDHlJEmiKK1B1z3YWN1UB7gi8iWNA6Rw7IiTsWeat1GtrvtHMHJARagirtq7gO8axD7/kXeX9L6GP28WT9co
X-Gm-Message-State: AOJu0Yxdbr4p2ihqTPSi53QIXUQb1N07niUSyViD1uhP0ssKl18qO/xU
	2uV6WkQXgtnM6FGV66S37DBXj3Pp7gXkcQoAajXtQdr7F27ys21B
X-Google-Smtp-Source: AGHT+IGcHYFoJs0jHolIw/LdY8hC0bzdYBJvTR8Dblz63GqPmlw8chtmmzkFCO9e0mxRTEnWF8DhPg==
X-Received: by 2002:a05:6870:d88b:b0:25d:ff1b:3793 with SMTP id 586e51a60fabf-2692b7ab784mr3791754fac.35.1723163309867;
        Thu, 08 Aug 2024 17:28:29 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-710cb238315sm1668261b3a.86.2024.08.08.17.28.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Aug 2024 17:28:29 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH v2] wireless-regdb: Update regulatory info for Guatemala (GT) for 2020
Date: Fri,  9 Aug 2024 08:28:10 +0800
Message-Id: <20240809002810.4140-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_172831_237212_5057B8FF 
X-CRM114-Status: UNSURE (   8.08  )
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

Superintendence of Telecommunications of Guatemala released NATIONAL TABLE
OF ATTRIBUTION OF FREQUENCIES RADIO ELECTRICS on 2020 [1] on page [2].

* GTM-30
  - 2,400.0 - 2,483.5 MHz, 500 mW (26.99 dBm)

* GTM-45
  indoor operation
  - 5,150 - 5,350 MHz, 200 mW (23.01 dBm)
  - 5,470 - 5,725 MHz, 250 mW (23.98 dBm)
  - 5,725 - 5,850 MHz, 500 mW (26.99 dBm)

* GTM-51
  indoor environments
  - 5,925 - 6,425  200 mW (23.01 dBm)
  - 6,425 - 6,525  200 mW (23.01 dBm)
  - 6,525 - 6,875  150 mW (21.76 dBm)
  - 6,875 - 7,125  150 mW (21.76 dBm)

* GTM-40
  used mainly inside buildings
  - 57 - 66 GHz 20 mW (13.1 dBm)

[1] https://sit.gob.gt/download/9685/tabla-nacional-de-atribucion-de-frecuencias/01WRXSS3QHSADNOSHDZ5HIWXE4TFFW3YIU/4.%20Tabla%20Nacional%20Atribuci%C3%B3n%20Frecuencias%20(Pies%20de%20P%C3%A1gina)
[2] https://sit.gob.gt/gerencia-de-frecuencias/frecuencias/tabla-nacional-de-atribucion-de-frecuencias/

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v2:
  - add AUTO-BW to 6 GHz band
---
 db.txt | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index e46beae64ca4..e952d0a10d72 100644
--- a/db.txt
+++ b/db.txt
@@ -779,11 +779,18 @@ country GR: DFS-ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
-country GT: DFS-FCC
-	(2402 - 2472 @ 40), (30)
-	(5170 - 5250 @ 80), (17), AUTO-BW
-	(5250 - 5330 @ 80), (23), DFS, AUTO-BW
-	(5735 - 5835 @ 80), (30)
+# Source:
+# https://sit.gob.gt/download/9685/tabla-nacional-de-atribucion-de-frecuencias/01WRXSS3QHSADNOSHDZ5HIWXE4TFFW3YIU/4.%20Tabla%20Nacional%20Atribuci%C3%B3n%20Frecuencias%20(Pies%20de%20P%C3%A1gina)
+country GT:
+	(2400 - 2483.5 @ 40), (500 mW)
+	(5150 - 5350 @ 80), (200 mW), NO-OUTDOOR
+	(5470 - 5725 @ 160), (250 mW), NO-OUTDOOR
+	(5725 - 5850 @ 160), (500 mW), NO-OUTDOOR
+	(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR, AUTO-BW
+	(6425 - 6525 @ 320), (200 mW), NO-OUTDOOR, AUTO-BW
+	(6525 - 6875 @ 320), (150 mW), NO-OUTDOOR, AUTO-BW
+	(6875 - 7125 @ 320), (150 mW), NO-OUTDOOR, AUTO-BW
+	(57000 - 66000 @ 2160), (20 mW), NO-OUTDOOR
 
 country GU: DFS-FCC
 	(2402 - 2472 @ 40), (30)
-- 
2.25.1


