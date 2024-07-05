Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABF2AC30658
	for <wireless-regdb@archiver.kernel.org>; Fri,  5 Jul 2024 06:06:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HmrsxMr4EyNCdAf8dgXZk8rx67sFoHp+GBef47bCff8=; b=Ri4lXzfHTO+d7L40aDdd3pey+h
	R9Kw2z7MlA6TTQxAs/o2BcJ7wR86Tl/d5XfjJvLP/HlZe+Rm6XADHJqsOgkkRf06KujTKYERNKd5I
	LS5E/d9nVMP+eonbtPsvJryZEWD4fr5XVlR2eX9Dx6t8THpA3k76yHEIERnFK0y0dr14wWdBw7Kvg
	Df5LjkYtSYY6k09nm7wNdeDqSo7u+A/DPc/deR6a1anoudpzFYmqKqYQdWcFYJJBQKAR8BpEt/vfM
	v8TjnGspB+jS9Fgjl8OV7CJY5uDw0PPfZ/j5w5V8oS0SaXPJNfaJOHR6bVDRTHB5YtTTKSWIzToFa
	glL1okMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPc5g-0000000F0B7-0w4x;
	Fri, 05 Jul 2024 06:06:40 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPc5c-0000000F08J-47Ef
	for wireless-regdb@lists.infradead.org;
	Fri, 05 Jul 2024 06:06:38 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1fb4a332622so1887395ad.2
        for <wireless-regdb@lists.infradead.org>; Thu, 04 Jul 2024 23:06:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720159596; x=1720764396; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HmrsxMr4EyNCdAf8dgXZk8rx67sFoHp+GBef47bCff8=;
        b=StWhQDOLSfmfZk6t7tVm6cPWj5EqXEsUMNThrLf4QG4Utixay+acesPftJF8nVPLNm
         CqvWBqMt0TwlNSnJfJo6xzr1AIL7dL56uX7xTZGsLb46H31QPz22J8UZepDLffyaqsDA
         pJKBy66oa1u2KhRJR0xxAu8Ob5g/VTDIp51xWqvYEXNBFlFZCvm8KvJKdQ6BoRcV8oH3
         QB/YXNTTCsJTJaeU8yglPDYOJxoFAHmLqhjsjmX0WH7TpB/vNDdQh22hb/8C3kyXrf5g
         XdB9CxWb3cSmElKOWPqcxCjfRNYXmlAztRj90y8Elh1scjMQV9LNjmNVANjpVTbNVKKX
         5uvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720159596; x=1720764396;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HmrsxMr4EyNCdAf8dgXZk8rx67sFoHp+GBef47bCff8=;
        b=d1+Gqu0UURp675ZC23kZxzD4r8XrDXUwSyJaBTPlzK2p7N0YDY14BjpL3rbI0CvYM1
         5wKI7/yyH10xvBj+tSipTZxKPBb8gfSkMcCi04BqyCrqwLPJFqv/WMwYDEZRm6Sgcusk
         coFpaW1XdW86sxNKc1jnrcFLzMa6fgfWzBMdCB1ABDGcJTfzlMR7HgXMtDLfvTLgZDb1
         B3ZTodIsGFR+aYiUKWz9hQRcEJIezja29hxE7Ycyx1ogup2q/PHf4UQn3LjRB0uUfrCn
         hRpF5qvfnTIeTiZdeq8VXHd/jILiq3rZNbz6djiVpB7rHW6cjW8yH5KEXlJ7uVZcpGd2
         NLLA==
X-Forwarded-Encrypted: i=1; AJvYcCW9HkONCX/8ALI9bismLvFdpVmGWpsoVGyIIJPaSZYpSx7F0A8kP2hHhkVGSATyjwMx/m9pdEg6Q/qiJ494uopgnanzRkXAdUzHozqVTv/KEQdz
X-Gm-Message-State: AOJu0YzDjVwx8nvuhL6qoJpLYunix/1pAq5x12PfCD9P+LbIq7JeaHcw
	KyepNT21dGGAC6wuwgN5XBDtfnEBG65kXKuWNDA2QdwrG9sJFaLh
X-Google-Smtp-Source: AGHT+IGMSTfTB6AYf5SQWBr1P+60ChDEoHW5lpZwxJcIiv5bFn9L1/VdmXOKzocEiCFASQwzy15RDg==
X-Received: by 2002:a17:902:ce82:b0:1fa:b511:5d31 with SMTP id d9443c01a7336-1fb33e76e16mr30306595ad.27.1720159595609;
        Thu, 04 Jul 2024 23:06:35 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-1fb4e7c31afsm4644645ad.2.2024.07.04.23.06.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jul 2024 23:06:35 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH 3/5] wireless-regdb: Update regulatory info for Qatar (QA) on 6GHz
Date: Fri,  5 Jul 2024 14:06:11 +0800
Message-Id: <20240705060613.28909-3-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240705060613.28909-1-pkshih@gmail.com>
References: <20240705060613.28909-1-pkshih@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_230637_138989_B10E1860 
X-CRM114-Status: UNSURE (   8.03  )
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

Communications Regulatory Authority, State of Qatar, released
Class License for the use of RLAN devices over 5925-6425 MHz Band on
26 April 2022 [2] via page [1].

Technical Requirements for the use of RLAN Devices over 5925-6425MHz
 - Low Power
   * e.i.r.p 23 dBm
   * Indoor Use only
 - Very Low Power
   * e.i.r.p 14 dBm
   * Indoor and Outdoor Use

[1] https://www.cra.gov.qa/en/document/class-license-for-the-use-of-rlan-devices-over-5925-6425-mhz-band
[2] https://www.cra.gov.qa/-/media/System/D/2/5/8/D258CF18B83A5613B0D590193CB799CB/Class-License-WIFI-6E-Final-English-032022--V3.ashx

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/db.txt b/db.txt
index 2e862b322f13..d6b14c055afb 100644
--- a/db.txt
+++ b/db.txt
@@ -1559,12 +1559,15 @@ country PY: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+# Source:
+# https://www.cra.gov.qa/-/media/System/D/2/5/8/D258CF18B83A5613B0D590193CB799CB/Class-License-WIFI-6E-Final-English-032022--V3.ashx
 country QA: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW), NO-OUTDOOR
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
 	(5250 - 5350 @ 80), (200 mW), NO-OUTDOOR, DFS, AUTO-BW
 	(5470 - 5725 @ 160), (100 mW), NO-OUTDOOR, DFS
 	(5725 - 5875 @ 80), (100 mW), NO-OUTDOOR, DFS
+	(5925 - 6425 @ 320), (23), NO-OUTDOOR
 	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
 
 country RE: DFS-ETSI
-- 
2.25.1


