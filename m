Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x233.google.com ([2607:f8b0:400e:c03::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHO3-0006GS-VH
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:22:40 +0000
Received: by mail-pa0-f51.google.com with SMTP id lf11so1423947pab.24 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:22:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=3CNKTWIjNmj49Sj3TpUPceLhwX/621oeVZ/zqqQYKVA=;
 b=aUFkgu0VuIuRIRg6QIymRe13DHzY/YAStgO/12F5O5EooxIQhivSC4tyC/UVp2yPoM
 X0LUNhjrI+Zj0pyRKIWpvxQ4eFkymuO6fjiN+vbHTGnOh1D4ESdUYCn/32TN/8VijCqR
 N+AtZ5lP0mD1oXwJC6oykqbK0IfoLPV6blbGlqU5anBf49uYHwFV56l6a/7b8gR7EcwO
 zCllIalvn7nacZuhakVWar3ugWZBNp9nDNshm/dE0AtVipDAs1eXYIRzyQuN0mM+axlg
 3ucY75Flwizm9TbgMgGeTBN6BjhPRR9SNDryDZv8Jfe+9CqeB/uqgK2PnejHToEmdpaQ vhgA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:18:30 -0700
Message-Id: <1374027522-18488-42-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 41/53] wireless-regdb: US,
	United States - enable VHT80
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
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>

This enables 80 MHz bandwidth support on the US 5 GHz
frequencies. This also updates the 5 GHz bands with higher
max EIRP. Note VHT80 for 5690 is disabled.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |   10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 63ee9b4..bc8fe07 100644
--- a/db.txt
+++ b/db.txt
@@ -767,11 +767,11 @@ country UA:
 
 country US: DFS-FCC
 	(2402 - 2472 @ 40), (3, 27)
-	(5170 - 5250 @ 40), (3, 17)
-	(5250 - 5330 @ 40), (3, 20), DFS
-	(5490 - 5600 @ 40), (3, 20), DFS
-	(5650 - 5710 @ 40), (3, 20), DFS
-	(5735 - 5835 @ 40), (3, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5600 @ 80), (3, 24), DFS
+	(5650 - 5710 @ 40), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 	# 60g band
 	# reference: http://cfr.regstoday.com/47cfr15.aspx#47_CFR_15p255
 	# channels 1,2,3, EIRP=40dBm(43dBm peak)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

