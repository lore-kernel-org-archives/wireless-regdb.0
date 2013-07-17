Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pa0-x232.google.com ([2607:f8b0:400e:c03::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHOv-0006My-24
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:23:33 +0000
Received: by mail-pa0-f50.google.com with SMTP id fb1so1406927pad.23 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=3glgagEYwlFK/WoAZh4eKhf/JVpBxU2MbQPUiafVN44=;
 b=weUCLk14430RbYMsHSkkhUyCITXgLuYw9QfNB1z+WKCu/aGJhBIeQRQlT/wWRjCrRs
 OdUvWNtOiVt/a2cvmWWpdbgvjC51WPFnlxFPIcbXiD3lg6dVRwFsXW+nEXPVyA1IRJmK
 i1SJcEunxw55tuart/WEGYDb4pMg8R1fHE/FXlEygFRsZjzEWIRgwNPO5bXydKPr4CWx
 8nEZvOxgdAQSaDGjWEowxgr9/Knk5bapQKsz68eZxPFjTnDxDCu1KkRIL1lOI7cce1ew
 NyepaAOSvP0SS4XuszyEvHBJGTiClI5t3MuJaMfOXrLU+QColO/6EQkv67xPykPgft4h noOA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:18:41 -0700
Message-Id: <1374027522-18488-53-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 52/53] wireless-regdb: CR,
	Costa Rica - enable VHT80
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

This enables 80 MHz bandwidth usage for Costa Rica,
updates the max EIRP and adds a new 5 GHz band:

  * 5490 - 5710

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 db.txt |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/db.txt b/db.txt
index 54f89d3..1470772 100644
--- a/db.txt
+++ b/db.txt
@@ -182,9 +182,10 @@ country CO:
 
 country CR:
 	(2402 - 2482 @ 40), (N/A, 20)
-	(5170 - 5250 @ 20), (3, 17)
-	(5250 - 5330 @ 20), (3, 23), DFS
-	(5735 - 5835 @ 20), (3, 30)
+	(5170 - 5250 @ 80), (3, 17)
+	(5250 - 5330 @ 80), (3, 24), DFS
+	(5490 - 5710 @ 80), (3, 24), DFS
+	(5735 - 5835 @ 80), (3, 30)
 
 country CS:
 	(2402 - 2482 @ 40), (N/A, 20)
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

