Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=73YnL8V3OkiGc4ZkBihr2K2VEThuyBZ4ZWeg0ZhhyBU=;
 b=hg5uuVjCo4EgsX
 jVNees5yGOIzMPPdyIazkqDg0N9oRbrYS0QbuVEA5oeAUU/qg3EDJ4qNlD5TQ1NBaRWw0T7sL+Jft
 szcy/PtChjw+0m4vB67u9kcSR30ijbmNPAAc/6OZzv1Tpc4Yp40jUNrvwQRszxCmIeo8xzgJn8rmq
 P9c2DmjewXeWh4yMe2HMW+cOzQ68fnhP253INmAz4Nz8UGSstZFuzNW1Hx5El6gLQygE95tQKQDuG
 7SLXRPiCR9bLN/tZsuSuWPXfEW89TyZv11JHlsikU2N3scxzRt4VHXUG6GiRrKfkUqWvZrEakAWpk
 9X6zxq0bCITKTu2REq4w==;
Received: from mail-qt0-x229.google.com ([2607:f8b0:400d:c0d::229])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fubIm-0008G9-CD
 for wireless-regdb@lists.infradead.org; Tue, 28 Aug 2018 10:33:50 +0000
Received: by mail-qt0-x229.google.com with SMTP id g44-v6so1009896qtb.12
 for <wireless-regdb@lists.infradead.org>; Tue, 28 Aug 2018 03:32:38 -0700
 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=k52kLzJEKHj6UH05cnYkKiOl3XiNWKYTJXj25jK3WL4=;
 b=gYkyN8tQ8h+II2WhHDS0ZzpSqOs7uEBOFw1jDrI3n5nWaXlqWlmsh5wfa4mgRu1l+6
 Ru9oVorq+qQZcKNMBhsmQESQzUvqZxBEpQvx0PO29D5lxssRbn6359cERAlt4s+X/H29
 km8XZAKX7uTZuB8t9MwB8f6X3PDrJ2MPet7FHBc4OlKVxssVDBKA0lgH+16wqXKQ1usr
 Buxah0UBpDnu+p5ZX7OqCnNAqUydAq7ducvhp0YA1Rs9DcrPlG43uzHOW4YSbuAijMBa
 yhIeNWCuOko+dyhUOc2tsonmWcPGrcPP6oqnJqWaeu+lNkPZc/y1xI5BKVWgJ5Q6EfeS UeVQ==
MIME-Version: 1.0
From: Jukka Pirinen <jukka.pirinen@gmail.com>
Date: Tue, 28 Aug 2018 13:32:25 +0300
Message-ID: <CADyz9cHb+T3dTfQGShs3oHiZagQDdJP8LRKwmWPzp1fD_EPxag@mail.gmail.com>
Subject: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Finland (FI) on 5GHz (SRD devices)
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
To: seth.forshee@canonical.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Viestintävirasto 15 AM/2018 M

Section 10 Non-specific short range devices
https://www.finlex.fi/data/normit/32670/Regulation_15AM.pdf


diff --git a/db.txt b/db.txt
index 8cf7dee..7abb064 100644
--- a/db.txt
+++ b/db.txt
@@ -460,6 +460,8 @@ country FI: DFS-ETSI
        (5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
        (5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
        (5470 - 5725 @ 160), (27), DFS, wmmrule=ETSI
+        # short range devices (ETSI EN 300 440-1)
+        (5725 - 5875 @ 80), (25 mW)
        # 60 GHz band channels 1-4, ref: Etsi En 302 567
        (57000 - 66000 @ 2160), (40)

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
