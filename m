Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09397C3814E
	for <wireless-regdb@archiver.kernel.org>; Fri,  5 Jul 2024 06:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Gy/rw0xbBkXGdkKZNRIg/o01R0ItXWKlu3eu0T7X/44=; b=37VLEfXzK4DXYTDyWgoIoIQd+B
	S1HOlFTWT0rEAFdY4J3c5f2vmIzNJnIpoo+oQZtMv1xOL8cH6xfIGwO6xxHzagbj/Lym3Dhm+AVz2
	Oh2wdDA2DYrg3Nt7MSiChUfNIWQr+EhYre6LCHtEzYeLXNsmVTjg1PB/vzFexyWffgiIheQH+EEX9
	ChrwB86E9E6RlMydrprPGE/i2afqWfOgnPbXVYJ0tOteEaJw+wq1nkxr4bS4a/vaQt2L+lYVN/D7a
	UVL9UxIw8ZIqH59U1E+4xmdekEF28wwo9+HaC7D5tWMzeQ6uUD83y9sgLSyorxpbsWRMoekzNxCV/
	R+PvBZRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPc5g-0000000F0Be-2tpw;
	Fri, 05 Jul 2024 06:06:40 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPc5e-0000000F09r-1ZbZ
	for wireless-regdb@lists.infradead.org;
	Fri, 05 Jul 2024 06:06:39 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-1f65a3abd01so8676635ad.3
        for <wireless-regdb@lists.infradead.org>; Thu, 04 Jul 2024 23:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720159597; x=1720764397; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gy/rw0xbBkXGdkKZNRIg/o01R0ItXWKlu3eu0T7X/44=;
        b=ee4cKd1KluJYZR9wE0Z+mo+47uzeJPs6/0OzwPmlCk4g/Sz5uUCFrQeo+jnR9mxyvO
         SxwgtF2DYv64afr2vyTafXqPUHHniqt9uOI557LmdyWn1GC3alGO3IHBYMxIhLXAPdcx
         PMV66fCzT2aK2OnC0d7uk/XjR33mtZbuxMNGkxdYZUMuNDrK6RIxMP0kxf4rMiVpWXXi
         D7G6RwuJBaZEeUFQh41iqNS65aXQdIu1ljmQj56p1DQ0WSGdDbmdWed1jhPrOUAZ/lau
         YkzURAg2LqXLjzv0XmbTRdGweNfhZs4YnhMjVyVgbnzoR9Dke6AoHoVIc8cCFviIjbNw
         XJTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720159597; x=1720764397;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gy/rw0xbBkXGdkKZNRIg/o01R0ItXWKlu3eu0T7X/44=;
        b=RAiAHDZt3zGXifgqct2XYzEad6Pe2C+HBOMkoV/ASKz7YjpmT6LHDXnZF8rumzMQM9
         nLQbdD0FxN9ehrYu2DoRjtpm9iWN7+GMm7vY90zjoRpvzzbQ1nScPFufPc98qYble6HO
         07gBcC9cWj/gT2Km4dBDvjFag1/kI72H/D2nioPQcRVNcNpYlWtri6dmLbNNmxlvxEjM
         lZzdqGaJT2k7HnQwnh/9L7WKqJyUjiMw6t28woJMpH6t81LvBSWZhIJQU3HlMYTfz6Mc
         r/Hb9DotmrgSS2D9aZWrCIoZ4h0D4BlzE5PCJ0EIx2kOY7z6tyR+OCI7hGxJUd+PSxbW
         YCzw==
X-Forwarded-Encrypted: i=1; AJvYcCVizmLu+O6fPMQstTcr85pKl2jbOcVT/bKCF5Dm3jdcdlcdYiCBzt8YeLO/DuDamHRbb16rdMNDIvxhsv0CGZSReiF+6eUE1V08V+RanJNlIha+
X-Gm-Message-State: AOJu0YyJYCCLrMMHtjAo2Vv3BMQ1M0Nby68yw2v8yKJ3WMGbGbQy5dId
	252EdqWlUNRyO4xXn5RvBIUF+8DHqZfpAZPa3dIG/WSnPUh9z/a5
X-Google-Smtp-Source: AGHT+IHTINdqNzsYyM6RwaaZAeW0rdxMB14HHylDoDotk477Cw7SWaBQFpHGbc2pGtShxK7IesF7qg==
X-Received: by 2002:a17:902:b783:b0:1fa:2dcc:7d94 with SMTP id d9443c01a7336-1fb33e749f7mr23908355ad.33.1720159597031;
        Thu, 04 Jul 2024 23:06:37 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-1fb4e7c31afsm4644645ad.2.2024.07.04.23.06.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jul 2024 23:06:36 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH 4/5] wireless-regdb: Update regulatory info for El Salvador (SV) on 6GHz
Date: Fri,  5 Jul 2024 14:06:12 +0800
Message-Id: <20240705060613.28909-4-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240705060613.28909-1-pkshih@gmail.com>
References: <20240705060613.28909-1-pkshih@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_230638_448218_475E1CB6 
X-CRM114-Status: UNSURE (   9.33  )
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

The General Superintendency of Electricity and Telecommunications Makes
Knowledge to the General issued resolution No. T-0408-2023.

Free use within the entire band for WLAN (WiFi) application, from
5925 MHz to 7125 MHz, must have following technical and operation
conditions:
 - access point
   * P.I.R.E 30 dBm
   * spectral density of P.I.R.E. 5 dBm/Mhz
 - client
   * P.I.R.E 24 dBm
   * spectral density of P.I.R.E. -1 dBm/Mhz
 - Indoor use only permitted

[1] https://www.siget.gob.sv/actualizacion-de-cuadro-nacional-de-atribucion-de-frecuencias-t-0408-2023/

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/db.txt b/db.txt
index d6b14c055afb..2a4f1ed524c1 100644
--- a/db.txt
+++ b/db.txt
@@ -1736,11 +1736,14 @@ country SR: DFS-ETSI
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW
 	(5490 - 5710 @ 160), (27), DFS
 
+# Source:
+# https://www.siget.gob.sv/actualizacion-de-cuadro-nacional-de-atribucion-de-frecuencias-t-0408-2023/
 country SV: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 20), (17)
 	(5250 - 5330 @ 20), (23), DFS
 	(5735 - 5835 @ 20), (30)
+	(5925 - 7125 @ 320), (12), NO-OUTDOOR
 
 country SY:
 	(2402 - 2482 @ 40), (20)
-- 
2.25.1


