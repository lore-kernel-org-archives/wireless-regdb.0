Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB619C3DA61
	for <wireless-regdb@archiver.kernel.org>; Fri, 19 Jul 2024 03:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XOB5L+4P12y/gtLQ+IRtAPkliKJSy/BYtMjXT7c6v1g=; b=3ZlVEI0WtRm2MbvqVdjwil9Qno
	8XjCZNjUdG+485HLAITJPHMA9ZVruviVkX0DOilh5PDZZNwIAsrmrW1PYLgATp2wdikayFwlsdzEh
	smcisrRsUcVsb3Fqov8oe7UOgzt6qaV8weA70mJfk6f0d62BOmqsLhuMaGhWF2ga2gXyFzuO3EjbQ
	4xSnM9cVkbqye4KxH0FzSHbq1ClQTdWe/DV5i34ueA6S/86WJRenndqoO2lZH2RzpuN0M3p95x4X9
	sZ0FgbGhZ1XQ3pdNQ/nR3ApHGyQtDfbFXB19D5XxvtBRvrcUZDTPS4mKAqd33WKMfUVaUjMpppjEs
	hJwJtQmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUeE1-00000001Phu-1u8f;
	Fri, 19 Jul 2024 03:24:05 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUeDx-00000001Pg5-3QCi
	for wireless-regdb@lists.infradead.org;
	Fri, 19 Jul 2024 03:24:03 +0000
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-3d91e390601so845700b6e.1
        for <wireless-regdb@lists.infradead.org>; Thu, 18 Jul 2024 20:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721359441; x=1721964241; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XOB5L+4P12y/gtLQ+IRtAPkliKJSy/BYtMjXT7c6v1g=;
        b=QX8VTnDC+9/HPm5toO3X4AunehUmcTHHoR6zRtpUh+cw95Hz7kOTxEwEkdcHzFnSz4
         ADhiUI5PGOXh5/YzNlHrxHBZuyt/sCOIqoy5UNu+M0tLQNyVwzoBSzVcvuSSCGgvvwll
         El7zmZr2w8cXZWU/MBvgx75+WlQJ/tMqqSVPaJHpoz9EpRC8XP1GdykByWIYw4kWT8vW
         eP7CTsXA/n91v1Pt4uzVGMVaXfJXA6Qly3OwEIvK+tbfUrfCCorxxQRmJj5eMHj39GgS
         GE8V5V5UIJdVaIGsOq7hn17dMjRHPOtUSVJMn2mZhtQw+1T3R4qVVY9xdtd0q7ENyvrx
         MGGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721359441; x=1721964241;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XOB5L+4P12y/gtLQ+IRtAPkliKJSy/BYtMjXT7c6v1g=;
        b=EfH2GyVSIkIvYmBNAyPC8WWhO/aGN9dnNF3lHg+BblkAVsy7hkQl+IYKeUSuuoyY3L
         brGI7pjNG8GWUIW6aV9Lej71CWiZ7oyAcqFJ1X83JNVJ3GtY+pB0TzSFZ17hX2RNJlpU
         LE63Nc8VOVOH4apGisbYwJGYh3NVV60LLwbp1Tj3soSJNxrZM7izI64idXZYgkmLlUhp
         PvLybq2NMKBU3Jwns5J6288tQxRtL/35blKi+1Wa1kCXH/PYGRJw8KV9zSZmWI+31wsW
         8VAZm2ojRNbvitoBBFFNRGqrC1udOUlw9Op3arQNpAZNqsp+WEGhPSVj3j5TLjh+zaZ3
         BaTw==
X-Forwarded-Encrypted: i=1; AJvYcCVvhEkq30IQvnq8Viv1DZ0gRpu05vhg5N2j0+yWq7scdaPKNGG3pQkzcVug0O8QvENmYv4pa+Y5wlAHN8/YB4oOdbn08WwsnYQdkXSCF9D18IYl
X-Gm-Message-State: AOJu0Yyok58C+9pDCLQHftSwQJ4OwA8XfeTF81JH9IQnUElbQIJSv2Ot
	jhp7iVOuv3I5Y/AmgY68UMLKwuB0qAaOKes1C8EZEGoMGRpY7w4T
X-Google-Smtp-Source: AGHT+IE6VqxdC/ZJ64XKk2UliGMq04mqrmW3jQ/nDLxkar3Sz7SlW33VVmW12GTj1HqS68EfPirYZA==
X-Received: by 2002:a05:6808:1441:b0:3d9:29c1:be41 with SMTP id 5614622812f47-3dad1f3f4e6mr8888148b6e.10.1721359440622;
        Thu, 18 Jul 2024 20:24:00 -0700 (PDT)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-70cff59fd9csm279160b3a.173.2024.07.18.20.23.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jul 2024 20:23:59 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH v2 3/5] wireless-regdb: Update regulatory info for El Salvador (SV) on 6GHz
Date: Fri, 19 Jul 2024 11:23:24 +0800
Message-Id: <20240719032326.7353-3-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240719032326.7353-1-pkshih@gmail.com>
References: <20240719032326.7353-1-pkshih@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_202401_962849_FA37CE29 
X-CRM114-Status: UNSURE (   9.59  )
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

With minimum bandwidth 20MHz and PSD -1 dBm/MHz, 12 dBm is adopted.

[1] https://www.siget.gob.sv/actualizacion-de-cuadro-nacional-de-atribucion-de-frecuencias-t-0408-2023/

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v2:
  - explain how induce how we induce 12 dBm from PSD -1 dBm/MHz in commit
    message
---
 db.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/db.txt b/db.txt
index 1e0a14b8670f..31a051f242e5 100644
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


