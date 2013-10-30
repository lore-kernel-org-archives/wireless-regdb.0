Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x22e.google.com ([2a00:1450:400c:c03::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VbdaK-0007xx-OY
 for wireless-regdb@lists.infradead.org; Wed, 30 Oct 2013 21:45:53 +0000
Received: by mail-we0-f174.google.com with SMTP id u56so1904211wes.33 for
 <wireless-regdb@lists.infradead.org>; Wed, 30 Oct 2013 14:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=sRhOnK6NzqAk+WxB5wkqhvc50w0RShHTJCiFTfl/BxM=;
 b=sk/xpfn8Ow9lOyGCAuI5zPzAuAzbXqfXFTp+0xNjBwvUoFQ8km1LFEy4a8Dpj2Bko1
 ezmRu8PgVek1ft7rL9IS8JWgGebIvkMZJYhWnaP/hND7kuFylg6c6QimYiLyykXTumyg
 HXlgeOjghy1GubtAOhB6yJgKpZOvQMTvqdkcOijeA1Sael0RScWdLu1+OEOM7EWCEFqu
 TpbPylZpIh42LbvRa7jrME14TIpzXRoDIzX82ipTRitHmGxv9WUpO2OaqOmE1jNTdmNQ
 kUjOPZl14n7IwfhSO4fbiFybi9ywVmwPFHXBKQGRJSgLNJHGOL5q1BF7j/Cg1m9oBlWs aOtw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed, 30 Oct 2013 22:45:09 +0100
Message-Id: <1383169509-22619-8-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383169509-22619-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383169509-22619-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 7/7] wireless-regdb: optimize two of NL's
	rules
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
To: linville@tuxdriver.com
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

There's no reason not to merge these two rules.
This as picked up by the new CRDA optimizer.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index efd9902..429a380 100644
--- a/db.txt
+++ b/db.txt
@@ -557,8 +557,7 @@ country MX: DFS-FCC
 
 country NL: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (20), NO-OUTDOOR
-	(5250 - 5330 @ 80), (20), NO-OUTDOOR
+	(5170 - 5330 @ 80), (20), NO-OUTDOOR
 	(5490 - 5710 @ 80), (27), DFS
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

