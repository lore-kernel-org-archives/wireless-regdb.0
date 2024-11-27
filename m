Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0554D66BA5
	for <wireless-regdb@archiver.kernel.org>; Wed, 27 Nov 2024 01:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aVKiElbX1G/Llu1UB7E/2V7jIT5D9hjhB8BONhE5Lhc=; b=vtX03FoSZTIojUX7MWOBKovzGO
	iYETtS+IP5j5QyayTZ4ZvDR/ah6H4bJAS8hI6y/FMFtlY0u+cAmO8HTdICDy20lpnrMGrc1dGmbre
	jE0kb28AHzlO/RvjEcoPQ8+qXjdGEtD4ZmKqtZsPfIzhshhLR7X0poaeDMF3dbbg0km+KGluu4A77
	R0RVfmhnGcByoTwajfsOhBbjOj3ZkxMb/cRYMeoD4O8nAdhNVuSyGNTmMr9yukBgM3qLUYMFddoNb
	8x5QiTRVtmzN7f6pJygcFeLGnfNT2VQybn7AV9x+BVbg5p0V/JsTD4OYQBpT5Mulu3VEUkjN6lE0+
	XcrUiu6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tG6uf-0000000C17a-25SS;
	Wed, 27 Nov 2024 01:32:17 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tG6ud-0000000C17A-0IRD
	for wireless-regdb@lists.infradead.org;
	Wed, 27 Nov 2024 01:32:16 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-7251abe0e69so1958150b3a.0
        for <wireless-regdb@lists.infradead.org>; Tue, 26 Nov 2024 17:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732671133; x=1733275933; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aVKiElbX1G/Llu1UB7E/2V7jIT5D9hjhB8BONhE5Lhc=;
        b=MVfhvoDcxxk0fzz8KaXo7TEO6ExTNZbmnMC6XIlr13IcJFdFxB4ftNHyurRXvl37dq
         Zq1StBCmxUl3Z+sZitllxT5Ui9veMEasa4/uAmn85XgwFp9IVSdV6eDCq5Wh7eBbdhn/
         zYBVAPf5JwxDF3ugsxteIggN37D40aEMgeCTeWh3/JeZSDt6KfjOvrNCB5/9gD3XPf2d
         u8xQOrz9kuwxSpGd1OYymPYkEe5M3ndEuAb7GavLEJCTMsBLRZgQpZjLgLKAwA/vTFNb
         Fo8Tnn/JmKYMii/zCyyUjA5dkwoCeZjoHRvascqOLycqgPWUp9N7duByN4e/hqzLipEF
         bU1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732671133; x=1733275933;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aVKiElbX1G/Llu1UB7E/2V7jIT5D9hjhB8BONhE5Lhc=;
        b=jrlwk5OjICUOJiFhDs6C8+FanEIginwldsXVPYTxKqaAZDBjG7Xj22RbWmkmZ5Q/nB
         QrD/weoIwMmkfP59iftZLqcwyNJRgiplyvUrLrYvbzYmdkIYrkG9fMbZz7yrnY/Zu5le
         hoz8RC0UqNl/sFQT086o4u2dgVe/+xXjGJ99ICjlqtYEHxivAuBYoZdAnPNZsb5fpvKv
         NnrjaF4GHDtS73PvTKvvvFtIhhxUEGpVsW2DwooR/9TOSswBvH7tvA8pxlatoafFSD2G
         maN4HUd79wN2P8v4PGhBeFJRUtHCOS33iLUC4WMbMMVhROkfnKAtg+AjcQ6GBciLpPdn
         dU0Q==
X-Forwarded-Encrypted: i=1; AJvYcCXz1EwkyfA2A0UGOvPX5vvqiGnpyUxhE+dVIGy0B0LjE1lkH9C6gCpaLtYqvY3iN3OKQIaU3HUUi0hQxGfQMA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyrP78qhPKR43CnzqRt/+qnKfQt5Iahu/DUsiciT7gBA3SbQBpK
	7wD7SqCJ3+H3PnRscfIVT0xdqWTlsCUln5fWcT+utHyOwL1im0EuShq7xPov
X-Gm-Gg: ASbGnctTc/iyYdDRyWkwP3s7pHgk0HTXI1+6XDOVI1UZqkfJCboqCKqUiW0QW4Zbw2W
	j3KpRYFwmd1SR3flC04LLXDd1L+GN963Fi8roIrjqJIDaJSZylQ9J4tt/XTA6Hf1aXkF82lEixP
	mR17eAkzpS407TIjDMEgeDwS8TeB2XGNq54T3MVUj+L2xQg7dc0wQr/PURn6OeWyQzqi/GnceBq
	WN41u6CwaNKFcLa+YNBwuf7sveu5kiQp92FZdXGt70DDAVTvIQfHi83TWZ869WjTOcTaS/32EIM
	QcPHca7vRj+h+286
X-Google-Smtp-Source: AGHT+IGF0AWXVhwQgKp852jMAYbzZeHUusfk5AVedXEbtlYU3QAlauARD3i8MDGg8I1fO4/aUsRJDg==
X-Received: by 2002:a05:6a20:2444:b0:1db:a919:27ea with SMTP id adf61e73a8af0-1e0e0b71e9emr2343943637.41.1732671133234;
        Tue, 26 Nov 2024 17:32:13 -0800 (PST)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-724e3e636f7sm8964534b3a.183.2024.11.26.17.32.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 17:32:12 -0800 (PST)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH] wireless-regdb: Update regulatory info for Azerbaijan (AZ) on 6GHz for 2024
Date: Wed, 27 Nov 2024 17:32:08 +0800
Message-Id: <20241127093208.4693-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_173215_110609_68EA93B8 
X-CRM114-Status: UNSURE (   7.37  )
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

The ICTA established under the Ministry of Digital Development and
Transport of the Republic of Azerbaijan announced in June-September,
the State Commission for Radio Frequencies responded positively to 17
applications.

At the meeting of the State Commission, taking into account the
Decision No. (20) 01 of the Electronic Communications Committee of the
Pan-European Conference of Postal and Telecommunications Administrations
(ECC Decision (20) 01) and international experience, the "Conditions for
the use of the 5945-6425 MHz radio frequency band for Wireless Access
Systems (WAS), including Radio Local Area Networks (RLAN)" were approved.

ECC/DEC(20)01 defines:

* 5945-6425 MHz
  - LPI, 23 dBm, indoor use only (adopted)
  - VLP, 14 dBm, indoor/outdoor

[1] https://icta.az/show-media-news/iyun-sentyabr-aylarinda-radiotezlikler-uzre-dovlet-komissiyasi-17-muracieti-musbet-cavablandirib?

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/db.txt b/db.txt
index 5710545da0b6..24195fcac004 100644
--- a/db.txt
+++ b/db.txt
@@ -180,6 +180,7 @@ country AZ: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (18), AUTO-BW
 	(5250 - 5330 @ 80), (18), DFS, AUTO-BW
+	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 
 # BA as part of CEPT accepted decisions 2005/513/EC (5GHz RLAN, EN 301 893)
 # and 2006/771/EC (amended by 2008/432/EC, Short-Range Devices, EN 300 440)
-- 
2.25.1


