Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pb0-x235.google.com ([2607:f8b0:400e:c01::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiEot-0005XA-0t
 for wireless-regdb@lists.infradead.org; Fri, 31 May 2013 02:11:55 +0000
Received: by mail-pb0-f53.google.com with SMTP id un4so1392171pbc.12 for
 <wireless-regdb@lists.infradead.org>; Thu, 30 May 2013 19:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
 :references; bh=vh1HVGnEwoGI5vdr0Sti0voj4zmtSCgzx98iKk7oUys=;
 b=WIl5v+eGEINCk7g07SNTqnlnO+VDGZs2mhLoZDtWFEJlQy8zlnfPDVBFayiXWbay2C
 KJ8TpBpGHrLwRKxOiiqOZ+Ry1RJYNsjXINV/HU+WrgtsNWaKWDQmz4ZjBPIoQAgWCHOV
 4gOHFMOPMbINPhVcxt7Rw+vrbSH7Q1edXB8IzPZpiZjeRb7ic7oPPJm1eGsHHMXr5MeH
 3cqqECtxA+PGokzylusoEHjqgxvQyIdy2STyUUbStXrOVqZXrY8yzU2wQeGDbwcvElps
 DQ+hR8oCYPrSl4tcrjvijNNJFllxtTkn8tuOXKatQEEo9nR+MiUPXU7Axmh1BoHahct1 o1NA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 30 May 2013 19:09:14 -0700
Message-Id: <1369966169-23640-26-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
References: <1369966169-23640-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 25/40] crda: make print-regdom use
 internal flags
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

Do not rely on nl80211.h for general regulatory db parsing.
Its best to use our own OS agnostic definitions.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 print-regdom.c |   31 +++++++++++++++----------------
 1 file changed, 15 insertions(+), 16 deletions(-)

diff --git a/print-regdom.c b/print-regdom.c
index ab122db..68c7b4e 100644
--- a/print-regdom.c
+++ b/print-regdom.c
@@ -3,20 +3,19 @@
 #include <string.h>
 #include <arpa/inet.h>
 
-#include "nl80211.h"
-
 #include "reglib.h"
+#include "regdb.h"
 
-static const char *dfs_domain_name(enum nl80211_dfs_regions region)
+static const char *dfs_domain_name(enum regdb_dfs_regions region)
 {
 	switch (region) {
-	case NL80211_DFS_UNSET:
+	case REGDB_DFS_UNSET:
 		return "DFS-UNSET";
-	case NL80211_DFS_FCC:
+	case REGDB_DFS_FCC:
 		return "DFS-FCC";
-	case NL80211_DFS_ETSI:
+	case REGDB_DFS_ETSI:
 		return "DFS-ETSI";
-	case NL80211_DFS_JP:
+	case REGDB_DFS_JP:
 		return "DFS-JP";
 	default:
 		return "DFS-invalid";
@@ -48,23 +47,23 @@ static void print_reg_rule(const struct ieee80211_reg_rule *rule)
 	else
 		printf("N/A)");
 
-	if (rule->flags & NL80211_RRF_NO_OFDM)
+	if (rule->flags & RRF_NO_OFDM)
 		printf(", NO-OFDM");
-	if (rule->flags & NL80211_RRF_NO_CCK)
+	if (rule->flags & RRF_NO_CCK)
 		printf(", NO-CCK");
-	if (rule->flags & NL80211_RRF_NO_INDOOR)
+	if (rule->flags & RRF_NO_INDOOR)
 		printf(", NO-INDOOR");
-	if (rule->flags & NL80211_RRF_NO_OUTDOOR)
+	if (rule->flags & RRF_NO_OUTDOOR)
 		printf(", NO-OUTDOOR");
-	if (rule->flags & NL80211_RRF_DFS)
+	if (rule->flags & RRF_DFS)
 		printf(", DFS");
-	if (rule->flags & NL80211_RRF_PTP_ONLY)
+	if (rule->flags & RRF_PTP_ONLY)
 		printf(", PTP-ONLY");
-	if (rule->flags & NL80211_RRF_PTMP_ONLY)
+	if (rule->flags & RRF_PTMP_ONLY)
 		printf(", PTMP-ONLY");
-	if (rule->flags & NL80211_RRF_PASSIVE_SCAN)
+	if (rule->flags & RRF_PASSIVE_SCAN)
 		printf(", PASSIVE-SCAN");
-	if (rule->flags & NL80211_RRF_NO_IBSS)
+	if (rule->flags & RRF_NO_IBSS)
 		printf(", NO-IBSS");
 
 	printf("\n");
-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

