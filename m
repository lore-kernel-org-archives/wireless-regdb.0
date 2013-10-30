Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x22b.google.com ([2a00:1450:400c:c05::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VbdaB-0007xG-RP
 for wireless-regdb@lists.infradead.org; Wed, 30 Oct 2013 21:45:44 +0000
Received: by mail-wi0-f171.google.com with SMTP id f4so3534710wiw.4 for
 <wireless-regdb@lists.infradead.org>; Wed, 30 Oct 2013 14:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=U7oUDlGMkWHWA9FbK+RCZDXSVTkLK55qE5Vmn6GRWWM=;
 b=rXrgpi1d+8LgF79O//wy64UbRX91ZHq9dROpanB9ZYqS2s1OQ/tOSZxDm3L1L7wmTb
 fmE3hST5zIzeZ0eL8sOS1WIciIL2kGA40KIKhWLmOCIjVuRVRz41Kk+jDqO0/YdFJwPX
 dBhUKToZfF3w4s4sDSCPFVE486jsjh/m2SOBJooDP2/hZlir1V1AWhzDabQDGNBe9Qf+
 sOy0kmJMbhlU0UZ25jXmdEfxU2xQU15ILzFZa3PmY2ZsrrU32N38esD5TgTMBfS/ZFrO
 uW7rweGvGqBqhN+Wt45VXGLUD9dXBrudcahRg7IhPMRCnEhxmy3mHqGJ7OdKOFNpinKZ yAvQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed, 30 Oct 2013 22:45:06 +0100
Message-Id: <1383169509-22619-5-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383169509-22619-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383169509-22619-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 4/7] wireless-regdb: optimize two of DE's
	rules
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

There's no reason not to merge these two rules.
This as picked up by the new CRDA optimizer.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/db.txt b/db.txt
index 5ca9704..da8fcfe 100644
--- a/db.txt
+++ b/db.txt
@@ -222,10 +222,8 @@ country CZ: DFS-ETSI
 country DE: DFS-ETSI
 	# entries 279004 and 280006
 	(2400 - 2483.5 @ 40), (100 mW)
-	# entry 303005
-	(5150 - 5250 @ 80), (100 mW), NO-OUTDOOR
-	# entries 304002 and 305002
-	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR
+	# entry 303005, 304002 and 305002
+	(5150 - 5350 @ 80), (100 mW), NO-OUTDOOR
 	# entries 308002, 309001 and 310003
 	(5470 - 5725 @ 80), (500 mW), DFS
 	# 60 gHz band channels 1-4, ref: Etsi En 302 567
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

