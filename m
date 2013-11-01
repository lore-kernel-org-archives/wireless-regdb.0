Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x231.google.com ([2a00:1450:400c:c05::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFHJ-0000pa-9F
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:00:45 +0000
Received: by mail-wi0-f177.google.com with SMTP id f4so1108269wiw.16 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=UcQaQmgRA6aiROMSVjNG048pY5PNGgiR1FsIJF81H/4=;
 b=Rh1clp/6Xj42/fD88dCwm3C2xb9Gu6S9ovcGdQPzwOtKZHW5NjQubiwXIJj6cBWiZY
 5mJU2IB7hyl2jwE1SQKLRR8gn2/AnkDVqgqCA+LPKEqs5Z0ODM95A/egG8FaW3DM0QB8
 Oa4WxMkw0KK+giOOiVN5jVqANX/RLpyfUXCE1tE9T721Ot6TrqKw8FOeeNCwa/JRZl9p
 yZ6yCWR+m4rRfWFPjiXjyseVAutuV9uHBpuNLDtS8iyrwl9+xLjAmsQ05dBZ+qmnmFhM
 F7mR5WT+mDRf3ooUTUuulwnwfPKGnZXPPQWM0h/5M4Y61w39+mcvZeg1vIUpBbCJc9Je J0rw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:57:51 +0100
Message-Id: <1383314275-20960-62-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314275-20960-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 61/65] wireless-regdb: extend 5 GHz range
	for PE
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
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 7bafcfe..4519782 100644
--- a/db.txt
+++ b/db.txt
@@ -612,7 +612,7 @@ country PE: DFS-FCC
 	(2402 - 2482 @ 40), (20)
 	(5170 - 5250 @ 80), (17)
 	(5250 - 5330 @ 80), (24), DFS
-	(5490 - 5710 @ 80), (24), DFS
+	(5490 - 5730 @ 80), (24), DFS
 	(5735 - 5835 @ 80), (30)
 
 country PG: DFS-FCC
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

