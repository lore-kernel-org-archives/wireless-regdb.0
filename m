Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D898D10F3A
	for <wireless-regdb@archiver.kernel.org>; Mon, 18 Nov 2024 01:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cPvbM/1Org5zA5PTJcwJfAFYw9QBO2dGb+35/MNO3qU=; b=VkEclbCpPYovcbgHqu6TSiWkhz
	ACykXn4h7VKZmyPey2dtNEZmGnrUHU+3AzGkKgp0iYU0o7A3+CJWPh4t1GZoO1QwdOZA4mCZr2/EZ
	b+APX4ivFSHsKJEnrjyX1BsczKcP0pYnB4ysyLteZnLcpcVkG/pqn33/H9NZu+93OcQjyEZs8uX6M
	FgmRfMCRj36dc4HZpBXP1+PbFRz50UvOZ8sTrosYhKNsvDoTDdm4ROA+IME7WO3Ux/OwvOSAEiaZp
	/oVmeQfO0txsT8FlFAvWeq6+N36qNnG5yi9OlOZUq16dSHMjX9OWapdnXgR/K1R0vxgJYiTrSpDcV
	0bD/6UIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tCqMk-000000084rj-1dMh;
	Mon, 18 Nov 2024 01:15:46 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tCqMh-000000084r6-2ChU
	for wireless-regdb@lists.infradead.org;
	Mon, 18 Nov 2024 01:15:45 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-20cd76c513cso29416875ad.3
        for <wireless-regdb@lists.infradead.org>; Sun, 17 Nov 2024 17:15:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731892542; x=1732497342; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cPvbM/1Org5zA5PTJcwJfAFYw9QBO2dGb+35/MNO3qU=;
        b=OHjHUjJHbOrfuF/cdKnf8YrpvS1/L0bA2Xq3iGds3d+Lff/aig4BEnHB1FvUuJLqpE
         3q8SDkWeuMvVUJ/2ul74ntm5d9CNabFGUjN3unB4JjFM7ZGwIvTWFmJdBKqPikX8wcP7
         wtl+p/QjytoqokwEYxOacllinfZ1Tm1YH+omZBgzjLck+3v528+ck603eDjgdOxjGhOa
         JUfE69lp4NPVXQcsSw+USpx0HgTFNVsSijyEz35iosPXM22iG54JPjQZahbL4a5lrSwn
         DSir7s1zztNbI0Rj0LY/oTY+7x/bJZghpvM2Zjpw+CnEgbQlU99u3y70ZxblWN033Sg9
         JIOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731892542; x=1732497342;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cPvbM/1Org5zA5PTJcwJfAFYw9QBO2dGb+35/MNO3qU=;
        b=jC09/3K3z0bOZZFXWT8ZwjnQZw8yVlLFGsCD1xnCNiIhGcjeZ02TLf6YO1p/Ayia92
         GqkVvcr1qjwfEen9qKRN9clkMBA+sPKU0JDW6++parLg07wJrWdcjXS4NRKG/L876Cun
         3/doWfDrhN0ReGuCtZgbUGctbUxJvIcphUxnDlFRlRGqiY7zFPh5ufdM+spSUFTHfhfl
         oDGYjEh6T4y1mtxz5z+hjM0sHC60efuRO7sf0zRke8YBUWR4EjwggdD/Zw3Gc2LUi6JL
         HKKzsSNvgGv2t+M8KDf0mGAWpt0AHNivHpzAzGd8uhCf2XIVk6ZX5AGgyFDIgY/FdFhW
         X13w==
X-Forwarded-Encrypted: i=1; AJvYcCXeNz0DRI/FeIyaDmO+R+mW3STAB7J1KN+o/Jq8KlBFpLZmIJbbO7D3WOlYW+37GB3zXpmHXtKmv8SGJXMnlQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5lXI3RJuAcyXqFYCGJA7/KC0Mkv5Iq4cYHaLXcGnvwTJv6CnX
	QD19ElERyg0GJ0OyFTOEstL1Sa+ICWu3ytGe/tw+hU2p9qqjTspX
X-Google-Smtp-Source: AGHT+IEuVpkeX4oEwRAX+OaX4mD2P6edrPTrU79LAcwC8f/m86AhiZIeFOsWKnhDt+OhC5X1Iexjzg==
X-Received: by 2002:a17:902:f705:b0:212:fa3:f61e with SMTP id d9443c01a7336-2120fa3fb5bmr50342915ad.15.1731892542113;
        Sun, 17 Nov 2024 17:15:42 -0800 (PST)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-211d0f56f02sm45882145ad.272.2024.11.17.17.15.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Nov 2024 17:15:41 -0800 (PST)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org,
	combuster@gmail.com
Subject: [PATCH v2] wireless-regdb: assert and correct maximum bandwidth within frequency difference
Date: Mon, 18 Nov 2024 09:15:03 +0800
Message-Id: <20241118011503.4694-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241117_171543_562478_D44D14F2 
X-CRM114-Status: GOOD (  10.70  )
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

Since kernel will reject max bandwidth being larger than freq_diff in
is_valid_reg_rule(), as well reject it ahead.

Closes: https://lore.kernel.org/linux-wireless/CAPGdDAmPp80VEZ0TG=cS3QAYKqELHfqChid0wYZ7eLAENFY86Q@mail.gmail.com/T/#u
Reported-by: Ivan Bulatovic <combuster@gmail.com>
Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v2:
  - error message in dbparse.py should be "... _larger_ ..." instead.
  - by the way, reporter tested v1 and got positive result
---
 db.txt     | 8 ++++----
 dbparse.py | 3 +++
 2 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 32b533e800f5..a12f931ef4b2 100644
--- a/db.txt
+++ b/db.txt
@@ -787,11 +787,11 @@ country GT:
 	(2400 - 2483.5 @ 40), (500 mW)
 	(5150 - 5350 @ 80), (200 mW), NO-OUTDOOR
 	(5470 - 5725 @ 160), (250 mW), NO-OUTDOOR
-	(5725 - 5850 @ 160), (500 mW), NO-OUTDOOR
+	(5725 - 5850 @ 80), (500 mW), NO-OUTDOOR
 	(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR, AUTO-BW
-	(6425 - 6525 @ 320), (200 mW), NO-OUTDOOR, AUTO-BW
+	(6425 - 6525 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
 	(6525 - 6875 @ 320), (150 mW), NO-OUTDOOR, AUTO-BW
-	(6875 - 7125 @ 320), (150 mW), NO-OUTDOOR, AUTO-BW
+	(6875 - 7125 @ 160), (150 mW), NO-OUTDOOR, AUTO-BW
 	(57000 - 66000 @ 2160), (20 mW), NO-OUTDOOR
 
 country GU: DFS-FCC
@@ -1646,7 +1646,7 @@ country RS: DFS-ETSI
 	(5250 - 5350 @ 80), (23), DFS, AUTO-BW
 	(5470 - 5725 @ 160), (27), DFS
 	(5725 - 5850 @ 80), (24), DFS, AUTO-BW
-	(5850 - 5875 @ 80), (24), AUTO-BW
+	(5850 - 5875 @ 20), (24), AUTO-BW
 	(5925 - 6425 @ 320), (23), NO-OUTDOOR
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
diff --git a/dbparse.py b/dbparse.py
index 5f7e08200fa0..cc5012bc05bd 100755
--- a/dbparse.py
+++ b/dbparse.py
@@ -218,6 +218,9 @@ class DBParser(object):
                 self._syntax_error("Inverted freq range (%d - %d)" % (start, end))
             if start == end:
                 self._syntax_error("Start and end freqs are equal (%d)" % start)
+            if bw > end - start:
+                self._syntax_error("BW is larger than freq_diff (%d - %d) (%d)"
+                                      % (start, end, bw))
         except ValueError:
             self._syntax_error("band must have frequency range")
 
-- 
2.25.1


