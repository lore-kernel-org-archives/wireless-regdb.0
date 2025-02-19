Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1CF5C021AD
	for <wireless-regdb@archiver.kernel.org>; Wed, 19 Feb 2025 02:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V1u2pB2szRJcEslDwlgFx2CcAzeLV+6q0mMcBgTJR6E=; b=DSdJPxNAfz1PPxz2ylBL5TgMN6
	FKEpzfMDgcVHUIBOBKh7H/7k+B4G8U0Bg0SLRvaSgMyJOkxYP6RkG6PWzhVF4L5rS2d85n2JU9wqw
	5l2/HM27Qf9TFtE5gBEG/29UFcjeqkvuNWiAxN9Svf/68996VNnPpsPET/e3fmFcBEYghBpNXiAe/
	Nyp7wHfm73QCfKcmqqEXQ2ZL/1znv+OBdCZtTyquR+5m3CJDr5y6ZcnOlv9YtTcftWL65a4iz0ZYV
	VZ07QhWKc0PQH0lXAd4B/523sp2aj9oWYhbBnfgO8tQoOVRbOm6/Mi0/P2NuHwJiUewaPFR5QQvlT
	cgLnVhFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkZvR-0000000AfVw-0jCH;
	Wed, 19 Feb 2025 02:35:01 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkZvO-0000000AfUA-1yYP
	for wireless-regdb@lists.infradead.org;
	Wed, 19 Feb 2025 02:34:59 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-220c4159f87so82358815ad.0
        for <wireless-regdb@lists.infradead.org>; Tue, 18 Feb 2025 18:34:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739932498; x=1740537298; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V1u2pB2szRJcEslDwlgFx2CcAzeLV+6q0mMcBgTJR6E=;
        b=PzdtYkOBH5JiZqxjG5E8ViCPRorZJ3BK80lywUK0WpxC3HDiXInBNm1EftTpXtNlSH
         DgeRjRI24p4jS+QZ8PkAEl2aE5aPpGlg4srZofJVwuqH/Qf/7qIWF9DgLJwTCprajDp/
         yEQ/fg3Oenu/mCI++hF8UMTnLVKVBSUb9B0BmGEyli+NIUfqeMDUvmimuTC5Kd1rOMsV
         NAiI8bq10j/2AKgclM8eV820qr/r3nKFoL+BYpr7CfFd+5+q6GQRiKl6XB14cznhEo87
         T6tf2YZd+rQZCwcU8F8uRaBui4FEA/nSCAuwSSNrAJzYiQsHJPWsqbr2DHjyvgJ5KuyK
         lh3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739932498; x=1740537298;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V1u2pB2szRJcEslDwlgFx2CcAzeLV+6q0mMcBgTJR6E=;
        b=ExJPGzQoUf8Do2ZDmoUxCgtQ/1ZgXlJoqgAICnLeT74/5wRxnp2k7AuXfLrTZaqhkg
         EQ8q1tfGnFJugL2im3h2OHXMzkW7iuDDmFR/Dk/fkqTePZL3VjipbS/loRWhykcsseHb
         UNcq4aHLVd9Ht55etfg2i4cUtx6WC/1q5qLuAYOt+RlrW7cmhqTYJWdHxF5qvQMeL4rj
         tEkDbHzJbv8hJz4AyVJBbggBt3n+bhEcsZ/Y0Iiy9owbqYVGAv5LCCR35UgxaBsrr0bX
         XtHZoWagxAAsw/GOzEXbB6Uu3G67os9lhywzNbTNqBpSVSiAMoXODbHwtNrRY6mOTSFA
         HWgQ==
X-Forwarded-Encrypted: i=1; AJvYcCUtVaJDO9LXpMfpwaVDG6RgamOjz4Hv06ILzsYDFnkj7jdHEy6ZSo+1ymH2mgDeE8RpAU99QdcGX2gGgKKf9A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzgCEKscKwFKl1rOp6sXEvoXHo3jmp4Lg2TT6bz1qBMGxjXPxjs
	dGwuYzVQ3O90zCTB7MF/dYZq88UvEa4nZJil1gahFs2BLQ+bDQ6/
X-Gm-Gg: ASbGncuWpwWxpwIWheZzF5IWY24afBLhyBhQS7T8M5NA6J5kCPPHGePl4Ja3A0tjolb
	6arlBIh2deaK7gOOWNvQYjbQxBonbISm/KTOZ4R3VC1q+0RkhC0677/UdXi9GXRA4ZJNOtwzr0P
	mDUWHgy0ZGE0+UdYGlgCMiCNCh3VsyJKYd374KUJUykrCVknSJOOAk+NlfMWfDm2NKAZbvK+9cv
	lGmyV1Ct9mRUpw4o/H8rINCF89Iy3jH0U/JfTyS3pI/4WlLXRUr1V8KxIE8eqz/Ab3GQcBRkMBd
	QVM8n6UITk0az48bUvSOmWTWQHiX/SI3F3WZQJbjUTiXQ16GNNqYJ6GcxA==
X-Google-Smtp-Source: AGHT+IEIBi6Xz6yQOikL9DfUMDni6fZ5csfboVSXVClh3d9QyljKBHTQnt9pu8iN2ShKKrhijJhCIA==
X-Received: by 2002:a17:903:2f88:b0:21f:8718:fc64 with SMTP id d9443c01a7336-221040d8187mr273437115ad.46.1739932497817;
        Tue, 18 Feb 2025 18:34:57 -0800 (PST)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-220d536671asm96837625ad.88.2025.02.18.18.34.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2025 18:34:57 -0800 (PST)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org,
	johannes@sipsolutions.net,
	mobin@mobintestserver.ir
Subject: [PATCH v3 2/3] wireless-regdb: Update regulatory rules for Iran (IR) on both 2.4 and 5Ghz for 2021
Date: Wed, 19 Feb 2025 10:34:14 +0800
Message-Id: <20250219023415.14229-2-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250219023415.14229-1-pkshih@gmail.com>
References: <20250219023415.14229-1-pkshih@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_183458_514359_8773911D 
X-CRM114-Status: GOOD (  11.65  )
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

Decision No. 4004-01DEC-CRA, 8th Edition - February 2021,
Radiocommunications and Regulatory Organization.
General radio license for the use of parts of the frequency bands
2400-2483.5 MHz, 5150-5250 MHz, 5350-5250 MHz, 5470-5725 MHz, and
5850-5725 MHz in radio access networks. [1]

* 2400 - 2483.5
  - indoor
    * 100 mW e.i.r.p
    * 10dBm in every 1Mhz
  - outdoor
    * 4000 mW e.i.r.p
  - Intersection of indoor and outdoor. Indoor values are adopted.
* 5150 - 5250
  - indoor & outdoor
    * 200 mW e.i.r.p
    * 10dBm/MHz per 1MHz bandwidth or -6dBm/25kHz per 25kHz bandwidth
* 5250 - 5350
  - indoor
    * 200 mW e.i.r.p
    * 10dBm/MHz per 1MHz bandwidth
  - outdoor
    * 1000 mW e.i.r.p
    * 17dBm/MHz per 1MHz bandwidth
    * DFS
  - For outdoor usage, TPC is required, and there is no provision for
    3 dB power reduction if TPC is not implemented. Mark this band
    as indoor-only.
* 5470 - 5725
  - 1000 mW e.i.r.p
  - 17dBm/MHz per 1MHz bandwidth
  - DFS
  - If TPC is not used, the maximum radiated e.i.r.p. must be reduced
    by 3dB.
  - Outdoor use only
* 5725 - 5850
  - 4000 mW e.i.r.p
  - 36dBm in every 500 kHz
  - DFS
  - Outdoor use only
  - P2P only
  - TPC is required without provision for no TPC. (Don't add this rule)

These information is from [4], Mobin Aydinfar shared the official link [1]
(inaccessible from outside of Iran), a mirror version [2] and translated
version [3].

[1] https://asnad.cra.ir/fa/Public/Documents/Details/73af8590-f065-eb11-968f-0050569b0899
[2] https://mobintestserver.ir/Iran-2.4Ghz-5Ghz-cra-official-doc.pdf
[3] https://mobintestserver.ir/Iran-2.4Ghz-5Ghz-cra-official-table.ods
[4] https://lore.kernel.org/linux-wireless/c9ccf5ba-c091-45c4-9283-970bfa4f1afe@mobintestserver.ir/T/#u

Reported-by: Mobin Aydinfar <mobin@mobintestserver.ir>
Closes: https://lore.kernel.org/linux-wireless/c9ccf5ba-c091-45c4-9283-970bfa4f1afe@mobintestserver.ir/T/#u
Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v3:
  - correct release year 2021
  - add NO-INDOOR entry
v2:
  - add outdoor info to commit message as reference
  - add Reported-by and Closes tags
  - db.txt: mark 5250 - 5350 as NO-OUTDOOR
---
 db.txt | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index d56ad32d31c9..7fe673111f62 100644
--- a/db.txt
+++ b/db.txt
@@ -934,9 +934,13 @@ country IN:
 	(5470 - 5725 @ 160), (24), DFS
 	(5725 - 5875 @ 80), (30)
 
-country IR: DFS-JP
-	(2402 - 2482 @ 40), (20)
-	(5735 - 5835 @ 80), (30)
+# Source:
+# https://asnad.cra.ir/fa/Public/Documents/Details/73af8590-f065-eb11-968f-0050569b0899
+country IR: DFS-ETSI
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5150 - 5250 @ 80), (200 mW)
+	(5250 - 5350 @ 80), (200 mW), DFS, NO-OUTDOOR
+	(5470 - 5725 @ 160), (27), DFS, NO-INDOOR
 
 # IS as part of CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
-- 
2.25.1


