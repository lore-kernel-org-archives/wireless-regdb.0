Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x22f.google.com ([2a00:1450:400c:c00::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VbdaI-0007xd-VK
 for wireless-regdb@lists.infradead.org; Wed, 30 Oct 2013 21:45:51 +0000
Received: by mail-wg0-f47.google.com with SMTP id c11so1906029wgh.2 for
 <wireless-regdb@lists.infradead.org>; Wed, 30 Oct 2013 14:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tOPAFlwKfYBYwbJoVUp/EikU3f4yd0AFymWgAeQ3m38=;
 b=GpldVukIDphKz0bWArv8nKqLnsbm5kyr9D+u2z/nFUFp/aXJf4Z44vt6jcofPMLybP
 DPsBIZnTWraAGLrvHfdrDArO/FvwYgA0BmTpzslTtDIrKFhh1lp0mclfY9vS5aGynizO
 LEMuF4BRPmgYCplU8mV79fNBjpV6Kp7lDp9HtxlTSD8FwBXlqXR9vcgbZ4dbHagT0vsK
 qkAeblqqQFfgB8zYB+zLI6rKYWVOhMVuhspE/d8FwvIs2yisCBdGhH7eKSLWRDa9cY49
 yc7+YYyqOzjcBroxGNo94B8yKs5tysM7LmeEb3jK0abT6NgAjaJlaqIx04zWZ/+aDhlG 1uWQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed, 30 Oct 2013 22:45:08 +0100
Message-Id: <1383169509-22619-7-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383169509-22619-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383169509-22619-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 6/7] wireless-regdb: optimize two of IL's
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
 db.txt | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/db.txt b/db.txt
index 7532166..efd9902 100644
--- a/db.txt
+++ b/db.txt
@@ -389,8 +389,7 @@ country IE: DFS-ETSI
 
 country IL: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
-	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR
-	(5250 - 5350 @ 80), (200 mW), NO-OUTDOOR
+	(5150 - 5350 @ 80), (200 mW), NO-OUTDOOR
 
 country IN: DFS-JP
 	(2402 - 2482 @ 40), (20)
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

