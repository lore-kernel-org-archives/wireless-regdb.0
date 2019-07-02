Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
 Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=EAQWipjh7lY4A1Jzp/L9AOKFv2Pw9W/Dcq7bD3pQU7k=;
 b=Zo24OEfBdnBvD+
 AGMooM+BRCOIdB/5f1NnPv+54aDaJQXsqRcKurD2fiFPqxCK6gDNFpiFp8GOvDEZnpVSOZF4RAW01
 q4FasUnHvpbb/gRZLd8P4E/8V5iJgYuhH9LzrB5MMfLN3OlbYOLPRHllwqYhsijvC1LC00s7gCF5e
 BKtnCDWn3MaGqp/Vr8f33gBSAkofr8QqjnXiPtaccJb8I9VZu3VoptiqMc99RSl74YMfspP/Bs9S/
 zB5p21x4Su3WBYui9IRtAIEEzo5tEygqHyojLfNztqoJsDsqYOt4pAKJT2twjKGCg52DGws+r6rcb
 ud0XDxOI2KbiqDK+wJNg==;
Received: from sitav-80046.hsr.ch ([152.96.80.46] helo=mail.strongswan.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiJdw-0002Sy-Il
 for wireless-regdb@lists.infradead.org; Tue, 02 Jul 2019 14:20:26 +0000
From: Martin Willi <martin@strongswan.org>
Date: Tue,  2 Jul 2019 16:19:44 +0200
Message-Id: <20190702141944.25902-1-martin@strongswan.org>
Subject: [wireless-regdb] [PATCH] wireless-regdb: Fix overlapping ranges
 for Switzerland and Liechtenstein
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: Henrik Laxhuber <henrik@laxhuber.com>, linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

The commit referenced below changes the 5GHz frequency range 5250-5330
to 5150-5330, making that range overlapping with the existing range
5170-5250. This imposes DFS limitations and a reduced maximum power
level for the range 5170-5250.

The change of the frequency range seems not intentional. Instead the
commit should have changed the 5170-5250 range to 5150-5250, and the
5250-5330 range to 5250-5350 (see [1]).

[1] https://www.ofcomnet.ch/api/rir/1010/05

Fixes: 957a7cff72a3 ("wireless-regdb: update regulatory rules for Switzerland (CH), and Liechtenstein (LI) on 5GHz")
Signed-off-by: Martin Willi <martin@strongswan.org>
---
 db.txt | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index d47ab94c3aa5..37393e6a793e 100644
--- a/db.txt
+++ b/db.txt
@@ -271,8 +271,8 @@ country CF: DFS-FCC
 # transmitter power control is in use: 5250-5330@23db, 5490-5710@30db
 country CH: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
-	(5150 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
+	(5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
 	(5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
@@ -747,8 +747,8 @@ country LC: DFS-ETSI
 # transmitter power control is in use: 5250-5330@23db, 5490-5710@30db
 country LI: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
-	(5150 - 5330 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
+	(5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+	(5250 - 5350 @ 80), (20), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
 	(5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
 	(57000 - 66000 @ 2160), (40)
-- 
2.17.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

