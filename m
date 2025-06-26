Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD044C7EE3A
	for <wireless-regdb@archiver.kernel.org>; Thu, 26 Jun 2025 09:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XEnTNGf+JVSlAmdexfBtW1ws7OdnxAZZ4hs1eOrDZk4=; b=c7/deL44I8z7HexYaD1dl1D1OX
	klW/sl+ebsnyPY9YMSh3k5J5NOqqErvY+okXOzvA1aIEaknD2cUwaJ2+rflm5+CNST76oaPS6PDLZ
	h0TyVRkEGFVhahPikpaZO7eFx3Sd/VHrUoDiKdaqBLkG5H0kD7DQcPQs+BjJwmJe76AgdqyMYpUhN
	COwZaocHDJj/T88IZTO0/sSnH9dMQmPP6OueHKbXO1P/jRJFj8oYm1JrrOgIqdLMIXhmafIrGUzmD
	Vz2nJsnfv34Gn5+EcHk61PjcuKX5tY/3zGWiSvraYipB4isADZpsfGpwn8qN9IQGWt6tWocwnElpt
	eg9sSQ/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUjAa-0000000BB88-29J0;
	Thu, 26 Jun 2025 09:45:24 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUiPJ-0000000B3kb-3Dcf
	for wireless-regdb@lists.infradead.org;
	Thu, 26 Jun 2025 08:56:35 +0000
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-748f5a4a423so561182b3a.1
        for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 01:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750928193; x=1751532993; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XEnTNGf+JVSlAmdexfBtW1ws7OdnxAZZ4hs1eOrDZk4=;
        b=ei1Wb3S3tg5TTP3o5w9NuYs3agKqfc+MDrMkQ69j7ppyIIbkFQduZBXl1B2xYgmZLF
         OrNXw/Yw5x6WUT8gUJCwjZWNZVeOITdqIVSWpmZSTU9UMLM6Kfhjd1fNvCQN6hwCctZa
         BZz17B2rTyqDTC67838lnr7923ATT+8o5DATkA7pzkUavA892E0YvnqzBMP5jjW24c2R
         A92GdH483hVKD2DaqZGuh/Xcly1q7ziBtMC+xcJWIcMCAmDbfuzIDOhACXHFhBS695iy
         dSg8SBHEgC/PG4ZJ+v2jI0n9lHIyuNCmKN5TP9oZiEXnDB7hF9HUkEKlk+3WmLdaAFBH
         Cw0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750928193; x=1751532993;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XEnTNGf+JVSlAmdexfBtW1ws7OdnxAZZ4hs1eOrDZk4=;
        b=CMcKRP+3h6O0P8IjUPEDNH0DkQ0UsZTLG7m1WFiUQ/AOGN2aMeI1KJwRahlOk4/UkG
         a6WcJDgd4JssRMt1jKu8FtsTpQcwr7zYuRb0RYkjimDXqBpj/oLngU5qnV4mdt9q5WHv
         6V0yd08fZccppswNxfjgKAQjKql2E3/9InIn4lXTGLkjElbo5LjOyfJQ9hJfhSTaeozm
         +aJBdc2gvdYIEkx1RtbFaAEMA6lNiow/fbCOKNFKXQlbuKqhLvLCbszLBvv9rU5vYZMu
         62Z77S3+DGUEGQ/Iy3SIMHY0Z/fQKfx7i3XVeVo3/N/6S6WIkxmY6oO2YguAw95ZsgL8
         FSsw==
X-Forwarded-Encrypted: i=1; AJvYcCVLliKU9yHW7ndJFQzWokukTGL0DUOHQkQfe1YHJsvxFtCGHWvRcpyVQRFq7C7fJbAPfUwg3qYd8rCoGXMxFQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3KxlU347b2EmnXjnLeEIqgTqhNq+KMOH+TPs7gY4wwkgbOkQk
	VJdacpMY44CggpuykydP/WuZknJ4m0Tr7XSeNsgClhGL6kCsb12Lobp866M87J6Z
X-Gm-Gg: ASbGncsiqcHg55BhnbtL25CCnKdI8K2QGAQURkHBiQhkpdxN5rCAvXp/XWl6YhXk0Pi
	SS8j4B7DUAWB057tu0RfQ2qoDrhftpWPHBJP3mdHc9L9nyqM+X2dKxDliXwyzLIz0F1WAUh4h8J
	Sk361/YaFkWge42IDUxTJgk3BaumobELAhexE+88RXKQwlKATVLNs6uBY6wsxjh5WQ15f5fgP9b
	+LZL95DAhq/upQj868gDbBSZHVer4lR0pk05jv+kk6jY+UndJw1f+xT1hP60QsR5ALSY7cACW1W
	/Oyyrg3UpuWqW4T/I8273n/nus+DalUwsHOR5Z1lMVTZWTPmBfVtWcXDJNRcxZoc4JfaG5pd65u
	v7Q==
X-Google-Smtp-Source: AGHT+IGjIhlopk2iJfEf8XB33dORDbgSIdiJ0CG7tQ+mUCErucaOoia9gGplEZKZ0SmYYBWbFpMenQ==
X-Received: by 2002:a05:6a00:8c6:b0:748:2cbb:be45 with SMTP id d2e1a72fcca58-74ad44fa80fmr8664206b3a.15.1750928192971;
        Thu, 26 Jun 2025 01:56:32 -0700 (PDT)
Received: from glados.lan ([2804:d51:4975:7202:7e03:331b:6be0:eea6])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b34c4446073sm1200626a12.50.2025.06.26.01.56.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 01:56:32 -0700 (PDT)
From: Marcos Alano <marcoshalano@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: wens@kernel.org,
	wireless-regdb@lists.infradead.org,
	Marcos Alano <marcoshalano@gmail.com>
Subject: [PATCH v2] wireless-regdb: Update regulatory rules for Brazil (BR) on 6GHz
Date: Thu, 26 Jun 2025 05:55:22 -0300
Message-ID: <20250626085522.2391666-1-marcoshalano@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_015633_796298_D11A1590 
X-CRM114-Status: UNSURE (   7.75  )
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

Change rules for 6GHz on Brazil removing `NO-IR` and adding
`AUTO-BW` so the 6GHz band can be used.

Add the relevant normatives in comments.

Signed-off-by: Marcos Alano <marcoshalano@gmail.com>
---
 db.txt | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 803f1bc..f74819c 100644
--- a/db.txt
+++ b/db.txt
@@ -321,8 +321,8 @@ country BO: DFS-JP
 
 # Source:
 # https://www.gov.br/anatel/pt-br/regulado/radiofrequencia/radiacao-restrita
-# https://informacoes.anatel.gov.br/legislacao/resolucoes/2017/936-resolucao-680
-# https://informacoes.anatel.gov.br/legislacao/atos-de-certificacao-de-produtos/2017/1139-ato-14448
+# https://informacoes.anatel.gov.br/legislacao/resolucoes/2025/2001-resolucao-772
+# https://informacoes.anatel.gov.br/legislacao/atos-de-requisitos-tecnicos-de-gestao-do-espectro/2024/1920-ato-915
 country BR: DFS-FCC
 	(2400 - 2483.5 @ 40), (30)
 	# The next three ranges have been reduced by 3dB, could be increased
@@ -331,7 +331,7 @@ country BR: DFS-FCC
 	(5250 - 5350 @ 80), (27), NO-OUTDOOR, DFS, AUTO-BW
 	(5470 - 5725 @ 160), (27), DFS, AUTO-BW
 	(5725 - 5850 @ 80), (30), AUTO-BW
-	(5925 - 7125 @ 320), (12), NO-OUTDOOR, NO-IR
+	(5925 - 7125 @ 320), (12), NO-OUTDOOR
 	# EIRP=40dBm (43dBm peak)
 	(57000 - 71000 @ 2160), (40)
 
-- 
2.49.0


