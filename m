Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEFDFD68BD2
	for <wireless-regdb@archiver.kernel.org>; Sat, 16 Nov 2024 08:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0wI5s4CZuvcmq2kH2NFj7Lf55gnF/3ikMJSmm8d1y6c=; b=qhjTPKwGxqBWAzMLqADElpx2RI
	7hG1Hxoqei3Q0MKqE45vuTDdNMohVziBrsWb0RIcFyei0/y4Opmt85KRGEEQ1qV2IlEukw1wMjc0p
	0p6qfAAbGYvxcIklJAg1gD+esZc988VklDM1SOdC/J1UAHt1eh/rl3frWWBdshlMWU/6noWuIFwrp
	l83Pt8lZm0vOWtRnlO2pqb64FMxa/MRUPxw0vNXV5DGBsFs9FcpA7z6C46czncWOsqmswQ0j+O/6K
	u0C587lsvgwd22l2D7YmT7yd88qiZ9RRh2BGlW5O23GT/AUmpkRU2I0/XTa6EaC8j5TEe1mm2X0mE
	7KVMmgTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tCE7l-00000005ECt-2qkw;
	Sat, 16 Nov 2024 08:25:45 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tCE70-00000005E6e-0mKQ
	for wireless-regdb@lists.infradead.org;
	Sat, 16 Nov 2024 08:24:59 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-71e4e481692so378626b3a.1
        for <wireless-regdb@lists.infradead.org>; Sat, 16 Nov 2024 00:24:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731745497; x=1732350297; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0wI5s4CZuvcmq2kH2NFj7Lf55gnF/3ikMJSmm8d1y6c=;
        b=dLuiDPacWNkRgVvFPP5bFA/Ny5TVg0/5SVZUvnwj+qQKMbIhYv4J3NbMlMhCefYGlK
         w+HWpzgBwfNdYIHiTL8n/x8MQ4nswqw9eUYlW70D2Sr5fQHcOEtJ6STfOv8r2O5aPbus
         vTN4Y186GgWQRlNU534mJDT4HbbgS3ORTku62DahuC5W+oG4pWN+wk6C/0NytXTjfPHo
         7nNQhPkbCdYH91qBVKlZanNPyQHqmV0pePLDOshSkR3ScEUHNLmIofjSM0YRJLlzEt7g
         PtJIp08uLuwNJVkzuekpzJJht4K4/XDiEq1xKt+FYxrttBWiExNlKgshNAaYpdLpk5Td
         DtwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731745497; x=1732350297;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0wI5s4CZuvcmq2kH2NFj7Lf55gnF/3ikMJSmm8d1y6c=;
        b=QsDMAYlaNuZ9oSi0m8ESxrnWAqxoF/h6MXSn2snZewXh9Tph480qOjL0pwdlolJIzt
         odKkpOXanejRdwSt8dsSiRTCMwgwv/dl6Yw2cil62CMiTm8hDOHFNT/IHzzL/vGiXDaF
         JgSB+GfoDZ9TZRDbZqnxJVZRCF/B+dHsDDV8mShfe0L5wkl6/YswirbSVgiLEmYOidsf
         bSL0iwfkGRyqe84qfAM6wNYaReMfeE/zlOPO4CNf1W11q6OIEMmBjQWJL+S8oqL/J+3Q
         15SCArNwTHoTWUESx34EF87v967WIbb2bzK8aSw2VYfoGFLZq202ZGBhKEFQqveK2W10
         /IYw==
X-Forwarded-Encrypted: i=1; AJvYcCVHSnN2a5HEieohQgj3Eb3Nfy6Wczprkj4SYU+zATrVGTVhKapjKY2tHZKtmITTV9zHCpX2W8sQLtdG4re/UA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwFHxALXPD6ECKwi56tOm77xlsnlhrXLQa0QCLc8GXmi0vBxxBL
	mf8W5O+owXROyeg5m8fVf80Htm/t97hdZ1GYwxiqHNhGgyrSdQIG
X-Google-Smtp-Source: AGHT+IFjjVdXIRE4mP/e67dY9BI8qNrx6Qx69NWuwuXYIMqxobLunMTVHIPdh/WdCy8fIWQOm7Xq5g==
X-Received: by 2002:a05:6a00:843:b0:71e:fb4:6c98 with SMTP id d2e1a72fcca58-7247709d088mr7996100b3a.23.1731745495652;
        Sat, 16 Nov 2024 00:24:55 -0800 (PST)
Received: from pkshih-B33E.realtek.com (125-231-72-119.dynamic-ip.hinet.net. [125.231.72.119])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-724770ee925sm2606801b3a.5.2024.11.16.00.24.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Nov 2024 00:24:55 -0800 (PST)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org,
	combuster@gmail.com
Subject: [PATCH] wireless-regdb: assert and correct maximum bandwidth within frequency difference
Date: Sat, 16 Nov 2024 16:24:17 +0800
Message-Id: <20241116082417.8720-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241116_002458_263019_261B6F74 
X-CRM114-Status: UNSURE (   9.17  )
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

Since kernel will reject max bandwidth being larger than freq_diff in
is_valid_reg_rule(), as well reject it ahead.

Closes: https://lore.kernel.org/linux-wireless/CAPGdDAmPp80VEZ0TG=cS3QAYKqELHfqChid0wYZ7eLAENFY86Q@mail.gmail.com/T/#u
Reported-by: Ivan Bulatovic <combuster@gmail.com>
Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
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
index 5f7e08200fa0..b27690166427 100755
--- a/dbparse.py
+++ b/dbparse.py
@@ -218,6 +218,9 @@ class DBParser(object):
                 self._syntax_error("Inverted freq range (%d - %d)" % (start, end))
             if start == end:
                 self._syntax_error("Start and end freqs are equal (%d)" % start)
+            if bw > end - start:
+                self._syntax_error("BW is smaller than freq_diff (%d - %d) (%d)"
+                                      % (start, end, bw))
         except ValueError:
             self._syntax_error("band must have frequency range")
 
-- 
2.25.1


