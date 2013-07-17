Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x234.google.com ([2607:f8b0:400e:c03::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHLV-0005ur-6s
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:20:01 +0000
Received: by mail-pa0-f52.google.com with SMTP id kq14so314967pab.25 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=7XhNivPi8VimNHjvSsj+pgEPDENCiBY1wPNMsJ8fmX0=;
 b=t9ci+W9UREle825Ae8tm45EeOdM2pWt0M4kZUAERREU2T2q4NpP0ozfXwdvAirYTm3
 uxLy9WveFB5H1sVFO2PtZu33Ai+R3qVKMaFc6QKf3n2rtxw84FiBrfUCGXSoUzps6VVw
 Xk9ovn9ak3jQz+yDeoTOSR1hRpl/aM0OimIhHunKRZWqTfhaSYW5szv8VMneJfo1t/ME
 Bwdo/GZ7yaQuaxn2aOVXNFzEVH8UI1Ar4OTwoIuDCyP2JBGJhxJpxhvy35+9s8LklDsQ
 zwA0HxPtfY+jIydFqKVCwVHBdv+NRyLXUiYQxuecmVU77S5P6Q+NM/LsOJh2bJVszbZu SudA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:17:59 -0700
Message-Id: <1374027522-18488-11-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 10/53] wireless-regdb: PE,
	Peru - enable VHT80
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

This enables 80 MHz bandwidth usage the existing only
5 GHz band but also adds 3 other new 5 GHz bands with
80 MHz bandwidth support.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 570a951..00e5993 100644
--- a/db.txt
+++ b/db.txt
@@ -597,7 +597,10 @@ country PA:
 
 country PE:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5735 - 5835 @ 40), (N/A, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country PG:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

