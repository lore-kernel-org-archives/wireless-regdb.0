Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
 :From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=f+CmjOtr1gTVB9HBUoEq/rzviWSeDEk7UnXV7B/XOUk=;
 b=EwGJ4D4qm9oKtJ
 BFVqaKzP3Xt2fiN3B82xP7GF76G6HUD1EGsHzBgFTlOCOQZxeN2FjaINFOTQZG/vDY4hxBcD2c00t
 0wLHxeLLC3P5XVvfWhL/GRzLrGyT1U27GBBv8jd2FPwMSA0MuiovsgNXQFUgxQohW/0bezSboBWww
 3b0Xb3/6ZaQLGUdhJUvq3BzU/FOOmnAhOfIReMv+eK+oc8x+mZVxwz8Mrj3VtNt4yPXbrE+Tgepet
 OehM+6BbnGP032kZS5DjcI9lsjV1cUu4IP9qLrCHgMieM/syHYjUTgO4W+n6/HkvmInASBvQi9OT3
 i1XdkG0LJJHCANA3Whcg==;
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fxup7-0000om-RS
 for wireless-regdb@lists.infradead.org; Thu, 06 Sep 2018 13:59:55 +0000
Received: by mail-lj1-x244.google.com with SMTP id v26-v6so9419712ljj.3 for
 <wireless-regdb@lists.infradead.org>; Thu, 06 Sep 2018 06:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fydQmKp66VA9TH0yIQMuIbfAnvpbPApCWT67lconbfw=;
 b=n/V5sQS9JB8w60rTdLG3R90YDy/oHhyBFYXcZSqIucLm/nMIuYnXIu1ig/dxsMfxQA
 8ns/S0Ibc2D2qr2+21I1H4s7X2Zyrk7aej1jIjnm30NxKCrTrckEtSDNnsx8+FT8j8W4
 F+khq0kfObdTNMyu5A5VrPzGL69ndN1j5J8KIA/MrmNqa4ue9gMoU2KU44yW1VePD5mV
 DBK1VihHXYq0d0AZhdSv4rHO6L7vsDnpuU5ohrZ48gXFkH8Qrl1gL45GkLrnf+BEDNd0
 es9juxY14aZ/rCcV7d++wzVV3PYp+P4FCzhfguqDx8aazy62a+5YRXps5Htzfw0aNhOK 4dpQ==
From: Jukka Pirinen <jukka.pirinen@gmail.com>
Date: Thu,  6 Sep 2018 16:59:15 +0300
Message-Id: <20180906135915.8365-1-jukka.pirinen@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] Update regulatory rules for Finland (FI)
 on 5GHz (SRD devices)
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
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, Jukka Pirinen <jukka.pirinen@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

Viestintävirasto 15 AM/2018 M
Section 10 Non-specific short range devices
https://www.finlex.fi/data/normit/32670/Regulation_15AM.pdf

Signed-off-by: Jukka Pirinen <jukka.pirinen@gmail.com>
---
 db.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/db.txt b/db.txt
index 8cf7dee..b168f59 100644
--- a/db.txt
+++ b/db.txt
@@ -460,6 +460,8 @@ country FI: DFS-ETSI
 	(5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
 	(5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
 	(5470 - 5725 @ 160), (27), DFS, wmmrule=ETSI
+	# short range devices (ETSI EN 300 440-1)
+	(5725 - 5875 @ 80), (25 mW)
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
 
-- 
2.17.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
