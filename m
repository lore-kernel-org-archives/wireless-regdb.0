Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x236.google.com ([2607:f8b0:400e:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuY2n-00037J-2l
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:09:10 +0000
Received: by mail-pb0-f54.google.com with SMTP id ro2so668413pbb.13 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=78EkxAV4TV3QHnfJqWIv5hZ2oIBaPG/ZcMLNUWUUHhk=;
 b=Ym6iZETCsGwya8+Fj1gAhQxTaXUORPh0s4W/vVhxDp4f2K47yLb+kfSyK9Qcf1kth0
 jQIHJNk8qazzazgOriKqDiSmliCJSzEwP6GjG7m0hxqDG2MP7jJqBhIu2dc53EpBqMAd
 B9t5iw0syEyjdQsHpHuYWpjWK1MRYUmsIny+4PW5HAg/szC4UUQDsdp/L58R1nDpN7zn
 PDNEkm0oobYUBaxF7RgIFfBKHo7xLkEQIfoL/H6K7SWrTla+++cr6f+oJyG9SSAJga0f
 JXjr5AmOqUpsuwA6r7cpGbjPW2jRzOGBmL3EJ4+dsLofv1x0PjTLG3UheEOnxR8LLlfx V/KA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:04:49 -0700
Message-Id: <1372899889-19183-54-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 53/53] wireless-regdb: EC,
	Ecauador - enable VHT80
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

This enables 80 MHz bandwidth usage for Ecuador,
updates the max EIRP and adds a new 5 GHz band:

* 5490 - 5710

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 43a062f..f9a3350 100644
--- a/db.txt
+++ b/db.txt
@@ -256,9 +256,10 @@ country DZ:
 
 country EC:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5170 - 5250 @ 20), (3, 17)
-	(5250 - 5330 @ 20), (3, 23), DFS
-	(5735 - 5835 @ 20), (3, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country EE: DFS-ETSI
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

