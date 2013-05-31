Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x236.google.com ([2607:f8b0:400e:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEnd-0005MQ-M4
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:10:38 +0000
Received: by mail-pb0-f54.google.com with SMTP id ro12so1376538pbb.41 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=2dOCqQ11wLE3qm4dc5X+drNYpzQ7P7PI7sh2ofPVzWs=;
 b=Z11WrNbB0xEXSRe6R+1ETwJQJ4HSdRXeEBgyigWgHsaKq16xQNQNyHvDF50koKxb5k
 ZmFn4D5n90ptKo0g98orJh+u5W38USTvp4n44ID26wVWUV8oDGup1nvojMxaFNNnJBzk
 bRZdhRL8AFCs29nBplveKllulmpQkHp8q81e5Won4a6gb1i5ORltgV9rCHAQwcjU3rRB
 1jrDI6roDeNwkno74B1EtxJdYq6wsgF4DncAUveBFYw/M4IkW0OY+gze9II4/1O8Dqqp
 oKtfRcR9ShyjH4Vdwjs4VAW/s3ecQb92S/YWQGa1ngYVNYqSJf1BaC3xG2hyqbyWNJgj m4vw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:08:56 -0700
Message-Id: <1369966169-23640-8-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 07/40] crda: fix regression when using
	reglib_for_each_country()
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
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>

When reglib_for_each_country() was introduced via ebcbfcf4
its users were not updated with the possibility of rd being
NULL due to the fact that the parsed file could be invalid
or empty. The users

mcgrof@frijol ~/devel/crda (git::master)$ git describe --contains 7a09f4dd
v1.1.3~8

mcgrof@frijol ~/devel/crda (git::master)$ git describe --contains ebcbfcf45
v1.1.3~9

This regression exists since v1.1. Fix this.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 intersect.c |    6 ++++++
 regdbdump.c |    7 +++++++
 2 files changed, 13 insertions(+)

diff --git a/intersect.c b/intersect.c
index 1c00a67..8f826a0 100644
--- a/intersect.c
+++ b/intersect.c
@@ -73,6 +73,12 @@ int main(int argc, char **argv)
 		intersected++;
 	}
 
+	if (!idx) {
+		printf("Invalid or empty regulatory file, note: "
+		       "a binary regulatory file should be used.\n");
+		return -EINVAL;
+	}
+
 	if (idx == 1) {
 		world = (struct ieee80211_regdomain *) rd;
 		rd = NULL;
diff --git a/regdbdump.c b/regdbdump.c
index 26cbef7..dcbed71 100644
--- a/regdbdump.c
+++ b/regdbdump.c
@@ -1,4 +1,5 @@
 #include <stdio.h>
+#include <errno.h>
 #include "reglib.h"
 
 int main(int argc, char **argv)
@@ -16,5 +17,11 @@ int main(int argc, char **argv)
 		free((struct ieee80211_regdomain *) rd);
 	}
 
+	if (!idx) {
+		printf("Invalid or empty regulatory file, note: "
+		       "a binary regulatory file should be used.\n");
+		return -EINVAL;
+	}
+
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

