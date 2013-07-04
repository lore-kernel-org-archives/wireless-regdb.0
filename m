Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x22f.google.com ([2607:f8b0:400e:c01::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuXzB-0002er-Fo
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:05:26 +0000
Received: by mail-pb0-f47.google.com with SMTP id rr13so664927pbb.34 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=QqAIMd8KVqDPD1Xi8xq0CVP7qX7gGZEfqhpW1ZjGY40=;
 b=l03PaDrC3fBBnwiw7DvK+qZb+mu/j0soVZQNI6XITqctghU0e9jnrChwkuLOSPyd8w
 kRqlbhlebDwzOX3hRD7tDDY/fI2vaeY7pqzoP4ZClAbXimw7nUSH2WAQsOw8KpbiRyCi
 VCasKYJWHezACraot0RYVfRlm3gXhdhuB4H4FjK1uQcnX8xZuh0Nr372bei7ngo0zUTT
 0V9zXty4ykmXzc5OyZIZFZ2cBxKq3Uq7cOhVJkQqbs9WLUMabKMZGhyuQalssvZgW/Ly
 9sM6+Ja85I/DixdW38jMlEtV3BFGUOjoL/NS58nfXSXW0wRazfiKzXg5HRYcrW9+AV2W Q83g==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:03:58 -0700
Message-Id: <1372899889-19183-3-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 02/53] wireless-regdb: BR,
	Brazil - enable VHT80
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
frequencies and increases the max EIRP on two
5 GHz bands.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 0e7794e..a6c23bd 100644
--- a/db.txt
+++ b/db.txt
@@ -125,10 +125,10 @@ country BO:
 
 country BR:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5170 - 5250 @ 40), (3, 17)
-	(5250 - 5330 @ 40), (3, 20), DFS
-	(5490 - 5710 @ 40), (3, 20), DFS
-	(5735 - 5835 @ 40), (3, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country BY:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

