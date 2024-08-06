Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA00DC3DA4A
	for <wireless-regdb@archiver.kernel.org>; Tue,  6 Aug 2024 01:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FFYqZlD61J1XKPI8ZI8UjX7kHI2kRP3uf64n1IZUVZ8=; b=SxRnlCnphWjcRt/5f3W05HGFvN
	KqA4bRg/xw32646OLUCwxD9zbsjHa78Td3uBfloMN+qWaBjKXsnYSLYREqsGecpA8MbEwrsGMYexb
	5CWmenclPHywFpqzBfybwfB+Z5bkpCjAko65l7h2LE3baubTkPScCYeUXFMXLxOBOBSIhFgW951fI
	TYFMBgTVwyLYZREDGuaihxQku1lN/dDVH//ZAKesOZBnw8P7CYlxfh08MxnWzHzhiFBVBzqQ98glR
	NVZwmSoegXOYtP/yHyRRi1fsuGznVwAwdmDPR45xSNvLOBBP7NNhHzP/760fOtVpR4lBottUgh7bI
	JwxaXEfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb9Cb-00000000BUR-3HgW;
	Tue, 06 Aug 2024 01:41:29 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb9CY-00000000BTx-3NQx
	for wireless-regdb@lists.infradead.org;
	Tue, 06 Aug 2024 01:41:28 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1fb3b7d0d56so420535ad.1
        for <wireless-regdb@lists.infradead.org>; Mon, 05 Aug 2024 18:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722908485; x=1723513285; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FFYqZlD61J1XKPI8ZI8UjX7kHI2kRP3uf64n1IZUVZ8=;
        b=ZcwSwOha0zZ+zvTHViqf4XXFOzwzYX9yMrevTEKI0ItCfIJDqfO12m73ZfixiimnRC
         Et6wJfAkLcsBLz4kZtyehumkHyXWCBuEeFM0xmZjxPKCjGo1KT+EOVNgrL8+uf9dxwP5
         Kz/ETL7PPQ9SjG4BfqKu1opPR06ARxBiKXzBS42zclENCQLSHRj2jl/KtfvBlLEESwpL
         FPyLh0tZf97v12m3tFBGfDlry4hEBTpyVEuyMJSLpST3j7ALOBGp4T6Fnh7H9qgkZ6T0
         OVaeTxmJtnHFhK5lPoBSB6VEepnJmHkx0jh3YZPJN5guLjaNkJoj1UdQQYICkHyddJ7s
         rIIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722908485; x=1723513285;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FFYqZlD61J1XKPI8ZI8UjX7kHI2kRP3uf64n1IZUVZ8=;
        b=GoCaStoIgvfBqwjkdZk6qAu9Xpekv6aCcQldyHowNf1vuFGROb0wDrRWEW/Ti7SkTv
         /Hx/iHEmTzcudtej+4uSoSX0SAwrEV1mCTxHuIEblb7frUrUw1GXVDWt5gwUvqP2Jw1J
         6wEQNIBtvQLhuxtPALwyaR64GofRDrxXQZ7tWRBnc3TQBG8ppJqvoc3lB+uG18db8D3p
         YSq+Fp08AApAcSfyqLPquGH0Bj6IN11rpNauOPzVtKMIBeAkdywtiIYimYz0RAksbLzd
         yJ0gNdimUn4VLMsNzDfmgBBbEWOvri6c7+XPNgPFQ+GeoXIdUyUCqNk7liUP4ZjSIRgf
         Onbg==
X-Forwarded-Encrypted: i=1; AJvYcCXqJPcNNnFSGSLjvhNFkcUyA0Rzcyaw6UlGwCTtaWtm3WxOHWnD8XD5aDbWA6ka24ecjo9AKrSf+3XBH1tgH5UvMr18FO45mDFudmSCHDYElKqW
X-Gm-Message-State: AOJu0YxqXa4kzUGX8iqB7POTEZ8babzdwPJ1g2+cshYgzQF6jhFmE0qO
	lKh3QvoCMijHt4IMJDE7vsWlQgkIiga0NvDbN+cOKHluJFl2toPz
X-Google-Smtp-Source: AGHT+IE72hNPuekbGVd95RFLEjUrCmMZMGYrsr+qmcDGgp81iYD1k2cb9FLjsXG/jdZxWdhqj9OHlA==
X-Received: by 2002:a17:903:280e:b0:1fd:ac9f:4050 with SMTP id d9443c01a7336-1ff57387114mr98747515ad.35.1722908484694;
        Mon, 05 Aug 2024 18:41:24 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-1ff58f556c8sm76004845ad.94.2024.08.05.18.41.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Aug 2024 18:41:24 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH] wireless-regdb: Update regulatory info for Bahrain (BH) for 2024
Date: Tue,  6 Aug 2024 09:41:09 +0800
Message-Id: <20240806014109.5258-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_184126_878449_D9A327BC 
X-CRM114-Status: UNSURE (   9.46  )
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

The Telecommunications Regulatory Authority of Bahrain (TRA) announces that
Internet users in the Kingdom will soon be able to benefit from faster and
more efficient Wi-Fi 6 technologies, allowing them to enjoy the full
capabilities of both fibre and 5G. This is in line with the Kingdom's
adoption of radio spectrum ranges 5470 - 5725 MHz and 5925 - 6425 MHz
for Wi-Fi 6 and Wi-Fi 6E applications [1].

Find "Technical Specifications - Requirements for Type Approval" [2] via
WEB page [3]:

- 2400 - 2483.5 MHz
  * 100 mW e.i.r.p
- 5150 - 5350 MHz
  * 200 mW e.i.r.p
  * indoor use only
  * Devices must use (TPC) and (DFS) mitigation techniques
    - EN 301 893: without TPC limit to 23 dBm
- 5470 - 5725 MHz
  * 500 mW e.i.r.p
  * Maximum mean e.i.r.p density for in-band emissions:
    50 mW/MHz in any 1 MHz band
  * Indoor & outdoor use
  * DFS and TPC is assumed to be implemented
    - EN 301 893: without TPC limit to 27 dBm
- 5725 - 5875 MHz
  * 2W e.i.r.p (10 MHz channel)
  * Indoor & outdoor use
  * DFS and TPC is assumed to be implemented
    - EN 302 502: The FWA device shall have the capability to reduce the
      operating mean EIRP level to a level not exceeding 24 dBm for
      ChS = 20 MHz and 21 dBm for ChS = 10 MHz.
- 5925 - 6425 MHz
  * LPI 200 mW e.i.r.p
    - Indoor use only
    - An adequate spectrum sharing mechanism shall be implemented
  * VLP 25 mW e.i.r.p
    - Indoor and outdoor use
    - An adequate spectrum sharing mechanism shall be implemented
- 57 - 66 GHz
  * 10 W (40 dBm) e.i.r.p
  * Adequate spectrum sharing mechanism shall be implemented.
  * Fixed outdoor installations are not allowed

[1] https://www.tra.org.bh/en/en/article/bahrain-approves-radio-spectrum-for-faster-wi-fi-6-technologies
[2] https://tra-website-prod-01.s3-me-south-1.amazonaws.com/Media/Documents/Publications/20240227160125242_dudbapc5_5dk.pdf
[3] https://www.tra.org.bh/en/category/apply-for-type-approval

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 4eaeaae616d8..e46beae64ca4 100644
--- a/db.txt
+++ b/db.txt
@@ -280,11 +280,16 @@ country BG: DFS-ETSI
 	# II.H03 of the List, BDS EN 302 567-2
 	(57000 - 66000 @ 2160), (40)
 
-country BH: DFS-JP
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 20), (20)
-	(5250 - 5330 @ 20), (20), DFS
-	(5735 - 5835 @ 20), (20)
+# Source:
+# https://tra-website-prod-01.s3-me-south-1.amazonaws.com/Media/Documents/Publications/20240227160125242_dudbapc5_5dk.pdf
+# (via https://www.tra.org.bh/en/category/apply-for-type-approval)
+country BH: DFS-ETSI
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5350 @ 80), (200 mW), DFS, NO-OUTDOOR
+	(5470 - 5725 @ 80), (27), DFS
+	(5725 - 5875 @ 80), (24), DFS
+	(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
+	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
 
 country BL: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-- 
2.25.1


