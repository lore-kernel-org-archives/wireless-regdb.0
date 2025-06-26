Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C65F8C7EE39
	for <wireless-regdb@archiver.kernel.org>; Thu, 26 Jun 2025 09:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XEnTNGf+JVSlAmdexfBtW1ws7OdnxAZZ4hs1eOrDZk4=; b=pyVxX0u6ZRRfHfCB66K+3cpNRx
	kD8qep+jSMjzk4DDXtMd/E1u/R1dd1CgKnq6CWUervAuHqBFshJk18xJTsSdlIl/V1pcDHp6nbaQa
	aBZyXJ154datDnFcH3SBAtJFUfYnj8lZz9r4I8Ld2RstVux6h9CvxsHcMxw4y32XxjPUyMT1ACWcG
	Fo28MuQx59CocokZQEW4guCz7x6Gr4iwp7OZ4vz2tYJqQE0EuOUGgCiZpnig9KHQoBfuk7qWpW6lv
	GFnWkwV2ooLEKuvkFsuLDP/B8bA8Zsw0JfqRFP3AFOxRDpOwX3CKSX0KAx9rzTJlIBP/SPqRhBIcg
	sfF/0vDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUjAa-0000000BB8C-3kUl;
	Thu, 26 Jun 2025 09:45:24 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUiR6-0000000B472-1gSL
	for wireless-regdb@lists.infradead.org;
	Thu, 26 Jun 2025 08:58:25 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-7494999de5cso554648b3a.3
        for <wireless-regdb@lists.infradead.org>; Thu, 26 Jun 2025 01:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750928304; x=1751533104; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XEnTNGf+JVSlAmdexfBtW1ws7OdnxAZZ4hs1eOrDZk4=;
        b=k7WldoEF7xvYlpZSR4KtF5wsbvtPJGm3kFrwiUn4SIZAnqYfZU5wLGH9kQsY52s8BS
         hXrVvBeGMC3uP1mMq0NsdAkR2Fuvou+KqQFPCZafqUyT8AKxc7p+P6hZhc5fgSDVsZQE
         c8T0wHrOpC4mk4lbKIdoCE7yvUBQ5kGx1WGgeFizEyTnxNeb9hvcMT3EXihL/nbQ7nd9
         zIp8Fhrp33aiQqrkBVOBRL1FaSr1NYRLEMK6y9RpDZ5ivbO2BZiFaDF0YBKcYrsNo3gh
         lCcF3PhNk8vfKMDeLiJAj/S7RPK01xf2mY2NNhFozLbgQVH5k1ro99uZRycX2GuR00My
         2lhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750928304; x=1751533104;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XEnTNGf+JVSlAmdexfBtW1ws7OdnxAZZ4hs1eOrDZk4=;
        b=gZc27UsxLjZj4dJqhygVSxawEYjc2XlT/INB7CTiKxwN81DTOuOoG5iflCpH78KtWX
         4eBIym5O3V3mCYWC1LDNLVPtsyDuzEKNYQZ4eeFei5wK51RY+tvDFhfTxydt1zmlXiQk
         nHd4iZVrBwiSL4qt4UXo1n55/tHV7rlpyfJfUsE98wjsC9ssxiGGcqAcZmMPg3YD9C+c
         mphdC68kgcgvtWYJGA8Baz1+N/LThi1gqfSSGFSBpJnwo+6UEy13e7u9jOIw86YdAIa2
         iLZNVy6ObP2LKlV0Og1rqznsTErbiJ2zklaar/4mFiwosOvTAxkb9hwqNJhmACdDHllB
         R2Ug==
X-Forwarded-Encrypted: i=1; AJvYcCWW1zdvfKZKFsuoqAnKTpzJNx/euLXeGwqXy887P30JgkBo+O0kcOJZDf8cvL+OFIVvRxDABpFjd2ch4vzeLg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxoGjfc40H1r7ZI+xHmGFniDhq7lnn2wsT7FXTN9aTZ2Q1qL9df
	uVLRW5b4UzQ9zo8ztJZ8GqoWlZTd5jlmYPmdxwDZ5U0Hf+S0sUhhrXAH
X-Gm-Gg: ASbGncsnfacCauvWB+Qmx1P5alz01H72j01iuhl0tq16yB1gIpdyrc1eCTOqTH5aL1y
	0vJ9X1/uhbI/M/YlDObwuTW7pyo7LpgGPSzIcpPZpOiUd3o7G91wmWM+yl90lbcGIuduBEZrZ6M
	H5gXshjJvmokrlZhH8Qwn+aeftibiMKpJemMevAQPi+JQMjDy6r2GbcnR0MW8g7BjpvEFaRLqwu
	2RVWUZyWH5kTtOwMU5wA45WXU0NTbfttnjhSMS6up200uAF8ajPRF0u/v5pAUhaGuQVqmybG938
	7FFGHRUXszmRm+U45wHtdUlVh0R9jjVbK2+aJx6N0YtDSWPMl46F7WEy79yYx5dfCrmLkGeR+ZX
	S4Q==
X-Google-Smtp-Source: AGHT+IE6ac2uZCeSMFr5WZDfhXKG4/J7I0o5Gag5XrIgjI8K8EtPh7uiyf49FmHv5rEf1Yng1jir5g==
X-Received: by 2002:a05:6a00:1953:b0:748:de24:1ad4 with SMTP id d2e1a72fcca58-74ad44d1782mr8729452b3a.17.1750928303563;
        Thu, 26 Jun 2025 01:58:23 -0700 (PDT)
Received: from glados.lan ([2804:d51:4975:7202:7e03:331b:6be0:eea6])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-749c88723e9sm6408130b3a.153.2025.06.26.01.58.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 01:58:22 -0700 (PDT)
From: Marcos Alano <marcoshalano@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: wens@kernel.org,
	wireless-regdb@lists.infradead.org,
	Marcos Alano <marcoshalano@gmail.com>
Subject: [PATCH v2] wireless-regdb: Update regulatory rules for Brazil (BR) on 6GHz
Date: Thu, 26 Jun 2025 05:58:03 -0300
Message-ID: <20250626085803.2392872-1-marcoshalano@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250602121434.3011282-1-marcoshalano@gmail.com>
References: <20250602121434.3011282-1-marcoshalano@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_015824_431125_1BE73406 
X-CRM114-Status: UNSURE (   8.22  )
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


