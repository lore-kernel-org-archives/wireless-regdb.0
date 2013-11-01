Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x229.google.com ([2a00:1450:400c:c00::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFFX-0000Mn-Fg
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:58:56 +0000
Received: by mail-wg0-f41.google.com with SMTP id b13so1064873wgh.4 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JLvoop/odyBSV7qmpmD47Lu1wh415vglHVKnja6b2Kc=;
 b=yInW0HeWVhc6zdg7pVod1qVM2aWsAlRBPrO37yQHkJFVkq+l8JsV+8McQhG7yhDgt5
 JSHtXoaVFl4hdMlmrsmYTf4T9PKAIW3joLg1ORt3zYn4O/6rdBhQ0rEdckUY7ysjUEd7
 9kEcOGnDJ3uANHp/VeNqiX2O7Nq0xkWOCghxuQ6GM2PshtDm56/I6oFxtOX/4o2WwqMj
 9rcf++/G1OONjk8RiHohWWHXh74qjjAncHeCIMbOBYewGhZmSQWoBrdmAxUkfMo0afDW
 JTfWUElZAGbnN7f174xbKPCo+oNRfaJC04UzELchxbvhEefcQnVxxUsa3s4zAO/Of19B pRfg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:06 +0100
Message-Id: <1383314275-20960-17-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 16/65] wireless-regdb: enable VHT80 for GE
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

Source is QCA's regulatory team's efforts.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index d162eba..2f43aa9 100644
--- a/db.txt
+++ b/db.txt
@@ -292,8 +292,8 @@ country FR: DFS-ETSI
 
 country GE: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (18)
-	(5250 - 5330 @ 40), (18), DFS
+	(5170 - 5250 @ 80), (18)
+	(5250 - 5330 @ 80), (18), DFS
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

