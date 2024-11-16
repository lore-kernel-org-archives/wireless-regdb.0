Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6740ED68BDF
	for <wireless-regdb@archiver.kernel.org>; Sat, 16 Nov 2024 08:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0UxS0/3N00vpPB7ijCRLU5kaQylJVug8qDcI6jU8NoQ=; b=G94f4Hep67Y694uPzWS4sQpUoh
	Ap97IPOkx8WDX8dcM3vTTjZD+rcotCMOZ0w93GSe/xRQJHO/6IYtqe2MvOeJIByqi70WanNsN8hIr
	iZ1xBbOQPl9wDKi0POUjTi0UFc8xegVQD2EYL9zMb5mbkJ/eGkN6sE4xe3bx00HC8X3xgpJc31wqh
	Ysov4hOcGt7GdlLIRTO7L2vDSNgVQB5YHx1z/BQwwP/aFSYBK4UgKhDX23nmpkmQHbM0KTCj77bc1
	tZWUl3wQXJDRTFKIH4IA8XvV96c36gjpNQBjgP2bzcGWKDvG6FXIpJrM+c2FbkRawDnJ/XG2YRCwo
	k1TzgMhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tCE7y-00000005EGM-0WUd;
	Sat, 16 Nov 2024 08:25:58 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tCE7u-00000005EFD-3AIF
	for wireless-regdb@lists.infradead.org;
	Sat, 16 Nov 2024 08:25:56 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-20cdda5cfb6so14048375ad.3
        for <wireless-regdb@lists.infradead.org>; Sat, 16 Nov 2024 00:25:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731745554; x=1732350354; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0UxS0/3N00vpPB7ijCRLU5kaQylJVug8qDcI6jU8NoQ=;
        b=VpUjDxh/85Ial4VUKADnpJAu19rkBQw2UyqsdfNxSS3m0EzOIxrcnQfQhmt0+y4op4
         00czaAXPfdPp541HzR3oq+1cWUph+kiK1AbRq6X9bvL7XK/A/9AoktZ5FAEfcqXDamK/
         YQ9r44OJJC6ZUaJtU/KLr9/fLJt8cqhcXuJ4CAgZZTF7vt2MIShS5l2Og5USjxxENHnf
         +BP/80tkOiHG7vqUO2VSBrpM47jSnpyG2rC6zUyRmO7ZCRz8y+prPVo0v0H78pUK+hhj
         Eu7yR4YvLCf501Oan7QMmryxhD93wn3Jrp3iz3NgF/MVw71l2YUb+X2nThKjOGzRFKVP
         SNoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731745554; x=1732350354;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0UxS0/3N00vpPB7ijCRLU5kaQylJVug8qDcI6jU8NoQ=;
        b=HTWWNSejnHA8+GXIcUF2JIefw68tZ+eeWZfJgtnI5yv2idIHJPFjqqXsSD7cmyzKdu
         eXKcSBfYsP52K5fWeasI9s4cINY4vICnGIpnzLNWcBTENfEpnT1Auha2COSEUuSerZH7
         qyXfDAedTmyzofpPkWFnoQPRiERsuAhZRPVRf6e0VO1k9p0IwhCQKnfpKi0Us7/6TKPQ
         UxR802Qxg86xIN8WlRQ/qdOO8u4UhsK6nfaWv5WRmVFrFISsaQqFgsEvaeTejT38tIUL
         aPuuFnAViW9XLui5svCNDDaPO2eY1Zm5gmsb7CgkrRLPwxVwngkjnemd5RBsY0iNgO1s
         stig==
X-Forwarded-Encrypted: i=1; AJvYcCVBNhe+szEWiYOO3ZZDdBxC4+uwWfpvcAWLEM96TFKQIUT7YpI3e+ssL5+hFIrX8L9LVp0N8GJuO5Jnvt3eYA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxS3MXXwRiDUB2tfqS2ZHk4MgJfzAU6SZMkupDSjCyAW0k0rtr9
	Cdz4XRpVe83yy4O7Nn+2aIsIce4wQMYJcv9bpFdmR6Z0FYm85LRLlaLwkqFYKTk=
X-Google-Smtp-Source: AGHT+IED/u8d1RBUMm6XxFi9IuWea83oKUuGb1FozvnJAyHh5eli0C0xfrUHrnsyjSaIq2wzyZ+zVQ==
X-Received: by 2002:a17:902:f705:b0:20c:b700:6e10 with SMTP id d9443c01a7336-211d0d83b0dmr85313035ad.34.1731745553673;
        Sat, 16 Nov 2024 00:25:53 -0800 (PST)
Received: from pkshih-B33E.realtek.com (125-231-72-119.dynamic-ip.hinet.net. [125.231.72.119])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-211d0f32008sm23685975ad.157.2024.11.16.00.25.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Nov 2024 00:25:53 -0800 (PST)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH] wireless-regdb: Update regulatory info for Syria (SY) for 2020
Date: Sat, 16 Nov 2024 16:25:16 +0800
Message-Id: <20241116082516.8819-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241116_002554_796397_157E0DD1 
X-CRM114-Status: UNSURE (   6.66  )
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

Syrian Arab Republic, Telecommunications and Post Regulatory Authority
released regulations for Short range devices approved by Board of
Commissioners Resolution No. 18 dated 3/14/2020 [2] via page [1].

In page 8, section WIDEBAND DATA TRANSMISSION SYSTEMS defines

* 2400-2483.5 MHz
  - 100 mW EIRP
  - Indoor only
  - EN 300 328
* 5150-5250 MHz
  - 200 mW EIRP
  - Indoor only
  - EN 301 893
* 5250-5350 MHz
  - 200 mW EIRP
  - Indoor only
  - EN 301 893
    * DFS
* 5470-5725 MHz
  - 200 mW EIRP
  - Indoor
  - EN 301 893
    * DFS
* 5725-5875 MHz
  - 200 mW EIRP
  - Indoor only
  - EN 302 502 (In [2], EN 301 893 should be a typo)
    * DFS: 5725 - 5850
* 57-66 GHz
  - 40 dBm EIRP
  - Indoor only
  - EN 302 567

[1] https://sytpra.gov.sy/pages/%D9%84%D9%88%D8%A7%D8%A6%D8%AD-%D8%AA%D9%86%D8%B8%D9%8A%D9%85%D9%8A%D8%A9/%D9%84%D9%88%D8%A7%D8%A6%D8%AD-%D8%A7%D9%84%D8%B7%D9%8A%D9%81-%D8%A7%D9%84%D8%AA%D8%B1%D8%AF%D8%AF%D9%8A-%D8%A7%D9%84%D8%B1%D8%A7%D8%AF%D9%8A%D9%88%D9%8A
[2] https://sytpra.gov.sy/public/uploads/files/%D8%A7%D9%84%D8%A7%D8%B7%D8%A7%D8%B1%20%D8%A7%D9%84%D9%82%D8%A7%D9%86%D9%88%D9%86%D9%8A/%D9%84%D9%88%D8%A7%D8%A6%D8%AD%20%D8%AA%D9%86%D8%B8%D9%8A%D9%85%D9%8A%D8%A9/%D9%84%D9%88%D8%A7%D8%A6%D8%AD%20%D8%A7%D9%84%D8%B7%D9%8A%D9%81%20%D8%A7%D9%84%D8%AA%D8%B1%D8%AF%D8%AF%D9%8A%20%D8%A7%D9%84%D8%B1%D8%A7%D8%AF%D9%8A%D9%88%D9%8A/L1.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index a12f931ef4b2..fc70e625e81a 100644
--- a/db.txt
+++ b/db.txt
@@ -1784,8 +1784,16 @@ country SV: DFS-FCC
 	(5735 - 5835 @ 20), (30)
 	(5925 - 7125 @ 320), (12), NO-OUTDOOR
 
-country SY:
-	(2402 - 2482 @ 40), (20)
+# Source:
+# https://sytpra.gov.sy/public/uploads/files/%D8%A7%D9%84%D8%A7%D8%B7%D8%A7%D8%B1%20%D8%A7%D9%84%D9%82%D8%A7%D9%86%D9%88%D9%86%D9%8A/%D9%84%D9%88%D8%A7%D8%A6%D8%AD%20%D8%AA%D9%86%D8%B8%D9%8A%D9%85%D9%8A%D8%A9/%D9%84%D9%88%D8%A7%D8%A6%D8%AD%20%D8%A7%D9%84%D8%B7%D9%8A%D9%81%20%D8%A7%D9%84%D8%AA%D8%B1%D8%AF%D8%AF%D9%8A%20%D8%A7%D9%84%D8%B1%D8%A7%D8%AF%D9%8A%D9%88%D9%8A/L1.pdf
+country SY: DFS-ETSI
+	(2400 - 2483.5 @ 40), (100 mW), NO-OUTDOOR
+	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
+	(5250 - 5350 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, DFS
+	(5470 - 5725 @ 160), (200 mW), NO-OUTDOOR, DFS
+	(5725 - 5850 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, DFS
+	(5850 - 5875 @ 20), (200 mW), NO-OUTDOOR, AUTO-BW
+	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
 
 # Source:
 # http://www.telecommission.tc/Spectrum-plan20110324-101210.html
-- 
2.25.1


