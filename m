Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x22a.google.com ([2a00:1450:400c:c05::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VZ3b7-0005iZ-7z
 for wireless-regdb@lists.infradead.org; Wed, 23 Oct 2013 18:56:01 +0000
Received: by mail-wi0-f170.google.com with SMTP id l12so8801105wiv.3 for
 <wireless-regdb@lists.infradead.org>; Wed, 23 Oct 2013 11:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=sender:from:to:cc:subject:date:message-id;
 bh=Y9Kz9f9DAlvrXLm9iXls2IvKB13gkEozuOajMKZmf6w=;
 b=BqpJVSWmuwqCcRX0dEqcR1S/aEBMqOlflrjedXLfhj6bKoNEWXaNU/WOxzuZ3Gf0uz
 4tgAhIxdRhUNYCkgldADPjdlDOB93lYLObY0vmEt0be/dQ2NFDJ0A/vOiLSjgI7E3p3B
 G2/kgy1KwHOel87VWPdQdiAPOr9IvCO4Lkx4U+mIU5Y3qfq0fWsvAjZcK09vpsLNwDM+
 AXx+u8nd9cgh/1Hefvp1fY7xs1HdydAheHaRvCQ8YWqYRcLoSKC5r3+mewjUFi+yEoye
 vQO5WkCDw8leVcPUkSAiB3Cz6FzpaR0hhVZggOotMSfa9eENZ1X0XaPPqdHh8VQiGYKY kUdw==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed, 23 Oct 2013 20:55:36 +0200
Message-Id: <1382554536-27943-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC] cfg80211: make genregdb.awk skip antenna
 gain
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
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

Now that wireless-regdb doesn't include
antenna gain lets skip parsing it completely
for when CONFIG_CFG80211_INTERNAL_REGDB is
enabled.

Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
---
 net/wireless/genregdb.awk | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)
 mode change 100644 => 100755 net/wireless/genregdb.awk

diff --git a/net/wireless/genregdb.awk b/net/wireless/genregdb.awk
old mode 100644
new mode 100755
index c808619..3e241e4e
--- a/net/wireless/genregdb.awk
+++ b/net/wireless/genregdb.awk
@@ -63,14 +63,11 @@ active && /^[ \t]*\(/ {
 	end = $3
 	bw = $5
 	sub(/\),/, "", bw)
-	gain = $6
-	sub(/\(/, "", gain)
-	sub(/,/, "", gain)
-	power = $7
-	sub(/\)/, "", power)
+	power = $6
+	sub(/\(/, "", power)
 	sub(/,/, "", power)
 	# power might be in mW...
-	units = $8
+	units = $7
 	sub(/\)/, "", units)
 	sub(/,/, "", units)
 	if (units == "mW") {
@@ -87,7 +84,7 @@ active && /^[ \t]*\(/ {
 		}
 	}
 	flagstr = ""
-	for (i=8; i<=NF; i++)
+	for (i=7; i<=NF; i++)
 		flagstr = flagstr $i
 	split(flagstr, flagarray, ",")
 	flags = ""
-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

