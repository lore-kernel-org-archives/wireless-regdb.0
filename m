Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DA06C83F09
	for <wireless-regdb@archiver.kernel.org>; Mon,  7 Jul 2025 02:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qx8X3o9APoPQgn0WIpEcwf5Z4PWAuPlq8VwPxSyh4wo=; b=xZx0J/Ds3rJP3Op4mCIFVR2PuT
	QUUIUT58wmaPcXWvyqxT93S+XNqmXjbP6WxOdWQ5ZZMSjeUZeWD5ppqeJn6sMmYH1PBs1PuSWU5g2
	TICNC52DpvE+G3XFdcY88FiQXLN8Hb5X7w48V/dJtga53tN194skmcF0DnOr/+HEw5VF7rykfvcJM
	1zPGdXfMi7XC3bOYLdPesiacT1ckZCSz+UVSDgUm/vceUcFCsPD6hpDriDg2WnSDlEZ5b5nQ5cnYi
	mGfAn7iDsL2/BvLABkOq+FdTtgL9z5BZRUs0VhDBicNdSWdFsqis0WoJi401aZArmnH03p4Jnx57j
	+cerIi1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYc1B-00000001FA4-2D5l;
	Mon, 07 Jul 2025 02:55:45 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYbsE-00000001E1w-2I2i
	for wireless-regdb@lists.infradead.org;
	Mon, 07 Jul 2025 02:46:32 +0000
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-7426c44e014so1970649b3a.3
        for <wireless-regdb@lists.infradead.org>; Sun, 06 Jul 2025 19:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751856390; x=1752461190; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qx8X3o9APoPQgn0WIpEcwf5Z4PWAuPlq8VwPxSyh4wo=;
        b=TdfzikR0PDuaTxaSB0pKMSG4NHl1AtXvroyclvHa18GA3P4OofFEUi4KxdiNL1SuPU
         2RtvLc7EEnhFpFAfbWDV2YHlJuZoLLL5DpKWG3GpMZf1XnylhwFlaB4+HGIrbBPOnu1m
         JuDgsm6kkaXc6+F75ooz3zn3GAzU0bt+p+LIrqaWo+zBkgn6WaoNxwl+invejz+F2CfA
         mBv5kEH9lYBMqqJWk4xuR6mVTCQDqLitkjmBCV0nNqQRmzd6F/wVCF8EBxjvndN+NnN9
         SsNazUy4dztpU/UDcXbsY5a98hkHHkkWO8zCnvrISpY8vvtmvLzlkBlULyey6Vgndf1e
         BHKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751856390; x=1752461190;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qx8X3o9APoPQgn0WIpEcwf5Z4PWAuPlq8VwPxSyh4wo=;
        b=p7InkNqx+6bfCpjRbzA96OmYIpwKYGiQO0MtJmmr+u+/xAgT0p5EO+nNTaSsXsG7a1
         iI/amisQIsGq+w+xXcEcaIzghhkvlackgedDIL6dUb8JjVf073kQFIKLfKgE1QMGZjZR
         Ts/8uyJLDE8XZ6qHb6tMSUObMX7qWe5XVguxGQcQwIAjlphVGMz8qSAGkZqYWVPvSsiM
         1ZQmI7dSuLGyTyToynnE2zeOv08I+3CgIjbDRX9XSS2c1jsc6iLwpCScGaoD7E+JHEa+
         944ZEuaoFik/t1ooqv+BcL1Cii1s/wDBnQsEpvKglAdvYT7eqQ1jia8vPldSw7W/fxSa
         hP7A==
X-Forwarded-Encrypted: i=1; AJvYcCXyGpRDMD3LpzcS4WafuH6WSe6LKRUFbH/VU9W6YwAStAnS1uXlRLI5bJ9FtD4sf+umXxP37Wr78B7n4eolmA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzHb3QowBQqFE23YOLbkg9p89S9FCajkxfAmAXKDLMaoSeTyl87
	38AWqFY5CEOAjFTmDH/GZd8T9Xy15lxVK3fz+bMF3wWuxM0aoKw0Mqt1
X-Gm-Gg: ASbGncs8kvINqJuwDLrjqBBRMk33a7FGoMtrzGCmTkqZn0NbGzP2i3FV8Y4SdumM9cO
	Yws622h3DTLbaSlijvwCPnVldiIvsxHjeF5KiqcdoqF/LjGg/QTPhlvvOqMmQQPCLB+cFgrFQq8
	HsYDKW3+mR3NI38gZEr3bTBT7qc1+hb7x9FJYVeVE0i5or1eNHJi0JtGfYAX6wBgrPtz5EMgEyu
	ycCLA+O9K+LyD+EMOaqKRBvDbCtq+L3Q/xmEBQNwtsdN7nV6jn5+hvNVUghv5dlqEA2Gnr/ZIJR
	FNyp/dOTkl1bEWA9IJIUP+UcTELfccDt41OgtXlQ/bJtApAVX532VjFREjaxWZGVu0T1tJRsznF
	9pflPKIc7jgn4LMpkbmX17CtF86AGY5dxcfFi
X-Google-Smtp-Source: AGHT+IGB//0dIHmRUqv7GGFRgwfb9zOE0RNFn3qjwDP61v2rY3kcwt+uv3zZV0ED3+F3uGYj9Qdyjw==
X-Received: by 2002:a05:6a00:4b13:b0:748:ff39:a0f7 with SMTP id d2e1a72fcca58-74cf6f2f331mr7968176b3a.9.1751856389931;
        Sun, 06 Jul 2025 19:46:29 -0700 (PDT)
Received: from localhost.localdomain (125-231-129-141.dynamic-ip.hinet.net. [125.231.129.141])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-74ce35cd066sm8205274b3a.53.2025.07.06.19.46.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jul 2025 19:46:29 -0700 (PDT)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH 3/3] wireless-regdb: update regulatory rules for Paraguay (PY) on 6 GHz for 2025
Date: Mon,  7 Jul 2025 10:46:15 +0800
Message-Id: <20250707024615.38507-3-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250707024615.38507-1-pkshih@gmail.com>
References: <20250707024615.38507-1-pkshih@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250706_194630_584083_CD0B942D 
X-CRM114-Status: UNSURE (   8.68  )
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

Government of Paraguay, National Telecommunication Commission released
BOARD RESOLUTION No. 1035/2025 (by translation).

The operation parameters are listed on page 6-7.

 * LPI
   - indoor only
   - 5925 - 6425 MHz
   - Max. e.i.r.p: AP: 30 dBm, Client: 24 dBm
   - Max. PSD e.i.r.p: AP: 5 dBm/MHz, Client: -1 dBm/MHz
     (Since minimum bandwidth is 20 MHz for WiFi, e.i.r.p limit is 12 dBm
      for client)
 * VLP
   - indoor/outdoor
   - 5925 - 6425 MHz
   - Max. e.i.r.p: 17 dBm
   - Max. PSD e.i.r.p: -5 dBm

[1] https://www.conatel.gov.py/conatel/wp-content/uploads/2025/05/2025-rd-1035-sistema-acceso-inalambrico-baja-potencia-6ghz-norma-tecnica.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/db.txt b/db.txt
index 224edfcd90a9..ba1d7f8f8580 100644
--- a/db.txt
+++ b/db.txt
@@ -1621,12 +1621,15 @@ country PW: DFS-FCC
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
+# Source:
+# https://www.conatel.gov.py/conatel/wp-content/uploads/2025/05/2025-rd-1035-sistema-acceso-inalambrico-baja-potencia-6ghz-norma-tecnica.pdf
 country PY: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (24), AUTO-BW
 	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
 	(5490 - 5730 @ 160), (24), DFS
 	(5735 - 5835 @ 80), (30)
+	(5925 - 6425 @ 320), (12), NO-OUTDOOR
 
 # Source:
 # https://www.cra.gov.qa/-/media/System/D/2/5/8/D258CF18B83A5613B0D590193CB799CB/Class-License-WIFI-6E-Final-English-032022--V3.ashx
-- 
2.25.1


