Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBF73C7EE33
	for <wireless-regdb@archiver.kernel.org>; Thu, 26 Jun 2025 11:22:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=umoGUYQe48OfV5fwGyylK64REtd9n1DfkxW5EqG+gec=; b=1LITKlnCZgGXPrGCzq+HkWX7Pk
	wcey0Zgcta7O+85jlUn6Wvi4qF66i3/LWIXlWoLelHE7xo5H3HWfpvdkhBDCdslgjLsSeIY6ccQA2
	mIE5pa0UQq50OAXjtJUbeftCXCEKz40NNbiabZB/tPKbYobHiStyxoThxTHWxDickok+WrhSb0ant
	PIFJjMxYsRGz9RtRcdI5NleOjawPvfBHagi2PpjSf1VwPIHPPg2QYi+RTwM3HUWV+A3FJxWq0tJbI
	1aCNs1ZJG59T3GOQMiyng55FcN0D46eeBb2aIRFWwVIUchHe3Wi6qLEskwKpKkczUKPCBFfHTtwtR
	5bBlWT7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUkgv-0000000BNva-3WWe;
	Thu, 26 Jun 2025 11:22:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUjIY-0000000BDEo-06vp
	for wireless-regdb@bombadil.infradead.org;
	Thu, 26 Jun 2025 09:53:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=umoGUYQe48OfV5fwGyylK64REtd9n1DfkxW5EqG+gec=; b=FZeYPzxA6Q2T9O48XmDKzwLb7F
	Lo6w4yCiWpCWVHu8UVOwBAsExd39niAn7xKZ4Ef8D+SLLAqZSppVRbZcsPEUMY4gRaSk0AQG1hB43
	cD5fsrbme7vMu5cgGxNg9QEjk5z6b7swiD4aPIxiQ+IVjctpFfQcvYpA5eUA9BhwZ0/WL6OZE52yz
	nM/K8b4ZbZf79WfUr2CKJDZ2G++v/J9zN1AGvoc6EFs/UCa1qG+lcJd3WNbLR+xXiE4pB5k/eb71w
	qfdedfJ22hb68ys3fiznCqTXbG5bOgUasJTSRlwlbcp0FqNgWf8D9kU2RSnDFT9CPy5YzMwZ3ih4B
	XEwHWB1g==;
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUjIU-000000064dx-3tT6
	for wireless-regdb@lists.infradead.org;
	Thu, 26 Jun 2025 09:53:37 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-73972a54919so814263b3a.3
        for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 02:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750931612; x=1751536412; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=umoGUYQe48OfV5fwGyylK64REtd9n1DfkxW5EqG+gec=;
        b=WuqcQ7+CvJLf4fT/aSlDc0U7SJy8lqJ/RYBJGwotSIO+94T/3oob8OVf9FzDApKjup
         tOr/QCuA5BsyysCj9DaXkZYkvSravdGQ6zI4u/ByAm7Mac4DDFAdTkONRU0UAft5ERnJ
         8emgRT3ilgyURPYwzhkMX1UznEKXjT/WIgDY9NaR5YDW31C21fgn9jRDAF2x3vS1eyqv
         2QxRH3ATmN43Y8Fo/UlBK5ueEUdo8CLXrNAx5JIoTY1mUmr3ulpfislzKwBGP5d8rl09
         sGEXqZXS6Yfu/pp5zllquN73mmJsP14kHkniTFmtdLQh/UmVUcT8FSIScAo1xgSgyhoe
         wj/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750931612; x=1751536412;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=umoGUYQe48OfV5fwGyylK64REtd9n1DfkxW5EqG+gec=;
        b=intyamviKMYZnp6bypr/XlbQvpr5wMTBEvuCON91lgHRn18wIReScMpddYMezUt5Dk
         OTcH73ii/ZeiNodcPbBeJIB+N7VtnI+GuaSVdYhCCsYdNLui85ZybwUKZfXs2rVRNJes
         DP4p7zWIMCpTcMDjHmuv4ytdSQFJToFOAHRfeGF+cmysYGwY9FsTTVha7Qz1bfgdE25R
         NooYgRUwu8zug79q9g4EFI/U4IH7s2PzUKf/GcIP6Ml5jaR30EeToNIPg5NAvgRQT790
         PxJnTG0hFV60BpniSI7x8pcW74+YFhJHviMbGI1SOWCAQMoF7qPwMoM3pQH9PNcWHLvX
         uCog==
X-Forwarded-Encrypted: i=1; AJvYcCUv7x2dJZIvWPkN1Kqe168TiB3lGiHjc0PVhuEwRxp6lV4vKrUvUGueL94YBhNQNyCtSZsl55YpII1mcxWosg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyOvOhqLd+0jW+/BJnGVCMo+WEmXzknSUAPbJpTgO/COxvFFi5I
	Y2iMR970AkxGBTcxfwWdIwlOfXmrUJ4UUSAZGc+tGnvVr2Z4P+uS/tD8
X-Gm-Gg: ASbGncvFp6Cwnnaax0YID0iK4WqkHZzdybNThYIdlUcjSJueUV4dKLSvI4VMSvME8n6
	29IYyeaiBM4FjoKwk/rnjtPcJyVM7ax8kkCRSTmJbyGZ4Sw+rpE8j7WHNNvQOeBCinitxnUOWM3
	O/V8nH5CaPq6qlKAjl1IGt6E+MpdFqau7nnWnkC/zXNpIFkmotMqoxI4mlD7qaaylR7O+SNJQho
	EKUGCb9YzuH7CuDedfW0gJUHkgmyt8QmtyvJLNSoXV3LY+HdE46+7FVWjTjRGLGabDETSUXdapX
	0XAYMH2yCESVmE4snrgmby3GFvhHhxjDmWx9NIR0ICDFIi34cFr7ShboIopncfRHuo8=
X-Google-Smtp-Source: AGHT+IE4u1wjlqpnZwCtzwCzN8lsdLc5uxDFnvFhKRwltl0hwS2kIseIBzeGS/5ZNVgtkOZovl3FBA==
X-Received: by 2002:a17:90b:3a48:b0:311:e8cc:424e with SMTP id 98e67ed59e1d1-315f269d1ffmr9858405a91.24.1750931611952;
        Thu, 26 Jun 2025 02:53:31 -0700 (PDT)
Received: from glados.lan ([2804:d51:4975:7202:7e03:331b:6be0:eea6])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-315f5428ae2sm4073980a91.28.2025.06.26.02.53.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 02:53:31 -0700 (PDT)
From: Marcos Alano <marcoshalano@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: wens@kernel.org,
	wireless-regdb@lists.infradead.org,
	Marcos Alano <marcoshalano@gmail.com>
Subject: [PATCH v3] wireless-regdb: Update regulatory rules for Brazil (BR) on 6GHz
Date: Thu, 26 Jun 2025 06:53:20 -0300
Message-ID: <20250626095320.2948805-1-marcoshalano@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250602121434.3011282-1-marcoshalano@gmail.com>
References: <20250602121434.3011282-1-marcoshalano@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_105335_153200_1548A427 
X-CRM114-Status: UNSURE (   9.50  )
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

Change rules for 6GHz on Brazil removing `NO-IR` and adjust
the maximum power according the normative.

Change the comment to point to the newer normative.

Signed-off-by: Marcos Alano <marcoshalano@gmail.com>
---
 db.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 803f1bc..eda4eca 100644
--- a/db.txt
+++ b/db.txt
@@ -322,7 +322,7 @@ country BO: DFS-JP
 # Source:
 # https://www.gov.br/anatel/pt-br/regulado/radiofrequencia/radiacao-restrita
 # https://informacoes.anatel.gov.br/legislacao/resolucoes/2017/936-resolucao-680
-# https://informacoes.anatel.gov.br/legislacao/atos-de-certificacao-de-produtos/2017/1139-ato-14448
+# https://informacoes.anatel.gov.br/legislacao/atos-de-certificacao-de-produtos/2021/1510-ato-1306
 country BR: DFS-FCC
 	(2400 - 2483.5 @ 40), (30)
 	# The next three ranges have been reduced by 3dB, could be increased
@@ -331,7 +331,7 @@ country BR: DFS-FCC
 	(5250 - 5350 @ 80), (27), NO-OUTDOOR, DFS, AUTO-BW
 	(5470 - 5725 @ 160), (27), DFS, AUTO-BW
 	(5725 - 5850 @ 80), (30), AUTO-BW
-	(5925 - 7125 @ 320), (12), NO-OUTDOOR, NO-IR
+	(5925 - 7125 @ 320), (27), NO-OUTDOOR
 	# EIRP=40dBm (43dBm peak)
 	(57000 - 71000 @ 2160), (40)
 
-- 
2.49.0


