Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D23EC54FB3
	for <wireless-regdb@archiver.kernel.org>; Mon,  2 Jun 2025 12:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tWr6AOJZN4L7ViQbt0QAk8y9QOBvmnShKqnOnGfOD/I=; b=KYqzrb9ZFlrBxUmrJsiQ/d29wg
	VvGLNgB5Po2EnGp7j266uk3RPcMA6vWKLoO9elBLOa7q0nEqMGFChmRiWif9wMUcb32ma4fHkniPx
	Z2pl5tiHMTBq7S4MsXV4WjNdoNYLl41eTOt29yD6sYAGSMHlKCqDyn0WPwtQ+KNXvWAAPlQcjy++A
	6MfJu8cAJE4D6jQ1jupcuUsyheh6ssRqLc8ZRHfIFUH0+YD371eF/i85/YWJt+B8SL/nsFjBzH3ob
	DRZM6Ic2za63gL+RXn0Vf3zXmpcS075lrQHDZeVpAv2TXAZ6PLvQJwTo682bmKgVL6jNP6obxdNcS
	seUjE1zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM44K-00000007L5C-1x6b;
	Mon, 02 Jun 2025 12:15:08 +0000
Received: from mail-vk1-xa2b.google.com ([2607:f8b0:4864:20::a2b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM442-00000007L1o-2E6R
	for wireless-regdb@lists.infradead.org;
	Mon, 02 Jun 2025 12:14:51 +0000
Received: by mail-vk1-xa2b.google.com with SMTP id 71dfb90a1353d-52f05bb975bso1110176e0c.1
        for <wireless-regdb@lists.infradead.org>; Mon, 02 Jun 2025 05:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748866489; x=1749471289; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tWr6AOJZN4L7ViQbt0QAk8y9QOBvmnShKqnOnGfOD/I=;
        b=cqUvFX/mzhQqAQheeuGssCh98DMXluYf/LXn+03iV1F5HXsFlfVgeWmkiSw1N6QuGK
         p7aXiBKNvln9nAbyxgp1R3pQYX3IFOVNFuP5YVF1weuNzYKHlWFjFjgcOzMfVWeglaHq
         w6QrvXZgQ/JGcfZA5BpugPr6XKDGHWR5Az7LgqtbL0NOtQpfawOMVCb7XxfNFPkAym8l
         aWFFM+wGT4I1EAsXBABFd3fizCVf8QwyxPO9WrmVd6pz2pSauJdytAEZxCsUSH6CvOTi
         w7fkolvjDh7IwhOBSP5zkx+uAL3Lrg8QV2zx8a/aFPUXFS4keDDwpPwqm8ZLPm2jsP5Y
         pqog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748866489; x=1749471289;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tWr6AOJZN4L7ViQbt0QAk8y9QOBvmnShKqnOnGfOD/I=;
        b=e4Ny86xwHiiFh5DuVW/gYcTF91mIFX845ikQe+eWw5gNGmfALCZxPJ+mgOD+MzNrIL
         MlGDM/MaGijNoIGxd3dRWXMUARFhocBGLsuLexTE04FITxbMoWj/CIYi35MR476lqViL
         Ljg0KLSRdr6HMH6j6d0/rt9/7sreSylQA72polF91K9u/YR994aynXBPjQ3ww4ZNjePy
         Iy34BgKDuKcnjCmtuwBLpZ6QlwNZFqqAgj2TqA5Fx55XQJs/eJMy/BTmDh3xo8lmjoIj
         gUl6EWyXO7RVbjwdcTYTHOYxiu9hHjBfu7EUhyI4bFMbg+N/gPsq4Mcy+y5LSYXse4io
         1+sg==
X-Gm-Message-State: AOJu0Yyo8h1gLpywwYvhAhQNLvCXaKfZslGZtiW3dZoZFlucU/ajcg9T
	ynxAZDYaUGXMxWP1aCofD8ZWPgztfhv9/EZmGUEVrdd1bAcPsPnkg2Nw0kv+Zg==
X-Gm-Gg: ASbGnctyS+aQsbDbH0qsmqgKvZhLb40gzkapRwvxWuL7lUy7tJxKxKXzzpAcbL/SnKc
	7+AoBB6irkW3LZskKFUUz5K7aB9ql85Sp6Ao9vCQmiTORT7p0wP1QhYAyuaSEYH5dMuPq24nIUV
	xxLKqHDX1o3inbW9aOjknfcIzZXPdcq4XNSAhO2lvYs+vmyZj1IaqxNdxuGwnDkRXWFqwbcF5Z5
	wLi1327urthxpt6yU4aM0WbIHHgpBtfLt1xql880NyCdg0a8SRS4EyKgKlt2O0/CuZTmAflS7vS
	p/ks9ASabNJugc+DsseV698tdu4yTVVEZo3mhwNIqI5//I4k1IdO+rZ5xojEVEGVXZ5hXmvcXKU
	4lUbKM57Nkw==
X-Google-Smtp-Source: AGHT+IFeZNVSEluL7dtlWwkltAKCPDXDsr30OO6vpEyQUFDxxSYXRx/1crj1EkUR0RUQX8dgOqroQg==
X-Received: by 2002:a05:6122:310b:b0:52c:7abb:efee with SMTP id 71dfb90a1353d-5309379b766mr4777226e0c.9.1748866489210;
        Mon, 02 Jun 2025 05:14:49 -0700 (PDT)
Received: from glados.lan (177-1-191-98.user3p.v-tal.net.br. [177.1.191.98])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-53074ab0d37sm7340676e0c.8.2025.06.02.05.14.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jun 2025 05:14:48 -0700 (PDT)
From: Marcos Alano <marcoshalano@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org,
	Marcos Alano <marcoshalano@gmail.com>
Subject: [PATCH] wireless-regdb: Update regulatory rules for Brazil (BR) on 6GHz
Date: Mon,  2 Jun 2025 09:14:34 -0300
Message-ID: <20250602121434.3011282-1-marcoshalano@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_051450_587392_28AF7828 
X-CRM114-Status: UNSURE (   7.76  )
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
index e331d4f..3b0adbb 100644
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
+	(5925 - 7125 @ 320), (30), NO-OUTDOOR, AUTO-BW
 	# EIRP=40dBm (43dBm peak)
 	(57000 - 71000 @ 2160), (40)
 
-- 
2.49.0


