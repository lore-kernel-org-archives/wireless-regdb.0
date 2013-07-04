Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x235.google.com ([2607:f8b0:400e:c03::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY57-0003CK-1D
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:11:33 +0000
Received: by mail-pa0-f53.google.com with SMTP id tj12so766050pac.40 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:11:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=fFf31VBmBfYGBzQvo0GOpCeb43yrfMCqnpBrrIAixJk=;
 b=cJLZ7Z/ktZcTKMqtpEn8uAlJo0E0h77W6rQ+DqbnFl72mqDcQihWuDer/DUIYX97qF
 3VILdHtC/anuHsf5bL4foftucyg8y1uQnGellcw/Y4bkxvf09dycb2XUq8VbaJQA319v
 +GwrM5mju0aJiGFkcyrHKbtXpcmjGYFVag8hCww28KMox0ljvwpD6m19ti4mGuY9pcLd
 SP7UKRWc4UjbrwOzaX6kFSMjPSBDJ8PmJdRwvqwKBPk6agIFBoozH/FbARPGUwjQeWDE
 xj/0pjuapFvEnBJITZreD4+0/n7sAgO/X5Bwf6C/CmhYztjpxxzWt0syklSlYPFBwsDT 6l0Q==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:04 -0700
Message-Id: <1372899889-19183-9-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 08/53] wireless-regdb: GU, Guam - enable
 VHT80
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

This enables 80 MHz bandwidth usage on all 5 GHz
frequencies and update the max EIRP. This also adds
a new DFS 5 GHz band: 5490 - 5710 MHz.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 6d7a762..4b1cf8e 100644
--- a/db.txt
+++ b/db.txt
@@ -337,9 +337,10 @@ country GT:
 
 country GU:
 	(2402 - 2472 @ 40), (3, 27)
-	(5170 - 5250 @ 20), (3, 17)
-	(5250 - 5330 @ 20), (3, 23), DFS
-	(5735 - 5835 @ 20), (3, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country HN:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

