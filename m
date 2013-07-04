Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x231.google.com ([2607:f8b0:400e:c01::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY2R-00031Q-Mo
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:08:48 +0000
Received: by mail-pb0-f49.google.com with SMTP id jt11so660945pbb.36 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=Fsq38ITuySb/GbHi2RDdxXA6fzAS2opBSWI0coUwBkE=;
 b=UEagrL/3mSwDkGqu1X7Lw/KlYi/kN6M3sjYLmiD87vE0iaEC0ZZCNqBRQRbk26fk4H
 VgbsHCPI2u3wNMvcTyuB3Rz9jZlNCjvXLJfXU0qIkIA7V2YIDtNyYxNqLx/TBT8kcoA2
 Qp/TUQxYoKS+uOpPRL5s2Kr3ZPx8TV2OkH7BoRJtAMIiMBR3gXwoqedM0LtjfuhYXUOx
 5fwQCG4/I6gYNMOeaQoxUejLK9V0DfECB++6oMWSFd2TqpAMUqyu5u/kfJAcejpXOoaR
 w2H5YxZFHQm9UTqCfcO8UAb6XEHnIdRknbyW4k+ac4MvmXUfIZhOcP6KcD3iuH3Bq4as LR8g==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:44 -0700
Message-Id: <1372899889-19183-49-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 48/53] wireless-regdb: KR,
	Republic of Korea - enable VHT80
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

This enables 80 MHz bandwidth usage for 5 GHz.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 330ccb2..9765ad8 100644
--- a/db.txt
+++ b/db.txt
@@ -462,10 +462,10 @@ country KP:
 
 country KR:
 	(2402 - 2482 @ 20), (N/A, 20)
-	(5170 - 5250 @ 20), (3, 20)
-	(5250 - 5330 @ 20), (3, 20), DFS
-	(5490 - 5630 @ 20), (3, 30), DFS
-	(5735 - 5815 @ 20), (3, 30)
+	(5170 - 5250 @ 80), (3, 20)
+	(5250 - 5330 @ 80), (3, 20), DFS
+	(5490 - 5630 @ 80), (3, 30), DFS
+	(5735 - 5815 @ 80), (3, 30)
 
 country KW:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

