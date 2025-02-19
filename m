Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 006CFC021AA
	for <wireless-regdb@archiver.kernel.org>; Wed, 19 Feb 2025 02:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0inRTGoZFQ//tUsEqbwi2wHbDhawvluZlxJo4e0ovJg=; b=s9GnKqTWAHfmS4OIoanYMzkC60
	reVS0jtcAg2kZZNnu1yYimbtn4Rq+dsLV0XN08zx8p0/jaCgsMG3tUN01ukA2uQrPg+iJVjkbh4Jz
	orA8pOApE58jcLmHXUqQXt9Omo1DrBnbEu6DJZihDwLmcuOxYnKqvUBVUJqdGjWdQ1UBdp/AIPb8f
	qEuCk68SN036vzDH3aRmgNCPr0gyRJKJt5Db/EUAQp2CBhLjyMOGo7JvO6EGhxWgO+CXkf6vqsy71
	RN7c26yZH5B8vo6fMXhJ0a0WkpKAa/IhjJXjvmQ+NH3okJI0mMtEeitrlrEmgWGbnSBA1rAYTt12Z
	E7e3yaMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkZvS-0000000AfWe-2R9Z;
	Wed, 19 Feb 2025 02:35:02 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkZvQ-0000000AfVB-1WX3
	for wireless-regdb@lists.infradead.org;
	Wed, 19 Feb 2025 02:35:01 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-221206dbd7eso53505765ad.2
        for <wireless-regdb@lists.infradead.org>; Tue, 18 Feb 2025 18:35:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739932500; x=1740537300; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0inRTGoZFQ//tUsEqbwi2wHbDhawvluZlxJo4e0ovJg=;
        b=Jw04Qfk2cjMg+GnntLpy2BBeHmNhtYlEMOHoGIz7q3AAFfKyYx8gntPXetTAox4VAJ
         OqD52x4jkYnHwi+kpbidE9S76SDDJZVQFhBAFVtemKLToKh2Y50lBSu4imT5bQ0/SPuW
         UOxoMAFKLmjqdt0ry9SRKfMdabXZijm4rUxFHnW0RIdJilJI8DK085rFH4307yKwHqgg
         B+iqyVdNMFVhtjLSsF9nQhvf40FOLeadrxe5anPUBK+s32hUcLEfz4QrOXZM2hScGNDY
         Izz4C1zyTA+YFLsE46qnpkmVsXmf9mt7DOml+AlAP42by+leByZJiuR1hBYtJou640np
         XK2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739932500; x=1740537300;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0inRTGoZFQ//tUsEqbwi2wHbDhawvluZlxJo4e0ovJg=;
        b=JpKAqAzSizvBty6Ht+F2r5I+duLk9spxnUSgAz0lJJVqGtbO0urER35yYNicpciw+v
         TWxe0MnQ3cqRr/JoO6rkKskQ+HzNAJWFnRn+LDHLeYhBthFDlGFsm7KceVsuNwTazFyu
         LAG1rDE2em2x1Y07zzlNxEE4r2VPmQ/LsEo6pDchlM9okRL8IW4d2VAEcWuarb8HPrkI
         DCqDsfH3kRFLj8o/oVA1mYoSA9wI1+stO6AAb9t2go+jJgfOAXNzbqKgEGYpN6LElnih
         u+wqpNAF9CVwAPpz/0WPqIuw0sY7fuUsP9OPFLuQXewaoABFh8su2cNlFeb6K/W9WnhP
         7AQg==
X-Forwarded-Encrypted: i=1; AJvYcCWgNTUYWWNqv2cd8PNRRGdH+f2OZPTxz8rhiQ+eXrPO5iBtyEbrcCExf3UqzO1a6IPCUYdNQWh/Q4d4aJiV0A==@lists.infradead.org
X-Gm-Message-State: AOJu0YwJF75Z5TJlgAo8TGOXcL3NqGA1Q/+F2GMfEvDyLIJt5MaVhBD9
	tbJOQtNwjcN95wBM+yfafB7WIP64wCmp2bwh6WceOFYr+FmV91ny
X-Gm-Gg: ASbGnct8o3+PJAVdQsWDzRQaiFLTSriuoiTzU6gQCC5yF+9ZevBY3ro2+44hh3RH9rO
	nUNfaQRhV2VLwBfHnxqxm6MRCu0anm70ubl5TxDAlw06Ioy3LnH/Fo73dK57c0egqmZKzAeuR2e
	lNQBmUq5J9qh+ML8R3WnHt45jawthZYaUvKSIZjMLMy+aXZ1Z/C9/4zwK6W82NQVP7I7RpHN4as
	v6D9t50TjCazavhbsNZHSoLwJo2MgwqDVfcRilb9RAMwSPivnOSWCzYireCH2OKpUV+T7uY7RCV
	YTpWbcH81KLgqXkN27vV4TDVtFn8clpbCkpBETACGMljiIwXJhSuBUzZ5g==
X-Google-Smtp-Source: AGHT+IFF/h8fx9y+WDvR1AB7qCoK+aUW0j2Aqd9Ec2KJIUuJRUzaHZNlcgNE4Kz3pB/aKgNYSEjDZA==
X-Received: by 2002:a17:902:e5c2:b0:215:b9a6:5cb9 with SMTP id d9443c01a7336-22170561bdcmr25291345ad.5.1739932499587;
        Tue, 18 Feb 2025 18:34:59 -0800 (PST)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-220d536671asm96837625ad.88.2025.02.18.18.34.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2025 18:34:59 -0800 (PST)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org,
	johannes@sipsolutions.net,
	mobin@mobintestserver.ir
Subject: [PATCH v3 3/3] wireless-regdb: Update frequency range with NO-INDOOR for Oman (OM)
Date: Wed, 19 Feb 2025 10:34:15 +0800
Message-Id: <20250219023415.14229-3-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250219023415.14229-1-pkshih@gmail.com>
References: <20250219023415.14229-1-pkshih@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_183500_402959_D743CAC7 
X-CRM114-Status: UNSURE (   9.38  )
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

The commit f67f40d00919 ("wireless-regdb: Update regulatory info for Oman (OM)")
describes the range 5725-5850 MHz is outdoor use only, and currently we
can use NO-INDOOR flag. Add the entry accordingly.

* 5725-5850 MHz
  - 2 W max. mean EIRP
  - TPC: FWA systems operating in frequency band 5725-5850 MHz shall
         employ TPC with a range of at least 5 dB.
         (28 dBm Is adopted)
  - Outdoor use only
  - DFS

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v3:
 - new introduction by v3
---
 db.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/db.txt b/db.txt
index 7fe673111f62..803f1bc5405f 100644
--- a/db.txt
+++ b/db.txt
@@ -1480,6 +1480,7 @@ country OM: DFS-ETSI
 	(5170 - 5250 @ 80), (200 mW), AUTO-BW
 	(5250 - 5350 @ 80), (20), DFS, AUTO-BW
 	(5470 - 5725 @ 160), (27), DFS
+	(5725 - 5850 @ 80), (28), DFS, NO-INDOOR
 	(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
 	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
 
-- 
2.25.1


