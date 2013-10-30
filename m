Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x22a.google.com ([2a00:1450:400c:c00::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VbdaF-0007xX-4q
 for wireless-regdb@lists.infradead.org; Wed, 30 Oct 2013 21:45:47 +0000
Received: by mail-wg0-f42.google.com with SMTP id n12so6589822wgh.1 for
 <wireless-regdb@lists.infradead.org>; Wed, 30 Oct 2013 14:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=BzJIxjFhxuKlr/ZQrh1PoQH6mq87VdYogsymDEmipRs=;
 b=Fhf283KEvyAW1kAgJ5azQzgw5bKqRVp+qKwC0UNSvmr9/LakuDo34HyeBdtcGiyujN
 eE7kk5tS7K4Db0bAetuhjVzz/GB4A8ffgcbb6+GjCgm1RctpQW63cQKQzVoVFalkaS01
 xaZgJgUKk4lfDLqZD5XoaQ/C90kogleVsFwn6/eKQMSjtRrOpC37FoU5XqJpc+gor7R+
 tmqTLUL1XZVzlAYOhTT02GqX/F6vQGBcejAhmXK+Wkrl+/sIzYLiiBS4CaNQp1ArUOIR
 16rH+0/XElt1YdxA1gH8PIWSPIj6VC4st/B6W7ldbovv2JHKcCAicBxWUVvvddQIVeG9 Rdmg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed, 30 Oct 2013 22:45:07 +0100
Message-Id: <1383169509-22619-6-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383169509-22619-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383169509-22619-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 5/7] wireless-regdb: optimize two of ES's
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
index da8fcfe..7532166 100644
--- a/db.txt
+++ b/db.txt
@@ -268,8 +268,7 @@ country EG: DFS-ETSI
 
 country ES: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
-	(5150 - 5250 @ 80), (100 mW), NO-OUTDOOR
-	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR
+	(5150 - 5350 @ 80), (100 mW), NO-OUTDOOR 
 	(5470 - 5725 @ 80), (500 mW), DFS
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

