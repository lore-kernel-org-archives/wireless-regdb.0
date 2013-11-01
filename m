Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x235.google.com ([2a00:1450:400c:c03::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFGP-0000ce-0a
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:59:49 +0000
Received: by mail-we0-f181.google.com with SMTP id t60so4070113wes.12 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ATK/8P8JIymZSjMuNxiDgXRSc9mXBhGeWR9vQ/rbKZ8=;
 b=REQGlUkYs0U5m3dH4sez+TALxZWROAiXUfVb4M50OlO+Mfw25XYJ0Qpu1z3na0cPHr
 /INpTCXDwtMiPlyzWNZpP5kwj7p1664OHdzOC4qJULpgMhtUnBo9HmUlfyvBUg1hBU6l
 P8K3cetrQ9Yf1nck9NzL8CWC9RzXy81QGZfbYJsRem0EeeXViErFcqn9ZswFdXccfiIC
 PTgXwMmouhnL6KBUe4jDjS3IcRDak0MCcVO3m3eUJhBWLsgQl7m3yOpjDjsbFsgvYzy8
 uZe0GTuKjaEm/3cqvkSSiM/Z9leQTaKWwmBNKaR75i372pDXzG3mds6TSvtwhB4QY8ah QLjQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:30 +0100
Message-Id: <1383314275-20960-41-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 40/65] wireless-regdb: enable VHT80 for NO
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
 db.txt | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index f155d7b..db1b850 100644
--- a/db.txt
+++ b/db.txt
@@ -566,9 +566,9 @@ country NL: DFS-ETSI
 
 country NO: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 40), (20)
-	(5250 - 5330 @ 40), (20), DFS
-	(5490 - 5710 @ 40), (27), DFS
+	(5170 - 5250 @ 80), (20)
+	(5250 - 5330 @ 80), (20), DFS
+	(5490 - 5710 @ 80), (27), DFS
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
 	(57240 - 65880 @ 2160), (40), NO-OUTDOOR
 
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

