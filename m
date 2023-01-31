Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=XFLGfjncC2ymMLEp2L+dZl8Tfh2Bi5EpbcuM/m6Y61E=;
 b=p+YX9RuwRkuGDv
 tADA2WxoDbG6KgLreoyEkdS7/T4TMQPWqqt6au/y7B/+2VGngWfV5RF62eHDslMiY2jlgIMvW7rK4
 9QjcQZvjsJaUeQm6nz13ftyyprgO9lZrfb38z+b5lYl2mDfm8PG1ORqJSU+ZWhKr/1gZ9fK1VK42Z
 /s7uVlDICiQj8J4DMM6Q5KB9jS0Kz/EQiwEMPOwj5bLGomhzqu4R/69LmlKfbol6IHa1egCKC74FU
 Z8Eli8EdULuCmZfT/GfP0BhWQg0jH+JSz6eOy50eAsCkp0tPAu76eyxSso/LWGnSdmIUbCnH1peCU
 5Wu70e6BbZ6hKh/cqujQ==;
Received: from mail-io1-xd2d.google.com ([2607:f8b0:4864:20::d2d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMq4i-007ub3-QG
	for wireless-regdb@lists.infradead.org; Tue, 31 Jan 2023 12:49:26 +0000
Received: by mail-io1-xd2d.google.com with SMTP id w24so2287324iow.13 for
 <wireless-regdb@lists.infradead.org>; Tue, 31 Jan 2023 04:49:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20210112; h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=4IvuXJwVICWBcwlud5vZAuUcWP9KhMspPCpkjTpsyS4=;
 b=NuupiDQWOFqogwPeBdUZIVadecNGSE1gYLOTPNHkrLcwY78iVCDq5DxYOJhcwoFrRH
 Lt1YYqRHiatPYxL0dISGjE31fJ0k8RH85UTW3dwrp5gXXnCS4c8EeIRVSZ6Q3+aVIiTh
 5piKj8kohfywKDP4HAOVWXGLwcDo346ct5YJpg/VkAiODyTzMLcoqsHYG+TB6lo0Qp9m
 wV7Bagl0Dtfc1fV7snB9kenWU/BehTk/ukJ6QvsTjN5zlnHbUeRI6WZIKio0qS9zdlFf
 F/ths3s3Uxe41wD6c2LAs/yYeSz/NCA542Nhisuh8BqQmpRCkmBYrZlldz/A5dJmTyKA Vzfg==
MIME-Version: 1.0
From: Eugene Konev <uejikov@gmail.com>
Date: Tue, 31 Jan 2023 19:49:09 +0700
Message-ID: <CAO7DJoCeUdHzRYkXg-HXTQqYpBPijR-ZbUy_C6Lx35s-wYR-mQ@mail.gmail.com>
Subject: [wireless-regdb] [PATCH v2] wireless-regdb: Update regulatory info
 for Russia (RU) on 5GHz
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: sforshee@kernel.org
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Update regulatory info for Russia on 5GHz in accordance with
current regulatory rules.

Source: https://docs.cntd.ru/document/902048009?section=text

Signed-off-by: Eugene Konev <uejikov@gmail.com>
---
 db.txt | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 3f74194..915a3b9 100644
--- a/db.txt
+++ b/db.txt
@@ -1500,10 +1500,11 @@ country RS: DFS-ETSI
        # 60 GHz band channels 1-4, ref: Etsi En 302 567
        (57000 - 66000 @ 2160), (40)

-country RU:
+# Source: https://docs.cntd.ru/document/902048009?section=text
+country RU: DFS-ETSI
        (2400 - 2483.5 @ 40), (20)
-       (5150 - 5350 @ 160), (20), NO-OUTDOOR
-       (5650 - 5850 @ 160), (20), NO-OUTDOOR
+       (5150 - 5350 @ 160), (100 mW), NO-OUTDOOR, DFS
+       (5650 - 5850 @ 160), (100 mW), NO-OUTDOOR, DFS
        # 60 GHz band channels 1-4, ref: Changes to NLA 124_Order
№129_22042015.pdf
        (57000 - 66000 @ 2160), (40), NO-OUTDOOR

-- 
2.30.2

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
