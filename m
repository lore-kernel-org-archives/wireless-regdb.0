Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-f169.google.com ([209.85.192.169])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEph-0005eg-Ng
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:12:46 +0000
Received: by mail-pd0-f169.google.com with SMTP id y11so1390861pdj.14 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:12:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=Hb7n9ZS2PvbTfaDttoHAeF9+HlSIoolfauyaeUEOPus=;
 b=btLdw3leKUaoXZGgun4yVvH73Ee13Z64JFWVpzV9MzQJcxvg+rwqwdYOnRITIxKjdA
 72/phld/6N8h7q/qEIsdOAbEr+r+RRfNwam0Bri0SjGzIPAicghIyLvk/nUUvoBkNo1E
 rUnzboUZqnzLWXZY0Euk6/nl2HRcfKf5Zpkpmtjy/UqfY2SJkFWsfJ4gVzZKDKul6W5c
 unPLvZglQzMwX1zzS9fttrv6X4k+a24V2fMDF6PZVj/of0Rs0rZPRdI6mUJhNmMpfBns
 YnCy6GTxt9CVBFRhvZpPV/fwRcffOUnE+kdi+nwxvEDTMkr5JWJD5IzVHpyC9mmpYjro jjTg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:26 -0700
Message-Id: <1369966169-23640-38-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 37/40] crda: move regdbprint to its own
	helper
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

We'll later move this to reglib but first we have
to clean up the print utility to make it more general.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 regdbdump.c |   25 +++++++++++++++++--------
 1 file changed, 17 insertions(+), 8 deletions(-)

diff --git a/regdbdump.c b/regdbdump.c
index ea14730..edf3e7c 100644
--- a/regdbdump.c
+++ b/regdbdump.c
@@ -2,26 +2,35 @@
 #include <errno.h>
 #include "reglib.h"
 
-int main(int argc, char **argv)
+static int reglib_regdbdump(char *regdb_file)
 {
 	const struct ieee80211_regdomain *rd = NULL;
 	unsigned int idx = 0;
 
-	if (argc != 2) {
-		fprintf(stderr, "Usage: %s <filename>\n", argv[0]);
-		return 2;
-	}
-
-	reglib_for_each_country(rd, idx, argv[1]) {
+	reglib_for_each_country(rd, idx, regdb_file) {
 		reglib_print_regdom(rd);
 		free((struct ieee80211_regdomain *) rd);
 	}
 
 	if (!idx) {
-		printf("Invalid or empty regulatory file, note: "
+		fprintf(stderr, "Invalid or empty regulatory file, note: "
 		       "a binary regulatory file should be used.\n");
 		return -EINVAL;
 	}
 
 	return 0;
 }
+
+int main(int argc, char **argv)
+{
+	int r;
+
+	if (argc != 2) {
+		fprintf(stderr, "Usage: %s <regulatory-binary-file>\n", argv[0]);
+		return 2;
+	}
+
+	r = reglib_regdbdump(argv[1]);
+
+	return r;
+}
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

