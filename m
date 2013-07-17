Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x229.google.com ([2607:f8b0:400e:c03::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHM7-0005yt-Fs
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:20:40 +0000
Received: by mail-pa0-f41.google.com with SMTP id bj3so1433233pad.28 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=UxpGyAEC3tSN9d46AZSzvli+ylzI9bYNE3GOMxmWa58=;
 b=s55v9qW4YzFMzbjtd4f4k1kyNhXs6fdu8YbivT8zZDShAWa/XsJGY7QB7LV4eeD6jq
 JHegQSW/5vxtTC7GnCw1EqCT8v9If33RR+Xx5hbXhBWn0kBYZe06gVNbwYv9VCHllJ1h
 gB3PcOjWGddxYCaiP7FnCzucXWGl9Hzq87I4/LHjhdlj/Mmk7JzV/Q/btJUKUgKVFL4D
 5jeZViSIL2a5D103jaipAwI+/cwZer/RMbxIYsgU8ead10kX4SQiJ1IdpvtFl+FSADhZ
 jAARirWetlII7FCm+Or/Tuc74s0XSAfZDX1fO134hejpUF6/iSnBN6EPeN3HtRNEZ3rk x16w==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:18:06 -0700
Message-Id: <1374027522-18488-18-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 17/53] wireless-regdb: AE,
	United Arab Emirates - enable VHT80
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
a new DFS 5 GHz band: 5735 - 5835 MHz.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 84214b0..f714982 100644
--- a/db.txt
+++ b/db.txt
@@ -18,9 +18,10 @@ country AD:
 
 country AE:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5170 - 5250 @ 40), (N/A, 20)
-	(5250 - 5330 @ 40), (N/A, 20), DFS
-	(5490 - 5710 @ 40), (N/A, 27), DFS
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country AL:
 	(2402 - 2482 @ 20), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

