Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B716AC7EE32
	for <wireless-regdb@archiver.kernel.org>; Thu, 26 Jun 2025 09:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XEnTNGf+JVSlAmdexfBtW1ws7OdnxAZZ4hs1eOrDZk4=; b=zbooM/op6VxXtdJSJj+QGuUy/g
	N6ULZszMgPXbwMXoOtXCrPJjorBuj/h/D0zMPLEtSzWpEtMR6bSvoK5MCFbnxuf07c2lP+QCdNRxK
	+BtJOmlpX2v93oiKdzE11OaPhmLqbw+A1Vzt2TGUVGtBeq41Aty3pTDajgLyhAboLt7PUlD2UIyym
	Om/kw5g8xnPvL89v6t+LxZF5KIkEE2vpgN5/ft3u/WPJCbI2jo1y0+TBDymCmDBwxa1dxiTspBUgb
	022r0JqlQjerGPyzMXoNe4PQdzUShrjmqg93FOtz1aDRsniVxbSAjG8uIHVbl8/1J52DFTt1oJxMr
	2q5lW7kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUiaO-0000000B66M-1aDM;
	Thu, 26 Jun 2025 09:08:00 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUiG3-0000000B1gJ-3V7d
	for wireless-regdb@lists.infradead.org;
	Thu, 26 Jun 2025 08:47:01 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-7490acf57b9so602551b3a.2
        for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 01:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750927619; x=1751532419; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XEnTNGf+JVSlAmdexfBtW1ws7OdnxAZZ4hs1eOrDZk4=;
        b=JCDWxtEf09jplnesYhjmAr+kkmEtzloQp3qpBVssvJEVdwtC2rHIbNlTaYHKzrI+Dp
         1/qjT0YFlR0aCk232/V0BgpOGDNfmYedJVpP+pXj5SOxn+6sRSieXArKGVigJ8byIbHU
         JSzuMIIaZseJUqpJ4Fp62Z9fJQtslVI9BEVo7tIbhaWZRib5fpOOmY4EH0+4mr3OZxeO
         C2teQiDT3xO4uUJqkXDGYLWtBV7MZIBCb/GE1PFoFfb3DEsY0s6DOZ2ovdB6g+HABuuC
         0I4bDMo9U6wyZFalA1nNXZD6gcwA1EQYuZbyzD4z4AIo3FP20cyQQTFNiCQuH1C5LdVe
         MVrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750927619; x=1751532419;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XEnTNGf+JVSlAmdexfBtW1ws7OdnxAZZ4hs1eOrDZk4=;
        b=l80GoHOjyw6arXuyKwjb8uIgFKfOuafAof8kXFetKeVHR/8feZ/qwS6Pbcf1LQuePP
         5At3e41M+Av37NA41j8u4ZPOP9Cm6rlYtAhl6Pi5kj7fGnRKbF1cWFC3nxQZBfbXiU0N
         1csuC/Ltbg1wmhON2fogMFh3fiyaNgzyJv9TUZGe8DlMmbpHFWAs8O3ZKmN+r9TybAh8
         E9Gm3HiJHV6WphiudKh6nLhjT/FK1Yp1mJ7+f4y6zBMYpu2FzPWwJeYGn+1tt5WSlrXg
         gbvO4ozDAX63xgoxJ8XfuDf3Enzkocn6D7Q5dO9M7VZSsMiToLU5Ry6WShpY/dM9iCQ7
         d4MQ==
X-Forwarded-Encrypted: i=1; AJvYcCVWG5gDHVoh/+CRx5iQuUTizAYLz91wSSDmpprUizk0PIAkwsXt1JE5jHznsKaQpxGOL/vzAOYBnLpATtuoRQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw9YzqaJbKOTQcpTtu3RKRgiXSBn5BjpFGv6+cOgcXU2bTfsHNK
	IBFE+Ohy23YxXQmBSvOcmgsL8u4cffqSP7KplLc3ykrbCYhcco5Bekpp
X-Gm-Gg: ASbGnctWlpWEdqARMDm5RiXBQNaTedqYgZFe3ucQwgbZV6kPsv3vhujbPW/mrr2a4eL
	DSJ58R64/sjgrjDsU731kqOR2+4HDMh1MpdlhwA+njjym6Jn+WR8IK0eMWRRvaFX7qtddXo2vVc
	saJPmLJ2NDvpXTpl+8xHfPGi8o7Rc6eIwJDtfxN2yF8Wu3F1HXof2EWdhedTjA4qZGlI5GBOp1K
	DMT9M1/q5okGYhhNdu5Xnk7Qvo028Q7TnhFliXbzc617r7TeqX7siH7x8+BtTwaA4Z6srpvLNbC
	f2ywKqsfgWgkiiQcdDINGke12oDpoK4XYRvz5EZw63CJ9fH1s4dFEJZyHk/p6ZscMcwBe2SWWdz
	G/Q==
X-Google-Smtp-Source: AGHT+IFaKe4U9BTTilc6MhCrnwECx8QlNmhSy7EdKRvMtqNnrnzcTaiRuLPbmq6H3pxRnl9//apfig==
X-Received: by 2002:a05:6a00:2d18:b0:748:ecdc:ca0d with SMTP id d2e1a72fcca58-74ad443db09mr9003180b3a.2.1750927619025;
        Thu, 26 Jun 2025 01:46:59 -0700 (PDT)
Received: from glados.lan ([2804:d51:4975:7202:7e03:331b:6be0:eea6])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-749b5e4068esm6282396b3a.63.2025.06.26.01.46.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 01:46:58 -0700 (PDT)
From: Marcos Alano <marcoshalano@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: wens@kernel.org,
	wireless-regdb@lists.infradead.org,
	Marcos Alano <marcoshalano@gmail.com>
Subject: [PATCH v2] wireless-regdb: Update regulatory rules for Brazil (BR) on 6GHz
Date: Thu, 26 Jun 2025 05:46:32 -0300
Message-ID: <20250626084632.2389103-1-marcoshalano@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_014659_880423_2E4866D7 
X-CRM114-Status: UNSURE (   7.80  )
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


