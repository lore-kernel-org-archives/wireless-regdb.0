Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9EC6CD342D
	for <wireless-regdb@archiver.kernel.org>; Mon,  2 Sep 2024 08:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tdcgNy/o5HaA0dNb1Mq41hwwT7Whz7ZvE8dYWjbJhcc=; b=adFvb6DPlJpC2T+dHyK4t6bhe6
	HbgzlOB1BtccDkx1q1pfOrtaCx2VSF1AAOuLv3p7XbRUxhKdid5h4v83KQR+d2t+QZBULH0mxFuaZ
	OVspM5mTWiQbYfUC6BsnFEw5B2z5ebJyZ4T7vDHk5Spz1eFk0Fbc3AQb1xHvnK4DQt3qJDTgvozrg
	07OdPlyKgRiGJXkAMv8zvFuwMQMs79Kjfza9svn3vS7pOXuBcmvYmxOnvvwHX8BzOpmHIeQCTC+PL
	7Ewd4kWXSWCYoGps1K62HbygpfsmJmpJSIVnwJjtJcnDjXsI8gzEigU1c01i3E/AR8SUhUa08y0/R
	lWfFe/Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl2OA-0000000DUeS-2hx9;
	Mon, 02 Sep 2024 08:26:18 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl2LM-0000000DTx5-1dP4
	for wireless-regdb@lists.infradead.org;
	Mon, 02 Sep 2024 08:23:26 +0000
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-3df0fc40271so1946448b6e.3
        for <wireless-regdb@lists.infradead.org>; Mon, 02 Sep 2024 01:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725265403; x=1725870203; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tdcgNy/o5HaA0dNb1Mq41hwwT7Whz7ZvE8dYWjbJhcc=;
        b=gUJ3olxO0vxZViLfcSWwUEI+3r4ZGbunALd5/URGXaPe7j3mhjjPb9Y8hk/O8CaHR+
         bKOL3q7GgloNUeFLTJUd+RJH0EpMZ+42WAxgZ4cPRJ1HdGou4v6XQUyTE6i/9ppBb5qt
         BfeH+NBZR4fXZ5+4Beysm2ydCBhZVDeJX0cPVWDDSoBe8LqrGIh2EmPQ0xIyumUWjtNS
         H9YqCmuv98pQtHPjY4QW9i8UIdwWw3xRqMZf8bgopGZiDi0+pbv06gQc+P82J4u6wVV9
         7lcLcTVYsas9vAR9V5d6zag2Jnibb2JJIEmmy7B0C4sPoFGbyLAJSTHsqJvsPBugVOne
         tLug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725265403; x=1725870203;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tdcgNy/o5HaA0dNb1Mq41hwwT7Whz7ZvE8dYWjbJhcc=;
        b=sguK2ClmJODmR8xcg32hfkdgs0YjOwFnBJbVGbAR7uuH8p7/aJdr0yccSFcgoOqO7h
         8ULLowxNm9Iiwn1ci2/cmAzZ0lS//zbLtfRAw9eG4Mstkry9lGKg8rinhjBzv3vVxfSE
         awVd7zWvqB0Nbh7aljTzTSBGvYA/cBVUpttUrOeLQvsXGCMTSO0waii0rzoG156zfg26
         nTHtuIaz3NPzmivlQObvihVU1RSXGXsn9xaBOOTUE/e4VrGkVHRlefes1BE0D3+6DHA8
         Z6rUbX3nsIcg8Cz6Mzip5iyGqi/SO+oAoumgoywUewg3nSgavl0rxn6x3LX26WC3wRki
         06Mg==
X-Forwarded-Encrypted: i=1; AJvYcCVB4Hm2IzbyfH/oj+jTfNv95AmZaBe448pCe/jI/0jIjpzYywpL65gNPAaggV3HD/nwo97dRrVkd4wHx6HL4A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0pnY6eRoCiSlAdYh7oOAuHphby24nvZTxx0USvdMXI0VrhMdN
	GgZ+Eg6Cohup+DFlvMaaIkhRbSxlHTys66LMjERkE4WkPpNJlUeOfGsUv2YT
X-Google-Smtp-Source: AGHT+IEaegdkvxPeksVsQC66jSMAyaxY+Du2j9PUZaikz3YoAa+uyUth7OA9UCrnlq5zZL1GCiwICg==
X-Received: by 2002:a05:6808:11cd:b0:3de:1428:10c7 with SMTP id 5614622812f47-3df05e350e5mr16322756b6e.37.1725265402963;
        Mon, 02 Sep 2024 01:23:22 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-715e56d8827sm6376370b3a.161.2024.09.02.01.23.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 01:23:22 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH v2 2/4] wireless-regdb: Update regulatory info for Kuwait (KW) for 2022
Date: Mon,  2 Sep 2024 16:23:02 +0800
Message-Id: <20240902082304.52326-2-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240902082304.52326-1-pkshih@gmail.com>
References: <20240902082304.52326-1-pkshih@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_012324_460617_5D8126E6 
X-CRM114-Status: UNSURE (   9.64  )
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

Kuwait, CITRA (Communication & Information Technology Regulatory Authority)
released Regulations for Wi-Fi service on 2022 [1] via page [2].

 * 2400 - 2483.5 MHz
   - upper limit 100 mW; 10 mW/MHz (adopt 100 mW)
 * 5150 - 5250 MHz
   - upper limit 200 mW; 10 mW/MHz (adopt 200 mW)
 * 5250 - 5350 MHz
   - upper limit 100 mW; 10 mW/MHz
   - DFS
   - TPC is mandatory requirement.
     * Drop limit 3 dBm by EN 302 502. (adopt 100 mW - 3 dBm = 17 dBm)
 * 5470 - 5725 MHz
   - upper limit 500 mW; 50 mW/MHz
   - DFS
   - TPC is mandatory requirement.
     * Drop limit 3 dBm by EN 302 502. (adopt 500 mW - 3 dBm = 24 dBm)
 * 5725 - 5825 MHz
   - upper limit 500 mW; 50 mW/MHz
   - DFS
   - TPC is mandatory requirement.
     * EN 302 502 doesn't give a separate limit.
     * To keep this range, leverage EN 302 502 to drop limit 3 dBm.
       (adopt 500 mW - 3 dBm = 24 dBm)
 * 5925 - 6425 MHz
   - 200 mW
   - indoor only

[1] https://citra.gov.kw/sites/ar/Lists/CITRALaws/Attachments/14/%D8%A7%D9%84%D9%84%D8%A7%D8%A6%D8%AD%D8%A9%20%D8%A7%D9%84%D8%AA%D9%86%D8%B8%D9%8A%D9%85%D9%8A%D8%A9%20%D9%84%D8%AE%D8%AF%D9%85%D8%A9%20%D8%A7%D9%84%D9%88%D8%A7%D9%8A%20%D9%81%D8%A7%D9%8A.pdf
[2] https://citra.gov.kw/sites/ar/Pages/CITRALaws.aspx

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v2:
  - drop limit 3 dBm for 5250 - 5350 MHz, 5470 - 5725 MHz, and
    5725 - 5825 MHz
    (Note: EN 302 502 doesn't give a separate limit for 5.8 GHz. In order
     to keep frequency range of 5725 - 5825 MHz, leverage the limit from
     EN 301 893.)
---
 db.txt | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index ad8dddc9c800..b1dca98f11cf 100644
--- a/db.txt
+++ b/db.txt
@@ -1050,10 +1050,14 @@ country KR: DFS-JP
 	# 60 GHz band channels 1-4
 	(57000 - 66000 @ 2160), (43)
 
+# Source:
+# https://citra.gov.kw/sites/ar/Lists/CITRALaws/Attachments/14/%D8%A7%D9%84%D9%84%D8%A7%D8%A6%D8%AD%D8%A9%20%D8%A7%D9%84%D8%AA%D9%86%D8%B8%D9%8A%D9%85%D9%8A%D8%A9%20%D9%84%D8%AE%D8%AF%D9%85%D8%A9%20%D8%A7%D9%84%D9%88%D8%A7%D9%8A%20%D9%81%D8%A7%D9%8A.pdf
 country KW: DFS-ETSI
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), AUTO-BW
-	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
+	(2400 - 2483.5 @ 40), (100 mW)
+	(5170 - 5250 @ 80), (200 mW), AUTO-BW
+	(5250 - 5350 @ 80), (17), DFS, AUTO-BW
+	(5470 - 5825 @ 160), (24), DFS
+	(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
 
 country KY: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-- 
2.25.1


