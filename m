Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD64BC3DA4A
	for <wireless-regdb@archiver.kernel.org>; Thu,  8 Aug 2024 09:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eocFVHN/6ohwo4QNwzLA+WaIXfVG93HZGXc2CcAdhoY=; b=NTSlzfzPsXW1aNh18c90WDAZiS
	S/h4raAx48sLfvGoAVXTOarSPMK/x8O1+znv1w33NupyRn7qGbU0aQSafOV3NpnwfGab/6pFIlYkH
	WeGQfpHtwpU/h69HSQipC9RWer8GL0QMKkDRn1iu9OCPu7p5thGwjJq1IsiZgCBJuofUpMGfJ55fU
	UOA5Fiuo32nNJH5/J3UpkzzPm49gQHivE+Qt5W8c4AmPFDciN5lnY4ftRyprSBWvqkNI8ytKJWgHG
	YQyAREZ6f37kwavwlLs48ySA/tEPlquYMfQGTYQ+S8nJEJz2uCsnsxi1XhSil8cTrhesZkEEJ7rTT
	w6AbReRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbzGC-00000007gsE-1gw0;
	Thu, 08 Aug 2024 09:16:40 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbzG3-00000007go5-2Mt7
	for wireless-regdb@lists.infradead.org;
	Thu, 08 Aug 2024 09:16:34 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-1fc47abc040so6386525ad.0
        for <wireless-regdb@lists.infradead.org>; Thu, 08 Aug 2024 02:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723108590; x=1723713390; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eocFVHN/6ohwo4QNwzLA+WaIXfVG93HZGXc2CcAdhoY=;
        b=TMqMNMmsEUYAn+8NVPnzhLfZAVEF5HrdKulU9Zc8qjAWMTOvvu09KdAsCCANrqnSLk
         MM7BxRIDsqEHr4LE+gcw+18qBnIEInZmZC1GoKgsWy9OpaNIeTueWpgidtWf9pofw7BH
         AADSvgHSgtva6jjR+jJnPyDLLCHFB90I4JQ+PYK0QA6ciUjfQ/N20uaHkWTyhD4nOU7j
         1Yz+CS85/krDvW/TnsRp8vLMXy+OK8guUJAjlVJZSypcjeq6bU3hT/mChkM3YcjistRW
         Mk+Xvfh9FBHlxFMMSQhE6nFcERK4wWBLU4xLvqns/FlldOwUKTZnhgpMoZHTcErlxDA6
         nMig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723108590; x=1723713390;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eocFVHN/6ohwo4QNwzLA+WaIXfVG93HZGXc2CcAdhoY=;
        b=g9Wl2ez1TpbH/Ql8KRkFdUP4AqvX9HQ8+cMPo30fhqDSrsoIumwKdoC69VKnwEGaev
         FLxfYPSObL092IF2IV5enqsLp8TltLibGwRRHtGgS/3KhYp64FbDmDkyBoL1bIl/M19s
         IUzGvu8MCIMbt0ZZymgZYHBnlza7CQd9FEgW+SFhDU8FQE7qExVd9xJN8cRZITJJLZ8n
         UesCoEFpNt1WVhP/ZfDQck0rGz2jYKqgmLuHLF3pBvGxATxsAP05GEy1RbO5l3VJJ2uW
         U6YsHcmHHklq0Nig1OXwyRO4KdH+VOdFMdfYVSSEa92OGjPugnARUiLOcmMNUX3om/Ni
         mrTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWv8hYzhDBaPU4tyJqlxvVx62ZAZPbLeNucVPgm3Nha8MDQwZyJQoxEBDfHK4fAatXDLENzF4Y+JAeaNhDOpSTIaxGKh1608jpK85FMN/F3//zT
X-Gm-Message-State: AOJu0YyBeTrAMFMt05HvNGnG8dpOgDJzDuhBT2RiEm+KdO0PA7S93Lb9
	mMdcrcolx9l+9PZ7+MsNgwam0VTKfaMM9I7Zahx+YWc5eTp+QpAQYvae7Yor
X-Google-Smtp-Source: AGHT+IEiALhZ9IsdsFXvmR7fuhNOIyJLqVpzCC2cecEB0t8OyK65LJUJuPKbRgbkhIUV4oFUIBf5ww==
X-Received: by 2002:a17:902:d505:b0:1fd:a360:446f with SMTP id d9443c01a7336-200953e2db2mr16231755ad.65.1723108589666;
        Thu, 08 Aug 2024 02:16:29 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-1ff59179793sm119948565ad.200.2024.08.08.02.16.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Aug 2024 02:16:29 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH] wireless-regdb: Update regulatory info for Guatemala (GT) for 2020
Date: Thu,  8 Aug 2024 17:16:11 +0800
Message-Id: <20240808091611.57112-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_021631_797123_BA390CF2 
X-CRM114-Status: UNSURE (   7.91  )
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
 db.txt | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index e46beae64ca4..c0b8ea54c9d5 100644
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
+	(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
+	(6425 - 6525 @ 320), (200 mW), NO-OUTDOOR
+	(6525 - 6875 @ 320), (150 mW), NO-OUTDOOR
+	(6875 - 7125 @ 320), (150 mW), NO-OUTDOOR
+	(57000 - 66000 @ 2160), (20 mW), NO-OUTDOOR
 
 country GU: DFS-FCC
 	(2402 - 2472 @ 40), (30)
-- 
2.25.1


