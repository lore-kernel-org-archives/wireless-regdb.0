Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0A0ED3E18D
	for <wireless-regdb@archiver.kernel.org>; Mon, 21 Oct 2024 07:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XkeOc7cfVOIbP+Run4GnrPC5KIhzOGmW2fBCzCngoXE=; b=DqV+UBKs3CO3wm+PQXnWYIsy4u
	vMK9Mv9YqbsaJuPm03rWGjEwNi/HMPVC4r5mPqEsBqMiKNlK/rvRh6CipG38XRLOCVzvB8mcInWhj
	apdWOlNg/BGgaY1iVUs0RWNpG6dr3PgIlrR4Kuvw0cyBUMcxni4IKyiXw2Nw+fWN3622faw4pDAL6
	GavTtu5hmc/FJVo4Xq2Sd+Zrkd+V7HDXS2ZxIFJwitl/RDZ1LIzDCWQzH2VObYJ8Ta4LME4PUAmiO
	XBM+/TDqu1ejuTdaU6sJKxp56cIJd41fVQaQX955bVK6a5OLxtvDTRR7ajqzEJ6isksE+t69h6KzY
	gGRLEZNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2mjJ-00000006LqQ-2PWY;
	Mon, 21 Oct 2024 07:21:29 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2mdQ-00000006KOO-1yfV
	for wireless-regdb@lists.infradead.org;
	Mon, 21 Oct 2024 07:15:27 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-20c693b68f5so43476265ad.1
        for <wireless-regdb@lists.infradead.org>; Mon, 21 Oct 2024 00:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729494923; x=1730099723; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XkeOc7cfVOIbP+Run4GnrPC5KIhzOGmW2fBCzCngoXE=;
        b=Ew6+UCrMX5qkhs7Tl+dX8wHuqE/sY+6IIf+f9oXoFf/2kTtoefjQwIxquoYmEkHnvg
         gXVdyvmn5969yk0nEHI9yAlzKli4FtpNy6lPj1c+YVddYgcUMh7MBaDsfPenG7J7B+rL
         /PiZdgdd9OJ1CDVl6t2TcU0ujJ1AoY9b3aWZnVaQeoOjgFPr0fZkWCw7SF75xIhyeqZ/
         gaJA/X02+EQBGb+u8164ocyRwcWRMwPKfO/KJlBFhQ1VjEP+MeQatRPaxbWQsqcTzZnP
         7fOM3JkhvPtbbtonJ4LhTZGkXDuNsa/W4O/zt7p6vv7jn0axI0+vXyuZN4OY73xroD8r
         i3ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729494923; x=1730099723;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XkeOc7cfVOIbP+Run4GnrPC5KIhzOGmW2fBCzCngoXE=;
        b=Gm4kUvFcMlLE+8boKk1xcHZDbRWQ1g86KZ4rBlNBgIWLpdBq5n0trEED6TtATvme0M
         a7yzx1xW7ejSnBR5QkoOuI/TJpk5WqPEtfUuD9dSjnfXf9R3k3W41ir/O5wmXTS2baso
         3NPGXbtB0uur3S079v/wPnAQ3zuK96jWx27G6hxMZxHwi6LuuMSoEcgsTXdRpJk49HTn
         5oxalW53p2FsC5ndgetAzdRlgBSfpqrvkvxDBMV3jjVKNUYBSJjINlRRfgQ5dGVE/NUF
         OmqTwmeRSOSplcJirc+MOqg1oJYK1I7p50rrYdXRttrtNoqe9Z+J+T/+0fg8aiVUoarE
         FT4g==
X-Forwarded-Encrypted: i=1; AJvYcCXmtGQ1KlaI1YgQAk41KohqneqiC22/KG/Z83EuAUDa8uhVBw8H0Zafq4xKQNZMZff72Jk62AykX9qyUJVcUA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/YTeQJc7EkeFFgkdOhTz7J74+jnaM4c9PLgaQXRB80d1iTD50
	077Te4aW9fM8arzFR1djyiD8HIPcvYwnwf7sZTbRKQrfWNfNezUC
X-Google-Smtp-Source: AGHT+IGFHU4wYoQlhJAvvlVJDQvCiFCQfB26WJQ7/VeCuSx9oH7SYqIlsO9VgEATYBiLrynWGS/zew==
X-Received: by 2002:a17:902:ce0f:b0:20c:f261:2516 with SMTP id d9443c01a7336-20e5a70d0b1mr171296365ad.8.1729494922856;
        Mon, 21 Oct 2024 00:15:22 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-20e7f0d9a7esm19550805ad.182.2024.10.21.00.15.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 00:15:22 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH] wireless-regdb: Update regulatory info for Oman (OM)
Date: Mon, 21 Oct 2024 15:15:06 +0800
Message-Id: <20241021071506.24320-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_001524_620231_A5CCB61E 
X-CRM114-Status: UNSURE (   9.60  )
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

Sultanate of Oman, Telecommunications Regulatory Authority released
Technical Specifications for Wideband and Broadband Data Transmission
Systems [1].

* 2400-2483.5 MHz
  - 100 mW max. mean EIRP
  - indoor use only
* 5150-5250 MHz
  - 200 mW max. mean EIRP
* 5250-5350 MHz
  - 200 mW max. mean EIRP
  - TPC: if TPC is not used, then the maximum permitted mean EIRP and the
         corresponding mean EIRP density limits shall be reduced by 3 dB.
         (20 dBm is adopted)
  - DFS
* 5470-5725 MHz
  - 1 W max. mean EIRP
  - TPC: if TPC is not used, then the maximum permitted mean EIRP and the
         corresponding mean EIRP density limits shall be reduced by 3 dB.
         (27 dBm is adopted)
  - DFS
* 5725-5850 MHz
  - 2 W max. mean EIRP
  - TPC: FWA systems operating in frequency band 5725-5850 MHz shall
         employ TPC with a range of at least 5 dB.
         (28 dBm Is adopted)
  - Outdoor use only
    (Since NO-INDOOR flag is not supported by current format, don't add
     this entry.)
  - DFS
* 5925-6425 MHz
  - 200 mW max. mean EIRP
  - Indoor use only
* 57-66 GHz
  - 40 dBm max. mean EIRP
  - Indoor use only

[1] https://tra.gov.om/DownloadFile.jsp?type=DocumentList&code=474

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index a9a9ba48f42d..32b533e800f5 100644
--- a/db.txt
+++ b/db.txt
@@ -1463,10 +1463,12 @@ country NZ: DFS-ETSI
 	(57000 - 71000 @ 2160), (40)
 
 country OM: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
-	(5490 - 5710 @ 160), (27), DFS
+	(2400 - 2483.5 @ 40), (100 mW), NO-OUTDOOR
+	(5170 - 5250 @ 80), (200 mW), AUTO-BW
+	(5250 - 5350 @ 80), (20), DFS, AUTO-BW
+	(5490 - 5725 @ 160), (27), DFS
+	(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
+	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
 
 # Source:
 # http://www.asep.gob.pa/images/telecomunicaciones/Anexos/PNAF-dic2015.pdf
-- 
2.25.1


