Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x22e.google.com ([2607:f8b0:400e:c01::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHOq-0006MB-EA
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:23:28 +0000
Received: by mail-pb0-f46.google.com with SMTP id rq2so1357400pbb.33 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=/co76qk3C40F8Ox4f4ChdQsDq/Tsm++0vMHixWgsRpw=;
 b=lIb6AAtxDd8YaOuDo3QwE3wwUCTuJtRYzz+p3m2vbuT0Op1waez0VK9KK+R0S7+FxO
 l9bVUFL+Qyr/b4r1Wvt3Lcql65KUfZ2IQQLjGhyx5+4GgmEH5i6l07ZLqqvjoRmugO5H
 GE/b0C2RCl9ha+IcRLaMi9eEgLzPmzMy1I67qOcFHX9pG1UhRERwrFzuYpIXC7QNkKvf
 /nqxspw86o1t03l5VdPAP6JR9HwYCXrKTX+WiE93LRQLZbB5D0HPxEXImWoR230rr/ZO
 X5bxZcoqpkMr6/aI5+sxHJTm+SO9maLiRwctaX2XSbzqfmO6trNAb2N1xDQnsHSvdCV9 g2ZQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:18:40 -0700
Message-Id: <1374027522-18488-52-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 51/53] wireless-regdb: add 802.11ad 60 GHz
	channels 1..3 to world regdom
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

This is a port of what Vladimir Kondratiev sent to the
Linux kernel for the static world regulatory domain.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/db.txt b/db.txt
index c6def1c..54f89d3 100644
--- a/db.txt
+++ b/db.txt
@@ -10,6 +10,8 @@ country 00:
 	# NB: 5260 MHz - 5700 MHz requies DFS
 	# Channel 149 - 165
 	(5735 - 5835 @ 80), (3, 20), PASSIVE-SCAN, NO-IBSS
+	# IEEE 802.11ad (60GHz), channels 1..3
+	(57240 - 63720 @ 2160), (N/A, 0)
 
 
 country AD:
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

