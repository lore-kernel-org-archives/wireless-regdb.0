Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F586C83F22
	for <wireless-regdb@archiver.kernel.org>; Fri, 18 Jul 2025 03:08:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gliDNT8UmrvqpL4JkSM9BrFqPID+dcYPsDKzUoYCBEY=; b=lrDBGlkKz+yjav3TIrFLQZ/ReB
	qDBUSvf94oAaUhs3STc4HJQdGLfSUo08YN7/QAB8jtlh2XMXVgCqCajkGL4ComV6HZR63SOWZGTKF
	T7TMTQfz6a3kB/6QZyJAlxB7QdglU6vkMWToNbKUVIhWSqqES8VJFHUbzdcLLaPJzJB/5zuSkwb9Z
	GFUDWYj0NASUzuQBluJap/LZvJlynsCe4lOwry21Q4/atBNjyxfuVMK7RJZ+gFwWcU1TLhjLxOVns
	6D2gcTMuCHN0pDGOjM7H3DU4jTpwfcMkzGLjGcHG5AvHwb5K9aSyC+RUnxZKBI4RNgRpAQM3erPzg
	pKo0CO5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucbSe-0000000BaAJ-1PLd;
	Fri, 18 Jul 2025 03:08:36 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucbSb-0000000Ba9u-263r
	for wireless-regdb@lists.infradead.org;
	Fri, 18 Jul 2025 03:08:34 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-b31d578e774so1953990a12.1
        for <wireless-regdb@lists.infradead.org>; Thu, 17 Jul 2025 20:08:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752808113; x=1753412913; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gliDNT8UmrvqpL4JkSM9BrFqPID+dcYPsDKzUoYCBEY=;
        b=cLnxxCC1sibo0hjBxm+tEbgfXX0dG84aTcbH/Xm8rXIB2VbOJ7w8CDY2G4OOSTr24j
         iTuMlCT6ydkFsmIaMBRyzw1WWiIzA3yrNYaUM3fVTU+L3crCbfuGLCrlnnrhcvScebjc
         1XaYCStBak4m4uqfazuXcUiC39BVFVxbsJeEjhkcGRVXYteBjVPTL9N+7KYaRo4bchOQ
         ByzCRQynFQb6xQIGLsGBhyLV6Dsnjcd4m6IEJGHeg3sVxK16XK3ZDKZ/k4y8JXT7xNAo
         gxqrRiUoMiSaLSy0dmMY07ghyVKQ05KAaHKOljvuh0yspqrToDvTrndzEVf5gZSTrx1F
         nNTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752808113; x=1753412913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gliDNT8UmrvqpL4JkSM9BrFqPID+dcYPsDKzUoYCBEY=;
        b=HIOPuziQQi93EDsNF6CmPoxrvaY4leC4v/4XN457P6XmsKgxMpqNfn+pLDnxoouxcJ
         njV+lUN8JXP/9RpZHN0w2fMgWuHaUypYVqdgsqrH0k5xHnyigrNUDXZPZHfYLvtdR/6r
         i011QSiQQpwv9bemXpcdceZCuu3dvUszUAOdP/cJ2TZi0UcklLWjneNOXBnaO7d8fB8J
         ZbvobgZdVfKzvvS4+U+tQSIa0I1aOj8av5Uj9PpO4N04x7FUpGzo9chezopkQOL0TmAe
         drthVvNqNCX+pLYtmCNC64VFxIA0L2FA3nC7SEhBzDIHsFSG+kAJnx7SHN/q0qZFX7e0
         Xf+Q==
X-Forwarded-Encrypted: i=1; AJvYcCX4rbBcoNANDvz4/O8rDBVzdzTmQCoF7xsaM4IuZB7v4N0JGYUG51KdqHB+yNXTesnEt7Tsl4GGy4s0TUAK2Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+Zqi6U7XfhyKv6NDfWnyq01LJLxIABSmwcVUCy46ZM0IygO5X
	Hl8LdwvA13xLCWNWaTsv8jqaRRkUV/Y9+c/UCgYuviasPJb1pkHZmDo9HUBl6A==
X-Gm-Gg: ASbGncvxb5d88yz5x+X9Boi5LbMtweoChiXVIL/GB5qvBL4yFmAWNOVx1vD+m3Igx/y
	jcWhA+KLtgoXXRl/xHyQei2OdMC72ilvG8ZHD24CgRzhAVIJDM1Qo8wADOg2jzuk9P2B2xEbfWb
	GO5M1+QOljCduQrdblSEu0ZyqQV5BKAaowRxMRgueGQcyHKbhDsXpCAQ0Gz59KpVLn50lSUHptS
	ZThjtk7VgqS9+WrkzRiACBfLAHubcf1xAQl4hMEJ7MRiMBZA1x4SKUUh3utPc4XUYVKPEzxBWiU
	sPH6rC9hVZiC5kpGESnuIX+rRzP+HRqYHDPSGr4dw7Xzk3xjCBOFfCFWMHZO4XFB3/LoeS7/Xnw
	8CucSD7AVDUrBfDhiPjbMQa4VYzUrfbkrkgzJzv4sj7ZUm8WXeWWvfDgyqiHWenjP
X-Google-Smtp-Source: AGHT+IGX1RxEzDOyTjrxinqZXxreXvwXhjTUNtlBZU1o/JS9UqTvXFLmf1LA1aobDwIlVR4JbHakVQ==
X-Received: by 2002:a17:90b:3d0a:b0:313:d361:73d7 with SMTP id 98e67ed59e1d1-31caeba85c4mr8247747a91.13.1752808112634;
        Thu, 17 Jul 2025 20:08:32 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-31cc3e5b46csm275324a91.11.2025.07.17.20.08.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 20:08:32 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH 2/2] wireless-regdb: update regulatory rules for Sint Marteen (SX) for 2018
Date: Fri, 18 Jul 2025 11:08:10 +0800
Message-Id: <20250718030810.17213-2-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250718030810.17213-1-pkshih@gmail.com>
References: <20250718030810.17213-1-pkshih@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250717_200833_538763_4AC1C5FC 
X-CRM114-Status: UNSURE (   8.77  )
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

By "Legal and illegal wireless communication devices" in [1], Bureau
Telecommunications and Post St. Maarten lists the allowed equipment [2].

With ETSI rules:

* 2.4-2.4835 GHz
  - max. power 100mW
* 5.15-5.25 GHz
  - max. power 50mW
* 5.25-5.35 GHz
  - max. power 250mW
  - ESTI EN 301 893
    * DFS
    * for devices without TPC, the limit is lowered 3 dBm
      (reduce to 21 dBm)
* 5.47-5.725 GHz
  - max. power 250mW
  - ESTI EN 301 893
    * DFS
    * for devices without TPC, the limit is lowered 3 dBm
      - Not required for devices that operate at a maximum mean e.i.r.p. of
        27 dBm when operating in 5470 MHz to 5725 MHz
        (keep 250 mW for 5470 MHz to 5725 MHz)
* 5.725-5.875 GHz
  - max. power 1W
  - ETSI EN 302 502
    * DFS: 5725 - 5850
    * The FWA device shall have the capability to reduce the operating
      mean EIRP level to a level not exceeding 24 dBm for ChS = 20 MHz
      (reduce to 24 dBm)

[1] https://btp.sx/telecommunication.html
[2] https://btp.sx/dash/files/Telecommunications/Technical-Requirements/10t98466434723___TGVnYWwgYW5kIGlsbGVnYWwgd2lyZWxlc3MgY29tbXVuaWNhdGlvbiBkZXZpY2Vzb_64.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/db.txt b/db.txt
index d2414810442b..56868cf58759 100644
--- a/db.txt
+++ b/db.txt
@@ -1867,6 +1867,15 @@ country SV: DFS-FCC
 	(5735 - 5835 @ 20), (30)
 	(5925 - 7125 @ 320), (12), NO-OUTDOOR
 
+# Source:
+# https://btp.sx/dash/files/Telecommunications/Technical-Requirements/10t98466434723___TGVnYWwgYW5kIGlsbGVnYWwgd2lyZWxlc3MgY29tbXVuaWNhdGlvbiBkZXZpY2Vzb_64.pdf
+country SX: DFS-ETSI
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (50 mW), AUTO-BW
+	(5250 - 5350 @ 80), (21), DFS, AUTO-BW
+	(5470 - 5725 @ 160), (250 mW), DFS
+	(5725 - 5875 @ 80), (24), DFS
+
 # Source:
 # https://sytpra.gov.sy/public/uploads/files/%D8%A7%D9%84%D8%A7%D8%B7%D8%A7%D8%B1%20%D8%A7%D9%84%D9%82%D8%A7%D9%86%D9%88%D9%86%D9%8A/%D9%84%D9%88%D8%A7%D8%A6%D8%AD%20%D8%AA%D9%86%D8%B8%D9%8A%D9%85%D9%8A%D8%A9/%D9%84%D9%88%D8%A7%D8%A6%D8%AD%20%D8%A7%D9%84%D8%B7%D9%8A%D9%81%20%D8%A7%D9%84%D8%AA%D8%B1%D8%AF%D8%AF%D9%8A%20%D8%A7%D9%84%D8%B1%D8%A7%D8%AF%D9%8A%D9%88%D9%8A/L1.pdf
 country SY: DFS-ETSI
-- 
2.25.1


