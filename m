Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36FD1F3ED6B
	for <wireless-regdb@archiver.kernel.org>; Sat, 11 Apr 2026 22:22:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q0sl7nFBTcPQREFRKL8ica56QRsEJQOQAOKSS7UmjIQ=; b=WXFMsmdqMgQINefbXYTv8IuVi/
	sAQBI//KqMZK5sslBqjAmdWP4Z7WybP5VsCMxxPqqkZgfg1rPAHkN2LWx8QmqEyjlZp8hZ8QA0NVt
	C4g14VESL1uzhiQcWwjM5sH0OPCkhLiNBzSvV63BHw5z9TLvZUUQElodGjzc5QqlGKp+Y8csVPZHa
	R1Mr3ZvsQJhbQO6XrmxtRl53IhtV/TLOQMa1o160fTwIbO81mltjcoEJrnvwp6VmyiW6Ne+4gz8+Y
	6RizOau8i6q2DfToB1bl4m4Kl45isbCK5G4V7yFW3Vq4aJMpTDTTlhYQx2KQcmQtdTunaRD1M3g5J
	R8xrrJsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBgiX-0000000DpyK-3ncy;
	Sat, 11 Apr 2026 22:22:17 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBgiV-0000000Dpwu-1o1U
	for wireless-regdb@lists.infradead.org;
	Sat, 11 Apr 2026 22:22:16 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-43cf7683a28so2068341f8f.2
        for <wireless-regdb@lists.infradead.org>; Sat, 11 Apr 2026 15:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775946133; x=1776550933; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q0sl7nFBTcPQREFRKL8ica56QRsEJQOQAOKSS7UmjIQ=;
        b=WiVv6lv9jNkujTNtGu8h0+wefH3onbfNFIUxY5NK6sT2zJ8KNEZrfJvZNho76a4QIB
         Xt79r/vK5K8yp+/hTx381s6owk2EcgEY8jic2HtpODKciLjgOe66kQ/dFrAWK7TiD6Jo
         le4FRuDZ9bQ8tIRD8xKJHzaJ0lz/Q+0YpR8FUltdPNIEVaoHj6gZRBMbhmHHH6YZM2mi
         brlJ6gqDPEA3EBJG83CCzC4895RQf48cWH9nAB/0af8QzwqXrvLNiP0fUOuSEdP40veN
         r5+OnkOo0v2PQSzkwjnkVLb53uQ6H7bNDDVTjRbyL8Fgh63QIclVEM0cTf8Jn1sb8Kvi
         vvFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775946133; x=1776550933;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Q0sl7nFBTcPQREFRKL8ica56QRsEJQOQAOKSS7UmjIQ=;
        b=qA+N0XV6zyY8I9ycor6I3DBiCZF5MgaSmkrJfWPByLvpbt9zqmYXusp8mOCxe7WNZe
         g8GHWppKjyjNm6+67q8sY+Sg3VfKc7sLrifG1HmODxI1Jz3ZI6C5NWrTUYoK7yiENlkz
         eC7sLeGXmL40uWeHe/9h5IrTVD4tovSBrZ/G2o6aeTxCykXgU8swdM9XG0gBLsziZLoV
         BamlYfmEHcYD84d39/SY8Jy2hmI6chs+p3nvX+UGR9ZUauswP7hS6dcqmXnRswC6Omqj
         ATP4IOhXa3hRl64ZLfFyIWjbI9SZZEqkYO48SCwVHjrLchnSKwrxG1854X7HpW99eD5o
         hDKQ==
X-Gm-Message-State: AOJu0Ywtu0HNDDbUi/DxHT3iptfONXO6BvUPAzOcYCmxgjU+tQLE5f8V
	X4HwORP/w9WdB8DDuCRsIRUKHBSpxeyljK5JN0UmekHALMC62SXWyp5clcKCdl3b
X-Gm-Gg: AeBDievUnsL1PHeY49Yr3XO7NJ2c5ZLEWzMvC7igaRhPC7xyRW8Fllc6BJqsV0omijj
	XsSLiIPNVScQXc+Qx66mWCF0a2qNJYxTphCKU3Xid07D/yHi9a3ZTRKYTMUxW6fJ+4HZ+KYr0Th
	16aK45+dgBZVKQUpO17R3xrH/pKXqmrQnYt7HWfVjBS6fPfs8tVx4adZQAxgXJBCuiv/DEPgx/B
	S5ORamak8fg4FBbySR2ELdabozA6ZOR/CXXqFbREq7lvOd5MNd75JverzwBYzP3zj+iAqwrEaje
	w/mdWXkS/cExcZBN1AxRezg2md9kqd+IW5Y8qTVp5izR6PTPJrDl5IywqSPu6uXEIq6VMYqydZX
	Ld/lU4hsvh3QCG4aYAtiBPkDTIV4VOuyCsE0JVugyt9GNqLAELafOXZIRvtPQLxy36GMXHYelxG
	1+qr8faoygEtF1/83gLWUdx/56gA==
X-Received: by 2002:a05:600c:5306:b0:487:59c:2bb8 with SMTP id 5b1f17b1804b1-488d68c3385mr107515325e9.27.1775946133280;
        Sat, 11 Apr 2026 15:22:13 -0700 (PDT)
Received: from bazzite ([102.128.175.252])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488d689110asm56935965e9.35.2026.04.11.15.22.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Apr 2026 15:22:12 -0700 (PDT)
From: Louis Kotze <loukot@gmail.com>
To: wireless-regdb@lists.infradead.org
Cc: wens@kernel.org,
	Louis Kotze <loukot@gmail.com>
Subject: [PATCH 3/5] wireless-regdb: Fix 6 GHz LPI power for Russia (RU)
Date: Sun, 12 Apr 2026 00:21:53 +0200
Message-ID: <20260411222155.299441-4-loukot@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260411222155.299441-1-loukot@gmail.com>
References: <20260411222155.299441-1-loukot@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260411_152215_497687_5202900C 
X-CRM114-Status: UNSURE (   8.82  )
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

The State Commission for Radio Frequencies (GKRCH) Decision No. 22-65
(December 23, 2022) authorized 6 GHz LPI at 200 mW (23 dBm) EIRP
with 10 mW/MHz PSD. The current entry incorrectly uses 100 mW.

Reference:
  GKRCH Decision No. 22-65 (2022-12-23)
  https://www.eleoscompliance.com/en/article/russia-the-federal-communication-agency-fac-of-russia-allows-6ghz-wifi
Signed-off-by: Louis Kotze <loukot@gmail.com>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 9938089..777d323 100644
--- a/db.txt
+++ b/db.txt
@@ -1772,7 +1772,7 @@ country RU:
 	(2400 - 2483.5 @ 40), (100mW)
 	(5150 - 5350 @ 160), (100 mW), NO-OUTDOOR
 	(5650 - 5850 @ 160), (100 mW), NO-OUTDOOR
-	(5925 - 6425 @ 160), (100 mW), NO-OUTDOOR
+	(5925 - 6425 @ 160), (200 mW), NO-OUTDOOR
 	# 60 GHz band channels 1-4, ref: Changes to NLA 124_Order №129_22042015.pdf
 	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
 
-- 
2.53.0


