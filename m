Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x22c.google.com ([2a00:1450:400c:c05::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFCr-00008E-Nk
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 13:56:10 +0000
Received: by mail-wi0-f172.google.com with SMTP id ez12so1103448wid.11 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 06:55:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=G32zdsii6SC/a48IJ8bSw5nvYViLcLB9/v2Zby8c3jY=;
 b=Z1U5pIgZwBb5KcqYRMQ3hcmc723jITHQH8Wj1FpgnvwU2Zz+pRHrkvzDZYpTuH/PRh
 8kLeejyqjBZFS6vHqfZx6NWcvtXQNsHK8JbbH27UduQyrr630L8qR3lTqme3bfw+/nQv
 Nbx9Jjlg8X4l4TmruPiWdUKROtu9VRNiAt9IgQCaO6PW3vtQX0oqriWnXMHkIqEW2HVB
 CwLugDZSz/YJ+3Oy3m5sMv8tVQegdwlXNkEww195ShR/1U5wwlOAprxLUEq/nN9V1XLS
 bT1VthgFBWizOobmP5ymFClbMU0fBUV2IP87gXnQaPZ8rpSE7wPolovrYz9gjsQ9M52S 2V1g==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 14:55:29 +0100
Message-Id: <1383314131-20774-7-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1383314131-20774-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383314131-20774-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 6/8] wireless-regdb: optimize two of DE's
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
index ec3bee6..22b6561 100644
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

