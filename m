Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
 Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=G1/1XImlMyvingpQbKCoXi5C9+xATRQ3oc+snDQPeR0=;
 b=Qf4D09klZyXWb8
 VeI+sArbhS1UG/9AEfUAOwfxQlwmZsDPOVzFJ+Dlsp3eWVkZOZ/P37i7w5KWYEOefDXYrUvbm1QpY
 16w4bMYxdh4IVgDJWlvuzd5aWgt9f1/I6tnfHs69UmzbevfEghQmK66rs4vUgT9/DgQvJPcwdF2Ef
 +JboJQixVkVaEinSs+gXieRtmQRJuTjB8KWS/1pRV1V2gcfBQsM0NgxjSo4wAZfzJCv+G7LyZUmrV
 p3b9dNYQQPwNMR6nL4Iy59Bai6ynaIbPd2efDeOjaLrhF+ClKNWjI4Hh/jA/CclHRmuj/Pu2Ncwdd
 46mSUc+ZRJSOKNN0Llyw==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fIfML-0003Fy-MQ
 for wireless-regdb@lists.infradead.org; Tue, 15 May 2018 19:11:43 +0000
Received: from mail-it0-f70.google.com ([209.85.214.70])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fIfMA-0002IH-9W
 for wireless-regdb@lists.infradead.org; Tue, 15 May 2018 19:11:30 +0000
Received: by mail-it0-f70.google.com with SMTP id c82-v6so3649065itg.1 for
 <wireless-regdb@lists.infradead.org>; Tue, 15 May 2018 12:11:30 -0700 (PDT)
From: Seth Forshee <seth.forshee@canonical.com>
Date: Tue, 15 May 2018 14:11:26 -0500
Message-Id: <20180515191126.19189-1-seth.forshee@canonical.com>
Subject: [wireless-regdb] [PATCH] wireless-regdb: Add 5725-5875 MHz rule
 for France (FR)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org
Cc: =?UTF-8?q?Mathieu=20Peyr=C3=A9ga?= <mathieu.peyrega@gmail.com>, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Based on [1] and [2], use of short range devices in this range
is now permitted in France. Add a rule for this range, using the
power limit of 25 dBm as specified in these documents and in
ETSI EN 300 440.

[1] https://www.arcep.fr/uploads/tx_gsavis/14-1263.pdf
[2] https://www.arcep.fr/uploads/tx_gsavis/14-1263.pdf

Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---
 db.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/db.txt b/db.txt
index fd73049596f2..eeff196e4aac 100644
--- a/db.txt
+++ b/db.txt
@@ -475,6 +475,8 @@ country FR: DFS-ETSI
 	(5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=ETSI
 	(5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
 	(5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
+        # short range devices (ETSI EN 300 440)
+	(5725 - 5875 @ 80), (25)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
-- 
2.17.0


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

