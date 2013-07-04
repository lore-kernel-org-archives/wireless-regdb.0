Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x22a.google.com ([2607:f8b0:400e:c02::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY7p-0003L0-M5
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:14:22 +0000
Received: by mail-pd0-f170.google.com with SMTP id x11so597188pdj.1 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:14:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=oD64Dr/FBzOFzHNFsPr3LsJyBaNOPB0mVrEUxISvDJ0=;
 b=lkedxbdqXZFaMY35e13q+rXsZImgHKwQZoKu1uBiGrtJimj6D32ojZYum0cULfRxxG
 fOuZ2ewIWCGnqvZiZpfBCtKeQPic0LLBnZFNIbBGLtsbosMKupbgs0VPx1ALKj50X6Os
 wTKdbweTjj0hP3bxCIbT8muLhNPhxdOIyztVpYfVrSCBmi/wxXrmd4t3dqM1EToPdln6
 yj8SlFcEDk87Z5j9efxPkgAj/gBJWSQ6QYwFf7XByt4t1QefrI/DREkdXVk98PmZmi5j
 mb5uWYBcTqjwYCA+qnlC7rAYGJ7ASFmzJ3nV30tUZHqdKLrx6GIvAWca7oGrtZVlOgYk 9CHQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:11 -0700
Message-Id: <1372899889-19183-16-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 15/53] wireless-regdb: ZA,
	South Africa - enable VHT80
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
frequencies and update the max EIRP.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 9043a3c..4475019 100644
--- a/db.txt
+++ b/db.txt
@@ -803,10 +803,10 @@ country YE:
 
 country ZA:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5170 - 5250 @ 40), (3, 17)
-	(5250 - 5330 @ 40), (3, 20), DFS
-	(5490 - 5710 @ 40), (3, 20), DFS
-	(5735 - 5835 @ 40), (3, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country ZW:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

